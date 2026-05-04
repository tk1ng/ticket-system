import { TicketList } from './TicketList';

export default async function TicketListPage({ params }) {
    const { tenant } = await params;
    return <>
        <h2>Ticket List</h2>
        <TicketList tenant={tenant} />
    </>
}