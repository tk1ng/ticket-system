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

    const [tenant, ...restOfPath] = requestedPath.substr(1).split('/');
    const applicationPath = '/' + restOfPath.join('/');

    if (!/[a-z0-9-_]+/.test(tenant) && !applicationPath === '/') {
        return NextResponse.rewrite(new URL('/not-found', req.url));
    }

    if (applicationPath.startsWith('/tickets')) {
        if (!sessionUser) {
            return NextResponse.redirect(new URL(`/${tenant}/`, req.url));
        } else if (!sessionUser.app_metadata?.tenants.includes(tenant)) {
            return NextResponse.rewrite(new URL('/not-found', req.url));
        }
    } else if (applicationPath === '/') {
        if (sessionUser) {
            return NextResponse.redirect(new URL(`${tenant}/tickets`, req.url))
        }
    }

    return response.value;
}