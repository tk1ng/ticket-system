import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';

export async function GET(request) {
    const { searchParams } = new URL(request.url);
    const hashed_token = searchParams.get('hashed_token');

    const supabase = getSupabaseCookiesUtilClient();
    const { error } = (await supabase).auth.verifyOtp({
        token_hash: hashed_token,
    });

    if (error) {
        return NextResponse.redirect(
            new URL('/error?type=invalid-magi-link', request.url)
        );
    } else {
        return NextResponse.redirect(
            new URL('/tickets', request.url)
        );
    }
}