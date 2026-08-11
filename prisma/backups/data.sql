SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict jeLKeZ6KfLnzr3Gnc86BGK7dP6XT5N9rOAfiypzb0iEpJLaeWZzPVfXifkdjr1C

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

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
global:owner	Owner	Owner	global	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:35.503+00
global:admin	Admin	Admin	global	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:35.503+00
global:member	Member	Member	global	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:35.503+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:38.101+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:38.101+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:38.101+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:38.101+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-06-25 12:11:54.194+00	2026-06-25 12:16:38.101+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
credential:user	Credential User	Credential User	credential	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-06-25 12:16:32+00	2026-06-25 12:16:32+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
a1d7fc22-ed12-4ea4-bb00-139cee09038a	karlopareja11@gmail.com	Karlo Reign	Pareja	$2a$10$.PhsEHvYdK31jylp4NDXUOBXdVWjtFc6ZLOCO/4R9BeHQhcIbpbje	{"version":"v4","personalization_survey_submitted_at":"2026-06-25T12:56:59.954Z","personalization_survey_n8n_version":"2.27.4"}	2026-06-25 12:07:14.597+00	2026-06-26 13:05:23.949+00	{"userActivated": false}	f	f	\N	\N	2026-06-26	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId", "customTelemetryTags") FROM stdin;
Cy5tRNMdHTYxQSzi	Karlo Reign Pareja <karlopareja11@gmail.com>	personal	2026-06-25 12:08:57.706+00	2026-06-25 12:57:54.333+00	\N	\N	a1d7fc22-ed12-4ea4-bb00-139cee09038a	[]
\.


--
-- Data for Name: agents; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents" ("id", "name", "description", "projectId", "integrations", "schema", "tools", "skills", "versionId", "createdAt", "updatedAt", "activeVersionId") FROM stdin;
\.


