import { NextResponse } from 'next/server';
import { buildUrl } from '@/utils/url-helpers';
import { sendOTPLink } from '@/utils/sendOTPLink';

export async function POST(request, { params }) {
    const { tenant } = await params;
    const formData = await request.formData();
    const type = formData.get('type') === 'recovery' ? 'recovery' : 'magiclink';
    const email = formData.get('email');

    const errorUrl = buildUrl(`/error?type=${type}`, tenant, request);
    const thanksUrl = buildUrl(`/magic-thanks?type=${type}`, tenant, request);

    const otpSuccess = await sendOTPLink(email, type, tenant, request);

    if (!otpSuccess) {
        return NextResponse.redirect(errorUrl, 302);
    } else {
        return NextResponse.redirect(thanksUrl, { status: 302 });
    }
}