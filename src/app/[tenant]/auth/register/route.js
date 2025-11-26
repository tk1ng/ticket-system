import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";


export async function POST(request, { params }) {
    const formData = await request.formData();
    const name = formData.get('name');
    const email = formData.get('email')
    const password = formData.get('password');
    const { tenant } = await params;

    // checks to make sure values are valid
    const isNonEmptyString = (value) => {
        return typeof value === 'string' && value.trim().length > 0;
    }

    const emailRegex = /^\S+@\S+$/;

    if (
        !isNonEmptyString(name) ||
        !isNonEmptyString(email) ||
        !emailRegex.test(email) ||
        !isNonEmptyString(password)
    ) {
        return NextResponse.redirect(
            buildUrl('/error', tenant, request),
            302
        )
    }

    const [, emailHost] = email.split('@');
    const supabaseAdminClient = getSupabaseAdminClient();
    const { data, error } = await supabaseAdminClient.from('tenants').select('*').eq('id', tenant).eq('domain', emailHost).single();

    const safeEmailString = encodeURIComponent(email);
    if(error) {
        return NextResponse.redirect(
            buildUrl(`/error?type=register_mail_mismatch&email=${safeEmailString}`, 
                tenant, 
                request),
            302
        )
    }


    return Response.json({ email, password, tenant, emailHost })

}