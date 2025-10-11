'use client'

import { useEffect } from 'react';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { urlPath } from '@/utils/url-helpers';
import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';

export default function Nav({ tenant }) {
    const pathname = usePathname();
    const activeProps = { className: 'contrast' };
    const inactiveProps = { className: 'secondary outline' };

    const router = useRouter();
    const supabase = getSupabaseBrowserClient();

    useEffect(() => {
        const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === 'SIGNED_OUT') {
                router.push(urlPath(`/`, tenant));
            }
        });

        return () => subscription.unsubscribe();
    }, [])

    return (
        <nav>
            <ul>
                <li>
                    <Link role='button' href={urlPath('/tickets', tenant)} {...(pathname === urlPath('/tickets', tenant) ? activeProps : inactiveProps)}>Ticket List</Link>
                </li>
                <li>
                    <Link role='button' href={urlPath('/tickets/new', tenant)} {...(pathname === urlPath('/tickets/new', tenant) ? activeProps : inactiveProps)}>Create new Ticket</Link>
                </li>
                <li>
                    <Link role='button' href={urlPath('/tickets/users', tenant)} {...(pathname === urlPath('/tickets/users', tenant) ? activeProps : inactiveProps)}>User List</Link>
                </li>
            </ul>
            <ul>
                <li>
                    <Link
                        role='button'
                        href={urlPath('/logout', tenant)}
                        prefetch={false}
                        className='secondary'
                        onClick={(event) => {
                            event.preventDefault();
                            supabase.auth.signOut();
                        }}
                    >
                        Log out
                    </Link>
                </li>
            </ul>
        </nav>
    );
};