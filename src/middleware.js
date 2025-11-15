import { NextResponse } from 'next/server';
import { getSupabaseReqResClient } from './supabase-utils/reqResClient';
import { buildUrl, getHostnameAndPort } from './utils/url-helpers';
import { TENANT_MAP } from './tenant-map';


export const config = {
    matcher: [
        "/((?!.*\\.).*)"
    ]
};

export async function middleware(req) {
    const { supabase, response } = getSupabaseReqResClient({ request: req });

    const userData = await supabase.auth.getUser();
    const sessionUser = userData.data?.user;

    const [hostname, port] = getHostnameAndPort(req);

    if (hostname in TENANT_MAP === false) {
        return NextResponse.rewrite(new URL('/not-found', req.url));
    };

    const requestedPath = req.nextUrl.pathname;

    const tenant = TENANT_MAP[hostname];
    const applicationPath = requestedPath;

    // if (!/[a-z0-9-_]+/.test(tenant) && !applicationPath === '/') {
    //     return NextResponse.rewrite(new URL('/not-found', req.url));
    // }

    if (applicationPath.startsWith('/tickets')) {
        if (!sessionUser) {
            return NextResponse.redirect(new URL('/', req.url));
        } else if (!sessionUser.app_metadata?.tenants.includes(tenant)) {
            return NextResponse.rewrite(new URL('/not-found', req.url));
        }
    } else if (applicationPath === '/') {
        if (sessionUser) {
            return NextResponse.redirect(new URL(buildUrl('/tickets', tenant, req)))
        }
    }

    const rewrittenResponse = NextResponse.rewrite(
        new URL(`/${tenant}${applicationPath}${req.nextUrl.search}`, req.url),
        {
            request: req,
        }
    );

    const cookiesToSet = response.value.cookies.getAll();
    cookiesToSet.forEach(({ name, value, options }) => {
        rewrittenResponse.cookies.set(name, value, options);
    });

    return rewrittenResponse;
}