--
-- Data for Name: agent_chat_subscriptions; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_chat_subscriptions" ("agentId", "integrationType", "credentialId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_checkpoints; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_checkpoints" ("runId", "agentId", "state", "expired", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_history; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_history" ("versionId", "agentId", "schema", "tools", "skills", "publishedById", "author", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_threads; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_execution_threads" ("id", "agentId", "agentName", "projectId", "sessionNumber", "totalPromptTokens", "totalCompletionTokens", "totalCost", "totalDuration", "title", "emoji", "createdAt", "updatedAt", "taskId", "taskVersionId", "parentThreadId", "parentAgentId") FROM stdin;
\.


--
-- Data for Name: agent_execution; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_execution" ("id", "threadId", "status", "startedAt", "stoppedAt", "duration", "userMessage", "assistantResponse", "model", "promptTokens", "completionTokens", "totalTokens", "cost", "toolCalls", "timeline", "error", "hitlStatus", "source", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_files; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_files" ("id", "agentId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_definition; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_task_definition" ("id", "agentId", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_run_lock; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_task_run_lock" ("agentId", "taskId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_snapshot; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agent_task_snapshot" ("versionId", "taskId", "enabled", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_resources; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_resources" ("id", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entries; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_memory_entries" ("id", "agentId", "resourceId", "content", "contentHash", "status", "supersededBy", "embeddingModel", "embedding", "metadata", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_threads; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_cursors; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_memory_entry_cursors" ("agentId", "observationScopeId", "lastIndexedObservationId", "lastIndexedObservationCreatedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_locks; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_memory_entry_locks" ("agentId", "resourceId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_observations" ("id", "agentId", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_sources; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_memory_entry_sources" ("id", "agentId", "memoryEntryId", "observationId", "threadId", "evidenceHash", "evidenceText", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_messages; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_messages" ("id", "threadId", "resourceId", "role", "type", "content", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_cursors; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_observation_cursors" ("agentId", "observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_locks; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."agents_observation_locks" ("agentId", "observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt", "projectId") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId", "nodeGroups", "sourceWorkflowId") FROM stdin;
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-512,-80],"id":"970beefb-1e1e-406d-97cf-8f3583bc7c86","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appFmUzL6ScWMr1gi","mode":"list","cachedResultName":"Project tracker","cachedResultUrl":"https://airtable.com/appFmUzL6ScWMr1gi"},"table":{"__rl":true,"value":"tblyusZHrEpAz3NkB","mode":"list","cachedResultName":"📝 Tasks, timelines, and assignees","cachedResultUrl":"https://airtable.com/appFmUzL6ScWMr1gi/tblyusZHrEpAz3NkB"},"columns":{"mappingMode":"defineBelow","value":{"Task":"Create table for client's details","Status":"Complete","Subtask":"="},"matchingColumns":[],"schema":[{"id":"Task","displayName":"Task","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"In progress","value":"In progress"},{"name":"Kickoff","value":"Kickoff"},{"name":"Complete","value":"Complete"},{"name":"Planning","value":"Planning"},{"name":"Delayed","value":"Delayed"}],"readOnly":false,"removed":false},{"id":"Subtask","displayName":"Subtask","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Assigned to","displayName":"Assigned to","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project lead","displayName":"Project lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Kick off","displayName":"Kick off","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Due date","displayName":"Due date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Days to complete","displayName":"Days to complete","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Related docs","displayName":"Related docs","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"👀 Projects","displayName":"👀 Projects","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-304,-80],"id":"017d455b-2ab1-478b-8d01-334d35f1de81","name":"Create a record","credentials":{"airtableTokenApi":{"id":"caYsMcJpd6nk2pj4","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2026-06-25 13:26:04.663+00	2026-06-25 13:44:59.266+00	{"executionOrder":"v1","binaryMode":"separate","availableInMCP":false}	\N	{}	52bdd572-420c-467c-92b4-134dcdf45fc0	0	58tOnjRut31XG8Hh	{"templateCredsSetupCompleted":true}	\N	f	18	\N	\N	[]	\N
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX18XHCTPQK9mDS68TQX5SVJN7sDdp88EgColmRJLNx5lDxpfwnFsmNqx6PvWsv5mWbKjK4Z65Hx/xaT56W3OAEjNTQKB4eghJN3UMc9+C6dce3zMuxlPcl/d3vnd7EmlGkuYMsOOanWkwadVpzhkFf6OQlU5BZEvD+s=	airtableTokenApi	2026-06-25 13:35:58.749+00	2026-06-25 13:35:58.483+00	caYsMcJpd6nk2pj4	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey", "jsonSizeBytes", "workflowVersionId") FROM stdin;
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
fPrJ1ntphVPBAgyu	instance.id	d94a0bcf787b4f64e95141eb4950e7943332e17d84240be9a2a19978a9f82fc7	\N	active	2026-06-25 12:16:26.071+00	2026-06-25 12:16:26.071+00
3L752U0mqK0IVkwl	signing.hmac	56838d726896c75e4a9707e9a5fb9df4db726f86ef890233d6fcb25c5425de71	\N	active	2026-06-25 12:16:27.478+00	2026-06-25 12:16:27.478+00
PPOKhSjKuQlIdoH8	signing.jwt	1bed7e73ce7aae44475130fc42271ebd5772e73708652a1c561f0ea39d5cefa2	\N	active	2026-06-25 12:16:28.799+00	2026-06-25 12:16:28.799+00
Cb9AHJNKmOJu9Cax	signing.binary_data	DFRYzTW56svA7pDwYg+2w5NaNsphGZHrzEdFbaZ8xSQ=	\N	active	2026-06-25 12:16:30.186+00	2026-06-25 12:16:30.186+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_config; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."evaluation_config" ("id", "workflowId", "name", "status", "invalidReason", "datasetSource", "datasetRef", "startNodeName", "endNodeName", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_collection; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."evaluation_collection" ("id", "name", "description", "workflowId", "evaluationConfigId", "createdById", "insightsCache", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_checkpoints; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_checkpoints" ("key", "runId", "threadId", "resourceId", "state", "createdAt", "updatedAt", "expiredAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: mcp_registry_server; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."mcp_registry_server" ("slug", "status", "version", "registryUpdatedAt", "data", "createdAt", "updatedAt") FROM stdin;
notion	active	1.0.1	2026-06-11 12:29:07.703	{"id":1,"name":"com.notion/mcp","title":"Notion","tagline":"Connect to the Notion MCP Server","description":"Official Notion MCP server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:13.571Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":1,"type":"streamable-http","url":"https://mcp.notion.com/mcp"},{"id":2,"type":"sse","url":"https://mcp.notion.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_26d71d08b5.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_5fcfcab5f8.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
atlassian	active	1.1.1	2026-06-11 12:28:42.32	{"id":2,"name":"com.atlassian/atlassian-mcp-server","title":"Atlassian","tagline":"Connect to the Atlassian MCP Server","description":"Atlassian Rovo MCP Server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:24.904Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":3,"type":"streamable-http","url":"https://mcp.atlassian.com/v1/mcp"},{"id":4,"type":"sse","url":"https://mcp.atlassian.com/v1/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_716d407499.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_1f404ecbfd.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
apify	active	0.10.6	2026-06-11 12:28:32.446	{"id":3,"name":"com.apify/apify-mcp-server","title":"Apify","tagline":"Connect to the Apify MCP Server","description":"Extract data from any website with thousands of scrapers, crawlers, and automations on Apify Store ⚡","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:36.524Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":5,"type":"streamable-http","url":"https://mcp.apify.com/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S_Uz5c4rz_d01d21b490.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id6k3_J_n_Mi_ceeccc3a3e.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
stripe	active	0.2.4	2026-06-11 12:29:33.086	{"id":4,"name":"com.stripe/mcp","title":"Stripe","tagline":"Connect to the Stripe MCP Server","description":"MCP server integrating with Stripe - tools for customers, products, payments, and more.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:47.930Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":6,"type":"streamable-http","url":"https://mcp.stripe.com"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Bn9_1_Njr_e4279db01b.jpeg","mimeType":"image/jpeg","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
monday-com	active	0.0.1	2026-06-11 12:29:02.947	{"id":5,"name":"com.monday/monday.com","title":"monday.com","tagline":"Connect to the monday.com MCP Server","description":"MCP server for monday.com integration.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:59.434Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":7,"type":"streamable-http","url":"https://mcp.monday.com/mcp"},{"id":8,"type":"sse","url":"https://mcp.monday.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_Vgm_C8_SV_4533eff3c2.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
git-lab	active	0.0.1	2026-06-11 12:28:56.391	{"id":6,"name":"com.gitlab/mcp","title":"GitLab","tagline":"Connect to the GitLab MCP Server","description":"Official GitLab MCP Server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:10.745Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":9,"type":"streamable-http","url":"https://gitlab.com/api/v4/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkt3_Cw41b_9f7043ad83.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_O_Daz_Q_Zbt_f76933a2e6.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
linear	active	1.0.0	2026-06-11 12:28:04.979	{"id":7,"name":"app.linear/linear","title":"Linear","tagline":"Connect to the Linear MCP Server","description":"MCP server for Linear project management and issue tracking","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:22.156Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":11,"type":"sse","url":"https://mcp.linear.app/sse"},{"id":10,"type":"streamable-http","url":"https://mcp.linear.app/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_6b6c66c6c7.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_7d409a8856.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
webflow	active	2.0.0	2026-06-11 12:29:37.869	{"id":8,"name":"com.webflow/mcp","title":"Webflow","tagline":"Connect to the Webflow MCP Server","description":"AI-powered design and management for Webflow Sites","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:33.630Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":12,"type":"streamable-http","url":"https://mcp.webflow.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idx_GYKE_Fj1_b568d3380a.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zp72_NUI_5_080d2c331c.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
pay-pal	active	1.0.0	2026-06-11 12:29:23.307	{"id":9,"name":"com.paypal.mcp/mcp","title":"PayPal","tagline":"Connect to the PayPal MCP Server","description":"PayPal MCP server provides access to PayPal services and operations for AI assistants","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:45.127Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":13,"type":"streamable-http","url":"https://mcp.paypal.com/mcp"},{"id":14,"type":"sse","url":"https://mcp.paypal.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Wy_Aj_C_Dz_324a3b0a2e.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
post-hog	active	0.2.5	2026-06-11 12:29:53.047	{"id":10,"name":"io.github.PostHog/mcp","title":"PostHog","tagline":"Connect to the PostHog MCP Server","description":"Official PostHog MCP Server for product analytics, feature flags, experiments, and more.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:56.421Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":16,"type":"streamable-http","url":"https://mcp.posthog.com/mcp"},{"id":15,"type":"sse","url":"https://mcp.posthog.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yz0_Wt_S_Oc_8e4d0f0070.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
amplitude	active	1.0.0	2026-06-11 12:28:25.27	{"id":11,"name":"com.amplitude/mcp-server","title":"Amplitude","tagline":"Connect to the Amplitude MCP Server","description":"Search, access, and get insights on your Amplitude data","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:08.257Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":17,"type":"streamable-http","url":"https://mcp.amplitude.com/mcp"},{"id":18,"type":"streamable-http","url":"https://mcp.eu.amplitude.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_bd331a64fc.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_a15896d97c.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
postman	active	2.8.9	2026-06-11 12:29:28.445	{"id":12,"name":"com.postman/postman-mcp-server","title":"Postman","tagline":"Connect to the Postman MCP Server","description":"A basic MCP server to operate on the Postman API.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:20.254Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":19,"type":"streamable-http","url":"https://mcp.postman.com/mcp"},{"id":20,"type":"streamable-http","url":"https://mcp.postman.com/minimal"},{"id":21,"type":"streamable-http","url":"https://mcp.eu.postman.com/mcp"},{"id":22,"type":"streamable-http","url":"https://mcp.eu.postman.com/minimal"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr_UU_WRCO_c111cb0dea.png","mimeType":"image/png","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
close	active	1.0.1	2026-06-11 12:28:50.223	{"id":13,"name":"com.close/close-mcp","title":"Close","tagline":"Connect to the Close MCP Server","description":"Close CRM to manage your sales pipeline. Learn more at https://close.com or https://mcp.close.com","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:32.979Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":23,"type":"streamable-http","url":"https://mcp.close.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idpghi9sa_C_14d2cba8bf.png","mimeType":"image/png","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
wix	active	1.0.2	2026-06-11 12:29:47.22	{"id":14,"name":"com.wix/mcp","title":"Wix","tagline":"Connect to the Wix MCP Server","description":"A Model Context Protocol server for Wix AI tools","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:44.311Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":24,"type":"sse","url":"https://mcp.wix.com/sse"},{"id":25,"type":"streamable-http","url":"https://mcp.wix.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qa_F_Jx_Orc_31d963143f.jpeg","mimeType":"image/jpeg","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
prisma	active	1.0.0	2026-06-11 12:30:05.827	{"id":15,"name":"io.prisma/mcp","title":"Prisma","tagline":"Connect to the Prisma MCP Server","description":"MCP server for managing Prisma Postgres.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:55.545Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":26,"type":"sse","url":"https://mcp.prisma.io/sse"},{"id":27,"type":"streamable-http","url":"https://mcp.prisma.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_L_5t_H6_B_e6163aea2d.jpg","mimeType":"image/jpeg","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
sanity	active	2.19.0	2026-06-11 12:30:10.774	{"id":16,"name":"io.sanity.www/mcp","title":"Sanity","tagline":"Connect to the Sanity MCP Server","description":"Direct access to your Sanity projects (content, datasets, releases, schemas) and agent rules","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:07.029Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":28,"type":"streamable-http","url":"https://mcp.sanity.io"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qr019q7c_e4c0ec82b7.png","mimeType":"image/png","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
axiom	active	1.0.0	2026-06-11 12:28:11.99	{"id":17,"name":"co.axiom/mcp","title":"Axiom","tagline":"Connect to the Axiom MCP Server","description":"List datasets, schemas, run APL queries, and use prompts for exploration, anomalies, and monitoring.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:18.335Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":30,"type":"sse","url":"https://mcp.axiom.co/sse"},{"id":29,"type":"streamable-http","url":"https://mcp.axiom.co/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Xjr_Dncs4_d8a390ab33.jpeg","mimeType":"image/jpeg","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
hugging-face	active	0.2.33	2026-06-11 12:28:18.177	{"id":18,"name":"co.huggingface/hf-mcp-server","title":"Hugging Face","tagline":"Connect to the Hugging Face MCP Server","description":"Connect to Hugging Face Hub and thousands of Gradio AI Applications","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:30.024Z","publishedAt":"2026-06-18T09:50:05.210Z","remotes":[{"id":32,"type":"streamable-http","url":"https://huggingface.co/mcp?login"},{"id":31,"type":"streamable-http","url":"https://huggingface.co/mcp"},{"id":33,"type":"streamable-http","url":"https://huggingface.co/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S6h_Od6z2_c35cc34669.jpeg","mimeType":"image/jpeg","theme":"light"}]}	2026-06-25 12:25:31.286+00	2026-06-25 12:25:31.286+00
unstoppable-domains	active	1.0.0	2026-07-27 06:25:24.004	{"id":19,"name":"com.unstoppabledomains/mcp-server","title":"Unstoppable Domains","tagline":"Connect to the Unstoppable Domains MCP Server","description":"Domain search, registration, DNS, marketplace, and checkout with your AI agent.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:25:24.004Z","publishedAt":"2026-07-27T06:25:23.975Z","remotes":[{"id":34,"type":"streamable-http","url":"https://api.unstoppabledomains.com/mcp/v1/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_L_Bex_7_98cca38628.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
you-com-web-access-ai	active	3.5.0	2026-07-27 06:25:36.296	{"id":20,"name":"io.github.youdotcom-oss/mcp","title":"You.com Web Access & AI","tagline":"Connect to the You.com Web Access & AI MCP Server","description":"Web search, AI agent, and content extraction via You.com APIs","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:25:36.296Z","publishedAt":"2026-07-27T06:25:36.279Z","remotes":[{"id":35,"type":"streamable-http","url":"https://api.you.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idale_Bp_Jx_J_b69ac7e4b6.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
smart-bear	active	0.32.0	2026-07-27 06:26:00.585	{"id":22,"name":"com.smartbear/smartbear-mcp","title":"SmartBear","tagline":"Connect to the SmartBear MCP Server","description":"MCP server for AI access to SmartBear tools, including BugSnag, Reflect, Swagger, PactFlow, QTM4J.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:00.585Z","publishedAt":"2026-07-27T06:26:00.567Z","remotes":[{"id":37,"type":"streamable-http","url":"https://bugsnag.mcp.smartbear.com/mcp"},{"id":38,"type":"streamable-http","url":"https://zephyr.mcp.smartbear.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idi_Kc_F1m_Nh_08a3260e96.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
egnyte-remote	active	1.0.0	2026-07-27 06:26:12.344	{"id":23,"name":"com.egnyte/mcp-server","title":"Egnyte Remote","tagline":"Connect to the Egnyte Remote MCP Server","description":"Egnyte's remote MCP server for secure AI access, search, upload and file management in your account.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:12.344Z","publishedAt":"2026-07-27T06:26:12.319Z","remotes":[{"id":39,"type":"streamable-http","url":"https://mcp-server.egnyte.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_y3xa_T_9_348146b508.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
alchemy	active	0.5.2	2026-07-27 06:26:35.615	{"id":25,"name":"com.alchemy/mcp","title":"Alchemy","tagline":"Connect to the Alchemy MCP Server","description":"Blockchain data across 100+ chains: token prices, NFTs, transfers, simulation, traces, Solana DAS","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:35.615Z","publishedAt":"2026-07-27T06:26:35.599Z","remotes":[{"id":41,"type":"streamable-http","url":"https://mcp.alchemy.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_824c201a3f.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
guru-remote	active	1.0.2	2026-07-27 06:26:47.365	{"id":26,"name":"com.getguru/mcp-server","title":"Guru Remote","tagline":"Connect to the Guru Remote MCP Server","description":"Guru MCP Server - Connect AI tools to your Guru knowledge base","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:47.365Z","publishedAt":"2026-07-27T06:26:47.339Z","remotes":[{"id":42,"type":"streamable-http","url":"https://mcp.api.getguru.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KOIM_9_MG_a2d2a74e04.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
avo	active	1.0.0	2026-07-27 06:26:59.555	{"id":27,"name":"io.github.avohq/avo","title":"Avo","tagline":"Connect to the Avo MCP Server","description":"Define, ship & query your analytics tracking from one source of truth, trusted by humans and agents.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:59.555Z","publishedAt":"2026-07-27T06:26:59.535Z","remotes":[{"id":43,"type":"streamable-http","url":"https://mcp.avo.app/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr574_A_Kk_X_6db6ee0e4c.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
flux	active	1.0.0	2026-07-27 06:27:11.348	{"id":28,"name":"io.github.black-forest-labs/flux-mcp","title":"FLUX","tagline":"Connect to the FLUX MCP Server","description":"Official FLUX MCP server. Generate, edit, vary, and browse images from Black Forest Labs.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:27:11.348Z","publishedAt":"2026-07-27T06:27:11.334Z","remotes":[{"id":44,"type":"streamable-http","url":"https://mcp.bfl.ai"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Lu4p_X9l_F_2d4acf82df.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
bitrix-24	active	1.0.0	2026-07-27 06:27:23.396	{"id":29,"name":"io.github.bitrix24/bitrix24","title":"Bitrix24","tagline":"Connect to the Bitrix24 MCP Server","description":"MCP server enabling AI agents to manage Bitrix24 features via standardized protocol","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:27:23.396Z","publishedAt":"2026-07-27T06:27:23.360Z","remotes":[{"id":45,"type":"streamable-http","url":"https://mcp.bitrix24.com/mcp/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Fs_Tz_WJ_4_X_2dd0bbcd84.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
c-data-connect-ai	active	1.0.0	2026-07-27 06:27:35.15	{"id":30,"name":"com.cdata/cdata-connect-ai","title":"CData Connect AI","tagline":"Connect to the CData Connect AI MCP Server","description":"Cloud-hosted MCP server for secure AI access to enterprise data sources via CData Connect AI.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:27:35.150Z","publishedAt":"2026-07-27T06:27:35.130Z","remotes":[{"id":46,"type":"streamable-http","url":"https://mcp.cloud.cdata.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_XN_Pnsge_I_18a9c34852.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
crypto-quant	active	0.1.1	2026-07-27 06:27:46.962	{"id":31,"name":"com.cryptoquant/mcp-server","title":"CryptoQuant","tagline":"Connect to the CryptoQuant MCP Server","description":"Query cryptocurrency on-chain data, OHLCV prices, market data, and Research & QuickTake insights.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:27:46.962Z","publishedAt":"2026-07-27T06:27:46.944Z","remotes":[{"id":47,"type":"streamable-http","url":"https://mcp.cryptoquant.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_V_Lc_E486p_f1a6e16cf8.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
cypress-cloud	active	1.0.0	2026-07-27 06:27:58.817	{"id":32,"name":"io.cypress.mcp/cypress-cloud","title":"Cypress Cloud","tagline":"Connect to the Cypress Cloud MCP Server","description":"Direct access to Cypress tests results and accessibility reports in your AI workflow.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:27:58.817Z","publishedAt":"2026-07-27T06:27:58.799Z","remotes":[{"id":48,"type":"streamable-http","url":"https://mcp.cypress.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv3zwm_Si_Y_97b8f8b3d4.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
exa	active	3.1.3	2026-07-27 06:28:10.635	{"id":33,"name":"ai.exa/exa","title":"Exa","tagline":"Connect to the Exa MCP Server","description":"Fast, intelligent web search and web crawling.\\n\\nNew mcp tool: Exa-code is a context tool for coding ","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:28:10.635Z","publishedAt":"2026-07-27T06:28:10.618Z","remotes":[{"id":49,"type":"streamable-http","url":"https://mcp.exa.ai/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idek_S6b5_Vc_846a9be831.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
fibery	active	1.0.0	2026-07-27 06:28:22.675	{"id":34,"name":"io.github.Fibery-inc/mcp","title":"Fibery","tagline":"Connect to the Fibery MCP Server","description":"Connect AI Assistant to Fibery — operating system for orgs run by nerds.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:28:22.675Z","publishedAt":"2026-07-27T06:28:22.659Z","remotes":[{"id":50,"type":"streamable-http","url":"https://mcp.fibery.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Az9_Jna3_3655f33477.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
hackle	active	1.0.0	2026-07-27 06:28:46.707	{"id":36,"name":"io.github.hackle-io/hackle-mcp","title":"Hackle","tagline":"Connect to the Hackle MCP Server","description":"Remote MCP server for the Hackle Admin API: experiments, feature flags, remote config, messaging.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:28:46.707Z","publishedAt":"2026-07-27T06:28:46.687Z","remotes":[{"id":52,"type":"streamable-http","url":"https://mcp.hackle.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idb_Cgt3_EZ_5_6022811256.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
himalayas-remote-jobs	active	1.0.2	2026-07-27 06:28:57.931	{"id":37,"name":"app.himalayas/mcp","title":"Himalayas Remote Jobs","tagline":"Connect to the Himalayas Remote Jobs MCP Server","description":"Search and post remote jobs, browse companies, check salaries, and find talent on Himalayas.app","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:28:57.931Z","publishedAt":"2026-07-27T06:28:57.821Z","remotes":[{"id":53,"type":"streamable-http","url":"https://mcp.himalayas.app/mcp"},{"id":54,"type":"sse","url":"https://mcp.himalayas.app/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_80aa4c0cf9.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
jumpcloud	active	0.0.38	2026-07-27 06:29:34.445	{"id":40,"name":"com.jumpcloud/jumpcloud-genai","title":"Jumpcloud","tagline":"Connect to the Jumpcloud MCP Server","description":"An MCP server that provides an API to LLMs to manage their JumpCloud resources.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:29:34.445Z","publishedAt":"2026-07-27T06:29:34.429Z","remotes":[{"id":57,"type":"streamable-http","url":"https://mcp.jumpcloud.com/v1"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Q_Wjip_S_Dg_57592c9ce8.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
kajabi	active	1.0.0	2026-07-27 06:29:46.253	{"id":41,"name":"com.kajabi/kajabi","title":"Kajabi","tagline":"Connect to the Kajabi MCP Server","description":"Manage Kajabi from any MCP client — products, pages, contacts, offers, emails, analytics.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:29:46.253Z","publishedAt":"2026-07-27T06:29:46.233Z","remotes":[{"id":58,"type":"streamable-http","url":"https://mcp.kajabi.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_BPULB_Tw_A_b4460963bc.svg","mimeType":"image/svg+xml","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
lucid	active	1.0.0	2026-07-27 06:29:57.456	{"id":42,"name":"app.lucid.mcp/lucid","title":"Lucid","tagline":"Connect to the Lucid MCP Server","description":"Lucid’s connector creates diagrams, searches, edits, shares, and retrieves docs to summarize.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:29:57.456Z","publishedAt":"2026-07-27T06:29:57.441Z","remotes":[{"id":59,"type":"streamable-http","url":"https://mcp.lucid.app/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/cab2c5c2_21ed_4272_8606_4ce6e117da17_b893d525b7.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
mapbox	active	0.12.7	2026-07-27 06:30:09.602	{"id":43,"name":"io.github.mapbox/mcp-server","title":"Mapbox","tagline":"Connect to the Mapbox MCP Server","description":"Geospatial intelligence with Mapbox APIs like geocoding, POI search, directions, isochrones, etc.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:30:09.602Z","publishedAt":"2026-07-27T06:30:09.586Z","remotes":[{"id":60,"type":"streamable-http","url":"https://mcp.mapbox.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Ks_p_3_Ey_088e4b1f1c.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
mux	active	12.8.0	2026-07-27 06:30:21.396	{"id":44,"name":"com.mux/mcp","title":"Mux","tagline":"Connect to the Mux MCP Server","description":"The official MCP Server for the Mux API","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:30:21.396Z","publishedAt":"2026-07-27T06:30:21.382Z","remotes":[{"id":61,"type":"streamable-http","url":"https://mcp.mux.com"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_VMK_Dr_E_9ee0d1c0fd.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
new-relic	active	0.1.0	2026-07-27 06:30:33.181	{"id":45,"name":"com.newrelic/mcp-server","title":"New Relic","tagline":"Connect to the New Relic MCP Server","description":"Access New Relic observability data through MCP - query metrics, logs, traces, entities, and more","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:30:33.181Z","publishedAt":"2026-07-27T06:30:33.165Z","remotes":[{"id":62,"type":"streamable-http","url":"https://mcp.newrelic.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idj_OU_5_Ls_Vn_b153d861d2.svg","mimeType":"image/svg+xml","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
onlyoffice	active	3.2.0	2026-07-27 06:30:45.489	{"id":46,"name":"io.github.ONLYOFFICE/docspace","title":"Onlyoffice","tagline":"Connect to the Onlyoffice MCP Server","description":"A room-based collaborative platform","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:30:45.489Z","publishedAt":"2026-07-27T06:30:45.477Z","remotes":[{"id":63,"type":"sse","url":"https://mcp.onlyoffice.com/sse"},{"id":64,"type":"streamable-http","url":"https://mcp.onlyoffice.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_J_Gf_Mm1x_3abc6daf5a.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
open-video	active	1.1.0	2026-07-27 06:30:57.197	{"id":47,"name":"video.open/open-video","title":"Open Video","tagline":"Connect to the Open Video MCP Server","description":"AI-powered video publishing, channel management, and monetization via open.video","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:30:57.197Z","publishedAt":"2026-07-27T06:30:57.182Z","remotes":[{"id":65,"type":"streamable-http","url":"https://mcp.open.video/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_C4_Z_Er2jl_efcb489bf4.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
open-agenda	active	1.3.2	2026-07-27 06:31:08.655	{"id":48,"name":"com.openagenda/mcp","title":"OpenAgenda","tagline":"Connect to the OpenAgenda MCP Server","description":"Search, analyze and manage events on OpenAgenda.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:31:08.655Z","publishedAt":"2026-07-27T06:31:08.639Z","remotes":[{"id":66,"type":"streamable-http","url":"https://mcp.openagenda.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_512_white_abac3fef40.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_white_463b7b7aad.svg","mimeType":"image/svg+xml"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
roboflow-official	active	1.0.3	2026-07-27 06:31:46.505	{"id":51,"name":"com.roboflow/roboflow-mcp","title":"Roboflow (Official)","tagline":"Connect to the Roboflow (Official) MCP Server","description":"Roboflow computer vision for AI agents: datasets, annotation, versioning, workflows, inference.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:31:46.505Z","publishedAt":"2026-07-27T06:31:46.487Z","remotes":[{"id":69,"type":"streamable-http","url":"https://mcp.roboflow.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_5a61ee5b18.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
serpstat	active	1.1.5	2026-07-27 06:31:58.494	{"id":52,"name":"com.serpstat/mcp","title":"Serpstat","tagline":"Connect to the Serpstat MCP Server","description":"Automate your daily SEO tasks and get results in a few seconds with Serpstat SEO Tools MCP","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:31:58.494Z","publishedAt":"2026-07-27T06:31:58.473Z","remotes":[{"id":70,"type":"streamable-http","url":"https://mcp.serpstat.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_9deb9e3426.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_16x16_978f8c1d24.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_60x60_0e141e6ab3.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_120x120_989cf97cef.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/mstile_144x144_86f983426c.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_180x180_d5650b553b.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
user-guiding	active	1.0.0	2026-07-27 06:32:22.58	{"id":54,"name":"io.github.userguiding/mcp","title":"UserGuiding","tagline":"Connect to the UserGuiding MCP Server","description":"Manage users, track events, companies, and knowledge base articles in UserGuiding.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:32:22.580Z","publishedAt":"2026-07-27T06:32:22.566Z","remotes":[{"id":72,"type":"streamable-http","url":"https://mcp.userguiding.com/mcp/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gqzc_El_EH_ac5ec7c6bf.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
wordlift	active	1.0.7	2026-07-27 06:32:34.408	{"id":55,"name":"io.wordlift/mcp-server","title":"Wordlift","tagline":"Connect to the Wordlift MCP Server","description":"Knowledge Graph, GraphQL, GS1 Digital Link and SEO tools for semantic content optimization.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:32:34.408Z","publishedAt":"2026-07-27T06:32:34.385Z","remotes":[{"id":73,"type":"sse","url":"https://mcp.wordlift.io/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Y8_Nf90og_3c8f9dbd0a.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
zigpoll	active	2.0.0	2026-07-27 06:32:46.428	{"id":56,"name":"com.zigpoll/zigpoll-mcp","title":"Zigpoll","tagline":"Connect to the Zigpoll MCP Server","description":"Analyze Zigpoll survey responses, track trends, and get AI-powered insights.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:32:46.428Z","publishedAt":"2026-07-27T06:32:46.415Z","remotes":[{"id":74,"type":"streamable-http","url":"https://mcp.zigpoll.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_b4l_E3_VQ_6438fbc3e9.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
ivisa	active	0.0.3	2026-07-27 06:32:58.532	{"id":57,"name":"com.ivisa.www/mcp","title":"Ivisa","tagline":"Connect to the Ivisa MCP Server","description":"Check visa requirements and travel documents for international travel destinations.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:32:58.532Z","publishedAt":"2026-07-27T06:32:58.503Z","remotes":[{"id":75,"type":"streamable-http","url":"https://www.ivisa.com/mcp"},{"id":76,"type":"sse","url":"https://www.ivisa.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_Qi_Xix_P_239207701b.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
veed-ai-video-generator	active	1.0.0	2026-07-27 06:33:09.725	{"id":58,"name":"io.veed/fabric-mcp","title":"VEED AI Video Generator","tagline":"Connect to the VEED AI Video Generator MCP Server","description":"Generate AI talking-head videos with custom characters and voices.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:33:09.725Z","publishedAt":"2026-07-27T06:33:09.706Z","remotes":[{"id":77,"type":"streamable-http","url":"https://www.veed.io/api/v1/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_prod_d15545bdfc.svg","mimeType":"image/svg+xml"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_f264fbd0f8.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
fingerprint	active	0.1.35	2026-07-27 06:33:21.382	{"id":59,"name":"io.github.fingerprintjs/fingerprint-mcp-server","title":"Fingerprint","tagline":"Connect to the Fingerprint MCP Server","description":"Device intelligence for AI agents: Fingerprint events, smart signals, and API key management.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:33:21.382Z","publishedAt":"2026-07-27T06:33:21.372Z","remotes":[{"id":78,"type":"streamable-http","url":"https://mcp.fpjs.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id7_Fxo_YI_61_3ef3687cce.png","mimeType":"image/png","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
altmetric	active	1.1.0	2026-07-27 06:33:32.848	{"id":60,"name":"com.altmetric.mcp/altmetric-mcp","title":"Altmetric","tagline":"Connect to the Altmetric MCP Server","description":"MCP server for Altmetric APIs - track research attention across news, policy, social media, and more","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:33:32.848Z","publishedAt":"2026-07-27T06:33:32.831Z","remotes":[{"id":79,"type":"streamable-http","url":"https://mcp.altmetric.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_50fcccdb0a.svg","mimeType":"image/svg+xml"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
cello	active	1.0.1	2026-07-27 06:33:55.459	{"id":62,"name":"so.cello/mcp","title":"Cello","tagline":"Connect to the Cello MCP Server","description":"Cello MCP server to launch and manage your Referral and Partner program","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:33:55.459Z","publishedAt":"2026-07-27T06:33:55.441Z","remotes":[{"id":81,"type":"streamable-http","url":"https://mcp.cello.so/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_48x48_f037a7c241.png","mimeType":"image/png"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
composio	active	1.0.5	2026-07-27 06:34:06.747	{"id":63,"name":"io.github.ComposioHQ/composio","title":"Composio","tagline":"Connect to the Composio MCP Server","description":"Connect AI agents to 1000+ apps with managed authentication and tool-calling.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:34:06.747Z","publishedAt":"2026-07-27T06:34:06.652Z","remotes":[{"id":82,"type":"streamable-http","url":"https://connect.composio.dev/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_Black_fe5c6c91c6.svg","mimeType":"image/svg+xml","theme":"light"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_White_b349b06097.svg","mimeType":"image/svg+xml","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
gtmetrix	active	1.1.0	2026-07-27 06:34:18.943	{"id":64,"name":"com.gtmetrix/gtmetrix","title":"Gtmetrix","tagline":"Connect to the Gtmetrix MCP Server","description":"Analyze web performance and get optimization insights from GTmetrix, directly in your AI workflow.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:34:18.943Z","publishedAt":"2026-07-27T06:34:18.929Z","remotes":[{"id":83,"type":"streamable-http","url":"https://gtmetrix.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S5_Ofsvh_D_030852542c.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
opus-clip	active	0.1.2	2026-07-27 06:34:42.641	{"id":66,"name":"io.github.opus-pro/opusclip","title":"OpusClip","tagline":"Connect to the OpusClip MCP Server","description":"Turn long videos into AI-curated short clips: caption, reframe, thumbnail, schedule, and publish.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:34:42.641Z","publishedAt":"2026-07-27T06:34:42.627Z","remotes":[{"id":85,"type":"streamable-http","url":"https://mcp.opus.pro/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id16btw_Mn_34285031cd.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
rackspace-spot	active	0.3.2	2026-07-27 06:34:54.483	{"id":67,"name":"io.github.rackspace-spot/spot-mcp","title":"Rackspace Spot","tagline":"Connect to the Rackspace Spot MCP Server","description":"Manage Rackspace Spot Kubernetes Cloudspaces, node pools, and VMs from your AI assistant.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:34:54.483Z","publishedAt":"2026-07-27T06:34:54.469Z","remotes":[{"id":86,"type":"streamable-http","url":"https://mcp.spot.rackspace.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Am_XHO_Xj_c7492988ea.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
send-pulse	active	1.0.0	2026-07-27 06:35:06.234	{"id":68,"name":"com.sendpulse.mcp/mcp-server","title":"SendPulse","tagline":"Connect to the SendPulse MCP Server","description":"Empower AI agents with SendPulse email, CRM, chatbot, SMTP, and course automation","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:35:06.234Z","publishedAt":"2026-07-27T06:35:06.215Z","remotes":[{"id":87,"type":"streamable-http","url":"https://mcp.sendpulse.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv4t5t_Kt_Q_bad208ede1.jpeg","mimeType":"image/jpeg","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
snitcher	active	1.1.0	2026-07-27 06:35:18.252	{"id":69,"name":"com.snitcher/snitcher","title":"Snitcher","tagline":"Connect to the Snitcher MCP Server","description":"Identify companies visiting your website: organisations, contacts, segments, tags, CRM sync.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:35:18.252Z","publishedAt":"2026-07-27T06:35:18.236Z","remotes":[{"id":88,"type":"streamable-http","url":"https://app.snitcher.com/mcp/snitcher"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idgwm_NEV_1_f421fc6c44.svg","mimeType":"image/svg+xml","theme":"dark"}]}	2026-07-27 12:56:04.337+00	2026-07-27 12:56:04.337+00
tolstoy-library	active	1.0.0	2026-07-31 08:57:40.033	{"id":21,"name":"io.github.GoTolstoy/library","title":"Tolstoy Library","tagline":"Connect to the Tolstoy Library MCP Server","description":"Browse, search, rename, and favorite your Tolstoy media library from any AI client.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:25:48.599Z","publishedAt":"2026-07-31T08:57:39.981Z","remotes":[{"id":36,"type":"streamable-http","url":"https://apilb.gotolstoy.com/mcp/v1/library/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id1bfg_NL_0_W_a737f0b436.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idswp_Hz_VRG_41aaa8f2a7.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
airtable	active	0.1.0	2026-07-31 08:55:31.929	{"id":24,"name":"com.airtable/mcp","title":"Airtable","tagline":"Connect to the Airtable MCP Server","description":"Official Airtable MCP server — database and operations layer for agents.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:26:24.433Z","publishedAt":"2026-07-31T08:55:31.874Z","remotes":[{"id":40,"type":"streamable-http","url":"https://mcp.airtable.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_RW_Qzz_VRI_a8b8b106af.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/iddyj0wl13_cb19e5e7fa.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
grafana	active	v0.17.2	2026-07-31 08:56:04.253	{"id":35,"name":"io.github.grafana/mcp-grafana","title":"Grafana","tagline":"Connect to the Grafana MCP Server","description":"An MCP server giving access to Grafana dashboards, data and more.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:28:34.695Z","publishedAt":"2026-07-31T08:56:03.609Z","remotes":[{"id":51,"type":"streamable-http","url":"https://mcp.grafana.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Voh_Wbum_D_22ee5e3d3d.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KI_2_Ge8_Tx_8fa7637298.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
honeycomb	active	1.0.0	2026-07-31 08:56:17.715	{"id":38,"name":"io.honeycomb/mcp","title":"Honeycomb","tagline":"Connect to the Honeycomb MCP Server","description":"Query Honeycomb observability data: traces, events, metrics, SLOs, triggers, and boards.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:29:09.821Z","publishedAt":"2026-07-31T08:56:17.624Z","remotes":[{"id":55,"type":"streamable-http","url":"https://mcp.honeycomb.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Eu_Mai3_Y_51bd126c09.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zffh_QN_Fl_bfda41d0f1.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
jotform	active	1.0.0	2026-07-31 08:56:30.157	{"id":39,"name":"com.jotform/mcp","title":"Jotform","tagline":"Connect to the Jotform MCP Server","description":"Jotform MCP","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:29:22.378Z","publishedAt":"2026-07-31T08:56:30.074Z","remotes":[{"id":56,"type":"streamable-http","url":"https://mcp.jotform.com/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idcaz_TK_Ep1_099d00aa95.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Rg_Fx_ND_Ty_d7d836bfa5.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
quicknode	active	1.0.0	2026-07-31 08:56:55.454	{"id":49,"name":"io.github.quicknode/mcp","title":"Quicknode","tagline":"Connect to the Quicknode MCP Server","description":"Manage your blockchain infrastructure across 80+ chains with your agents.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:31:22.594Z","publishedAt":"2026-07-31T08:56:55.393Z","remotes":[{"id":67,"type":"streamable-http","url":"https://mcp.quicknode.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gkd_Tc_T_Q_6cd067aa96.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Eo_Rfmv8_I_b2228a7aa7.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
railway	active	1.0.0	2026-07-31 08:57:13.759	{"id":50,"name":"com.railway/mcp","title":"Railway","tagline":"Connect to the Railway MCP Server","description":"Develop, manage, and debug Railway projects, services, and deployments from within agents.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:31:34.656Z","publishedAt":"2026-07-31T08:57:13.686Z","remotes":[{"id":68,"type":"streamable-http","url":"https://mcp.railway.com/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_N_Pa1_W_g_1b0b09d3c0.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Nf_YM_Ddf_P_d0762ab2e7.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
tenderly	active	1.0.1	2026-07-31 08:57:28.375	{"id":53,"name":"co.tenderly/tenderly-mcp","title":"Tenderly","tagline":"Connect to the Tenderly MCP Server","description":"Tenderly MCP server for blockchain dev — simulate, debug, and test on 100+ networks.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:32:10.706Z","publishedAt":"2026-07-31T08:57:28.309Z","remotes":[{"id":71,"type":"streamable-http","url":"https://mcp.tenderly.co/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Np_P91btg_2999d326fa.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idg5pc_CT_Me_199bebd567.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
brandfetch	active	1.0.1	2026-07-31 08:55:50.736	{"id":61,"name":"io.brandfetch/brandfetch","title":"Brandfetch","tagline":"Connect to the Brandfetch MCP Server","description":"Search brands and retrieve design assets, company data, other brand context from Brandfetch's API","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:33:44.412Z","publishedAt":"2026-07-31T08:55:50.665Z","remotes":[{"id":80,"type":"streamable-http","url":"https://mcp.brandfetch.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_X_Gq6_S_Iu2_39f64c1e3e.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_CQ_52_AR_5_a0d0556d83.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
lusha	active	1.0.0	2026-07-31 08:56:43.789	{"id":65,"name":"com.lusha.mcp/mcp","title":"Lusha","tagline":"Connect to the Lusha MCP Server","description":"Lusha MCP server for authorized business profile, usage, and buying-signal insights.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-07-27T06:34:30.787Z","publishedAt":"2026-07-31T08:56:43.704Z","remotes":[{"id":84,"type":"streamable-http","url":"https://mcp.lusha.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Oqhne_W4l_160b2c6387.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Hn_Bv_Pm_MF_b3cab3545f.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-07-27 12:56:04.337+00	2026-07-31 12:56:04.366+00
miro	active	1.0.2	2026-08-10 08:21:30.846	{"id":70,"name":"io.github.miroapp/mcp-server","title":"Miro","tagline":"Connect to the Miro MCP Server","description":"Official Miro MCP server - Supports context to code and creating diagrams, docs, and data tables.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-08-10T08:21:30.846Z","publishedAt":"2026-08-10T08:21:30.813Z","remotes":[{"id":89,"type":"streamable-http","url":"https://mcp.miro.com/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null,"icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idk_O_5_Zj_Q7_b2bf73f9a8.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkd_QM_0c_Wu_51bef08ff0.svg","mimeType":"image/svg+xml","theme":"light"}]}	2026-08-10 12:56:04.367+00	2026-08-10 12:56:04.367+00
\.


--
-- Data for Name: instance_ai_mcp_registry_connections; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_mcp_registry_connections" ("id", "credentialId", "serverSlug", "toolFilter", "userId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_cursors; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_observation_cursors" ("observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_locks; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_observation_locks" ("observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_observations" ("id", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_pending_confirmations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_pending_confirmations" ("requestId", "threadId", "userId", "kind", "runId", "toolCallId", "messageGroupId", "checkpointKey", "checkpointTaskId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt", "langsmithRunId", "langsmithTraceId", "traceId", "spanId") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	27	4	2026-06-25 12:25:18.884+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
163	1776150756000	CreateFavoritesTable1776150756000
164	1777000000000	CreateDeploymentKeyTable1777000000000
165	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
166	1777045000000	AddTracingContextToExecution1777045000000
167	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
168	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
169	1777420800000	ExpandVariablesValueColumnToText1777420800000
170	1777996709110	AddRunIndexToTestCaseExecution1777996709110
171	1778000000000	AddExecutionDeduplicationKey1778000000000
172	1778100000000	CreateEvaluationConfig1778100000000
173	1778100001000	AddWorkflowVersionToTestRun1778100001000
174	1778100002000	AddEvaluationConfigColumnsToTestRun1778100002000
175	1778496086558	CreateEvaluationCollection1778496086558
176	1783000000000	CreateAgentTables1783000000000
177	1783000000001	CreateAgentExecutionTables1783000000001
178	1784000000000	CreateAgentObservationTables1784000000000
179	1784000000001	ReplaceAgentObservationTables1784000000001
180	1784000000002	DropAgentExecutionWorkingMemory1784000000002
181	1784000000003	LimitWorkflowVersionTriggerToContent1784000000003
182	1784000000004	AddInsightsRawTimestampIdIndex1784000000004
183	1784000000005	CreateMcpRegistryServerTable1784000000005
184	1784000000006	AddNodeGroupsColumnToWorkflowAndHistory1784000000006
185	1784000000007	CreateInstanceAiCheckpointTable1784000000007
186	1784000000008	ResetInstanceAiNativePersistence1784000000008
187	1784000000009	CreateAgentMemoryEntryTables1784000000009
188	1784000000010	RefactorAgentObservationScope1784000000010
189	1784000000011	CreateAgentHistoryTable1784000000011
190	1784000000012	CreateInstanceAiObservationTables1784000000012
191	1784000000013	SplitRedactionScopeInCustomRoles1784000000013
192	1784000000014	PersistInstanceAiPendingConfirmations1784000000014
193	1784000000015	AddSourceWorkflowIdToWorkflow1784000000015
194	1784000000016	UseSlugAsPrimaryKeyInMcpRegistryServer1784000000016
195	1784000000017	AddLastUsedAtToApiKey1784000000017
196	1784000000018	CreateAgentFilesTable1784000000018
197	1784000000019	AddCustomTelemetryTagsToProject1784000000019
198	1784000000021	CreateAgentTaskDefinitionTable1784000000021
199	1784000000022	AddSubAgentLinkageToAgentExecutionThreads1784000000022
200	1784000000023	CreateInstanceAiMcpRegistryConnectionTable1784000000023
201	1784000000024	AddResourceToOAuthAuthorizationCodes1784000000024
202	1784000000025	MigrateRedactionEnforcementToFloor1784000000025
203	1784000000026	AddScopeColumnToOAuthTables1784000000026
204	1784000000027	CreateWorkflowPublicationOutboxTable1784000000027
205	1784000000028	AddProjectIdToInstanceAiThread1784000000028
206	1784000000029	AddJsonSizeBytesAndWorkflowVersionIdToExecutionEntity1784000000029
207	1784000000030	CreateAgentChatSubscriptions1784000000030
208	1784000000031	AddExecutionEntityWorkflowStatusIndex1784000000031
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt", "resource", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
Cy5tRNMdHTYxQSzi	a1d7fc22-ed12-4ea4-bb00-139cee09038a	project:personalOwner	2026-06-25 12:08:57.706+00	2026-06-25 12:08:57.706+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
agent:create	Create Agent	Allows creating new agents in a project.
agent:read	Read Agent	Allows reading agent configuration and history.
agent:update	Update Agent	Allows updating, building, publishing, and managing integrations of agents.
agent:delete	Delete Agent	Allows deleting agents.
agent:list	List Agents	Allows listing agents in a project.
agent:execute	Execute Agent	Allows running agents in chat.
agent:publish	Publish Agent	Allows publishing agents.
agent:unpublish	Unpublish Agent	Allows unpublishing agents.
agent:manage	agent:manage	\N
agent:*	agent:*	\N
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:export	Export Workflow	Allows including workflows in a portable package export.
workflow:import	Import Workflow	Allows importing workflows from a portable package into the project.
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:list	apiKey:list	\N
apiKey:create	apiKey:create	\N
apiKey:delete	apiKey:delete	\N
apiKey:update	apiKey:update	\N
apiKey:*	apiKey:*	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
encryptionKey:*	encryptionKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
otel:manage	otel:manage	\N
otel:*	otel:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
workflow:enableRedaction	workflow:enableRedaction	\N
workflow:disableRedaction	workflow:disableRedaction	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	agent:create
global:owner	agent:read
global:owner	agent:update
global:owner	agent:delete
global:owner	agent:list
global:owner	agent:execute
global:owner	agent:publish
global:owner	agent:unpublish
global:owner	agent:manage
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:export
global:owner	workflow:import
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	apiKey:list
global:owner	apiKey:create
global:owner	apiKey:delete
global:owner	apiKey:update
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	otel:manage
global:owner	workflow:publish
global:owner	workflow:enableRedaction
global:owner	workflow:disableRedaction
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	agent:create
global:admin	agent:read
global:admin	agent:update
global:admin	agent:delete
global:admin	agent:list
global:admin	agent:execute
global:admin	agent:publish
global:admin	agent:unpublish
global:admin	agent:manage
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:export
global:admin	workflow:import
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	apiKey:list
global:admin	apiKey:create
global:admin	apiKey:delete
global:admin	apiKey:update
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	otel:manage
global:admin	workflow:publish
global:admin	workflow:enableRedaction
global:admin	workflow:disableRedaction
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:list
global:member	apiKey:create
global:member	apiKey:delete
global:member	apiKey:update
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	agent:create
project:admin	agent:read
project:admin	agent:update
project:admin	agent:delete
project:admin	agent:list
project:admin	agent:execute
project:admin	agent:publish
project:admin	agent:unpublish
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:export
project:admin	workflow:import
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:admin	workflow:enableRedaction
project:admin	workflow:disableRedaction
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	agent:create
project:personalOwner	agent:read
project:personalOwner	agent:update
project:personalOwner	agent:delete
project:personalOwner	agent:list
project:personalOwner	agent:execute
project:personalOwner	agent:publish
project:personalOwner	agent:unpublish
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:export
project:personalOwner	workflow:import
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:personalOwner	workflow:enableRedaction
project:personalOwner	workflow:disableRedaction
project:editor	workflow:unpublish
project:editor	agent:create
project:editor	agent:read
project:editor	agent:update
project:editor	agent:delete
project:editor	agent:list
project:editor	agent:execute
project:editor	agent:publish
project:editor	agent:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:export
project:editor	workflow:import
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	agent:read
project:viewer	agent:list
project:viewer	agent:execute
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:export
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:readColumn
project:viewer	dataTable:listProject
project:chatUser	agent:execute
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:export
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	execution:reveal
workflow:owner	workflow:publish
workflow:owner	workflow:enableRedaction
workflow:owner	workflow:disableRedaction
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:export
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5MNHFJOTdxdEs5c1p4eDF1MUR6WWQ2S00xVjVaZUx4cWcvY2dicHljcXFtWUVmNHhGNzdhelZ1djlmQlFJY0dhXG43Sk8wRVVZSW5nNHN0R3F3U2x0S0pmYmxsaGhxV08rdVVRUkk1cy80a0NMR25mbW5TRnEyWFdkb08wcTM0TU9YXG43U2crNlR1YkRiVnJORTZyeXRUd3plemlDR1NmVzNxK3dNVEpvOWdjUUdTa0dTZFJIODF3UWFvLyt5NGloNjI5XG51ZUtqMnViak9jVmJDY0ZpMUhDNFE4Qmpnejl6dlVsVm4zVTlRV0ZMVHNjemJvTzBDd3RuOEpUMjNqN1M1aTd0XG42NVlTMHN1ZUpPaEdlZHpLSkNUSC9EeXRjK1ZpT3VNQWx3OW5tQTUwajFLV0U1b2RIeVN5M1B5VFFsd3VVU3kxXG5RUzZ6WWZjeDhDZXZ3WVpFa3VBaHBBPT18fFUyRnNkR1ZrWDEreCtRbUZsN0VoelNybS9IdEtza3dmZ0V6K3ZWXG5aZWhITUMvVzRCRjUrRWh0VnBMSkVnVHRDL2lmQXF4RnUzeEZMU1h1eGY3eDJaU1NBVU4xMXpwMmttS2FoY1g1XG41bkVqQ1lqVGdYV3ZkVGw1Ni8wQzh0b3AzTWNpM1h1RFVIWVRlbzZQN1NTUEExYnNkdWwwMk50KzZ2TjgxQVM3XG5acTkzTmdVakdCemRzakl3ODMzRjhEa0VrNmtaajlOR1JRTmtqNjYvMXVJaEJTOHVxYWZpMk9pdmdyYWREeU51XG5URWd3VmZlaGlqVkVZUHkzSTRHOTkzMU9oaTBSL01qZ3hLRUJxT1l5VS81b0JTK2tkZVJ1OHhoZWF4MVcvWFN2XG43bUpRM3Z2K2E1T3NNdXYrdTd3YTBUQU5MT3lQbTRObGFaWWVKV29oK1hEK1RiSTRvZjFodUNMMWFKVDk4eGhaXG5sSUNoRHdvSnNwc3VFYzNwazZub0p5KzBCYWpYSDJQSEpDTEUzT00zSXhIMnk2NWVtd2dZdlNRVWZLeGZNSGxKXG5ESHlDZml3bzNrenhHMDVoWHlIMHRQUTFHWFdGekNGN3FJM3U0Mm9lN0M2VUt3WWo3QWd4dTdNRDVrWjhBNCs1XG5rVkhmS0RPL0wzc0ZvT2tEV3hRN09KZkg4Mlk5MWtPUFVzaVNHeEtDdVZUelUvWWMxTitOSU5FK0dkRGlRRXZhXG5qTThIeG5tMFJCcEJOaERuVzB3di9WOVFocHpQUTdhdkNUNFFiZ0JNT2NJSithOFJ4SGVOTTMzd29CNHY4dDFCXG5lYWIvL3owbzR3emx4Z2x5b0JjNnE1SHlSU1VJUjRPN2lrNllNNm8wV0paaTF4cEFPTFQwMk5XWlYwY2FtVXg5XG4zQWtETkFTUFNjUlY4d3IySnp5d28zZ2RKTDZ1aVo2SmpuSENwbWRuTjBGQWFGc1FhRmlEQjBtVThmV2xMZVErXG5rN0dzcTBLeFh3clVUeEZSVm9BRWtKVmUyYnZnZDIvekwvZWlJRlVBQ1MyZHBoUk1jbDVFeUJmRkRFS0gvRnR2XG5VVkszQmR6c2twU1ZuKzdtczhJK0pxNC9HbjRTQ0hnTUUwREh6eHBFdWZucDNNb3hTQTBJTVBESEV2NU1ZSGw3XG43S2xDeVJXUmErcHpWQy9UYnhOaUgvWCtpWW9mclhkaWdUdmhzVVFodTAwbnhmNi9acXJla3dLT3ZIeGZxVzlDXG5tQlZQOE43UU9vdDF1NGdDV1IvQTNyMGYxb0hJbmJLTHdlVUVFTkRObWZkc0JvaWhDclFmZlVER2piNEJ2aHpsXG55M09ZM1VpaHArK2NIZWtUS1FaU1djOXhOcGFHRFlwc1VrdXZzS1JBckVvVTRZL1RpMHpLL1lKVHNTY21qRWM5XG5CN0JtNytMRm9ocEdhbzFZbnZIWm5FTXhjM1Z2Q3ZRS0NuZGRqalMwTnY1MDNhWnlKclpZQkJzY0s5VVdsQjk3XG5iVGh4MWdmZldQVkZFUit0bnRORUVNVjEzZ0s0UmNnTE9iMVFoQ25LeEkreHpuZlRRTGRDTWdUZVQxREpHODcxXG5QbmtrUXdvbzRJa294T09ET0R4b2NZS3RXNmJHa2J1S3FlUkp0SWYvVHo5NlgzUEtES0Z1aVJiU1dJL0RHd0tOXG5OMEh3bTc2NVVQZ1JmRzlkQXo2Q2tNc21rMTUzd3Q5S2lvVXhFR1J2SHRnRUNSR1U3LzBRK2hZeHg4TlZLMm16XG5LZVFTRjJFNHF2eE9Lb28zYmRvakJ2NG9YZXNRdlNVcnVZR3pzN1RjS2poZG9idldiTk10T3BzZ0hwZ2tMZm9rXG5vcFVrT3VoZSs2SzN6S1RBeTlRYlhaQ0Z3N1NOa2k5RWdwRldtREk4SkF2Rm9mM2lXbVdROUd4NlpqUFM0QVd6XG4xWDNZR2NOeHpGRWwxRU8rdEJ1ejIrNVFmcmtETnE3aFNqKzIxRkRReXJqOHFwM1llL2xhTzcwY09sNTIxc0hsXG43SXZvem5BbWVQTnNFSUZRaHZMNTZMcmUybnIrY1VRMEJGOXJQaGowU1NxTTZqWk9Fc2tzM2VmQ1BuOHE0QUZXXG5lTHFVWGJDc0EyZUpUMVhkQkcwaUgyTXg3YmtnV0YrVG5TSmVBZ3FsVHVLL2ZhZlhqdVFUNTNlQVQ2aVgyR0FVXG55cVJtVDlwbWhTRUZxMjBBcGNKd3JaTG1iZEw3RmFXRFRvL2xjQUtjSXBzYzVqZ0Z5Uklsa0dZWE52eW8wc3VvXG5xZ2R5LzhkMEw1MmxrdDVZVHREK0xCc1dPdlp3NVBYRUJoa0tNbCtPVEtOWUEveHlnRlZDY1pIV3l4SDhVRGF1XG43TCtQUlZ6MjZGUTQzbkZ0aGpaR3NtUDdHRzJsenVabTRIb09MU0NmaDB3cGZMS01PWGxhWmhuVVg0WW9oQmUxXG5VUU1MZlhIMG5YS3FmQU1CUHhZUjM4Smh5VUg0cmQyQ2JiMmhFYXdEZzdMNHlNNjhQL3VRYnlmMGlhVjZyRFJrXG5ZVWcxSTN1b1Z6MnZkdFBYWit1T2ZqSlRuK2JpSzl4SlJjNVFQakNNaTE4YkRUQVVhWDFDZ0FvVjNjcEdiUkFrXG5NZCt2clRLcHdFN3JibGw2YVhSbHBaUGhncVNsNGYzZjdkWkZqVGRDQm5VYURXVnZxUUxHOWpjUjNkOUlhOEdwXG5KekJCbFFPRVhBL3lyY3lyK1lQbzYra3JZQ0FoK1VmSGN5SXJLck9GNzY1M0dub1U3dkhINlRMRk9pazA1Ykt0XG5GNU1UQWkyVDJRME4zTGRVWDRuSWNBeUI0dTAzeFo0dEZhT1dSOFR3OHQvMGJWR3kzMW5NaUIvbzJITDhUWjV3XG5PMDVKZ3hubkNmK2RtTXlhUnhDNkZOQ09MM2YyMndISjZienQ0WlJhSEZlRnlTQlpRcHJEZWlYU09VRXJmaFZRXG5vSG9zcHlNL0FsT2VQZ3hKUjl4SjBXMEJnVzlac2REY1NyNnBsM0JxcnJseU5XRUdrcDZ1MFNLR1AxcDRkUUJYXG56b0VDSm1BdjIyVXRDdlZMd3N1ZEpGQUxybXVxbSt6UjAvUmp5eFNNRlF5Zm93eWc9PXx8a2xKZW1HTmtnN3dYXG5BZ1dPYWRqblEydVVsUjhhaERNUGc0Kyt2VXZidjd1aERBMy9za1FxbDYveGtMRG1xTXJFMkdpbS9VWXh3TnVzXG5HdzFlM253dUYvOENLMnNxWXd4OFR2QVlGSERuUExpRHVGMDZueEhKdDc3VW1sK3hkRm90TzZZbk41cmhLVThmXG50M2p0aXJNcmk4d2FBQndLdTc2TC9NQlRTTXZhNnhOV1lpRmVJaTRvRllvUGEyRzVUYmw0VXA4ZUdDVUMxV3Q1XG5VdSsySzVoLzFqdXdyWnh0Y3RmSXNYV3l1SXpxeitwTjBiRnZueCtFTEg1SWw1cCsxNXVUa2ZQM2FuSGRJTEd4XG41Z2tZRmZON2F3QVdiQlF6UUNxMTYwVm5yWllnOEhmTjB5d0QrSUdEdmFyVnM4VTI0WjF3eXF6NElrNDdQMUpVXG5YeUgrSFF0TGZnPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
caYsMcJpd6nk2pj4	Cy5tRNMdHTYxQSzi	credential:owner	2026-06-25 13:35:58.749+00	2026-06-25 13:35:58.749+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
58tOnjRut31XG8Hh	Cy5tRNMdHTYxQSzi	workflow:owner	2026-06-25 13:26:04.663+00	2026-06-25 13:26:04.663+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested", "workflowVersionId", "evaluationConfigId", "evaluationConfigSnapshot", "collectionId") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs", "runIndex") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience", "lastUsedAt") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
46	58tOnjRut31XG8Hh	18	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"970beefb-1e1e-406d-97cf-8f3583bc7c86","nodeVersion":1.3}	1	2026-06-25 13:45:02.407+00	\N
47	58tOnjRut31XG8Hh	18	nodeType	n8n-nodes-base.airtable	{"nodeId":"017d455b-2ab1-478b-8d01-334d35f1de81","nodeVersion":2.2}	1	2026-06-25 13:45:02.407+00	\N
48	58tOnjRut31XG8Hh	18	credentialId	caYsMcJpd6nk2pj4	{"nodeId":"017d455b-2ab1-478b-8d01-334d35f1de81","nodeVersion":2.2}	1	2026-06-25 13:45:02.407+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description", "nodeGroups") FROM stdin;
52bdd572-420c-467c-92b4-134dcdf45fc0	58tOnjRut31XG8Hh	Karlo Reign Pareja	2026-06-25 13:44:59.554+00	2026-06-25 13:44:59.554+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-512,-80],"id":"970beefb-1e1e-406d-97cf-8f3583bc7c86","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appFmUzL6ScWMr1gi","mode":"list","cachedResultName":"Project tracker","cachedResultUrl":"https://airtable.com/appFmUzL6ScWMr1gi"},"table":{"__rl":true,"value":"tblyusZHrEpAz3NkB","mode":"list","cachedResultName":"📝 Tasks, timelines, and assignees","cachedResultUrl":"https://airtable.com/appFmUzL6ScWMr1gi/tblyusZHrEpAz3NkB"},"columns":{"mappingMode":"defineBelow","value":{"Task":"Create table for client's details","Status":"Complete","Subtask":"="},"matchingColumns":[],"schema":[{"id":"Task","displayName":"Task","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"In progress","value":"In progress"},{"name":"Kickoff","value":"Kickoff"},{"name":"Complete","value":"Complete"},{"name":"Planning","value":"Planning"},{"name":"Delayed","value":"Delayed"}],"readOnly":false,"removed":false},{"id":"Subtask","displayName":"Subtask","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Assigned to","displayName":"Assigned to","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Project lead","displayName":"Project lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Kick off","displayName":"Kick off","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Due date","displayName":"Due date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Days to complete","displayName":"Days to complete","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Related docs","displayName":"Related docs","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"👀 Projects","displayName":"👀 Projects","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-304,-80],"id":"017d455b-2ab1-478b-8d01-334d35f1de81","name":"Create a record","credentials":{"airtableTokenApi":{"id":"caYsMcJpd6nk2pj4","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
\.


--
-- Data for Name: workflow_publication_outbox; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_publication_outbox" ("id", "workflowId", "publishedVersionId", "status", "errorMessage", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
2	2026-06-25 13:27:14.897+00	manual_success	58tOnjRut31XG8Hh	0	1	My workflow
2	2026-06-25 13:41:29.134+00	manual_error	58tOnjRut31XG8Hh	0	3	My workflow
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: pub; Owner: postgres
--

COPY "pub"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."execution_entity_id_seq"', 4, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."instance_version_history_id_seq"', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."migrations_id_seq"', 208, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."workflow_dependency_id_seq"', 48, true);


--
-- Name: workflow_publication_outbox_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."workflow_publication_outbox_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: pub; Owner: postgres
--

SELECT pg_catalog.setval('"pub"."workflow_statistics_id_seq"', 4, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict jeLKeZ6KfLnzr3Gnc86BGK7dP6XT5N9rOAfiypzb0iEpJLaeWZzPVfXifkdjr1C

RESET ALL;
