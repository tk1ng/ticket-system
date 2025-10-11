import Link from 'next/link';
import { urlPath } from '@/utils/url-helpers';

export default async function ErrorPage({ searchParams, params }) {
    const { type } = await searchParams;
    const knownErrors = ['login-failed', 'magic-link', 'invalid-magic-link'];

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