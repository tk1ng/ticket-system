SET
	session_replication_role = replica;

--
-- PostgreSQL database dump
--
-- \restrict aZg8PRFa4ZRVkVT9T3mxfBIXL1gbWvJSSeYB4zcFVeruh8wi8tGODUOR70EHKR4
-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6
SET
	statement_timeout = 0;

SET
	lock_timeout = 0;

SET
	idle_in_transaction_session_timeout = 0;

SET
	transaction_timeout = 0;

SET
	client_encoding = 'UTF8';

SET
	standard_conforming_strings = on;

SELECT
	pg_catalog.set_config ('search_path', '', false);

SET
	check_function_bodies = false;

SET
	xmloption = content;

SET
	client_min_messages = warning;

SET
	row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."audit_log_entries" (
		"instance_id",
		"id",
		"payload",
		"created_at",
		"ip_address"
	)
VALUES
	(
		'00000000-0000-0000-0000-000000000000',
		'ca9a9702-be1f-4964-b00f-410b95269d5e',
		'{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user1@cool.local","user_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","user_phone":""}}',
		'2025-09-17 00:34:21.664154+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0a5c8e42-6cbd-4c53-a3c3-015a17678ba0',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 02:43:53.89536+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'359177d9-66a2-4467-bc06-9108440d8bc8',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 03:01:03.775449+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'25946177-5cf1-4036-9273-880fcef37d04',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 03:01:07.210838+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'58e5caaf-9bc9-4279-b432-1ab2409a1968',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 03:01:58.006198+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'b4a79e86-432e-4776-a04d-701ae92f0b97',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 03:04:48.008089+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'22eb173a-8724-4935-aa47-0ee5c91ee7d0',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 03:04:53.773615+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'dda5123d-bc7c-4de6-acf7-a2e3413d920f',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-17 21:36:53.577429+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7ffebdd1-d372-40c1-8e54-3d55e5e96bc3',
		'{"action":"token_revoked","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-17 21:36:53.578546+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'66265ef4-4015-457c-8bd3-03efa7656bc0',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-17 21:36:53.605412+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'e4eebf7b-cc29-44df-83f4-0f069962456e',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-17 21:38:54.123232+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'974c9c5b-43d5-4eeb-80d8-30dd472929b3',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-17 22:08:02.096939+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'27ce025b-24cb-4511-800a-bf31db6ac266',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-17 22:09:11.951681+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'e56789f6-905d-44e4-85cf-32a6e916737b',
		'{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user2@cool.local","user_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","user_phone":""}}',
		'2025-09-27 21:38:35.103979+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'88fde720-beae-4be0-b515-428e4133e655',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-27 21:38:41.803335+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'c93e622c-85cb-439d-adfc-db870f94730f',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-27 21:38:57.950175+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a55ef452-de34-4e6c-b96f-75259bf74192',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-27 22:01:57.715742+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'942f5113-c561-4728-ae33-0fe37cd826f2',
		'{"action":"token_refreshed","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-27 23:00:11.186947+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'edfa80b0-349e-4433-83e8-2baea08f6f91',
		'{"action":"token_revoked","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-27 23:00:11.188051+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'628e06ad-bc14-4dcc-839b-ca8674d4d5b7',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-09-27 23:13:55.61167+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4576aa53-5add-4f4b-aeee-01d2ab17d50e',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-27 23:57:48.130753+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a4dbc6a3-68cf-487e-9bc7-61fcd048f09b',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:00:55.109861+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'09bb6636-bf96-41c8-91b6-828617f64729',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:08:02.280671+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0e2cd923-d17b-4fb0-b0c5-1b8574a7333d',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:09:12.115682+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0d86678e-b353-435a-bcf3-ba8d8e1dfb40',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:11:31.775775+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ce5b1e86-ebfc-424b-948c-8f770d620987',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:11:59.316953+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'c76ca3b6-75d9-4cbc-9736-03c27e2a1c36',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:14:14.921516+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'23db70ff-21d3-45e0-b470-46470125b2d8',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:14:35.946847+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'522c0143-5e29-4ae9-ac04-c23aaec3d637',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:15:05.696427+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'599b15ab-9088-43ab-bde9-7ae21c4f4be0',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:15:18.752362+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1baa3cb7-d6c0-447f-bd05-4670dbddccef',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 00:15:19.056854+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'dc8ecff9-e503-4342-9f36-253ff6bb2bab',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:18:00.43244+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f5543e0f-32a6-4c99-b5b2-84b2c6140888',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:19:11.18796+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'35a7b694-ba77-4a2b-bcf4-3c19057a2fa1',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:19:19.6233+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'872523c2-fbd7-4339-a537-663b8fd20489',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 00:19:19.964415+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'11603084-ef99-4db5-ba9b-c18098b46b1b',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:19:30.541002+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'dbe52f78-3899-4b8d-911e-e00875d0dba8',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:19:39.379636+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6266bab4-284b-44fa-8a0a-9b9d045a5a4c',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:22:06.728901+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'45b1e743-fede-4180-99cb-9cb282787b35',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:22:52.648825+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'af146c6f-1290-4ee3-9275-8cae9a230bec',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:27:52.800742+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'b18e1b81-4a42-4024-986e-53b47d7e4120',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:28:20.458231+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'9b72f11c-ee85-4aa6-a4bf-e80ce5f3dce7',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:30:58.610973+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0ae84835-3831-4f74-aa29-509adc00b853',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:31:08.552538+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6a5928b6-21eb-4acf-8aaa-ba9a4d7c3ba0',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 00:31:08.853581+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'caf186f8-fb94-44c8-9f6e-05288f73200f',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:38:40.340771+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'402d3b10-8cf1-4164-8b77-3a20bceadecf',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 00:39:03.698463+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'14ad37db-255c-435b-b393-85d61398dec0',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 00:39:13.459903+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'77382ddf-e600-4751-8a99-c92294f01bd2',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 00:39:13.768182+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2dcf99df-1b86-4ea0-805c-8ccdc5ee969d',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-28 18:14:54.658961+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd7ca0a95-3a23-4f39-9405-1b023317830c',
		'{"action":"token_revoked","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-09-28 18:14:54.660984+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'78016f21-96cc-4fa8-933b-7d7ed2344ac6',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 18:54:46.410328+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'dc161247-2287-45c7-9428-55c290b41060',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 18:55:05.600877+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'02da17e9-f4c0-47b3-8422-a24bcd369461',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 21:55:30.501409+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'59430ac2-8ce6-47a2-9081-043afa75890d',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 21:55:43.557373+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'990f0eff-8a9c-44f1-a5c0-49108e454f89',
		'{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"user3@cool.local","user_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","user_phone":""}}',
		'2025-09-28 21:58:36.109281+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6b5eee15-6135-4491-9ad2-ee272924688f',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:00:16.116555+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'421f957c-f8dd-48e8-8e83-0b5d0257b6f6',
		'{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:00:26.190292+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7997876a-fdbe-46dc-b1fd-a941c857422c',
		'{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 22:00:26.491087+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0322eefb-872f-4a8a-8c79-05b6d09c3a1a',
		'{"action":"logout","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:00:35.88894+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a4124291-2362-4283-9339-330e651b05d3',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:00:45.357997+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd089d7fb-8ca5-47e1-b969-357466032919',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:00:55.211793+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'35d65ee2-b45c-413c-9efc-88c8b60a7eae',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 22:00:55.539444+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ac51cca1-df01-49b3-8ec3-b83f35bd6506',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:00:59.705205+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'70747e4a-2427-4eac-b57d-7fb70b41e59d',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:40:00.556688+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'e63fde3e-07c2-4512-8283-35b2c9adc78f',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:40:06.059996+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bc7136c3-f775-4ca6-956b-3dad060c7c8e',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:42:31.468122+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'41a9f0bb-16e9-41ee-9280-5295233ebb4d',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:43:01.187027+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4d751b5d-33eb-407a-b7e3-f01ad58f95cb',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:45:19.837138+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3bf2aca6-8e59-44b3-b3b0-b90a791dfe74',
		'{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:45:28.309717+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd8e90875-9cfa-4e28-a91e-6ae22636c54e',
		'{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 22:45:28.623818+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5930572f-05ff-4c9d-bb83-eb710f99a61e',
		'{"action":"logout","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:50:23.753947+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'135987d7-6368-4a0f-9c81-11e58a7ae737',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:50:33.380788+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'9c0d8621-44e7-4080-b639-4bfde901955a',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:50:44.992861+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a8b1f92a-4ab8-4e53-a198-b3ace115beaf',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 22:50:45.3352+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'fa4ab7ed-88cb-439c-8444-167ff4c01e71',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:50:57.568519+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2f23011f-05f1-4156-8df4-2bd162e61e2c',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:51:17.672571+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0b882669-24a7-4596-a475-bbadaa85ae58',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:51:29.086842+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1650bfc2-799e-4ea6-a136-ed3bb5146cdd',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 22:51:29.402864+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'e6e32f9f-727e-4d5f-9a96-a8a6441fdcd7',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 22:59:37.744869+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7671d8ee-39ed-454a-a29a-d243b20ff78f',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 22:59:53.162918+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'93bf4ff7-90f8-4b36-b872-a98d831c1165',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 23:00:06.862585+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'16ffc9b6-1df2-464e-8736-d342731a9d3b',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 23:00:07.205323+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bd0dc985-400f-4cbe-9549-67bdf41d125d',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 23:01:31.047595+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f8e8ef33-f201-4044-936d-77ad36010835',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-09-28 23:01:51.899688+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ebecd63c-2980-4cd9-805d-55e30b9f5409',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-09-28 23:03:11.81165+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5d8f2f33-3d7e-443c-a628-4c05c756ec5d',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}',
		'2025-09-28 23:03:12.157185+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bf41a0c7-8a10-4bef-9e64-1179bee8c8b5',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-04 20:38:03.512463+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1f680f6c-c493-404c-8313-cc30d23ab302',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-04 20:39:02.286582+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'48692c8e-2604-4629-85ee-c39a9f6e15e3',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-04 20:45:56.652881+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2f506236-658a-451d-aa47-073cdb18e669',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-04 20:51:00.612131+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f683271b-0f1d-4c8b-8bef-77c5e6dbfa93',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:35:21.545631+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a034b6f0-a13c-4359-9baf-6f7d17b7fdf6',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:36:45.661212+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'81e79b92-c495-47dc-9cd6-b81ef44cf3dc',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-05 00:36:56.909424+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd137624d-f3cd-46a3-aa85-d021a55273b9',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:39:53.091376+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3495461e-f11b-415c-adcc-f16154a7fd0f',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:41:29.020112+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3e08b2b9-7d38-4b1f-9d29-d075d5fb3fa2',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:44:22.294962+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'694f84be-ed0c-44d4-9341-4713838fb159',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:45:29.243836+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3bb74c53-7f60-407c-9c3c-17e31123e482',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-05 00:46:04.118933+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ee70775a-4678-49fb-89fa-c6495d55423b',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-05 00:46:06.924787+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'aa669d3d-e3c4-4b61-ad8a-24ca4f6c1087',
		'{"action":"user_recovery_requested","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:46:15.568386+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'83ecddf7-2be8-4ee8-8f0a-fcf457b97575',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 00:46:59.845748+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'07dbaea6-8c95-452c-9e97-d948a91179cb',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-05 00:51:54.066572+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'729eb0b9-fafd-4c5c-ac55-6304c711a8b7',
		'{"action":"user_updated_password","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 01:05:47.645882+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2cd387f5-e0ba-4b33-9b5c-8e25ef7f1c07',
		'{"action":"user_modified","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-05 01:05:47.646187+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd5d5043b-01b3-4c09-a72d-6f87034d3826',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 21:30:03.843401+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'073604ff-f374-4b93-a146-bfa2752f33a6',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:30:24.879159+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4456caa1-c289-453d-986b-6446cef13e48',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 21:41:07.493034+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'73513e53-0949-431a-9ebe-7dbf31efc21f',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:41:18.309192+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a8b71326-6d43-4956-bfca-75db92cc221f',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 21:42:35.728443+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'408235ce-d250-491f-a097-757e94640684',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:42:40.012596+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'481c6375-5fa9-4123-a516-a91588534375',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 21:42:48.773429+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'8efc31ee-e4c7-47c4-8d94-914aed5a15dc',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:42:57.735789+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0b5dc794-5519-4fec-8133-d574fd25c81c',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 21:44:06.828929+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'8b3280bd-79e8-4c18-981c-694edec45f8c',
		'{"action":"login","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:44:41.187507+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'54dd2e46-628d-4e15-bc6e-37b4f8d293a5',
		'{"action":"logout","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:44:41.580548+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'418da457-147a-42fc-9c6a-a3db168255a8',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 21:45:02.347056+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7f19646a-3edd-4687-804a-6190a3600b67',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 21:45:35.939946+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'422e0df1-4212-48e0-b441-fa566ef139ad',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 21:45:38.134848+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bc47d507-35a0-4567-aaf2-7c061beb4c0c',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:03:40.285283+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'94798457-0545-4001-8d09-90c316127a95',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:04:12.404136+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0cb0f170-3798-4ad1-9139-3a6c1c5f6062',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:10:24.37686+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5d82a60a-88d6-4ddb-8927-9ef9d50bd262',
		'{"action":"user_recovery_requested","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:11:56.051304+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1bb1d155-8b3f-4418-a0eb-2f32ce642dce',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:21:35.001118+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3966848f-c047-4b5c-b464-a3489066fa53',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:22:15.40634+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6cb17cf6-97ed-4d45-95ba-63af13e44bc1',
		'{"action":"user_recovery_requested","actor_id":"7a0c748c-6a6e-40a2-8f66-932cf4b4d877","actor_username":"user3@cool.local","actor_via_sso":false,"log_type":"user"}',
		'2025-10-23 22:24:43.39725+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'e8c0b900-5fe8-4366-be48-0d955bebc379',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 22:46:01.768827+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'55a06ce7-55e8-4c02-b1eb-1d2f27f87ff8',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 22:51:09.006565+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6a05fe26-690c-48e3-bbbe-d4cb4fc8ac02',
		'{"action":"login","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 22:51:17.957275+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'398803b1-941e-4f1f-8aac-96c543a3415b',
		'{"action":"logout","actor_id":"f25b79e9-0420-4f1f-bcf9-696dd5ace3d9","actor_username":"user2@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 22:51:20.389477+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a60e29f7-2e43-467e-85cd-1dc744579cfc',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 22:51:36.166725+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6e859190-5275-40de-aa5e-6559f6b4309b',
		'{"action":"logout","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account"}',
		'2025-10-23 23:04:49.442959+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'96eb630b-a06e-4a6a-9d5e-e16c42422ce5',
		'{"action":"login","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}',
		'2025-10-23 23:05:09.611065+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'33e4f544-92e6-4373-ac31-2db3c6c78a7e',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-10-28 20:16:22.158732+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2e0b455e-dd1b-4aed-bc16-56f82484f83e',
		'{"action":"token_revoked","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-10-28 20:16:22.16095+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bd3c851d-0128-4068-a4a0-a01a447c3126',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-10-28 20:16:22.209137+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6a83f6ce-24f0-495b-b32c-0c224beeb845',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-10-28 20:16:22.240032+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'745c4cfd-2fe6-4b51-a733-99fd8976e626',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-05 21:51:12.10559+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'cc7a85c3-3581-4667-95ec-39488efcebdf',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-05 21:51:12.128731+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'74c03d1e-35ea-4d2e-b889-02b8f0a89309',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-05 21:51:12.147909+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5acc9667-ebc3-4e83-91b5-094259fe6af6',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 19:30:51.111762+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'1993a76e-6004-4358-9cac-60375c2e5588',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:17:48.4448+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f472cbe6-2b53-4dbf-89bc-30fa8c7e871b',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:19:46.252275+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'17a5808f-f222-4d88-a488-cd5899d53437',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:22:28.404015+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'c112dc61-a69e-4cce-b731-56a1d91452d4',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:22:56.218297+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd7b17ce7-7153-4dfc-9a91-2729e57da8a9',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:23:18.422442+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'fe31036f-e910-4477-8258-99d370a9c9c3',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:24:31.613416+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'be74807a-5bd1-4d54-95d5-6fb5153f682b',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:26:33.091142+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'96ff098b-6110-4fdb-8da2-7250dc1f5f08',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:28:19.174604+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'8e8257ce-a34a-45bd-ba3e-1d3a2efc68be',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:28:35.890122+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ec506f60-9e10-4d7d-9b75-46e7c0820a92',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:28:41.951615+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6b59877d-3304-489a-9187-8470d17807e0',
		'{"action":"token_refreshed","actor_id":"f99aef73-00eb-42a3-941d-3b86375d3d47","actor_username":"user1@cool.local","actor_via_sso":false,"log_type":"token"}',
		'2025-11-21 20:29:56.23144+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'b160c775-d9c0-49c8-a01e-2ee651128043',
		'{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"fragile@activenode.learn","user_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","user_phone":""}}',
		'2026-02-06 23:48:26.258983+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'550ea7d1-a8d8-489e-9464-ded77a38ef78',
		'{"action":"user_signedup","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}',
		'2026-02-06 23:48:43.029796+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6292ff4b-77cd-4a33-8583-68977b294a9a',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 00:47:06.839899+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'79e59958-87d2-408a-a7d2-378ba19fb921',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 00:47:06.840416+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'431839f8-33dc-47d3-b8f8-75d99914187c',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 01:45:06.800128+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'54eb376e-dcef-4d13-877f-20c07651e6f4',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 01:45:06.80055+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'c39c991e-e300-4b21-be94-977e7dc2b2e6',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 02:43:06.862312+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3aeeb198-5cd6-4826-86fe-7713ce2c6493',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 02:43:06.862802+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd4febcf1-8b5f-4285-a412-9109d0b74acb',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 03:41:06.888225+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'badb708f-540d-413b-bfdf-2e522703780f',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 03:41:06.888854+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'38e7ae49-064d-4c8e-8865-2c082860afb0',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 04:39:06.827568+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6129b309-64d0-4aed-bd6c-0b5e68ec4642',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 04:39:06.82801+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'999d3d87-2f84-4b25-abcb-a7084796583e',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 05:37:06.875345+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'ecc1e86c-1e25-46d4-b919-321b7bd15669',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 05:37:06.875743+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'29a37759-5a85-4ff5-a6b4-ba7b025e4ce8',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 06:35:06.893913+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6a57448b-b6f4-4cb7-84b3-c3c0eb91d7ef',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 06:35:06.894379+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4dffb5ce-e5bb-4d33-8ccb-711a23a05398',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 07:33:06.859941+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'2e6ef9d4-7b9f-4ca9-b405-2c604544177f',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 07:33:06.860483+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f6dd28f3-4be0-4359-83aa-248520a47ad1',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 08:31:06.872102+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'46741ead-436e-4dc1-a5bf-e6a8b0208d73',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 08:31:06.872547+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'94ed9140-05da-4ac4-a57a-022d872beac6',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 09:29:06.842992+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'4a7182a7-ca1b-44d1-8bf5-0808bca1bffe',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 09:29:06.843464+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'0c9ec234-2e98-46b7-bf56-35cd51404a84',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 10:27:06.805596+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'34f6d547-5df5-4860-97f0-e26c3ded77d8',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 10:27:06.805996+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'3c243a76-02f2-4464-97f9-111a3ce36d22',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 11:25:06.872257+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'78430c93-1504-483d-bdb0-938073352428',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 11:25:06.872676+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'88576611-387e-43d6-b79d-ec95140f5ca3',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 12:23:06.841533+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5b20b005-f12a-46f1-b0db-a517acea4829',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 12:23:06.842054+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'caa50dee-6faf-4990-86bf-5485fdc1f479',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 13:21:06.881409+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'39848d59-a060-43db-9e6e-dfa5da1ba536',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 13:21:06.881921+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'92a5a555-636f-4424-9ef1-bac34191a80f',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 14:19:06.808078+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bbbcd8a8-2dc3-45af-8ca8-7c53acb2c736',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 14:19:06.808646+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'a75fd40b-2ffc-4751-a9b2-e7bb76b5f6cb',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 15:17:06.792808+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'93ecd774-cff1-4562-a451-133b302ff3d1',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 15:17:06.793319+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'9ba9f08a-d998-4ba1-aaaf-4f0f2ab94a27',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 16:15:06.810953+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'c244767f-5c06-490d-bdda-a71a69253fb0',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 16:15:06.811402+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'15449e25-0a8e-4913-91c9-75bf97fa0d7d',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 17:13:06.875868+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'54ba625e-5ce8-4665-9b51-a183f53c8d30',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 17:13:06.876392+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'd1142e14-6380-453f-9d33-67ef37a0c0f5',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 18:11:06.900051+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'bd76f5ad-f39c-4a3a-ae0c-305369f7b380',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 18:11:06.900572+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6eb0ce3c-c330-4ea5-9aa3-dc338843b531',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 19:09:18.747196+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5a9eebea-90f7-4101-a2de-4e96fdf4ae95',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 19:09:18.747788+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'5a03ef1a-55d6-47bd-8109-e6f7b1ea641c',
		'{"action":"token_refreshed","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 20:07:38.422795+00',
		''
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'6211e1b3-7235-4216-a63b-795339a64bd9',
		'{"action":"token_revoked","actor_id":"7bbc0b4d-b86a-4185-a463-9b9c25fb55b1","actor_username":"fragile@activenode.learn","actor_via_sso":false,"log_type":"token"}',
		'2026-02-07 20:07:38.423342+00',
		''
	);

