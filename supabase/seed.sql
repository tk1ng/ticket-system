SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

\restrict KoWbnkfDVmRrGAItbeRaa9eHTdWsyh12hMdDnXPXwKtWVqRSmah3HJKfC9Lk5mv

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ca9a9702-be1f-4964-b00f-410b95269d5e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user1@cool.local","user_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","user_phone":""}}', '2025-09-17 00:34:21.664154+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a5c8e42-6cbd-4c53-a3c3-015a17678ba0', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 02:43:53.89536+00', ''),
	('00000000-0000-0000-0000-000000000000', '359177d9-66a2-4467-bc06-9108440d8bc8', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 03:01:03.775449+00', ''),
	('00000000-0000-0000-0000-000000000000', '25946177-5cf1-4036-9273-880fcef37d04', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 03:01:07.210838+00', ''),
	('00000000-0000-0000-0000-000000000000', '58e5caaf-9bc9-4279-b432-1ab2409a1968', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 03:01:58.006198+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4a79e86-432e-4776-a04d-701ae92f0b97', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 03:04:48.008089+00', ''),
	('00000000-0000-0000-0000-000000000000', '22eb173a-8724-4935-aa47-0ee5c91ee7d0', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 03:04:53.773615+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dda5123d-bc7c-4de6-acf7-a2e3413d920f', '{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-17 21:36:53.577429+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ffebdd1-d372-40c1-8e54-3d55e5e96bc3', '{"action":"token_revoked","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-17 21:36:53.578546+00', ''),
	('00000000-0000-0000-0000-000000000000', '66265ef4-4015-457c-8bd3-03efa7656bc0', '{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-17 21:36:53.605412+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4eebf7b-cc29-44df-83f4-0f069962456e', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-17 21:38:54.123232+00', ''),
	('00000000-0000-0000-0000-000000000000', '974c9c5b-43d5-4eeb-80d8-30dd472929b3', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-17 22:08:02.096939+00', ''),
	('00000000-0000-0000-0000-000000000000', '27ce025b-24cb-4511-800a-bf31db6ac266', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-17 22:09:11.951681+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e56789f6-905d-44e4-85cf-32a6e916737b', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user2@cool.local","user_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","user_phone":""}}', '2025-09-27 21:38:35.103979+00', ''),
	('00000000-0000-0000-0000-000000000000', '88fde720-beae-4be0-b515-428e4133e655', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-27 21:38:41.803335+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c93e622c-85cb-439d-adfc-db870f94730f', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-27 21:38:57.950175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a55ef452-de34-4e6c-b96f-75259bf74192', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-27 22:01:57.715742+00', ''),
	('00000000-0000-0000-0000-000000000000', '942f5113-c561-4728-ae33-0fe37cd826f2', '{"action":"token_refreshed","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-27 23:00:11.186947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'edfa80b0-349e-4433-83e8-2baea08f6f91', '{"action":"token_revoked","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-27 23:00:11.188051+00', ''),
	('00000000-0000-0000-0000-000000000000', '628e06ad-bc14-4dcc-839b-ca8674d4d5b7', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-27 23:13:55.61167+00', ''),
	('00000000-0000-0000-0000-000000000000', '4576aa53-5add-4f4b-aeee-01d2ab17d50e', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-27 23:57:48.130753+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4dbc6a3-68cf-487e-9bc7-61fcd048f09b', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:00:55.109861+00', ''),
	('00000000-0000-0000-0000-000000000000', '09bb6636-bf96-41c8-91b6-828617f64729', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:08:02.280671+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e2cd923-d17b-4fb0-b0c5-1b8574a7333d', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:09:12.115682+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d86678e-b353-435a-bcf3-ba8d8e1dfb40', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:11:31.775775+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce5b1e86-ebfc-424b-948c-8f770d620987', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:11:59.316953+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c76ca3b6-75d9-4cbc-9736-03c27e2a1c36', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:14:14.921516+00', ''),
	('00000000-0000-0000-0000-000000000000', '23db70ff-21d3-45e0-b470-46470125b2d8', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:14:35.946847+00', ''),
	('00000000-0000-0000-0000-000000000000', '522c0143-5e29-4ae9-ac04-c23aaec3d637', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:15:05.696427+00', ''),
	('00000000-0000-0000-0000-000000000000', '599b15ab-9088-43ab-bde9-7ae21c4f4be0', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:15:18.752362+00', ''),
	('00000000-0000-0000-0000-000000000000', '1baa3cb7-d6c0-447f-bd05-4670dbddccef', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 00:15:19.056854+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc8ecff9-e503-4342-9f36-253ff6bb2bab', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:18:00.43244+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5543e0f-32a6-4c99-b5b2-84b2c6140888', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:19:11.18796+00', ''),
	('00000000-0000-0000-0000-000000000000', '35a7b694-ba77-4a2b-bcf4-3c19057a2fa1', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:19:19.6233+00', ''),
	('00000000-0000-0000-0000-000000000000', '872523c2-fbd7-4339-a537-663b8fd20489', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 00:19:19.964415+00', ''),
	('00000000-0000-0000-0000-000000000000', '11603084-ef99-4db5-ba9b-c18098b46b1b', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:19:30.541002+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbe52f78-3899-4b8d-911e-e00875d0dba8', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:19:39.379636+00', ''),
	('00000000-0000-0000-0000-000000000000', '6266bab4-284b-44fa-8a0a-9b9d045a5a4c', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:22:06.728901+00', ''),
	('00000000-0000-0000-0000-000000000000', '45b1e743-fede-4180-99cb-9cb282787b35', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:22:52.648825+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af146c6f-1290-4ee3-9275-8cae9a230bec', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:27:52.800742+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b18e1b81-4a42-4024-986e-53b47d7e4120', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:28:20.458231+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b72f11c-ee85-4aa6-a4bf-e80ce5f3dce7', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:30:58.610973+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ae84835-3831-4f74-aa29-509adc00b853', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:31:08.552538+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a5928b6-21eb-4acf-8aaa-ba9a4d7c3ba0', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 00:31:08.853581+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caf186f8-fb94-44c8-9f6e-05288f73200f', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:38:40.340771+00', ''),
	('00000000-0000-0000-0000-000000000000', '402d3b10-8cf1-4164-8b77-3a20bceadecf', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 00:39:03.698463+00', ''),
	('00000000-0000-0000-0000-000000000000', '14ad37db-255c-435b-b393-85d61398dec0', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 00:39:13.459903+00', ''),
	('00000000-0000-0000-0000-000000000000', '77382ddf-e600-4751-8a99-c92294f01bd2', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 00:39:13.768182+00', ''),
	('00000000-0000-0000-0000-000000000000', '2dcf99df-1b86-4ea0-805c-8ccdc5ee969d', '{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-28 18:14:54.658961+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7ca0a95-3a23-4f39-9405-1b023317830c', '{"action":"token_revoked","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-09-28 18:14:54.660984+00', ''),
	('00000000-0000-0000-0000-000000000000', '78016f21-96cc-4fa8-933b-7d7ed2344ac6', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 18:54:46.410328+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc161247-2287-45c7-9428-55c290b41060', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 18:55:05.600877+00', ''),
	('00000000-0000-0000-0000-000000000000', '02da17e9-f4c0-47b3-8422-a24bcd369461', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 21:55:30.501409+00', ''),
	('00000000-0000-0000-0000-000000000000', '59430ac2-8ce6-47a2-9081-043afa75890d', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 21:55:43.557373+00', ''),
	('00000000-0000-0000-0000-000000000000', '990f0eff-8a9c-44f1-a5c0-49108e454f89', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user3@cool.local","user_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","user_phone":""}}', '2025-09-28 21:58:36.109281+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b5eee15-6135-4491-9ad2-ee272924688f', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:00:16.116555+00', ''),
	('00000000-0000-0000-0000-000000000000', '421f957c-f8dd-48e8-8e83-0b5d0257b6f6', '{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:00:26.190292+00', ''),
	('00000000-0000-0000-0000-000000000000', '7997876a-fdbe-46dc-b1fd-a941c857422c', '{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 22:00:26.491087+00', ''),
	('00000000-0000-0000-0000-000000000000', '0322eefb-872f-4a8a-8c79-05b6d09c3a1a', '{"action":"logout","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:00:35.88894+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4124291-2362-4283-9339-330e651b05d3', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:00:45.357997+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd089d7fb-8ca5-47e1-b969-357466032919', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:00:55.211793+00', ''),
	('00000000-0000-0000-0000-000000000000', '35d65ee2-b45c-413c-9efc-88c8b60a7eae', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 22:00:55.539444+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac51cca1-df01-49b3-8ec3-b83f35bd6506', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:00:59.705205+00', ''),
	('00000000-0000-0000-0000-000000000000', '70747e4a-2427-4eac-b57d-7fb70b41e59d', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:40:00.556688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e63fde3e-07c2-4512-8283-35b2c9adc78f', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:40:06.059996+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc7136c3-f775-4ca6-956b-3dad060c7c8e', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:42:31.468122+00', ''),
	('00000000-0000-0000-0000-000000000000', '41a9f0bb-16e9-41ee-9280-5295233ebb4d', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:43:01.187027+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d751b5d-33eb-407a-b7e3-f01ad58f95cb', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:45:19.837138+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bf2aca6-8e59-44b3-b3b0-b90a791dfe74', '{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:45:28.309717+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8e90875-9cfa-4e28-a91e-6ae22636c54e', '{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 22:45:28.623818+00', ''),
	('00000000-0000-0000-0000-000000000000', '5930572f-05ff-4c9d-bb83-eb710f99a61e', '{"action":"logout","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:50:23.753947+00', ''),
	('00000000-0000-0000-0000-000000000000', '135987d7-6368-4a0f-9c81-11e58a7ae737', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:50:33.380788+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c0d8621-44e7-4080-b639-4bfde901955a', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:50:44.992861+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8b1f92a-4ab8-4e53-a198-b3ace115beaf', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 22:50:45.3352+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa4ab7ed-88cb-439c-8444-167ff4c01e71', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:50:57.568519+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f23011f-05f1-4156-8df4-2bd162e61e2c', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:51:17.672571+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b882669-24a7-4596-a475-bbadaa85ae58', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:51:29.086842+00', ''),
	('00000000-0000-0000-0000-000000000000', '1650bfc2-799e-4ea6-a136-ed3bb5146cdd', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 22:51:29.402864+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6e32f9f-727e-4d5f-9a96-a8a6441fdcd7', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 22:59:37.744869+00', ''),
	('00000000-0000-0000-0000-000000000000', '7671d8ee-39ed-454a-a29a-d243b20ff78f', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 22:59:53.162918+00', ''),
	('00000000-0000-0000-0000-000000000000', '93bf4ff7-90f8-4b36-b872-a98d831c1165', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 23:00:06.862585+00', ''),
	('00000000-0000-0000-0000-000000000000', '16ffc9b6-1df2-464e-8736-d342731a9d3b', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 23:00:07.205323+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd0dc985-400f-4cbe-9549-67bdf41d125d', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 23:01:31.047595+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8e8ef33-f201-4044-936d-77ad36010835', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-09-28 23:01:51.899688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebecd63c-2980-4cd9-805d-55e30b9f5409', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-09-28 23:03:11.81165+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d8f2f33-3d7e-443c-a628-4c05c756ec5d', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-09-28 23:03:12.157185+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf41a0c7-8a10-4bef-9e64-1179bee8c8b5', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-04 20:38:03.512463+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f680f6c-c493-404c-8313-cc30d23ab302', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-04 20:39:02.286582+00', ''),
	('00000000-0000-0000-0000-000000000000', '48692c8e-2604-4629-85ee-c39a9f6e15e3', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-04 20:45:56.652881+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f506236-658a-451d-aa47-073cdb18e669', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-04 20:51:00.612131+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f683271b-0f1d-4c8b-8bef-77c5e6dbfa93', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:35:21.545631+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a034b6f0-a13c-4359-9baf-6f7d17b7fdf6', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:36:45.661212+00', ''),
	('00000000-0000-0000-0000-000000000000', '81e79b92-c495-47dc-9cd6-b81ef44cf3dc', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-05 00:36:56.909424+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd137624d-f3cd-46a3-aa85-d021a55273b9', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:39:53.091376+00', ''),
	('00000000-0000-0000-0000-000000000000', '3495461e-f11b-415c-adcc-f16154a7fd0f', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:41:29.020112+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e08b2b9-7d38-4b1f-9d29-d075d5fb3fa2', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:44:22.294962+00', ''),
	('00000000-0000-0000-0000-000000000000', '694f84be-ed0c-44d4-9341-4713838fb159', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:45:29.243836+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bb74c53-7f60-407c-9c3c-17e31123e482', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-05 00:46:04.118933+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee70775a-4678-49fb-89fa-c6495d55423b', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-05 00:46:06.924787+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa669d3d-e3c4-4b61-ad8a-24ca4f6c1087', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:46:15.568386+00', ''),
	('00000000-0000-0000-0000-000000000000', '83ecddf7-2be8-4ee8-8f0a-fcf457b97575', '{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 00:46:59.845748+00', ''),
	('00000000-0000-0000-0000-000000000000', '07dbaea6-8c95-452c-9e97-d948a91179cb', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-05 00:51:54.066572+00', ''),
	('00000000-0000-0000-0000-000000000000', '729eb0b9-fafd-4c5c-ac55-6304c711a8b7', '{"action":"user_updated_password","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 01:05:47.645882+00', ''),
	('00000000-0000-0000-0000-000000000000', '2cd387f5-e0ba-4b33-9b5c-8e25ef7f1c07', '{"action":"user_modified","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-05 01:05:47.646187+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bddbc6ed-3b67-4914-b106-cc931f226435', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-06 18:48:56.801335+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c492fa98-5331-4de7-a017-1b894af19a26', '{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-06 18:49:15.131577+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0cf7824-eb5c-46ec-90ba-f9aa8b2b8e42', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:03:01.064262+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cde79676-a815-4a4c-ac6c-b569713d253c', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:04:43.214662+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5dbdf4f-d41c-4eea-8bcd-db08cfd10500', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:05:19.741437+00', ''),
	('00000000-0000-0000-0000-000000000000', '71be1ee4-8d5d-4ac2-b02c-cf8d8f8afd39', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:12:27.722783+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deb2ddd8-b1f9-49cf-b08b-87c1d49d3ceb', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:13:00.33152+00', ''),
	('00000000-0000-0000-0000-000000000000', '6bcf377a-30d1-4b26-9180-6d18ad686696', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:14:23.938562+00', ''),
	('00000000-0000-0000-0000-000000000000', '09eb928f-e0d1-43a5-883d-086d9290e8bb', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:14:55.719477+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d31b747-c24d-4da8-b6ed-871bdd4e5054', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:19:45.293009+00', ''),
	('00000000-0000-0000-0000-000000000000', '155a4164-d42f-46c3-8549-c68528793fd9', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:22:10.655832+00', ''),
	('00000000-0000-0000-0000-000000000000', '7637363a-d1d5-4e44-a696-b12b6a5391e2', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:22:23.553907+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ec13c25-e07f-44b0-9ada-f7b32cbe9b58', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:23:43.066935+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d5de5c4-e965-4e5c-940d-87962c72aa2d', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:23:46.44445+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ab352c5-db5e-4653-830d-b3e9eafc9a9a', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:24:22.244551+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f3edfa5-a51c-477d-8a14-61de35bf771b', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:26:09.945271+00', ''),
	('00000000-0000-0000-0000-000000000000', '95a12d3e-92d3-4562-9c28-89f65c4c299a', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:26:26.863066+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4dfd6e8-49b0-4708-9a7e-ac2c860f3bee', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:38:44.892954+00', ''),
	('00000000-0000-0000-0000-000000000000', '93d7cdf2-66fe-4df0-b536-64b89b111142', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:49:10.344784+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c0db291-a0c6-4b6e-9a95-77307a5ed67c', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:49:15.151675+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b1f5cee-601e-46b3-a351-03b4cbee3d95', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:50:39.520757+00', ''),
	('00000000-0000-0000-0000-000000000000', '845d7dcd-4615-41c4-966a-6c657e789df4', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:50:50.826551+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f0ae756-3941-4e19-b648-37f6d25b475c', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:56:01.936543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd53300b7-28d0-42d3-a40d-b31da6d36544', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:56:37.343492+00', ''),
	('00000000-0000-0000-0000-000000000000', '9934859c-62a1-4ebf-b570-281d6af53636', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 18:57:58.407292+00', ''),
	('00000000-0000-0000-0000-000000000000', '57ca83ef-2d12-4865-acf5-ec27a8b4bc59', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 18:58:09.224096+00', ''),
	('00000000-0000-0000-0000-000000000000', '41624afe-f110-449a-9b5a-c83ee034296d', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 19:02:10.295176+00', ''),
	('00000000-0000-0000-0000-000000000000', '117a94ae-605a-416f-8534-a276efba648b', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 19:02:13.361882+00', ''),
	('00000000-0000-0000-0000-000000000000', '1193673e-dd92-4926-af42-7c19f205d10f', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-11 19:54:29.11897+00', ''),
	('00000000-0000-0000-0000-000000000000', '11d77d0f-13d1-4a46-a39b-54bdd989046f', '{"action":"token_refreshed","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-10-11 20:54:14.826535+00', ''),
	('00000000-0000-0000-0000-000000000000', '0102dc2b-b53b-477e-90d1-393919d86dcd', '{"action":"token_revoked","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}', '2025-10-11 20:54:14.827662+00', ''),
	('00000000-0000-0000-0000-000000000000', '69b022d3-bcf1-4944-a6fc-9aea45afc6b6', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 20:54:16.952294+00', ''),
	('00000000-0000-0000-0000-000000000000', '07ae2a7f-eb7e-4ff2-9ea8-eb3b6b2cc18c', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 20:55:07.648093+00', ''),
	('00000000-0000-0000-0000-000000000000', '478f53be-43da-4241-8974-5f59bbdb12d4', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 20:55:50.962055+00', ''),
	('00000000-0000-0000-0000-000000000000', '36c6add3-4b44-44c6-b200-6d941b710651', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 20:57:40.568547+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c9a616e-71b4-4a31-9746-f4c82033f096', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 20:58:30.740931+00', ''),
	('00000000-0000-0000-0000-000000000000', '6aeb5da6-03f0-40f5-ada2-dd365efe7454', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 21:01:45.115141+00', ''),
	('00000000-0000-0000-0000-000000000000', '6982e5a6-9b2e-4e7f-a4b7-bcfa806d7e3d', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 21:05:07.818513+00', ''),
	('00000000-0000-0000-0000-000000000000', '49df8868-9ae2-4422-89a3-09ded29424f3', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 21:09:13.447739+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df8f7db5-3bf4-41d4-a591-9e9e048c1d94', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 21:10:42.038166+00', ''),
	('00000000-0000-0000-0000-000000000000', '29c8378c-8894-4bcb-8381-eb260c078777', '{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}', '2025-10-11 21:11:30.145674+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb6b5f52-fbb2-4866-bddf-d2bfa12d3c30', '{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-11 21:11:39.254981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd1386b4-a7df-4a4b-8e7e-b00bab3c977f', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:23:03.817107+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee1cef0b-257f-4f60-9b49-7746c21122ab', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-28 00:23:07.110351+00', ''),
	('00000000-0000-0000-0000-000000000000', '4247a9d5-a1f7-44c2-90d6-332e2acd0c35', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:23:27.374659+00', ''),
	('00000000-0000-0000-0000-000000000000', '61651477-8039-4586-8e60-dd17f5f4a009', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-28 00:23:30.423374+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acf347a8-70d1-42a4-a72b-98091917329e', '{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:23:47.535152+00', ''),
	('00000000-0000-0000-0000-000000000000', '03190c63-5a97-4a45-bd8e-db6ee318d36f', '{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-28 00:23:49.862229+00', ''),
	('00000000-0000-0000-0000-000000000000', '4db6039e-86f3-4dc0-a232-6042bfc14292', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:23:57.319536+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a82b81b5-8c3a-48bf-82c8-7035a627ade0', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-28 00:24:00.385038+00', ''),
	('00000000-0000-0000-0000-000000000000', '73d901f7-aa3e-404a-80d5-b9bac61ae8d5', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:30:03.11523+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3a1fdda-16e8-4b19-9c76-87b9034ee222', '{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}', '2025-10-28 00:30:04.635713+00', ''),
	('00000000-0000-0000-0000-000000000000', '31246fc0-fef8-4ea0-8f8d-7e93993880da', '{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-28 00:30:23.712041+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('d6dbec14-f1ac-452e-a512-7b8f4a4f18e2', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '329f8ff8-b7f4-4309-9ba0-d48a991f6521', 's256', 'Se_QuwzCK-awhFfik7oZrfEG1qn-Ucmn-mxP8AysKqo', 'magiclink', '', '', '2025-09-28 00:00:55.104916+00', '2025-09-28 00:00:55.104916+00', 'magiclink', NULL),
	('ad3a878b-5d7c-4cdd-b68a-6930a2ffbc0d', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '7923f9b4-9729-4fe0-8962-afb2ec70cc1f', 's256', 'LQLUB9exFOPI_MzpbBcKtLJBcaCGpko6PTlmOQQlpNU', 'magiclink', '', '', '2025-09-28 00:08:02.278639+00', '2025-09-28 00:09:12.118347+00', 'magiclink', '2025-09-28 00:09:12.118321+00'),
	('eff063df-662a-48da-b2cc-6a53a8858633', 'f99aef73-00eb-42a3-941d-3b86375d3d47', '870fc925-dc3f-4080-a59b-1d2d74937b59', 's256', 'jVxsjVKaGf91V9GN8olnAlxalrHs0qe4bOzPXjICxNU', 'magiclink', '', '', '2025-09-28 00:11:31.774612+00', '2025-09-28 00:11:59.319681+00', 'magiclink', '2025-09-28 00:11:59.31965+00'),
	('3816d6b9-ef1c-4ae1-b8b0-b09ab11bd294', 'f99aef73-00eb-42a3-941d-3b86375d3d47', '864f71a4-5b46-4b57-ac4b-4a5013a8c68f', 's256', 'H_SuvDv3Jo5FuVAgNrvwwzvXWbIIoLrDkS5c92hJQf4', 'magiclink', '', '', '2025-09-28 00:14:14.919932+00', '2025-09-28 00:14:35.949385+00', 'magiclink', '2025-09-28 00:14:35.949337+00'),
	('4394c5ed-e789-4d0c-aa98-0658f8c9fd39', 'f99aef73-00eb-42a3-941d-3b86375d3d47', '0db54499-7597-4e36-a683-aa6423b09901', 's256', 'xfo44_qDfWsoENE3e7HYfsxdTMrNNAbKAamUxkB2ovk', 'magiclink', '', '', '2025-09-28 00:19:39.377013+00', '2025-09-28 00:19:39.377013+00', 'magiclink', NULL),
	('01a2e214-2b95-4d89-a359-27476f76d630', 'f99aef73-00eb-42a3-941d-3b86375d3d47', 'da58750a-bcdf-4d94-b593-9455ac350f38', 's256', 'T12ZTqkYconIbsNyG2NspSsfCT2rqRfOeBZnImb3Z7Y', 'magiclink', '', '', '2025-09-28 00:27:52.799808+00', '2025-09-28 00:28:20.459657+00', 'magiclink', '2025-09-28 00:28:20.459643+00'),
	('19d18557-2fd6-4071-8bec-23c49626fc60', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', 'fe316234-1e6c-481d-b2b9-70cb0c4631e9', 's256', 'eGbsv3mgKzRebf5Saeb9wJzRU9YfuzaRPjARlKZePN0', 'magiclink', '', '', '2025-09-28 18:54:46.408666+00', '2025-09-28 18:55:05.603854+00', 'magiclink', '2025-09-28 18:55:05.603835+00'),
	('2d9d3efe-77be-4aae-bf58-f53c8f226119', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '01f0489d-54db-417a-8611-ae1861fa5f82', 's256', 'YJGORmJW6C4JQtxf2qWoQZ8EGaxPf1d6fmjrefZa78w', 'magiclink', '', '', '2025-09-28 21:55:30.500129+00', '2025-09-28 21:55:43.560327+00', 'magiclink', '2025-09-28 21:55:43.560309+00'),
	('1dd95fd9-f4bd-42c4-a8aa-3ab17687644c', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '7acd59c1-a18f-48f0-bd6a-fdb173aaaf14', 's256', 'GpbhSwY5BfvOb-zeZKCuVXTaw5ttVmi6hCvuQmPPLcA', 'magiclink', '', '', '2025-09-28 22:40:00.555288+00', '2025-09-28 22:40:06.061391+00', 'magiclink', '2025-09-28 22:40:06.061377+00'),
	('c2201a9d-d53d-42b1-a8bc-e8fb76bbd602', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '1844fedf-83c2-4bdd-b79b-b0b40c1718b7', 's256', 'TTAEuDM1ZpXtedguc4pV8hR58iogomszcAAF-99JuZ4', 'magiclink', '', '', '2025-09-28 22:42:31.467362+00', '2025-09-28 22:43:01.189264+00', 'magiclink', '2025-09-28 22:43:01.189231+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'f99aef73-00eb-42a3-941d-3b86375d3d47', 'authenticated', 'authenticated', 'user1@cool.local', '$2a$10$eufWIJ09TpOnkx/9yp1H8OAgUaNZMZtFpdsemKHGYtU/LFZI5GH0K', '2025-09-17 00:34:21.66622+00', NULL, '', NULL, 'e9259fb47f27511c8f4f77bc4ddb778d21daa281a9b472ecf07b5503', '2025-10-05 00:46:59.845485+00', '', '', NULL, '2025-10-28 00:30:23.712621+00', '{"tenants": ["packt"], "provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-09-17 00:34:21.660653+00', '2025-10-28 00:30:23.713875+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', 'authenticated', 'authenticated', 'user2@cool.local', '$2a$10$P8hJazRgNmZJhcNJZDEt3.18D5Zumar8xxveFqkdYWFQ08FcVBnKW', '2025-09-27 21:38:35.105731+00', NULL, '', NULL, '2115c0a199832dfb29af075e2d305086e20799481e85645859127c87', '2025-10-06 18:49:15.131169+00', '', '', NULL, '2025-10-28 00:23:47.535571+00', '{"tenants": ["oddmonkey"], "provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-09-27 21:38:35.100623+00', '2025-10-28 00:23:47.536633+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '7a0c748c-6a6e-40a2-8f66-932cf4b4d877', 'authenticated', 'authenticated', 'user3@cool.local', '$2a$10$hPNRCPOJ1QShYvLPmRRUbeuUkKQK7.QNH0QPfokPLpwsSZ0jSM4GG', '2025-09-28 21:58:36.109826+00', NULL, '', NULL, '', '2025-10-11 21:11:30.145318+00', '', '', NULL, '2025-10-11 21:11:39.258128+00', '{"tenants": ["packt", "activenode"], "provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-09-28 21:58:36.10681+00', '2025-10-11 21:11:39.260004+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('f99aef73-00eb-42a3-941d-3b86375d3d47', 'f99aef73-00eb-42a3-941d-3b86375d3d47', '{"sub": "f99aef73-00eb-42a3-941d-3b86375d3d47", "email": "user1@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2025-09-17 00:34:21.663438+00', '2025-09-17 00:34:21.663468+00', '2025-09-17 00:34:21.663468+00', '6998d681-d1d7-4aac-bad0-8088dac8d2ea'),
	('f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', '{"sub": "f25b79e9-0420-4f1f-bcf9-696dd5ace3d9", "email": "user2@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2025-09-27 21:38:35.103414+00', '2025-09-27 21:38:35.103441+00', '2025-09-27 21:38:35.103441+00', '1c246bd4-0274-4d44-a3c3-ade992f583d1'),
	('7a0c748c-6a6e-40a2-8f66-932cf4b4d877', '7a0c748c-6a6e-40a2-8f66-932cf4b4d877', '{"sub": "7a0c748c-6a6e-40a2-8f66-932cf4b4d877", "email": "user3@cool.local", "email_verified": false, "phone_verified": false}', 'email', '2025-09-28 21:58:36.108757+00', '2025-09-28 21:58:36.108784+00', '2025-09-28 21:58:36.108784+00', '6f224996-65f1-4693-b2bf-4b543927484c');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('d9b07871-853d-4b18-ba1e-249506c78d48', '7a0c748c-6a6e-40a2-8f66-932cf4b4d877', '2025-10-11 21:11:39.258177+00', '2025-10-11 21:11:39.258177+00', NULL, 'aal1', NULL, NULL, 'node', '172.217.215.95', NULL),
	('8dc3ae60-09dd-4d78-be89-e2435a1f116f', 'f99aef73-00eb-42a3-941d-3b86375d3d47', '2025-10-28 00:30:23.712674+00', '2025-10-28 00:30:23.712674+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '172.66.0.243', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('d9b07871-853d-4b18-ba1e-249506c78d48', '2025-10-11 21:11:39.26019+00', '2025-10-11 21:11:39.26019+00', 'otp', '624d684c-1923-45aa-b10e-caf1cdba268f'),
	('8dc3ae60-09dd-4d78-be89-e2435a1f116f', '2025-10-28 00:30:23.714014+00', '2025-10-28 00:30:23.714014+00', 'password', 'cb997c82-68bc-415b-a9ea-287c0aeb3d66');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") VALUES
	('82db82c6-8149-4125-b000-d8e03848d0d4', 'f99aef73-00eb-42a3-941d-3b86375d3d47', 'recovery_token', 'e9259fb47f27511c8f4f77bc4ddb778d21daa281a9b472ecf07b5503', 'user1@cool.local', '2025-10-05 00:46:59.847148', '2025-10-05 00:46:59.847148'),
	('eead7be3-74fd-47b2-9ea4-3608c1c9e5a0', 'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9', 'recovery_token', '2115c0a199832dfb29af075e2d305086e20799481e85645859127c87', 'user2@cool.local', '2025-10-06 18:49:15.133873', '2025-10-06 18:49:15.133873');


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 75, 'nkxeezrhfu6c', '7a0c748c-6a6e-40a2-8f66-932cf4b4d877', false, '2025-10-11 21:11:39.259128+00', '2025-10-11 21:11:39.259128+00', NULL, 'd9b07871-853d-4b18-ba1e-249506c78d48'),
	('00000000-0000-0000-0000-000000000000', 113, 'chxi5zf3iihq', 'f99aef73-00eb-42a3-941d-3b86375d3d47', false, '2025-10-28 00:30:23.713267+00', '2025-10-28 00:30:23.713267+00', NULL, '8dc3ae60-09dd-4d78-be89-e2435a1f116f');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-10-05 18:44:26.731012+00', 'Taryn King', '7a0c748c-6a6e-40a2-8f66-932cf4b4d877');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-10-05 16:10:10.95344+00', 'Packt Publishing', 'packt.local'),
	('oddmonkey', '2025-10-05 16:12:22.320616+00', 'OddMonkey Inc', 'oddmonkey.inc'),
	('activenode', '2025-10-05 16:11:51.643516+00', 'Activenode Education', 'activenode.learn');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-10-05 18:54:08.889734+00', 1, 'packt'),
	(2, '2025-10-05 18:54:25.196044+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 113, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict KoWbnkfDVmRrGAItbeRaa9eHTdWsyh12hMdDnXPXwKtWVqRSmah3HJKfC9Lk5mv

RESET ALL;
