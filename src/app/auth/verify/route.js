import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';

export async function GET(request) {
    const { searchParams } = new URL(request.url);
    const hashed_token = searchParams.hashed_token;
    const isRecovery = searchParams.type === 'recovery';
    const supabase = getSupabaseCookiesUtilClient();

    let type = 'magiclink';
    if (isRecovery) type = 'recovery';

    const { error } = (await supabase).auth.verifyOtp({
        token_hash: hashed_token,
        type
    });

    if (error) {
        return NextResponse.redirect(
            new URL('/error?type=invalid-magic-link', request.url)
        );
    } else {
        if (isRecovery) {
            return NextResponse.redirect(new URL('/tickets/change-password', request.url), { status: 302 });
        }

        return NextResponse.redirect(
            new URL('/tickets', request.url)
        );
    }
}