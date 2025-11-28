import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';

export async function GET(request, { params }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { searchParams } = new URL(request.url);
    const type = searchParams.get('type');
    const hashed_token = searchParams.get('hashed_token');
    const isRecovery = type === 'recovery';
    const isSignUp = type === 'signup';

    let verificationType = 'magiclink';
    if (isRecovery) verificationType = 'recovery';
    if (isSignUp) verificationType = 'signup';

    const { error } = await supabase.auth.verifyOtp({
        token_hash: hashed_token,
        type: verificationType
    });

    if (error) {
        return NextResponse.redirect(
            buildUrl('/error?type=invalid-magic-link', params.tenant, request)
        );
    } else {
        if (isRecovery) {
            return NextResponse.redirect(build('/tickets/change-password', params.tenant, request), { status: 302 });
        }

        return NextResponse.redirect(
            buildUrl('/tickets', params.tenant, request)
        );
    }
}