--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."flow_state" (
		"id",
		"user_id",
		"auth_code",
		"code_challenge_method",
		"code_challenge",
		"provider_type",
		"provider_access_token",
		"provider_refresh_token",
		"created_at",
		"updated_at",
		"authentication_method",
		"auth_code_issued_at"
	)
VALUES
	(
		'd6dbec14-f1ac-452e-a512-7b8f4a4f18e2',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'329f8ff8-b7f4-4309-9ba0-d48a991f6521',
		's256',
		'Se_QuwzCK-awhFfik7oZrfEG1qn-Ucmn-mxP8AysKqo',
		'magiclink',
		'',
		'',
		'2025-09-28 00:00:55.104916+00',
		'2025-09-28 00:00:55.104916+00',
		'magiclink',
		NULL
	),
	(
		'ad3a878b-5d7c-4cdd-b68a-6930a2ffbc0d',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'7923f9b4-9729-4fe0-8962-afb2ec70cc1f',
		's256',
		'LQLUB9exFOPI_MzpbBcKtLJBcaCGpko6PTlmOQQlpNU',
		'magiclink',
		'',
		'',
		'2025-09-28 00:08:02.278639+00',
		'2025-09-28 00:09:12.118347+00',
		'magiclink',
		'2025-09-28 00:09:12.118321+00'
	),
	(
		'eff063df-662a-48da-b2cc-6a53a8858633',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'870fc925-dc3f-4080-a59b-1d2d74937b59',
		's256',
		'jVxsjVKaGf91V9GN8olnAlxalrHs0qe4bOzPXjICxNU',
		'magiclink',
		'',
		'',
		'2025-09-28 00:11:31.774612+00',
		'2025-09-28 00:11:59.319681+00',
		'magiclink',
		'2025-09-28 00:11:59.31965+00'
	),
	(
		'3816d6b9-ef1c-4ae1-b8b0-b09ab11bd294',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'864f71a4-5b46-4b57-ac4b-4a5013a8c68f',
		's256',
		'H_SuvDv3Jo5FuVAgNrvwwzvXWbIIoLrDkS5c92hJQf4',
		'magiclink',
		'',
		'',
		'2025-09-28 00:14:14.919932+00',
		'2025-09-28 00:14:35.949385+00',
		'magiclink',
		'2025-09-28 00:14:35.949337+00'
	),
	(
		'4394c5ed-e789-4d0c-aa98-0658f8c9fd39',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'0db54499-7597-4e36-a683-aa6423b09901',
		's256',
		'xfo44_qDfWsoENE3e7HYfsxdTMrNNAbKAamUxkB2ovk',
		'magiclink',
		'',
		'',
		'2025-09-28 00:19:39.377013+00',
		'2025-09-28 00:19:39.377013+00',
		'magiclink',
		NULL
	),
	(
		'01a2e214-2b95-4d89-a359-27476f76d630',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'da58750a-bcdf-4d94-b593-9455ac350f38',
		's256',
		'T12ZTqkYconIbsNyG2NspSsfCT2rqRfOeBZnImb3Z7Y',
		'magiclink',
		'',
		'',
		'2025-09-28 00:27:52.799808+00',
		'2025-09-28 00:28:20.459657+00',
		'magiclink',
		'2025-09-28 00:28:20.459643+00'
	),
	(
		'19d18557-2fd6-4071-8bec-23c49626fc60',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'fe316234-1e6c-481d-b2b9-70cb0c4631e9',
		's256',
		'eGbsv3mgKzRebf5Saeb9wJzRU9YfuzaRPjARlKZePN0',
		'magiclink',
		'',
		'',
		'2025-09-28 18:54:46.408666+00',
		'2025-09-28 18:55:05.603854+00',
		'magiclink',
		'2025-09-28 18:55:05.603835+00'
	),
	(
		'2d9d3efe-77be-4aae-bf58-f53c8f226119',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'01f0489d-54db-417a-8611-ae1861fa5f82',
		's256',
		'YJGORmJW6C4JQtxf2qWoQZ8EGaxPf1d6fmjrefZa78w',
		'magiclink',
		'',
		'',
		'2025-09-28 21:55:30.500129+00',
		'2025-09-28 21:55:43.560327+00',
		'magiclink',
		'2025-09-28 21:55:43.560309+00'
	),
	(
		'1dd95fd9-f4bd-42c4-a8aa-3ab17687644c',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'7acd59c1-a18f-48f0-bd6a-fdb173aaaf14',
		's256',
		'GpbhSwY5BfvOb-zeZKCuVXTaw5ttVmi6hCvuQmPPLcA',
		'magiclink',
		'',
		'',
		'2025-09-28 22:40:00.555288+00',
		'2025-09-28 22:40:06.061391+00',
		'magiclink',
		'2025-09-28 22:40:06.061377+00'
	),
	(
		'c2201a9d-d53d-42b1-a8bc-e8fb76bbd602',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'1844fedf-83c2-4bdd-b79b-b0b40c1718b7',
		's256',
		'TTAEuDM1ZpXtedguc4pV8hR58iogomszcAAF-99JuZ4',
		'magiclink',
		'',
		'',
		'2025-09-28 22:42:31.467362+00',
		'2025-09-28 22:43:01.189264+00',
		'magiclink',
		'2025-09-28 22:43:01.189231+00'
	);

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."users" (
		"instance_id",
		"id",
		"aud",
		"role",
		"email",
		"encrypted_password",
		"email_confirmed_at",
		"invited_at",
		"confirmation_token",
		"confirmation_sent_at",
		"recovery_token",
		"recovery_sent_at",
		"email_change_token_new",
		"email_change",
		"email_change_sent_at",
		"last_sign_in_at",
		"raw_app_meta_data",
		"raw_user_meta_data",
		"is_super_admin",
		"created_at",
		"updated_at",
		"phone",
		"phone_confirmed_at",
		"phone_change",
		"phone_change_token",
		"phone_change_sent_at",
		"email_change_token_current",
		"email_change_confirm_status",
		"banned_until",
		"reauthentication_token",
		"reauthentication_sent_at",
		"is_sso_user",
		"deleted_at",
		"is_anonymous"
	)
