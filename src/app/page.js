'use client'

import * as React from 'react';
import Image from 'next/image';

import { Login } from './Login';

import styles from './page.module.css';

export default function LoginPage({ searchParams }) {
  const { magicLink } = React.use(searchParams);
  const wantsMagicLink = magicLink === "yes";
  return (
    <Login isPasswordLogin={!wantsMagicLink} />
  );
}
