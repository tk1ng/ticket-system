import { NextResponse } from 'next/server';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';

export async function GET(request, { params }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const homePath = buildUrl('/', params.tenant, request);
    await supabase.auth.signOut();

    return NextResponse.redirect(homePath);
}
