'use client'

import { useEffect, useRef } from 'react';

import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';

export const Login = ({ isPasswordLogin }) => {
    const router = useRouter();
    const supabase = getSupabaseBrowserClient();
    const emailInputRef = useRef(null);
    const passwordInputRef = useRef(null);

    useEffect(() => {
        const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === 'SIGNED_IN') {
                router.push('/tickets');
            }
        });

        return () => subscription.unsubscribe();
    }, [])

    return (
        <form
            action={isPasswordLogin ? '/auth/pw-login' : '/auth/magic-link'}
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
            <article style={{ maxWidth: '420px', margin: 'auto' }}>
                <header>Login</header>
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

                <p>
                    {isPasswordLogin ? (
                        <Link
                            href={{
                                pathname: '/',
                                query: { magicLink: 'yes' }
                            }}
                        >
                            Go to Magic Link Login
                        </Link>
                    ) : (
                        <Link
                            href={{
                                pathname: '/',
                                query: { magicLink: 'no' }
                            }}
                        >
                            Go to Password Login
                        </Link>
                    )}
                </p>

                <button type='submit'>
                    Sign in with
                    {isPasswordLogin ? " Password" : " Magic Link"}
                </button>
            </article>
        </form>
    );
};