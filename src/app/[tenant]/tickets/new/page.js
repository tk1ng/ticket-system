'use client'

import { useRouter } from 'next/navigation';
import React from 'react';
import { useEffect, useRef, useState } from 'react';
import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';
import { urlPath } from '@/utils/url-helpers';

export default function CreateTicket({ params }) {
    const router = useRouter();
    useEffect(() => {
        router.prefetch(urlPath(`/tickets/details/[id]`))
    }, [router]);

    const ticketTitleRef = useRef(null);
    const ticketDescriptionRef = useRef(null);

    const [isLoading, setIsLoading] = useState(false);

    const { tenant } = React.use(params);

    const supabase = getSupabaseBrowserClient();

    const handleTicketSubmit = (event) => {
        event.preventDefault();

        const title = ticketTitleRef.current.value;
        const description = ticketDescriptionRef.current.value;

        if (title.trim().length > 4 && description.trim().length > 9) {
            setIsLoading(true);

            supabase.from('tickets').insert({
                title,
                description,
                tenant
            })
                .select()
                .single()
                .then(({ data, error }) => {
                    if (error) {
                        setIsLoading(false);
                        alert('Could not create ticket');
                        console.log('Error:', error);
                    } else {
                        setIsLoading(false);
                        console.log(data);
                        router.push(urlPath(`/tickets/details/${data.id}`, tenant));
                    }
                })

        } else {
            alert('A title must have at least 5 chars and a description must at least contain 10');
        };
    };

    return (
        <article>
            <h3>Create a new ticket</h3>
            <form
                onSubmit={handleTicketSubmit}
            >
                <input ref={ticketTitleRef} disabled={isLoading} placeholder='Add a title' />
                <textarea ref={ticketDescriptionRef} disabled={isLoading} placeholder='Add a comment' />
                <button disabled={isLoading} aria-busy={isLoading} type='submit'>Create ticket now</button>
            </form>
        </article>
    );
}