VALUES
	(
		'00000000-0000-0000-0000-000000000000',
		'7a0c748c-6a6e-40a2-8f66-932cf4b4d877',
		'authenticated',
		'authenticated',
		'user3@cool.local',
		'$2a$10$hPNRCPOJ1QShYvLPmRRUbeuUkKQK7.QNH0QPfokPLpwsSZ0jSM4GG',
		'2025-09-28 21:58:36.109826+00',
		NULL,
		'',
		NULL,
		'0844df8a37a5b5c06c641aab8d1526394a44c35e53b8f648d198887e',
		'2025-10-23 22:24:43.397065+00',
		'',
		'',
		NULL,
		'2025-10-23 21:44:41.188911+00',
		'{"tenants": ["packt", "activenode"], "provider": "email", "providers": ["email"]}',
		'{"email_verified": true}',
		NULL,
		'2025-09-28 21:58:36.10681+00',
		'2025-10-23 22:24:43.398221+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL,
		false
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'authenticated',
		'authenticated',
		'user2@cool.local',
		'$2a$10$P8hJazRgNmZJhcNJZDEt3.18D5Zumar8xxveFqkdYWFQ08FcVBnKW',
		'2025-09-27 21:38:35.105731+00',
		NULL,
		'',
		NULL,
		'',
		NULL,
		'',
		'',
		NULL,
		'2025-10-23 22:51:17.957669+00',
		'{"tenants": ["oddmonkey"], "provider": "email", "providers": ["email"]}',
		'{"email_verified": true}',
		NULL,
		'2025-09-27 21:38:35.100623+00',
		'2025-10-23 22:51:17.958582+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL,
		false
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'authenticated',
		'authenticated',
		'user1@cool.local',
		'$2a$10$eufWIJ09TpOnkx/9yp1H8OAgUaNZMZtFpdsemKHGYtU/LFZI5GH0K',
		'2025-09-17 00:34:21.66622+00',
		NULL,
		'',
		NULL,
		'bc596e8611e9da083ea3983d9f1b0ef869ddebd235b50254ef1b8304',
		'2025-10-23 22:11:56.051067+00',
		'',
		'',
		NULL,
		'2025-10-23 23:05:09.611548+00',
		'{"tenants": ["packt"], "provider": "email", "providers": ["email"]}',
		'{"email_verified": true}',
		NULL,
		'2025-09-17 00:34:21.660653+00',
		'2025-10-28 20:16:22.165739+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL,
		false
	),
	(
		'00000000-0000-0000-0000-000000000000',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		'authenticated',
		'authenticated',
		'fragile@activenode.learn',
		'$2a$10$H056cuygKIGRN.I2HzKUE.DHVzZdPe/NWbAoMjboNfiAJQFO7ZFvK',
		'2026-02-06 23:48:43.031065+00',
		NULL,
		'',
		'2026-02-06 23:48:26.284016+00',
		'',
		NULL,
		'',
		'',
		NULL,
		'2026-02-06 23:48:43.034757+00',
		'{"tenants": ["activenode"], "provider": "email", "providers": ["email"]}',
		'{"email_verified": true}',
		NULL,
		'2026-02-06 23:48:26.25686+00',
		'2026-02-07 20:07:38.424666+00',
		NULL,
		NULL,
		'',
		'',
		NULL,
		'',
		0,
		NULL,
		'',
		NULL,
		false,
		NULL,
		false
	);

