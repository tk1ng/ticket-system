import { Suspense } from 'react';
import { TicketList } from './TicketList';
import { TicketFilters } from './TicketFilters';

// export const dynamic = "force-dynamic";

export default async function TicketListPage({ params, searchParams }) {
    const { tenant } = await params;
    return <>
        <h2>Ticket List</h2>
        <TicketFilters />
        <Suspense
            fallback={<div aria-busy="true">Loading tickets...</div>}
            key={JSON.stringify(searchParams)}
        >
            <TicketList tenant={tenant} searchParams={searchParams} />
        </Suspense>
    </>
}