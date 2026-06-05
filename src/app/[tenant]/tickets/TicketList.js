import Link from 'next/link'
import { urlPath } from '@/utils/url-helpers'
import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookiesUtilClient'
import { TICKET_STATUS } from '@/utils/constants';
import { ClientPageRoot } from 'next/dist/client/components/client-page';
import { SearchParamsContext } from 'next/dist/shared/lib/hooks-client-context.shared-runtime';

export async function TicketList({ tenant, searchParams }) {
    const supabase = await getSupabaseCookiesUtilClient();
    const { data: tickets, error } = await supabase.from('tickets').select().eq('tenant', tenant).limit(3);
    const { count } = await supabase.from('tickets').select("*", { count: "exact", head: true }).eq('tenant', tenant);
    const moreRows = count - tickets.length > 0;

    let page = 1;
    if (
        Number.isInteger(Number(searchParams.page)) && Number(searchParams.page) > 0
    ) {
        page = Number(searchParams.page);
    }

    return (
        <>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th></th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    {tickets.map((ticket) => (
                        <tr key={ticket.id}>
                            <td>{ticket.id}</td>
                            <td><Link href={urlPath(`/tickets/details/${ticket.id}`, tenant)}>{ticket.title}</Link></td>
                            <td>{TICKET_STATUS[ticket.status]}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <div>
                {page > 1 && (
                    <Link role='button' href={{ query: { page: page - 1 } }}>
                        Previous page
                    </Link>
                )}

                {moreRows && (
                    <Link style={{ marginLeft: "auto" }} role='button' href={{ query: { page: page + 1 } }}>
                        Next page
                    </Link>
                )}
            </div>
        </>
    )
}