'use client'

import { useEffect, useRef } from 'react';

import Link from 'next/link';
import { FORM_TYPES } from './formTypes';
import { useRouter } from 'next/navigation';
import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';
import { urlPath } from '@/utils/url-helpers';

export const Login = ({ formType = 'pw-login', tenantName, tenant }) => {
    const router = useRouter();
    const supabase = getSupabaseBrowserClient();

    const emailInputRef = useRef(null);
    const passwordInputRef = useRef(null);

    const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
    const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
    const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

    const formAction = isPasswordLogin ? urlPath('/auth/pw-login', tenant) : urlPath('/auth/magic-link', tenant);

    useEffect(() => {
        const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === 'SIGNED_IN') {
                router.push(urlPath('/tickets', tenant));
            }
        });

        return () => subscription.unsubscribe();
    }, [])

    return (
        <form
            action={formAction}
            method='POST'
            onSubmit={(event) => {
                isPasswordLogin && event.preventDefault();

                supabase.auth.signInWithPassword({
                    email: emailInputRef.current.value,
                    password: passwordInputRef.current.value,
                })
                    .then((result) => {
                        !result.data?.user && alert('Could not sign in.')
                    });
            }
            }
        >
            {isPasswordRecovery && (
                <input type='hidden' name='type' value='recovery' />
            )}

            <article style={{ maxWidth: '420px', margin: 'auto' }}>
                <header>
                    {isPasswordRecovery && <strong>Request new password</strong>}
                    {!isPasswordRecovery && <strong>Login</strong>}
                    <div style={{ display: 'block', fontSize: '0.7' }}>
                        {tenantName}
                    </div>
                </header>
                <fieldset>
                    <label htmlFor='email'>
                        Email
                        <input
                            type='email'
                            id='email'
                            name='email'
                            ref={emailInputRef}
                            required
                        />
                    </label>

                    {isPasswordLogin && (
                        <label htmlFor='password'>
                            Password
                            <input
                                type='password'
                                id='password'
                                name='password'
                                ref={passwordInputRef}
                            />
                        </label>
                    )}
                </fieldset>

                <button type='submit'>
                    {isPasswordLogin && 'Sign in with Password'}
                    {isPasswordRecovery && 'Request new Password'}
                    {isMagicLinkLogin && 'Sign in with Magic Link'}
                </button>

                <p>
                    {!isPasswordLogin && (
                        <Link
                            role='button'
                            className='contrast'
                            href={{
                                pathname: urlPath('/', tenant),
                                query: { magicLink: 'no' }
                            }}
                        >
                            Go to Password Login
                        </Link>
                    )}

                    {!isMagicLinkLogin && (
                        <Link
                            role='button'
                            className='contrast'
                            href={{
                                pathname: urlPath('/', tenant),
                                query: { magicLink: 'yes' }
                            }}
                        >
                            Go to Magic Link Login
                        </Link>
                    )}

                    {!isPasswordRecovery && (
                        <Link
                            // role='button'
                            href={{
                                pathname: urlPath('/', tenant),
                                query: { passwordRecovery: 'yes' }
                            }}
                            style={{
                                textAlign: 'center',
                                display: 'block',
                            }}
                        >
                            Forgot password?
                        </Link>
                    )}
                </p>
            </article>
        </form>
    );
};