--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."identities" (
		"provider_id",
		"user_id",
		"identity_data",
		"provider",
		"last_sign_in_at",
		"created_at",
		"updated_at",
		"id"
	)
VALUES
	(
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'{"sub": "f99aef73-00eb-42a3-941d-3b86375d3d47", "email": "user1@cool.local", "email_verified": false, "phone_verified": false}',
		'email',
		'2025-09-17 00:34:21.663438+00',
		'2025-09-17 00:34:21.663468+00',
		'2025-09-17 00:34:21.663468+00',
		'6998d681-d1d7-4aac-bad0-8088dac8d2ea'
	),
	(
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'f25b79e9-0420-4f1f-bcf9-696dd5ace3d9',
		'{"sub": "f25b79e9-0420-4f1f-bcf9-696dd5ace3d9", "email": "user2@cool.local", "email_verified": false, "phone_verified": false}',
		'email',
		'2025-09-27 21:38:35.103414+00',
		'2025-09-27 21:38:35.103441+00',
		'2025-09-27 21:38:35.103441+00',
		'1c246bd4-0274-4d44-a3c3-ade992f583d1'
	),
	(
		'7a0c748c-6a6e-40a2-8f66-932cf4b4d877',
		'7a0c748c-6a6e-40a2-8f66-932cf4b4d877',
		'{"sub": "7a0c748c-6a6e-40a2-8f66-932cf4b4d877", "email": "user3@cool.local", "email_verified": false, "phone_verified": false}',
		'email',
		'2025-09-28 21:58:36.108757+00',
		'2025-09-28 21:58:36.108784+00',
		'2025-09-28 21:58:36.108784+00',
		'6f224996-65f1-4693-b2bf-4b543927484c'
	),
	(
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		'{"sub": "7bbc0b4d-b86a-4185-a463-9b9c25fb55b1", "email": "fragile@activenode.learn", "email_verified": true, "phone_verified": false}',
		'email',
		'2026-02-06 23:48:26.2584+00',
		'2026-02-06 23:48:26.258416+00',
		'2026-02-06 23:48:26.258416+00',
		'f5740a30-1639-4fb5-9255-488bf0182828'
	);

