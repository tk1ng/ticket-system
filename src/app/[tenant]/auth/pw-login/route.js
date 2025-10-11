import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';

export async function POST(request, { params }) {
    const formData = await request.formData();
    const email = formData.get('email');
    const password = formData.get('password');

    const supabase = await getSupabaseCookiesUtilClient();
    console.log(supabase)
    const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
    });

    const userData = data?.user;

    if (error || !userData) {
        return NextResponse.redirect(
            buildUrl('/error?type=login-failed', params.tenant, request),
            { status: 302 }
        );
    }

    return NextResponse.redirect(buildUrl('/tickets', params.tenant, request), { status: 302 });
}