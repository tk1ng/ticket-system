'use client'

import * as React from 'react';
import Image from 'next/image';

import { FORM_TYPES } from './formTypes';
import { Login } from './Login';

import styles from './page.module.css';

export default function LoginPage({ searchParams }) {
  const useMagicLink = searchParams.magicLink === 'yes';
  const isPasswordRecovery = searchParams.passwordRecovery === 'yes';

  let formType = FORM_TYPES.PASSWORD_LOGIN;

  if (useMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (isPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return (
    <Login formType={formType} />
  );
}
