import nodemailer from 'nodemailer';
import { getSupabaseAdminClient } from '@/supabase-utils/adminClient';
import { buildUrl } from './url-helpers';

export async function sendOTPLink(email, type, tenant, request) {
    const supabaseAdminClient = getSupabaseAdminClient();

    const { data: linkData, error } = await supabaseAdminClient.auth.admin.generateLink({
        email,
        type,
    });

    const user = linkData.user;

    if (error || !user.app_metadata?.tenants.includes(tenant)) {
        return false;
    }

    const { hashed_token } = linkData.properties;
    const constructedLink = buildUrl(`/auth/verify?hashed_token=${hashed_token}&type=${type}`, tenant, request);

    const transporter = nodemailer.createTransport({
        host: "localhost",
        port: 54325,
    });

    let mailSubject = '';
    let initialSentence = '';
    let sentenceEnding = '';

    if (type === 'signup') {
        mailSubject = 'Activate your account';
        initialSentence = 'Hi there, you have successfully signed up!';
        sentenceEnding = 'activate your account';
    } else if (type === 'recovery') {
        mailSubject = 'New password requested';
        initialSentence = 'Hi there, you have requested a password change.';
        sentenceEnding = 'change it';
    } else {
        mailSubject = 'Magic Link requested';
        initialSentence = 'Hi there, you requested a magic login link!';
        sentenceEnding = 'login';
    }

    await transporter.sendMail({
        from: 'Ticket King auth@king.com',
        to: email,
        subject: mailSubject,
        html: `
            <h1>${initialSentence}</h1>
            <p>Click <a href="${constructedLink.toString()}">here</a> to ${sentenceEnding}.</p>
            `,
    }).catch(error => {
        console.log('Error sending email', error);
    });

    return true;
}

