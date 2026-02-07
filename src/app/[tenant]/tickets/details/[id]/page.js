import { notFound } from 'next/navigation';
import { TicketComments } from './TicketComments';
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient';
import { TICKET_STATUS } from '@/utils/constants';
import classes from './TicketDetails.module.css';

export default async function TicketDetailsPage({ params }) {
    const supabase = getSupabaseCookiesUtilClient();
    // enforcing number type on id to match type in database and avoid having string
    const id = Number(params.id);
    const { data: ticket, error } = await (await supabase).from('tickets').select("*").eq("id", id).single();

    if (error) return notFound();

    const { author_name: authorName, created_at: createdAt, title, description, status } = ticket;
    const dateString = Date(createdAt).toLocaleString("en-US");

    return (
        <article className={classes.ticketDetails}>
            <header>
                <strong>#{id}</strong> - <strong className={classes.ticketStatusGreen}>{TICKET_STATUS[status]}</strong>
                <br />
                <small className={classes.authorAndDate}>
                    Created by <strong>{authorName}</strong> at {" "}
                    <time>{dateString}</time>
                </small>
                <h2>{title}</h2>
            </header>
            <section>
                {description}
            </section>
            <TicketComments />
        </article>
    )
}