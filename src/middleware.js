import { getSupabaseReqResClient } from './supabase-utils/reqResClient';
import { NextResponse } from 'next/server';

export const config = {
    matcher: [
        "/((?!.*\\.).*)"
    ]
};

export async function middleware(req) {
    const { supabase, response } = getSupabaseReqResClient({ request: req });

    const userData = await supabase.auth.getUser();
    const sessionUser = userData.data?.user;
    const requestedPath = req.nextUrl.pathname;

    if (requestedPath.startsWith('/tickets')) {
        if (!sessionUser) {
            return NextResponse.redirect(new URL('/', req.url));
        }
    } else if (requestedPath === '/') {
        if (sessionUser) {
            return NextResponse.redirect(new URL('/tickets', req.url))
        }
    }

    return response.value;
}