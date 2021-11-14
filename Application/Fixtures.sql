

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('cbc4050c-a5f7-4b4e-a8af-1c562521e511', 'IHPを使ってみた', '#### かなり凄い


簡単Haskell 

', '2021-11-14 16:05:31.194682+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('7b35adb2-2968-42c7-a84f-e7ad00be2839', 'cbc4050c-a5f7-4b4e-a8af-1c562521e511', 'maru', 'やったね！');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('da8be604-2522-4133-9bd7-31bc9f7668b1', 'cbc4050c-a5f7-4b4e-a8af-1c562521e511', 'aa', 'すごいね');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


