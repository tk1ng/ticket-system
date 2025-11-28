import Link from 'next/link';
import { urlPath } from '@/utils/url-helpers';

export default async function ErrorPage({ searchParams, params }) {
    const { type } = await searchParams;
    const knownErrors = ['login-failed', 'magic-link', 'invalid-magic-link', 'register_mail_mismatch', 'register_mail_exists', 'register_unknown'];

    return (
        <div style={{ textAlign: 'center' }}>
            <h1>Ooops!!!</h1>
            {type === 'login-failed' && (
                <strong>Login was not successfull, sorry.</strong>
            )}
            {type === 'magic-link' &&
                <strong>
                    Could not send a magic link. Maybe you had a typo in your E-Mail?
                </strong>
            }
            {type === 'invalid-magic-link' &&
                <strong>
                    The magic link was expired or invalid. Please request a new one.
                </strong>
            }
            {type === 'register_mail_mismatch' &&
                <strong>
                    You are not legitimated to register an account with <u>{searchParams.email}</u>.
                </strong>
            }
            {type === 'register_mail_exists' &&
                <strong>
                    There is already an account registered with &nbsp;
                    <u>{searchParams.email}</u>
                </strong>

            }
            {type === 'register_unknown' &&
                <strong>
                    Sorry but an unknonw error occurred when trying to create an account. Please try again later or contact your admin if the issue persist.
                </strong>

            }
            {!knownErrors.includes(type) && (
                <strong>
                    Something went wrong. Please try again or contact support
                </strong>
            )}

            <br />

            <Link role='button' href={urlPath('/', params.tenant)}>Go Back</Link>
        </div>
    );
}