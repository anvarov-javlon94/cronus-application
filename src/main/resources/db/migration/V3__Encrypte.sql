create extension if not exists pgcrypto;
update manager set password = crypt(password, gen_salt('bf',8));
