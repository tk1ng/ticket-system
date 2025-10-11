import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';

export async function GET(request, { params }) {
    const { searchParams } = new URL(request.url);
    const hashed_token = searchParams.hashed_token;
    const isRecovery = searchParams.type === 'recovery';
    const supabase = getSupabaseCookiesUtilClient();

    let type = 'magiclink';
    if (isRecovery) type = 'recovery';

    const { error } = await supabase.auth.verifyOtp({
        token_hash: hashed_token,
        type
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