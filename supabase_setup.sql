-- Ejecutar en Supabase > SQL Editor
create table if not exists public.responses(
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz default now(),
  name text, role text, store text,
  answers jsonb, top3 jsonb, comment text, started_at timestamptz);
alter table public.responses enable row level security;
-- anónimos: solo pueden INSERTAR (no leer)
create policy "anon insert" on public.responses for insert to anon with check (true);
-- lectura solo con clave de administrador (CAMBIAR 'CLAVE_ADMIN')
create or replace function public.get_results(pass text) returns setof public.responses
language plpgsql security definer set search_path=public as $$
begin
  if pass is distinct from 'CLAVE_ADMIN' then raise exception 'no autorizado'; end if;
  return query select * from public.responses order by created_at;
end $$;
grant execute on function public.get_results(text) to anon;
