"use client";

import { useRef } from "react";
import { useRouter, usePathname, useSearchParams } from 'next/navigation';

export function TicketFilters({ tenant }) {
    const searchInputRef = useRef(null);
    const router = useRouter();
    const pathname = usePathname();
    const searchParams = useSearchParams();

    const onSubmit = (event) => {
        event.preventDefault();
        const searchTerm = searchInputRef.current.value;
        const updatedParams = new URLSearchParams(searchParams);
        updatedParams.set("search", searchTerm);
        updatedParams.set("page", 1);
        updatedParams.set("r", Math.random());
        router.push(pathname + "?" + updatedParams.toString());
    };

    return (
        <form onSubmit={onSubmit}>
            <div style={{ alignContent: "center", display: "flex", gap: "15px" }}>
                <input
                    type="search"
                    ref={searchInputRef}
                    name="search"
                    placeholder="Search tickets..."
                    required
                    style={{ margin: 0, maxWidth: "350px" }}
                />
                <button type="submit" role="button" style={{ width: "auto" }}>
                    Search
                </button>
            </div>
        </form>
    )
}