--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."sessions" (
		"id",
		"user_id",
		"created_at",
		"updated_at",
		"factor_id",
		"aal",
		"not_after",
		"refreshed_at",
		"user_agent",
		"ip",
		"tag",
		"oauth_client_id",
		"refresh_token_hmac_key",
		"refresh_token_counter"
	)
VALUES
	(
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		'2026-02-06 23:48:43.034823+00',
		'2026-02-07 20:07:38.425342+00',
		NULL,
		'aal1',
		NULL,
		'2026-02-07 20:07:38.425305',
		'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',
		'192.168.65.1',
		NULL,
		NULL,
		NULL,
		NULL
	),
	(
		'16b44196-076b-47cb-9ef3-71637af3c15f',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'2025-10-23 23:05:09.611593+00',
		'2025-11-21 20:29:56.232657+00',
		NULL,
		'aal1',
		NULL,
		'2025-11-21 20:29:56.232521',
		'Next.js Middleware',
		'192.168.65.1',
		NULL,
		NULL,
		NULL,
		NULL
	);

--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."mfa_amr_claims" (
		"session_id",
		"created_at",
		"updated_at",
		"authentication_method",
		"id"
	)
VALUES
	(
		'16b44196-076b-47cb-9ef3-71637af3c15f',
		'2025-10-23 23:05:09.612986+00',
		'2025-10-23 23:05:09.612986+00',
		'password',
		'644d1271-e36a-4bb6-918f-4cec6be758f9'
	),
	(
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce',
		'2026-02-06 23:48:43.040234+00',
		'2026-02-06 23:48:43.040234+00',
		'otp',
		'bb373392-3e27-473a-8170-879a4d42f12f'
	);

