import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export async function GET(request) {
    const supabase = await getSupabaseCookiesUtilClient();

    const {data: claims, error} = await supabase.auth.getClaims();

    if (error) {
        return NextResponse.json(error, {status: 400})
    }

    console.log('claims', claims);
    return NextResponse.json(claims, {status: 200})
}