import * as React from 'react';
import { notFound } from 'next/navigation';


import { FORM_TYPES } from './formTypes';
import { Login } from './Login';
import { getSupabaseAdminClient } from '@/supabase-utils/adminClient';

import styles from './page.module.css';

export default async function LoginPage({ searchParams, params }) {
  const { magicLink, passwordRecovery } = await searchParams;
  const { tenant } = await params;
  const useMagicLink = magicLink === 'yes';
  const isPasswordRecovery = passwordRecovery === 'yes';

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin.from('tenants').select('*').eq('id', tenant).single();

  if (error) {
    notFound();
  }

  const { name: tenantName } = data;

  let formType = FORM_TYPES.PASSWORD_LOGIN;

  if (useMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (isPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return (
    <Login formType={formType} tenantName={tenantName} tenant={tenant} />
  );
}