--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."one_time_tokens" (
		"id",
		"user_id",
		"token_type",
		"token_hash",
		"relates_to",
		"created_at",
		"updated_at"
	)
VALUES
	(
		'16be492c-1f74-49ca-ac09-5649905f6d6f',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		'recovery_token',
		'bc596e8611e9da083ea3983d9f1b0ef869ddebd235b50254ef1b8304',
		'user1@cool.local',
		'2025-10-23 22:11:56.053225',
		'2025-10-23 22:11:56.053225'
	),
	(
		'7da1717e-60ea-44ca-984d-b1fa0f260a2f',
		'7a0c748c-6a6e-40a2-8f66-932cf4b4d877',
		'recovery_token',
		'0844df8a37a5b5c06c641aab8d1526394a44c35e53b8f648d198887e',
		'user3@cool.local',
		'2025-10-23 22:24:43.399078',
		'2025-10-23 22:24:43.399078'
	);

--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--
INSERT INTO
	"auth"."refresh_tokens" (
		"instance_id",
		"id",
		"token",
		"user_id",
		"revoked",
		"created_at",
		"updated_at",
		"parent",
		"session_id"
	)
VALUES
	(
		'00000000-0000-0000-0000-000000000000',
		100,
		'mkv3vphg2iwn',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		true,
		'2025-10-23 23:05:09.612255+00',
		'2025-10-28 20:16:22.164061+00',
		NULL,
		'16b44196-076b-47cb-9ef3-71637af3c15f'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		133,
		'7e7vqclymsh2',
		'f99aef73-00eb-42a3-941d-3b86375d3d47',
		false,
		'2025-10-28 20:16:22.164983+00',
		'2025-10-28 20:16:22.164983+00',
		'mkv3vphg2iwn',
		'16b44196-076b-47cb-9ef3-71637af3c15f'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		166,
		'tys3ogafuryi',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-06 23:48:43.037831+00',
		'2026-02-07 00:47:06.840777+00',
		NULL,
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		167,
		'bznswgaixa6c',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 00:47:06.841078+00',
		'2026-02-07 01:45:06.800924+00',
		'tys3ogafuryi',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		168,
		'nuqxecu76n6g',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 01:45:06.801214+00',
		'2026-02-07 02:43:06.86316+00',
		'bznswgaixa6c',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		169,
		'mh72bfxkst32',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 02:43:06.863472+00',
		'2026-02-07 03:41:06.88912+00',
		'nuqxecu76n6g',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		170,
		'l4o25geyjo4a',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 03:41:06.889437+00',
		'2026-02-07 04:39:06.828363+00',
		'mh72bfxkst32',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		171,
		'2xrcmunddw4c',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 04:39:06.828646+00',
		'2026-02-07 05:37:06.877189+00',
		'l4o25geyjo4a',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		172,
		'z6j65lejnord',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 05:37:06.877494+00',
		'2026-02-07 06:35:06.894815+00',
		'2xrcmunddw4c',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		173,
		'4johoys2wfjv',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 06:35:06.895158+00',
		'2026-02-07 07:33:06.860803+00',
		'z6j65lejnord',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		174,
		'g4zxxwwfslsf',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 07:33:06.861114+00',
		'2026-02-07 08:31:06.87296+00',
		'4johoys2wfjv',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		175,
		'ubqax3733dry',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 08:31:06.873318+00',
		'2026-02-07 09:29:06.843966+00',
		'g4zxxwwfslsf',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		176,
		'cuiwl47ervgg',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 09:29:06.844303+00',
		'2026-02-07 10:27:06.8063+00',
		'ubqax3733dry',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		177,
		'l645qe34r4de',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 10:27:06.806614+00',
		'2026-02-07 11:25:06.873177+00',
		'cuiwl47ervgg',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		178,
		'qwnfwosydo5z',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 11:25:06.873462+00',
		'2026-02-07 12:23:06.842453+00',
		'l645qe34r4de',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		179,
		'avuwqdmb7qha',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 12:23:06.842806+00',
		'2026-02-07 13:21:06.882218+00',
		'qwnfwosydo5z',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		180,
		'mck267shmlmt',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 13:21:06.882692+00',
		'2026-02-07 14:19:06.809173+00',
		'avuwqdmb7qha',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		181,
		'ekvv5dypjisb',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 14:19:06.809481+00',
		'2026-02-07 15:17:06.793561+00',
		'mck267shmlmt',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		182,
		'37mnuq47dn4d',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 15:17:06.793917+00',
		'2026-02-07 16:15:06.811839+00',
		'ekvv5dypjisb',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		183,
		'6uop6j5swepj',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 16:15:06.812146+00',
		'2026-02-07 17:13:06.876664+00',
		'37mnuq47dn4d',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		184,
		'ps3viel7luai',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 17:13:06.877086+00',
		'2026-02-07 18:11:06.900915+00',
		'6uop6j5swepj',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		185,
		'5yj3lvzeu62y',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 18:11:06.901276+00',
		'2026-02-07 19:09:18.748077+00',
		'ps3viel7luai',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		186,
		'bqvkmaltddm6',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		true,
		'2026-02-07 19:09:18.748549+00',
		'2026-02-07 20:07:38.423671+00',
		'5yj3lvzeu62y',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	),
	(
		'00000000-0000-0000-0000-000000000000',
		187,
		'wslj6xwbl2tt',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1',
		false,
		'2026-02-07 20:07:38.424112+00',
		'2026-02-07 20:07:38.424112+00',
		'bqvkmaltddm6',
		'f0a3d3cf-87e1-41d5-aa68-fb61f29f88ce'
	);

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
INSERT INTO
	"public"."service_users" ("id", "created_at", "full_name", "supabase_user")
