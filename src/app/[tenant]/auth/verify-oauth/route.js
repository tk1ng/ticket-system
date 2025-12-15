import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { getSupabaseAdminClient } from '@/supabase-utils/adminClient';
import { buildUrl } from '@/utils/url-helpers';

export async function GET(request, { params }) {
    const url = new URL(request.url);

    const supabase = await getSupabaseCookiesUtilClient();
    const { data: sessionData, error: sessionError } = await supabase.auth.exchangeCodeForSession(url.searchParams.get('code'));

    if (sessionError) {
        return NextResponse.redirect(
            buildUrl('/error?type=login-failed', params.tenent, request)
        );
    }

    const { tenant } = await params;
    const supabaseAdmin = getSupabaseAdminClient();
    const { user } = sessionData;
    const { email } = user;
    const [, emailHost] = email.split('@');
    const { error: tenantMatchError } = await supabaseAdmin.from('tenants').select().eq('domain', emailHost).single();

    if (tenantMatchError) {
        await supabase.auth.signOut();
        return NextResponse.redirect(
            buildUrl(
                `/error?type=register_mail_mismatch&email=${email}`,
                params.tenant,
                request,
            ),
        )
    }

}