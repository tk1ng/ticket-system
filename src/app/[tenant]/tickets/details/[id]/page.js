import { TicketComments } from './TicketComments';
import classes from './TicketDetails.module.css';

export default async function TicketDetailsPage({ params }) {
    const { id: ticketId } = await params;
    return (
        <article className={classes.ticketDetails}>
            <header>
                <strong>#{ticketId}</strong> - <strong className={classes.ticketStatusGreen}>Open</strong>
                <br />
                <small className={classes.authorAndDate}>
                    Created by <strong>AuthorName</strong> at {" "}
                    <time>May 21 2025</time>
                </small>
                <h2>Ticket title should be here</h2>
            </header>
            <section>
                <TicketComments />
            </section>
        </article>
    )
}