'use client';

import { useRef } from 'react';
import classes from './TicketDetails.module.css';

const comments = [
    {
        author: 'King',
        date: '2025-01-01',
        content: 'This is a comment from the King',
    },
    {
        author: 'Queen',
        date: '2025-02-01',
        content: 'This is a comment from the Queen',
    },
];

export function TicketComments() {
    const commentRef = useRef(null);

    return (
        <footer>
            <h3>Comments</h3>
            <form
                onSubmit={(event) => {
                    event.preventDefault();
                    alert("TODO: Add commnet");
                }}
            >
                <textarea ref={commentRef} placeholder='Add a comment' />
                <button type='submit'>Add comment</button>
            </form>
            <section>
                {comments.map((comment) => (
                    <article key={comment.date} className={classes.comment}>
                        <strong>{comment.author}</strong>
                        <time> {comment.date}</time>
                        <p>{comment.content}</p>
                    </article>
                ))}
            </section>
        </footer>
    );
}