VALUES
	(
		1,
		'2025-10-05 18:44:26.731012+00',
		'Taryn King',
		'7a0c748c-6a6e-40a2-8f66-932cf4b4d877'
	),
	(
		2,
		'2026-02-06 23:48:26.264624+00',
		'Fragile',
		'7bbc0b4d-b86a-4185-a463-9b9c25fb55b1'
	);

--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO
	"public"."tenants" ("id", "created_at", "name", "domain")
VALUES
	(
		'packt',
		'2025-10-05 16:10:10.95344+00',
		'Packt Publishing',
		'packt.local'
	),
	(
		'activenode',
		'2025-10-05 16:11:51.643516+00',
		'activenode Education',
		'activenode.learn'
	),
	(
		'oddmonkey',
		'2025-10-05 16:12:22.320616+00',
		'OddMonkey Inc',
		'oddmonkey.inc'
	);

--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO
	"public"."tenant_permissions" ("id", "created_at", "service_user", "tenant")
VALUES
	(1, '2025-10-05 18:54:08.889734+00', 1, 'packt'),
	(
		2,
		'2025-10-05 18:54:25.196044+00',
		1,
		'oddmonkey'
	),
	(
		3,
		'2026-02-06 23:48:26.269281+00',
		2,
		'activenode'
	);

--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--
INSERT INTO
	"public"."tickets" (
		"title",
		"description",
		"created_by",
		"tenant",
		"status",
		"id",
		"created_at",
		"author_name"
	)
VALUES
	(
		'Complete The Joy of React',
		'Learn deeply the topics in this in-depth React course.',
		2,
		'activenode',
		'open',
		9,
		'2026-02-07 20:17:21.631063+00',
		'Fragile'
	);

--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--
--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--
--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
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
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--
--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--
--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--
SELECT
	pg_catalog.setval ('"auth"."refresh_tokens_id_seq"', 187, true);

--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--
SELECT
	pg_catalog.setval ('"public"."service_users_id_seq"', 2, true);

--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--
SELECT
	pg_catalog.setval ('"public"."tenant_permissions_id_seq"', 3, true);

--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--
SELECT
	pg_catalog.setval ('"public"."tickets_id_seq"', 9, true);

--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--
SELECT
	pg_catalog.setval ('"supabase_functions"."hooks_id_seq"', 1, false);

--
-- PostgreSQL database dump complete
--
-- \unrestrict aZg8PRFa4ZRVkVT9T3mxfBIXL1gbWvJSSeYB4zcFVeruh8wi8tGODUOR70EHKR4
RESET ALL;