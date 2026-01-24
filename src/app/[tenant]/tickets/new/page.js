'use client'

import React, { useState, useRef } from 'react';
import { getSupabaseBrowserClient } from '@/supabase-utils/browserClient';


export default function CreateTicket({ params }) {
    const { tenant } = React.use(params);
    const [isLoading, setIsLoading] = useState(false);

    const supabase = getSupabaseBrowserClient();

    const ticketTitleRef = useRef(null);
    const ticketDescriptionRef = useRef(null);

    return (
        <article>
            <h3>Create a new ticket</h3>
            <form
                onSubmit={(event) => {
                    event.preventDefault();
                    const title = ticketTitleRef.current.value;
                    const description = ticketDescriptionRef.current.value;

                    if (title.trim().length > 4 && description.trim().length > 9) {
                        setIsLoading(true);
                        supabase.from('tickets').insert({ title, description }).select().single().then(({ data, error }) => {
                            if (error) {
                                setIsLoading(false);
                                alert('Could not create ticket');
                                console.error(error);
                            } else {
                                alert('Successfully created ticket');
                            }
                        });
                    } else {
                        alert('A title must have at least 5 chars and a description must contain atleast 10 chars.')
                    }
                }}
            >
                <input ref={ticketTitleRef} placeholder='Add a title' disabled={isLoading} />
                <textarea ref={ticketDescriptionRef} placeholder='Add a comment' disabled={isLoading} />
                <button type='submit' aria-busy={isLoading} disabled={isLoading}>Create ticket now</button>
            </form>
        </article>
    );
}