import { IconCheck, IconUserOff } from '@tabler/icons-react';

const users = [
    {
        name: 'T King',
        job: 'Software Engineer',
        isAvailable: false,
    },
    {
        name: 'B King',
        job: 'Product Manage',
        isAvailable: true,
    },

];

export default function UserList() {
    return (
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                {users.map((user) => (
                    <tr key={user.name} >
                        <td style={{ color: user.isAvailable ? "green" : undefined }}>
                            {user.isAvailable ? <IconCheck /> : <IconUserOff />} {user.name}
                        </td>
                        <td>{user.job}</td>
                    </tr>
                ))}
            </tbody>
        </table >
    );
}