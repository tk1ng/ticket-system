import { TicketList } from './TicketList';


const dummyTickets = [
    {
        id: 1,
        title: 'Code BragBook',
        status: 'Not started',
        author: 'Chayan',
    },
    {
        id: 2,
        title: 'Create Virtual Machine',
        status: 'In progress',
        author: 'King',
    },
    {
        id: 3,
        title: 'Read about 31/ATLAS',
        status: 'Done',
        author: 'King',
    },
];

export default async function TicketListPage({ params }) {
    return <>
        <h2>Ticket List</h2>
        <TicketList tickets={dummyTickets} tenant={params.tenant} />
    </>
}