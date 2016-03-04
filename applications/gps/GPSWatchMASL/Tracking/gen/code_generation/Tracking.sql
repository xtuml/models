-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("27739246-8504-4177-85b8-ca5205d5a450",
	'Tracking',
	1);
INSERT INTO EP_PKG
	VALUES ("59f2bbb3-0b4e-4ffa-95ad-ecb6b17b52a4",
	"27739246-8504-4177-85b8-ca5205d5a450",
	"27739246-8504-4177-85b8-ca5205d5a450",
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	1,
	"59f2bbb3-0b4e-4ffa-95ad-ecb6b17b52a4",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'Tracking',
	'The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("fc57f551-9321-443d-a1f1-247ce7c4d616",
	"60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES ("8126e625-4682-4bb5-a1e6-78844ed93ead",
	"6ba454b7-f830-4852-90be-c404190d9f79",
	"00000000-0000-0000-0000-000000000000",
	"fc57f551-9321-443d-a1f1-247ce7c4d616");
INSERT INTO C_R
	VALUES ("8126e625-4682-4bb5-a1e6-78844ed93ead",
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES ("37d3eec0-4bb5-46db-9d0f-072b524d3951",
	"ec386882-7d62-4531-9c11-614a6852f323",
	"8126e625-4682-4bb5-a1e6-78844ed93ead");
INSERT INTO SPR_RO
	VALUES ("37d3eec0-4bb5-46db-9d0f-072b524d3951",
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES ("5a00a486-8a92-4bbc-b82f-a55e311ae288",
	"37d3eec0-4bb5-46db-9d0f-072b524d3951");
INSERT INTO ACT_ACT
	VALUES ("5a00a486-8a92-4bbc-b82f-a55e311ae288",
	'interface operation',
	0,
	"8580295e-e6b4-4e3f-89c6-2c47ff34e5e1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::TrackingLocation::getDistance',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8580295e-e6b4-4e3f-89c6-2c47ff34e5e1",
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5a00a486-8a92-4bbc-b82f-a55e311ae288",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0099c380-dc88-40c7-aae3-89b784429765",
	"8580295e-e6b4-4e3f-89c6-2c47ff34e5e1",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES ("0099c380-dc88-40c7-aae3-89b784429765",
	"05cc9501-c940-4454-b290-2afad8343754");
INSERT INTO V_VAL
	VALUES ("05cc9501-c940-4454-b290-2afad8343754",
	0,
	0,
	1,
	8,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"8580295e-e6b4-4e3f-89c6-2c47ff34e5e1");
INSERT INTO V_LIN
	VALUES ("05cc9501-c940-4454-b290-2afad8343754",
	'1');
INSERT INTO SPR_REP
	VALUES ("799179b7-ca50-4e22-b045-f5fbd1a3dbd1",
	"04d93862-1203-43eb-8312-7c861d5f5af4",
	"8126e625-4682-4bb5-a1e6-78844ed93ead");
INSERT INTO SPR_RO
	VALUES ("799179b7-ca50-4e22-b045-f5fbd1a3dbd1",
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("2d4232a6-a5f4-4565-9593-05395aad254a",
	"799179b7-ca50-4e22-b045-f5fbd1a3dbd1");
INSERT INTO ACT_ACT
	VALUES ("2d4232a6-a5f4-4565-9593-05395aad254a",
	'interface operation',
	0,
	"82907c82-4cf5-4897-a649-c419cf691276",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::TrackingLocation::getLocation',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("82907c82-4cf5-4897-a649-c419cf691276",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2d4232a6-a5f4-4565-9593-05395aad254a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("1e83bc1f-63e2-43dc-b3b6-917e3b9f987f",
	"e206e531-2ab1-42be-98f4-959b1e49ee9b",
	"8126e625-4682-4bb5-a1e6-78844ed93ead");
INSERT INTO SPR_RO
	VALUES ("1e83bc1f-63e2-43dc-b3b6-917e3b9f987f",
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("2e95e3bf-538c-46ae-8ecf-aa2e5e587eaa",
	"1e83bc1f-63e2-43dc-b3b6-917e3b9f987f");
INSERT INTO ACT_ACT
	VALUES ("2e95e3bf-538c-46ae-8ecf-aa2e5e587eaa",
	'interface operation',
	0,
	"49b4eb80-cd00-4e75-804b-149b9c6cb2f9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::TrackingLocation::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("49b4eb80-cd00-4e75-804b-149b9c6cb2f9",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2e95e3bf-538c-46ae-8ecf-aa2e5e587eaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("afc9f58d-36f6-4b7e-bfc3-2278b1000270",
	"a4393a60-9cb2-4c2a-9aa4-1f6f96af5414",
	"8126e625-4682-4bb5-a1e6-78844ed93ead");
INSERT INTO SPR_RO
	VALUES ("afc9f58d-36f6-4b7e-bfc3-2278b1000270",
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("6a9cc6df-4492-4776-ad5a-83d47a76cb10",
	"afc9f58d-36f6-4b7e-bfc3-2278b1000270");
INSERT INTO ACT_ACT
	VALUES ("6a9cc6df-4492-4776-ad5a-83d47a76cb10",
	'interface operation',
	0,
	"6d7ba17c-466e-49c4-949b-17efd6e1f979",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::TrackingLocation::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6d7ba17c-466e-49c4-949b-17efd6e1f979",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"6a9cc6df-4492-4776-ad5a-83d47a76cb10",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PO
	VALUES ("85f5c3ec-4505-4949-8f44-7dfe1e852c55",
	"60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES ("4261e271-6143-42c2-9500-9ec06579bf89",
	"9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	"00000000-0000-0000-0000-000000000000",
	"85f5c3ec-4505-4949-8f44-7dfe1e852c55");
INSERT INTO C_R
	VALUES ("4261e271-6143-42c2-9500-9ec06579bf89",
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES ("3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"8e4e4828-4bea-4e99-83f8-601c9e724d98",
	"4261e271-6143-42c2-9500-9ec06579bf89");
INSERT INTO SPR_RO
	VALUES ("3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("c108b0bf-370b-4d19-9ad8-557c29a99ef5",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18");
INSERT INTO ACT_ACT
	VALUES ("c108b0bf-370b-4d19-9ad8-557c29a99ef5",
	'interface operation',
	0,
	"53e7e9b5-6eae-4926-98c7-f38b25f0cf97",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::TrackingUI::setData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("53e7e9b5-6eae-4926-98c7-f38b25f0cf97",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c108b0bf-370b-4d19-9ad8-557c29a99ef5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("29a8a541-95e0-448f-ba04-02664b8a34a2",
	"3e707b37-f35a-461b-b372-8980d0d2cdec",
	"4261e271-6143-42c2-9500-9ec06579bf89");
INSERT INTO SPR_RO
	VALUES ("29a8a541-95e0-448f-ba04-02664b8a34a2",
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("a8507724-cdd0-4e8d-b24d-0e16aa2e4312",
	"29a8a541-95e0-448f-ba04-02664b8a34a2");
INSERT INTO ACT_ACT
	VALUES ("a8507724-cdd0-4e8d-b24d-0e16aa2e4312",
	'interface operation',
	0,
	"f9bc44e3-5b57-407c-847f-8518d39ccd9e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::TrackingUI::setIndicator',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f9bc44e3-5b57-407c-847f-8518d39ccd9e",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a8507724-cdd0-4e8d-b24d-0e16aa2e4312",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("0a7e1668-6868-4d4d-bb77-5e5f95f9ba70",
	"c731d8ea-9417-45f4-98b5-e842dda27f22",
	"4261e271-6143-42c2-9500-9ec06579bf89");
INSERT INTO SPR_RO
	VALUES ("0a7e1668-6868-4d4d-bb77-5e5f95f9ba70",
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("bfb4707f-de93-4ecb-9a24-1724a72b6675",
	"0a7e1668-6868-4d4d-bb77-5e5f95f9ba70");
INSERT INTO ACT_ACT
	VALUES ("bfb4707f-de93-4ecb-9a24-1724a72b6675",
	'interface operation',
	0,
	"f0226bd3-0eda-4c30-a8ab-d0933c68590c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::TrackingUI::setTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f0226bd3-0eda-4c30-a8ab-d0933c68590c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bfb4707f-de93-4ecb-9a24-1724a72b6675",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("82481c5b-ecb4-4930-b3ee-a4196791915e",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"4261e271-6143-42c2-9500-9ec06579bf89");
INSERT INTO SPR_RO
	VALUES ("82481c5b-ecb4-4930-b3ee-a4196791915e",
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("e1c508b2-9e2f-4b13-bb4e-30bc5bd5c2df",
	"82481c5b-ecb4-4930-b3ee-a4196791915e");
INSERT INTO ACT_ACT
	VALUES ("e1c508b2-9e2f-4b13-bb4e-30bc5bd5c2df",
	'interface operation',
	0,
	"2c7e2956-16e9-4b3b-9080-30eb45faecc0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::TrackingUI::newGoalSpec',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2c7e2956-16e9-4b3b-9080-30eb45faecc0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e1c508b2-9e2f-4b13-bb4e-30bc5bd5c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PO
	VALUES ("0e538d37-7f02-4ab4-80f0-9f72c9346a90",
	"60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES ("c99fca6e-eff5-4987-a362-8ec23d8b5cf0",
	"9007738f-12e1-4ce4-8729-0f68999a9f22",
	"00000000-0000-0000-0000-000000000000",
	"0e538d37-7f02-4ab4-80f0-9f72c9346a90");
INSERT INTO C_R
	VALUES ("c99fca6e-eff5-4987-a362-8ec23d8b5cf0",
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES ("a0866934-8be0-4a0b-ae33-2bd1d1cd55b1",
	"9f9453b6-fbe7-4d6d-9247-207edd34771c",
	"c99fca6e-eff5-4987-a362-8ec23d8b5cf0");
INSERT INTO SPR_RO
	VALUES ("a0866934-8be0-4a0b-ae33-2bd1d1cd55b1",
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("7b91962f-6617-4942-9904-ffbd4efe2692",
	"a0866934-8be0-4a0b-ae33-2bd1d1cd55b1");
INSERT INTO ACT_ACT
	VALUES ("7b91962f-6617-4942-9904-ffbd4efe2692",
	'interface operation',
	0,
	"246c669c-1172-47f2-b8c7-a8e4846f15da",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("246c669c-1172-47f2-b8c7-a8e4846f15da",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"7b91962f-6617-4942-9904-ffbd4efe2692",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("447735aa-6a67-4544-be85-030ec17de316",
	"82608a0b-a7ff-4329-9f6c-f135f923b841",
	"c99fca6e-eff5-4987-a362-8ec23d8b5cf0");
INSERT INTO SPR_RO
	VALUES ("447735aa-6a67-4544-be85-030ec17de316",
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("e1b7f254-94a5-45b7-a542-81ab3242151e",
	"447735aa-6a67-4544-be85-030ec17de316");
INSERT INTO ACT_ACT
	VALUES ("e1b7f254-94a5-45b7-a542-81ab3242151e",
	'interface operation',
	0,
	"b2887d37-2ba1-41d3-a4d7-188377a846a4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b2887d37-2ba1-41d3-a4d7-188377a846a4",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e1b7f254-94a5-45b7-a542-81ab3242151e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PO
	VALUES ("1bca3379-36c3-4d5c-b3e0-4dde84dca177",
	"60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES ("4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff",
	"2294d152-3889-434a-a890-e09b800b8bac",
	"00000000-0000-0000-0000-000000000000",
	"1bca3379-36c3-4d5c-b3e0-4dde84dca177");
INSERT INTO C_P
	VALUES ("4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff",
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES ("dee1df30-90d2-47fe-b904-b5a324912c0a",
	"747f64d3-2623-4a9c-8af8-072db4199b50",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("dee1df30-90d2-47fe-b904-b5a324912c0a",
	'heartRateChanged',
	'',
	'// Find the singleton instance of the workout session
// and forward this signal, as an event, to it.
// If there is no active workout session, then this 
// sample is simply ignored and not recorded.

select any session from instances of WorkoutSession;
if (not empty session)
  session.addHeartRateSample(heartRate: param.heartRate);
end if;',
	1);
INSERT INTO ACT_POB
	VALUES ("bd9506ef-63e6-4372-967f-41d46a0fbe44",
	"dee1df30-90d2-47fe-b904-b5a324912c0a");
INSERT INTO ACT_ACT
	VALUES ("bd9506ef-63e6-4372-967f-41d46a0fbe44",
	'interface operation',
	0,
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::heartRateChanged',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("aa5bc1ac-bdad-43cc-a2c1-989e266902ca",
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	1,
	6,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bd9506ef-63e6-4372-967f-41d46a0fbe44",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("05b446b4-7823-499a-931b-fa655d1c4be0",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca",
	"d4590817-6cf5-4f3c-8e22-8acee736d32c",
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES ("05b446b4-7823-499a-931b-fa655d1c4be0",
	"5c0b5346-e9d7-4cc2-a3de-aca5e36d1f33",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	6,
	38);
INSERT INTO ACT_SMT
	VALUES ("d4590817-6cf5-4f3c-8e22-8acee736d32c",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES ("d4590817-6cf5-4f3c-8e22-8acee736d32c",
	"2cc69480-2f05-443c-a3ed-572c5e0b1ea9",
	"ebb4cdc0-0bd6-4217-b09a-edc7fcfec244",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("28ef5e68-1a96-4281-99f6-7f6eb5ce8720",
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca");
INSERT INTO V_IRF
	VALUES ("28ef5e68-1a96-4281-99f6-7f6eb5ce8720",
	"5c0b5346-e9d7-4cc2-a3de-aca5e36d1f33");
INSERT INTO V_VAL
	VALUES ("17e57eba-495b-4dc7-801f-a7f44ba7ec55",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca");
INSERT INTO V_UNY
	VALUES ("17e57eba-495b-4dc7-801f-a7f44ba7ec55",
	"28ef5e68-1a96-4281-99f6-7f6eb5ce8720",
	'empty');
INSERT INTO V_VAL
	VALUES ("ebb4cdc0-0bd6-4217-b09a-edc7fcfec244",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca");
INSERT INTO V_UNY
	VALUES ("ebb4cdc0-0bd6-4217-b09a-edc7fcfec244",
	"17e57eba-495b-4dc7-801f-a7f44ba7ec55",
	'not');
INSERT INTO V_VAR
	VALUES ("5c0b5346-e9d7-4cc2-a3de-aca5e36d1f33",
	"aa5bc1ac-bdad-43cc-a2c1-989e266902ca",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5c0b5346-e9d7-4cc2-a3de-aca5e36d1f33",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("2cc69480-2f05-443c-a3ed-572c5e0b1ea9",
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bd9506ef-63e6-4372-967f-41d46a0fbe44",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("dcb71365-6103-42ce-b707-99b9e1355c30",
	"2cc69480-2f05-443c-a3ed-572c5e0b1ea9",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES ("dcb71365-6103-42ce-b707-99b9e1355c30",
	"662a88c8-fae0-4063-bdb1-b17bc53523be",
	"5c0b5346-e9d7-4cc2-a3de-aca5e36d1f33",
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("a58b1e90-01b6-43f7-879a-ef81ec032de1",
	0,
	0,
	8,
	47,
	55,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"2cc69480-2f05-443c-a3ed-572c5e0b1ea9");
INSERT INTO V_PVL
	VALUES ("a58b1e90-01b6-43f7-879a-ef81ec032de1",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"3230540a-731b-4bbc-ad68-78c9ce2af590");
INSERT INTO V_PAR
	VALUES ("a58b1e90-01b6-43f7-879a-ef81ec032de1",
	"dcb71365-6103-42ce-b707-99b9e1355c30",
	"00000000-0000-0000-0000-000000000000",
	'heartRate',
	"00000000-0000-0000-0000-000000000000",
	8,
	30);
INSERT INTO SPR_PEP
	VALUES ("c3866e1c-3ac2-4388-b7b3-6163b55fa38e",
	"774dbed1-d3b5-4841-892c-f70274f7a9a3",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("c3866e1c-3ac2-4388-b7b3-6163b55fa38e",
	'lapResetPressed',
	'',
	'// Find the singleton instance of the workout timer 
// and forward this signal, as an event, to it.

select any workoutTimer from instances of WorkoutTimer;
if (not empty workoutTimer)
  generate WorkoutTimer2:lapResetPressed() to workoutTimer;
else
  LOG::LogFailure( message:"Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do." );
end if;
',
	1);
INSERT INTO ACT_POB
	VALUES ("b17f265e-5a71-40c3-98e3-5a241094023e",
	"c3866e1c-3ac2-4388-b7b3-6163b55fa38e");
INSERT INTO ACT_ACT
	VALUES ("b17f265e-5a71-40c3-98e3-5a241094023e",
	'interface operation',
	0,
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::lapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	1,
	4,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b17f265e-5a71-40c3-98e3-5a241094023e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3dcca3f5-64ed-449e-907f-2733e665e8d2",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	"f46eab26-41f8-4213-b44a-ea04448d54fe",
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES ("3dcca3f5-64ed-449e-907f-2733e665e8d2",
	"e21f82d7-7e58-484c-bf46-f8dfef2477af",
	1,
	'any',
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	4,
	43);
INSERT INTO ACT_SMT
	VALUES ("f46eab26-41f8-4213-b44a-ea04448d54fe",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES ("f46eab26-41f8-4213-b44a-ea04448d54fe",
	"47fd8bdf-af1e-4868-b84b-5e1764f5b0ca",
	"9a392f06-27e0-4e55-ae52-2288d72e2d07",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6882e3eb-96dc-44f8-acc4-a0064c101cb4",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES ("6882e3eb-96dc-44f8-acc4-a0064c101cb4",
	"2fbd33a4-57be-4943-94e9-ad2a7c96c4bb",
	"f46eab26-41f8-4213-b44a-ea04448d54fe");
INSERT INTO V_VAL
	VALUES ("4e653edf-42ca-4cce-89af-959d13befdee",
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243");
INSERT INTO V_IRF
	VALUES ("4e653edf-42ca-4cce-89af-959d13befdee",
	"e21f82d7-7e58-484c-bf46-f8dfef2477af");
INSERT INTO V_VAL
	VALUES ("921c3157-f57d-47f1-86f9-fe1388b084a4",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243");
INSERT INTO V_UNY
	VALUES ("921c3157-f57d-47f1-86f9-fe1388b084a4",
	"4e653edf-42ca-4cce-89af-959d13befdee",
	'empty');
INSERT INTO V_VAL
	VALUES ("9a392f06-27e0-4e55-ae52-2288d72e2d07",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243");
INSERT INTO V_UNY
	VALUES ("9a392f06-27e0-4e55-ae52-2288d72e2d07",
	"921c3157-f57d-47f1-86f9-fe1388b084a4",
	'not');
INSERT INTO V_VAR
	VALUES ("e21f82d7-7e58-484c-bf46-f8dfef2477af",
	"f0cb04cf-7aa4-498d-a090-fc04e9ad5243",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("e21f82d7-7e58-484c-bf46-f8dfef2477af",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO ACT_BLK
	VALUES ("47fd8bdf-af1e-4868-b84b-5e1764f5b0ca",
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	6,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b17f265e-5a71-40c3-98e3-5a241094023e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bab76598-4d1f-4d0c-8329-6a27df329276",
	"47fd8bdf-af1e-4868-b84b-5e1764f5b0ca",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES ("bab76598-4d1f-4d0c-8329-6a27df329276",
	1,
	0,
	6,
	12,
	6,
	26,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("bab76598-4d1f-4d0c-8329-6a27df329276");
INSERT INTO E_GSME
	VALUES ("bab76598-4d1f-4d0c-8329-6a27df329276",
	"e24ded5b-4980-4747-b48d-227859dc94d6");
INSERT INTO E_GEN
	VALUES ("bab76598-4d1f-4d0c-8329-6a27df329276",
	"e21f82d7-7e58-484c-bf46-f8dfef2477af");
INSERT INTO ACT_BLK
	VALUES ("2fbd33a4-57be-4943-94e9-ad2a7c96c4bb",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	8,
	3,
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b17f265e-5a71-40c3-98e3-5a241094023e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4cc407d9-0c83-4c3d-92d1-57d7ac8b05c0",
	"2fbd33a4-57be-4943-94e9-ad2a7c96c4bb",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES ("4cc407d9-0c83-4c3d-92d1-57d7ac8b05c0",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES ("b0829644-362d-4a54-9aba-efbf19ace186",
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"2fbd33a4-57be-4943-94e9-ad2a7c96c4bb");
INSERT INTO V_LST
	VALUES ("b0829644-362d-4a54-9aba-efbf19ace186",
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES ("b0829644-362d-4a54-9aba-efbf19ace186",
	"4cc407d9-0c83-4c3d-92d1-57d7ac8b05c0",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	8,
	20);
INSERT INTO SPR_PEP
	VALUES ("0141a0b5-0603-4b7d-aebf-a704c101863e",
	"975a2839-bd48-4510-a5e5-ac460f22a496",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("0141a0b5-0603-4b7d-aebf-a704c101863e",
	'modePressed',
	'',
	'// Notify the display to change modes.

// Find the display related to the singleton instance of 
//   workout session (if it exists), and notify it.
select any session from instances of WorkoutSession;
if ( not empty session )
  select one display related by session->Display[R7.''current status indicated on''];
  generate Display1:modeChange to display;
end if;',
	1);
INSERT INTO ACT_POB
	VALUES ("f6b669c0-b5af-43e0-bb0c-2d798558af2e",
	"0141a0b5-0603-4b7d-aebf-a704c101863e");
INSERT INTO ACT_ACT
	VALUES ("f6b669c0-b5af-43e0-bb0c-2d798558af2e",
	'interface operation',
	0,
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::modePressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("30915542-9ab9-41cf-b76a-e7b4d73a1e78",
	1,
	0,
	0,
	'',
	'',
	'',
	6,
	1,
	5,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f6b669c0-b5af-43e0-bb0c-2d798558af2e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("54e20330-6233-4575-8f97-699ac3fdd1ba",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78",
	"20eba71a-49c2-436f-b259-e453332920c9",
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES ("54e20330-6233-4575-8f97-699ac3fdd1ba",
	"dd328666-ce19-4909-86a3-e5e298975818",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	5,
	38);
INSERT INTO ACT_SMT
	VALUES ("20eba71a-49c2-436f-b259-e453332920c9",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES ("20eba71a-49c2-436f-b259-e453332920c9",
	"849c32e5-684b-4d69-83ee-458342427fb8",
	"14c9f585-047c-469c-81fa-43c2c5f2320e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("43dae56f-e4c7-4fab-b30a-cefd8385df62",
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78");
INSERT INTO V_IRF
	VALUES ("43dae56f-e4c7-4fab-b30a-cefd8385df62",
	"dd328666-ce19-4909-86a3-e5e298975818");
INSERT INTO V_VAL
	VALUES ("ca37918e-a72d-40ce-81ab-4170f847f0a1",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78");
INSERT INTO V_UNY
	VALUES ("ca37918e-a72d-40ce-81ab-4170f847f0a1",
	"43dae56f-e4c7-4fab-b30a-cefd8385df62",
	'empty');
INSERT INTO V_VAL
	VALUES ("14c9f585-047c-469c-81fa-43c2c5f2320e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78");
INSERT INTO V_UNY
	VALUES ("14c9f585-047c-469c-81fa-43c2c5f2320e",
	"ca37918e-a72d-40ce-81ab-4170f847f0a1",
	'not');
INSERT INTO V_VAR
	VALUES ("dd328666-ce19-4909-86a3-e5e298975818",
	"30915542-9ab9-41cf-b76a-e7b4d73a1e78",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("dd328666-ce19-4909-86a3-e5e298975818",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("849c32e5-684b-4d69-83ee-458342427fb8",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	8,
	3,
	7,
	42,
	0,
	0,
	7,
	50,
	7,
	53,
	0,
	0,
	0,
	"f6b669c0-b5af-43e0-bb0c-2d798558af2e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ac139195-c2f0-41f1-82a1-06e461da27bf",
	"849c32e5-684b-4d69-83ee-458342427fb8",
	"ec8306f3-7087-455c-bd6b-3b947f351e4e",
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES ("ac139195-c2f0-41f1-82a1-06e461da27bf",
	"1f020fd9-bfad-4307-aaba-4e0d78e8c131",
	1,
	'one',
	"451f732c-c9c8-4684-885f-bf3a2d394da4");
INSERT INTO ACT_SR
	VALUES ("ac139195-c2f0-41f1-82a1-06e461da27bf");
INSERT INTO ACT_LNK
	VALUES ("2387be33-89d3-4723-b4c9-9a2f3625fb34",
	'''current status indicated on''',
	"ac139195-c2f0-41f1-82a1-06e461da27bf",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES ("ec8306f3-7087-455c-bd6b-3b947f351e4e",
	"849c32e5-684b-4d69-83ee-458342427fb8",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES ("ec8306f3-7087-455c-bd6b-3b947f351e4e",
	1,
	0,
	8,
	12,
	8,
	21,
	7,
	42,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("ec8306f3-7087-455c-bd6b-3b947f351e4e");
INSERT INTO E_GSME
	VALUES ("ec8306f3-7087-455c-bd6b-3b947f351e4e",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf");
INSERT INTO E_GEN
	VALUES ("ec8306f3-7087-455c-bd6b-3b947f351e4e",
	"1f020fd9-bfad-4307-aaba-4e0d78e8c131");
INSERT INTO V_VAL
	VALUES ("451f732c-c9c8-4684-885f-bf3a2d394da4",
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"849c32e5-684b-4d69-83ee-458342427fb8");
INSERT INTO V_IRF
	VALUES ("451f732c-c9c8-4684-885f-bf3a2d394da4",
	"dd328666-ce19-4909-86a3-e5e298975818");
INSERT INTO V_VAR
	VALUES ("1f020fd9-bfad-4307-aaba-4e0d78e8c131",
	"849c32e5-684b-4d69-83ee-458342427fb8",
	'display',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("1f020fd9-bfad-4307-aaba-4e0d78e8c131",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO SPR_PEP
	VALUES ("67227e97-2ad8-416a-b08e-596af7f950e8",
	"861336e9-59a9-48dc-b922-9b8f8f183fbe",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("67227e97-2ad8-416a-b08e-596af7f950e8",
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES ("9dc82723-46b6-4483-be76-e3a2c2b3bb55",
	"67227e97-2ad8-416a-b08e-596af7f950e8");
INSERT INTO ACT_ACT
	VALUES ("9dc82723-46b6-4483-be76-e3a2c2b3bb55",
	'interface operation',
	0,
	"be2b6037-a97e-406a-a67e-c214a218e2e6",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::setTargetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("be2b6037-a97e-406a-a67e-c214a218e2e6",
	0,
	0,
	0,
	'Goal',
	'',
	'',
	3,
	1,
	3,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9dc82723-46b6-4483-be76-e3a2c2b3bb55",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("be8590c3-cfd4-4643-8ae1-0404f3d528f8",
	"be2b6037-a97e-406a-a67e-c214a218e2e6",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES ("be8590c3-cfd4-4643-8ae1-0404f3d528f8",
	"24389471-1521-4fce-8365-adf9c1772b4a",
	"00000000-0000-0000-0000-000000000000",
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES ("12edfb58-9bee-405e-86fb-ee8e0648ea7f",
	"19be0937-ce82-4188-875b-ed4019c9f605",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("12edfb58-9bee-405e-86fb-ee8e0648ea7f",
	'startStopPressed',
	'',
	'// If necessary, create a workout session and everything required to 
// support it.  Then, forward this signal to the workout timer.

WorkoutSession::create();

// Forward this signal, as an event, to the singleton instance of WorkoutTimer.
select any workoutTimer from instances of WorkoutTimer;
generate WorkoutTimer1:startStopPressed() to workoutTimer;',
	1);
INSERT INTO ACT_POB
	VALUES ("b572c019-d83e-4a46-b036-f248438e1dce",
	"12edfb58-9bee-405e-86fb-ee8e0648ea7f");
INSERT INTO ACT_ACT
	VALUES ("b572c019-d83e-4a46-b036-f248438e1dce",
	'interface operation',
	0,
	"682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	8,
	1,
	7,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b572c019-d83e-4a46-b036-f248438e1dce",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2d6626eb-2073-4ed4-b464-bf6a0c1993b7",
	"682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	"658223b7-0a94-425b-8d73-c747d8262965",
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES ("2d6626eb-2073-4ed4-b464-bf6a0c1993b7",
	"00525632-d22d-499f-a687-1011af2bd989",
	"00000000-0000-0000-0000-000000000000",
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES ("658223b7-0a94-425b-8d73-c747d8262965",
	"682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	"85056290-305f-426c-9749-fe7022255f72",
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES ("658223b7-0a94-425b-8d73-c747d8262965",
	"64df5576-b38b-4f70-9089-36eb209f58da",
	1,
	'any',
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	7,
	43);
INSERT INTO ACT_SMT
	VALUES ("85056290-305f-426c-9749-fe7022255f72",
	"682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	"00000000-0000-0000-0000-000000000000",
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES ("85056290-305f-426c-9749-fe7022255f72",
	1,
	0,
	8,
	10,
	8,
	24,
	7,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("85056290-305f-426c-9749-fe7022255f72");
INSERT INTO E_GSME
	VALUES ("85056290-305f-426c-9749-fe7022255f72",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b");
INSERT INTO E_GEN
	VALUES ("85056290-305f-426c-9749-fe7022255f72",
	"64df5576-b38b-4f70-9089-36eb209f58da");
INSERT INTO V_VAR
	VALUES ("64df5576-b38b-4f70-9089-36eb209f58da",
	"682ddb9c-1c00-4228-84b9-3db6724a5cfa",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("64df5576-b38b-4f70-9089-36eb209f58da",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SPR_PEP
	VALUES ("990e3a2a-a877-43fa-8d62-26634e4ad95f",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("990e3a2a-a877-43fa-8d62-26634e4ad95f",
	'newGoalSpec',
	'',
	'// Create a new goal specification and relate it to the
//   singleton instance of workout session if it exists.
select any session from instances of WorkoutSession;
if ( not empty session )
  create object instance goalSpec of GoalSpec;
  goalSpec.sequenceNumber = param.sequenceNumber;
  goalSpec.minimum = param.minimum;
  goalSpec.maximum = param.maximum;
  goalSpec.span = param.span;
  goalSpec.criteriaType = param.criteriaType;
  goalSpec.spanType = param.spanType;
  relate goalSpec to session across R10.''included in'';
end if;',
	1);
INSERT INTO ACT_POB
	VALUES ("ecbe6239-c333-4815-a807-23b0c1e16513",
	"990e3a2a-a877-43fa-8d62-26634e4ad95f");
INSERT INTO ACT_ACT
	VALUES ("ecbe6239-c333-4815-a807-23b0c1e16513",
	'interface operation',
	0,
	"e01d103f-2986-4300-959a-d933d8c06421",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::newGoalSpec',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e01d103f-2986-4300-959a-d933d8c06421",
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	3,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ecbe6239-c333-4815-a807-23b0c1e16513",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1c351f4d-f93b-4206-8cad-118d53807bef",
	"e01d103f-2986-4300-959a-d933d8c06421",
	"954d3d07-f539-4887-83e1-9f4c2ce691e5",
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES ("1c351f4d-f93b-4206-8cad-118d53807bef",
	"4e86fc3f-f7b1-46fe-a4ee-eaade4bc9cf2",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	3,
	38);
INSERT INTO ACT_SMT
	VALUES ("954d3d07-f539-4887-83e1-9f4c2ce691e5",
	"e01d103f-2986-4300-959a-d933d8c06421",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES ("954d3d07-f539-4887-83e1-9f4c2ce691e5",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"f49dced9-7239-4d49-aefc-ab3e48c813dd",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("96c01ce5-c851-406a-96ba-2d2a6ce0a2df",
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e01d103f-2986-4300-959a-d933d8c06421");
INSERT INTO V_IRF
	VALUES ("96c01ce5-c851-406a-96ba-2d2a6ce0a2df",
	"4e86fc3f-f7b1-46fe-a4ee-eaade4bc9cf2");
INSERT INTO V_VAL
	VALUES ("7476a36b-bc02-4386-b176-93f31cce6f4f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e01d103f-2986-4300-959a-d933d8c06421");
INSERT INTO V_UNY
	VALUES ("7476a36b-bc02-4386-b176-93f31cce6f4f",
	"96c01ce5-c851-406a-96ba-2d2a6ce0a2df",
	'empty');
INSERT INTO V_VAL
	VALUES ("f49dced9-7239-4d49-aefc-ab3e48c813dd",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e01d103f-2986-4300-959a-d933d8c06421");
INSERT INTO V_UNY
	VALUES ("f49dced9-7239-4d49-aefc-ab3e48c813dd",
	"7476a36b-bc02-4386-b176-93f31cce6f4f",
	'not');
INSERT INTO V_VAR
	VALUES ("4e86fc3f-f7b1-46fe-a4ee-eaade4bc9cf2",
	"e01d103f-2986-4300-959a-d933d8c06421",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("4e86fc3f-f7b1-46fe-a4ee-eaade4bc9cf2",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("69756ff0-2782-433c-b80c-e24679873e92",
	0,
	0,
	0,
	'''included in''',
	'',
	'',
	12,
	3,
	5,
	38,
	0,
	0,
	12,
	37,
	12,
	41,
	0,
	0,
	0,
	"ecbe6239-c333-4815-a807-23b0c1e16513",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b4ec8ced-690f-42e0-a8c5-118bd144412e",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"25aa04de-f230-40bf-8bd0-80619a6b040a",
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES ("b4ec8ced-690f-42e0-a8c5-118bd144412e",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c",
	1,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	5,
	38);
INSERT INTO ACT_SMT
	VALUES ("25aa04de-f230-40bf-8bd0-80619a6b040a",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"2e1f8368-8c21-4b41-b113-0c4e14d37658",
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES ("25aa04de-f230-40bf-8bd0-80619a6b040a",
	"24145e26-caf2-4c54-a172-9012f825fb56",
	"89226740-b2ba-4cec-a2d4-54505c6148e0",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("2e1f8368-8c21-4b41-b113-0c4e14d37658",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"20080dee-f7c6-411a-afe6-3a8bc4df5ef7",
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES ("2e1f8368-8c21-4b41-b113-0c4e14d37658",
	"fa35f761-35a5-4395-a004-9f7e59b34346",
	"e83b79a3-97a7-4a8b-beb1-ebb2a61afec9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("20080dee-f7c6-411a-afe6-3a8bc4df5ef7",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"97dc8f05-dc0e-4121-9229-523c0376b274",
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES ("20080dee-f7c6-411a-afe6-3a8bc4df5ef7",
	"c2f0fc30-a483-47f0-a629-75ecaba8402e",
	"e45eade0-5aa3-4a67-9d69-2e97255dc1e2",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("97dc8f05-dc0e-4121-9229-523c0376b274",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"cd8e8074-1f45-4ff3-a23d-05cb10589081",
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES ("97dc8f05-dc0e-4121-9229-523c0376b274",
	"b07aa091-80cc-4560-8807-fb8bebedda1b",
	"13b20a50-25c4-4ad7-a99f-a3191a720219",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("cd8e8074-1f45-4ff3-a23d-05cb10589081",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"b8c4b20d-d8c4-484c-87d9-afc3ea981a35",
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES ("cd8e8074-1f45-4ff3-a23d-05cb10589081",
	"858ec6b4-eb17-4fc3-8605-7fc41b957266",
	"2ccce869-8c03-4919-bb45-0942f284ab61",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b8c4b20d-d8c4-484c-87d9-afc3ea981a35",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"3d857eab-178d-478c-af36-0c758ec3a305",
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES ("b8c4b20d-d8c4-484c-87d9-afc3ea981a35",
	"688253dc-b6f6-4ab5-87a9-0709c2756cf9",
	"50749e89-367c-4be3-9ecf-2a97b23fef2a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("3d857eab-178d-478c-af36-0c758ec3a305",
	"69756ff0-2782-433c-b80c-e24679873e92",
	"00000000-0000-0000-0000-000000000000",
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES ("3d857eab-178d-478c-af36-0c758ec3a305",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c",
	"4e86fc3f-f7b1-46fe-a4ee-eaade4bc9cf2",
	'''included in''',
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES ("7be511f5-9246-4c83-ba56-13b40a9909d0",
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("7be511f5-9246-4c83-ba56-13b40a9909d0",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("89226740-b2ba-4cec-a2d4-54505c6148e0",
	1,
	0,
	6,
	12,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("89226740-b2ba-4cec-a2d4-54505c6148e0",
	"7be511f5-9246-4c83-ba56-13b40a9909d0",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d");
INSERT INTO V_VAL
	VALUES ("24145e26-caf2-4c54-a172-9012f825fb56",
	0,
	0,
	6,
	35,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("24145e26-caf2-4c54-a172-9012f825fb56",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8ce25a88-adbd-4a6e-b20a-9d3bd84a8200");
INSERT INTO V_VAL
	VALUES ("37bdc910-63c4-44bd-9684-fb55b06086ae",
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("37bdc910-63c4-44bd-9684-fb55b06086ae",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("e83b79a3-97a7-4a8b-beb1-ebb2a61afec9",
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("e83b79a3-97a7-4a8b-beb1-ebb2a61afec9",
	"37bdc910-63c4-44bd-9684-fb55b06086ae",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"5e4df9ae-802a-4760-bc98-ec74dae4add5");
INSERT INTO V_VAL
	VALUES ("fa35f761-35a5-4395-a004-9f7e59b34346",
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("fa35f761-35a5-4395-a004-9f7e59b34346",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"2e691a3a-ac79-4cf2-a446-d0a8a9e0bb9c");
INSERT INTO V_VAL
	VALUES ("5e636162-5ab8-486e-9f5f-0ba12c165e18",
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("5e636162-5ab8-486e-9f5f-0ba12c165e18",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("e45eade0-5aa3-4a67-9d69-2e97255dc1e2",
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("e45eade0-5aa3-4a67-9d69-2e97255dc1e2",
	"5e636162-5ab8-486e-9f5f-0ba12c165e18",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"563b27ee-fa16-4e60-a7a9-edd4c4cee86d");
INSERT INTO V_VAL
	VALUES ("c2f0fc30-a483-47f0-a629-75ecaba8402e",
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("c2f0fc30-a483-47f0-a629-75ecaba8402e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"338883fc-9f24-4ad2-818b-8175843fa670");
INSERT INTO V_VAL
	VALUES ("6880b6cc-d92c-4a86-9638-fbd89ad59afe",
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("6880b6cc-d92c-4a86-9638-fbd89ad59afe",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("13b20a50-25c4-4ad7-a99f-a3191a720219",
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("13b20a50-25c4-4ad7-a99f-a3191a720219",
	"6880b6cc-d92c-4a86-9638-fbd89ad59afe",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"750e35cc-6a44-4329-8738-d31e94569d45");
INSERT INTO V_VAL
	VALUES ("b07aa091-80cc-4560-8807-fb8bebedda1b",
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("b07aa091-80cc-4560-8807-fb8bebedda1b",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"50499ac2-0e10-4f84-9584-cd6f2f6f7468");
INSERT INTO V_VAL
	VALUES ("c49051c9-6874-4a33-b7ff-d21816aa51f8",
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("c49051c9-6874-4a33-b7ff-d21816aa51f8",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("2ccce869-8c03-4919-bb45-0942f284ab61",
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("2ccce869-8c03-4919-bb45-0942f284ab61",
	"c49051c9-6874-4a33-b7ff-d21816aa51f8",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"dd7fc64c-49f7-4730-a710-8919eb383415");
INSERT INTO V_VAL
	VALUES ("858ec6b4-eb17-4fc3-8605-7fc41b957266",
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("858ec6b4-eb17-4fc3-8605-7fc41b957266",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"93d2a1f4-c1b5-4907-959e-3fee29c8e721");
INSERT INTO V_VAL
	VALUES ("9e1c94a7-3f89-47bf-81d2-a49be6435ddc",
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_IRF
	VALUES ("9e1c94a7-3f89-47bf-81d2-a49be6435ddc",
	"0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c");
INSERT INTO V_VAL
	VALUES ("50749e89-367c-4be3-9ecf-2a97b23fef2a",
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_AVL
	VALUES ("50749e89-367c-4be3-9ecf-2a97b23fef2a",
	"9e1c94a7-3f89-47bf-81d2-a49be6435ddc",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d");
INSERT INTO V_VAL
	VALUES ("688253dc-b6f6-4ab5-87a9-0709c2756cf9",
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"69756ff0-2782-433c-b80c-e24679873e92");
INSERT INTO V_PVL
	VALUES ("688253dc-b6f6-4ab5-87a9-0709c2756cf9",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"cb3691f6-c597-4280-adcb-2ef198674231");
INSERT INTO V_VAR
	VALUES ("0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c",
	"69756ff0-2782-433c-b80c-e24679873e92",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("0e36f1bd-ee9f-4e81-95e9-c4ba14b0447c",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO SPR_PEP
	VALUES ("ae759ad2-e57a-4100-a7b3-a3f4d1856154",
	"36dabbf3-05b9-429d-84f8-64795de0cd36",
	"4f8fbc17-008a-4e7e-8f3c-d4e5b91a49ff");
INSERT INTO SPR_PO
	VALUES ("ae759ad2-e57a-4100-a7b3-a3f4d1856154",
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("d7a2bbc4-b065-4eba-b9c0-cf4d2e9b9c85",
	"ae759ad2-e57a-4100-a7b3-a3f4d1856154");
INSERT INTO ACT_ACT
	VALUES ("d7a2bbc4-b065-4eba-b9c0-cf4d2e9b9c85",
	'interface operation',
	0,
	"319f8a44-5da7-4163-b71b-4530328e7c99",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::Tracking::lightPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("319f8a44-5da7-4163-b71b-4530328e7c99",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d7a2bbc4-b065-4eba-b9c0-cf4d2e9b9c85",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	1,
	"00000000-0000-0000-0000-000000000000",
	"60e6ea4e-c427-4e59-be9c-7df4cc57a61d",
	7);
INSERT INTO EP_PKG
	VALUES ("d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	"27739246-8504-4177-85b8-ca5205d5a450",
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("c768d632-76e3-409d-a572-d7ceebb9d3d8",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("c768d632-76e3-409d-a572-d7ceebb9d3d8",
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("c768d632-76e3-409d-a572-d7ceebb9d3d8");
INSERT INTO R_PART
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"a62ebe91-9612-48c4-89ee-138731c4a02f",
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"a62ebe91-9612-48c4-89ee-138731c4a02f",
	-1);
INSERT INTO R_OIR
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"a62ebe91-9612-48c4-89ee-138731c4a02f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"29761745-4a1a-40a5-8629-774dc52d3823",
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"29761745-4a1a-40a5-8629-774dc52d3823",
	-1);
INSERT INTO R_OIR
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"29761745-4a1a-40a5-8629-774dc52d3823",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("88267812-6798-42ca-aa4c-390b14aba209",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("88267812-6798-42ca-aa4c-390b14aba209",
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("88267812-6798-42ca-aa4c-390b14aba209");
INSERT INTO R_PART
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"79c3ef5d-29c0-41ed-98da-d04b97613260",
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"79c3ef5d-29c0-41ed-98da-d04b97613260",
	-1);
INSERT INTO R_OIR
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"79c3ef5d-29c0-41ed-98da-d04b97613260",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"d2f58204-71df-457d-bf72-40095488200c",
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"d2f58204-71df-457d-bf72-40095488200c",
	-1);
INSERT INTO R_OIR
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"d2f58204-71df-457d-bf72-40095488200c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("883aa8c4-ed04-4d44-b23e-3e20a11a3040");
INSERT INTO R_PART
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"dd1b52db-6843-4b9c-9aef-a5508e2e99f4",
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"dd1b52db-6843-4b9c-9aef-a5508e2e99f4",
	-1);
INSERT INTO R_OIR
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"dd1b52db-6843-4b9c-9aef-a5508e2e99f4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"331c0809-b68c-4b47-b001-a8875903bd5b",
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"331c0809-b68c-4b47-b001-a8875903bd5b",
	-1);
INSERT INTO R_OIR
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"331c0809-b68c-4b47-b001-a8875903bd5b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("2cb93147-b4d6-497e-a0c6-a33c78d5a4c7");
INSERT INTO R_PART
	VALUES ("4ff5f39c-493f-4348-abc0-1d652462fa3c",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"2ddb52a7-b42f-4e4b-a980-4ed01e22bbb8",
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES ("4ff5f39c-493f-4348-abc0-1d652462fa3c",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"2ddb52a7-b42f-4e4b-a980-4ed01e22bbb8",
	-1);
INSERT INTO R_OIR
	VALUES ("4ff5f39c-493f-4348-abc0-1d652462fa3c",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"2ddb52a7-b42f-4e4b-a980-4ed01e22bbb8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"065981e1-0795-4efa-8529-e9dfad72b441",
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"065981e1-0795-4efa-8529-e9dfad72b441",
	-1);
INSERT INTO R_OIR
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"065981e1-0795-4efa-8529-e9dfad72b441",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("6c5ddb2e-13fd-4035-a7c9-2589b05cea6d");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"26dc9ceb-3026-42eb-9699-fa62aa0f7f98",
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"26dc9ceb-3026-42eb-9699-fa62aa0f7f98",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"26dc9ceb-3026-42eb-9699-fa62aa0f7f98",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("ff85d606-fe7f-44c1-9258-266ca776b55e",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"7de64106-533a-4c1d-99e1-7d2049fd5840",
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES ("ff85d606-fe7f-44c1-9258-266ca776b55e",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"7de64106-533a-4c1d-99e1-7d2049fd5840",
	-1);
INSERT INTO R_OIR
	VALUES ("ff85d606-fe7f-44c1-9258-266ca776b55e",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"7de64106-533a-4c1d-99e1-7d2049fd5840",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"89f7c790-9904-41c3-9d8d-af158eb6f063",
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"89f7c790-9904-41c3-9d8d-af158eb6f063",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"89f7c790-9904-41c3-9d8d-af158eb6f063",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"6391d182-812f-44e6-9a41-4189b7d144ac",
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES ("c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"6391d182-812f-44e6-9a41-4189b7d144ac",
	-1);
INSERT INTO R_OIR
	VALUES ("c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"6391d182-812f-44e6-9a41-4189b7d144ac",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("99e4a650-f0dc-4a28-ae5b-798074ea2539",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("99e4a650-f0dc-4a28-ae5b-798074ea2539",
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("99e4a650-f0dc-4a28-ae5b-798074ea2539");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"249b1740-5ee1-4ecc-88a7-9271f137845f",
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"249b1740-5ee1-4ecc-88a7-9271f137845f",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"249b1740-5ee1-4ecc-88a7-9271f137845f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"a1fc685d-bdd7-4a41-858f-ad24bb1a47f9",
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"a1fc685d-bdd7-4a41-858f-ad24bb1a47f9",
	-1);
INSERT INTO R_OIR
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"a1fc685d-bdd7-4a41-858f-ad24bb1a47f9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("2da0e849-e040-4957-99a1-d4634277e94b",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("2da0e849-e040-4957-99a1-d4634277e94b",
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("2da0e849-e040-4957-99a1-d4634277e94b");
INSERT INTO R_PART
	VALUES ("8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"32c7aa2b-ed53-494d-8762-c6b7960b11d3",
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES ("8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"32c7aa2b-ed53-494d-8762-c6b7960b11d3",
	-1);
INSERT INTO R_OIR
	VALUES ("8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"32c7aa2b-ed53-494d-8762-c6b7960b11d3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"0454fbf9-38a4-4322-be60-970ff169ec5b",
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"0454fbf9-38a4-4322-be60-970ff169ec5b",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"0454fbf9-38a4-4322-be60-970ff169ec5b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("10f79f27-a03b-4527-aace-17a75f60f87e",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("10f79f27-a03b-4527-aace-17a75f60f87e",
	9,
	'Established when goal execution begins and removed when it ends.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("10f79f27-a03b-4527-aace-17a75f60f87e");
INSERT INTO R_PART
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"8b5b7847-9cdd-44b5-9b18-7843821c202a",
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"8b5b7847-9cdd-44b5-9b18-7843821c202a",
	-1);
INSERT INTO R_OIR
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"8b5b7847-9cdd-44b5-9b18-7843821c202a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"c14c3321-7ae1-4ae4-a78e-b0af095b2f62",
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"c14c3321-7ae1-4ae4-a78e-b0af095b2f62",
	-1);
INSERT INTO R_OIR
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"c14c3321-7ae1-4ae4-a78e-b0af095b2f62",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("4a0fbecb-8406-473c-88ae-b8d7506ab992",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("4a0fbecb-8406-473c-88ae-b8d7506ab992",
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("4a0fbecb-8406-473c-88ae-b8d7506ab992");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"43632382-19aa-4fb6-b1f6-6121f68d41b4",
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"43632382-19aa-4fb6-b1f6-6121f68d41b4",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"43632382-19aa-4fb6-b1f6-6121f68d41b4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"73db929b-88bf-48ea-b3de-30b1c769f9c3",
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"73db929b-88bf-48ea-b3de-30b1c769f9c3",
	-1);
INSERT INTO R_OIR
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"73db929b-88bf-48ea-b3de-30b1c769f9c3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("1818b529-be0c-4e42-88ce-2f157d28abc6",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("1818b529-be0c-4e42-88ce-2f157d28abc6",
	11,
	'Established when a goal begins executing and removed when it ends.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("1818b529-be0c-4e42-88ce-2f157d28abc6");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"eaa8e8a4-bed3-4323-866f-3cdd1f0e15a0",
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"eaa8e8a4-bed3-4323-866f-3cdd1f0e15a0",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"eaa8e8a4-bed3-4323-866f-3cdd1f0e15a0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"62f6f41d-64e5-4070-a2fb-f98ae89b37a8",
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"62f6f41d-64e5-4070-a2fb-f98ae89b37a8",
	-1);
INSERT INTO R_OIR
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"62f6f41d-64e5-4070-a2fb-f98ae89b37a8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("f2e9ea73-028b-4b29-82f9-eb60402699b5",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("f2e9ea73-028b-4b29-82f9-eb60402699b5",
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("f2e9ea73-028b-4b29-82f9-eb60402699b5");
INSERT INTO R_PART
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5ae737af-a6d7-4790-b889-4cbe18be1ab8",
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5ae737af-a6d7-4790-b889-4cbe18be1ab8",
	-1);
INSERT INTO R_OIR
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5ae737af-a6d7-4790-b889-4cbe18be1ab8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5cd0e541-1630-471c-b3f9-ac642574582e",
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5cd0e541-1630-471c-b3f9-ac642574582e",
	-1);
INSERT INTO R_OIR
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"5cd0e541-1630-471c-b3f9-ac642574582e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("efa68880-a2aa-462b-b34a-bd84e4aa1ec2");
INSERT INTO R_PART
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"184b7972-829e-4212-b6e9-4ab0396a9d13",
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"184b7972-829e-4212-b6e9-4ab0396a9d13",
	-1);
INSERT INTO R_OIR
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"184b7972-829e-4212-b6e9-4ab0396a9d13",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"677812fc-6118-405f-9e7b-4b074b3fcf5b",
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"677812fc-6118-405f-9e7b-4b074b3fcf5b",
	-1);
INSERT INTO R_OIR
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"677812fc-6118-405f-9e7b-4b074b3fcf5b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("2ed630b0-5d74-48c4-8b30-f2091a1b9e99");
INSERT INTO R_PART
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"d27d4763-5870-40e7-b76a-630793d9936e",
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"d27d4763-5870-40e7-b76a-630793d9936e",
	-1);
INSERT INTO R_OIR
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"d27d4763-5870-40e7-b76a-630793d9936e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_PART
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"46a20919-783c-4684-abb2-0fa8e579cb95",
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"46a20919-783c-4684-abb2-0fa8e579cb95",
	-1);
INSERT INTO R_OIR
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"46a20919-783c-4684-abb2-0fa8e579cb95",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("fead6ed2-2e14-46b7-8ea9-270087b59b12",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES ("a9a744df-0cfd-4899-bc29-96f434f57387",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("1e4befeb-fa7a-46e1-8d1c-e24b9fd3416a",
	"a9a744df-0cfd-4899-bc29-96f434f57387",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("00fba2a8-cc80-47d6-97d1-1e91de266978",
	"a9a744df-0cfd-4899-bc29-96f434f57387");
INSERT INTO ACT_ACT
	VALUES ("00fba2a8-cc80-47d6-97d1-1e91de266978",
	'bridge',
	0,
	"087a3bf1-5dcd-4e40-837b-83cca83c72c0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("087a3bf1-5dcd-4e40-837b-83cca83c72c0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"00fba2a8-cc80-47d6-97d1-1e91de266978",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("5b51198c-eca4-4970-9be7-3b63c83cff41",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a2a0cc88-b48f-4cec-b7a2-b1c0e14a1124",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2");
INSERT INTO ACT_ACT
	VALUES ("a2a0cc88-b48f-4cec-b7a2-b1c0e14a1124",
	'bridge',
	0,
	"79d69434-3614-4c8c-84d9-801e313cbc13",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("79d69434-3614-4c8c-84d9-801e313cbc13",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a2a0cc88-b48f-4cec-b7a2-b1c0e14a1124",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("da7788c6-cf46-48f6-b437-b230745ede8c",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("cdf98e9e-bf08-4f3f-a818-1f105eacc548",
	"da7788c6-cf46-48f6-b437-b230745ede8c",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("9c894c47-fb8a-4b12-bf79-bec795cfda66",
	"da7788c6-cf46-48f6-b437-b230745ede8c");
INSERT INTO ACT_ACT
	VALUES ("9c894c47-fb8a-4b12-bf79-bec795cfda66",
	'bridge',
	0,
	"2a63d2a8-2945-42c4-ad0e-3f9a36c64654",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2a63d2a8-2945-42c4-ad0e-3f9a36c64654",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9c894c47-fb8a-4b12-bf79-bec795cfda66",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("4e486d25-2dcf-45de-a7e4-142a19ecb50f",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("875c21b2-f30e-4975-8a73-460e8dc19963",
	"4e486d25-2dcf-45de-a7e4-142a19ecb50f",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("a485f10c-2a32-4ea8-8208-46c414f0e148",
	"4e486d25-2dcf-45de-a7e4-142a19ecb50f",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"875c21b2-f30e-4975-8a73-460e8dc19963",
	'');
INSERT INTO ACT_BRB
	VALUES ("a175a88a-959c-446e-8d95-85a4ad7af7ca",
	"4e486d25-2dcf-45de-a7e4-142a19ecb50f");
INSERT INTO ACT_ACT
	VALUES ("a175a88a-959c-446e-8d95-85a4ad7af7ca",
	'bridge',
	0,
	"2ac669b3-7d7f-4262-825a-a24953cdf043",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2ac669b3-7d7f-4262-825a-a24953cdf043",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a175a88a-959c-446e-8d95-85a4ad7af7ca",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("d660ed61-b9a2-4d81-ba69-7a75f0cb3ba0",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f2aac475-f9c7-4055-96c6-b5432de80819",
	"d660ed61-b9a2-4d81-ba69-7a75f0cb3ba0",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"0d51a3c1-030f-4658-a37b-937bd892bbbd",
	'');
INSERT INTO S_BPARM
	VALUES ("0d51a3c1-030f-4658-a37b-937bd892bbbd",
	"d660ed61-b9a2-4d81-ba69-7a75f0cb3ba0",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("3392bd65-1af8-4a63-80f7-3c73b2bcfe46",
	"d660ed61-b9a2-4d81-ba69-7a75f0cb3ba0");
INSERT INTO ACT_ACT
	VALUES ("3392bd65-1af8-4a63-80f7-3c73b2bcfe46",
	'bridge',
	0,
	"b88b4f51-cc9f-4376-a9f5-be31620bb1a9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b88b4f51-cc9f-4376-a9f5-be31620bb1a9",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3392bd65-1af8-4a63-80f7-3c73b2bcfe46",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("460678d5-d28c-4910-b409-ac40d8a7cc69",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("d3703bfb-e1ad-4664-9212-503f6d12c436",
	"460678d5-d28c-4910-b409-ac40d8a7cc69",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"ba21a4fc-0f9b-4af3-8304-d179c2570fdd",
	'');
INSERT INTO S_BPARM
	VALUES ("ba21a4fc-0f9b-4af3-8304-d179c2570fdd",
	"460678d5-d28c-4910-b409-ac40d8a7cc69",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("3a45194f-cff5-41d1-acad-71cc6d1e7330",
	"460678d5-d28c-4910-b409-ac40d8a7cc69");
INSERT INTO ACT_ACT
	VALUES ("3a45194f-cff5-41d1-acad-71cc6d1e7330",
	'bridge',
	0,
	"be2627e5-4f29-4ed8-b3e4-d4b2caec4de3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("be2627e5-4f29-4ed8-b3e4-d4b2caec4de3",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3a45194f-cff5-41d1-acad-71cc6d1e7330",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("fdb722bf-2f78-4915-985f-e2f0d025592e",
	"fead6ed2-2e14-46b7-8ea9-270087b59b12",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("deac3ccf-bb99-4e93-a5c3-a47ce2338389",
	"fdb722bf-2f78-4915-985f-e2f0d025592e",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("384b6a77-866a-4314-a380-1a002167a2db",
	"fdb722bf-2f78-4915-985f-e2f0d025592e");
INSERT INTO ACT_ACT
	VALUES ("384b6a77-866a-4314-a380-1a002167a2db",
	'bridge',
	0,
	"cc347f80-1242-4fe1-aeab-b2731eab4e88",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cc347f80-1242-4fe1-aeab-b2731eab4e88",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"384b6a77-866a-4314-a380-1a002167a2db",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("7a754196-7e3a-4b98-9067-0a0192c2df2c",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES ("5e9051a8-5bd7-4e93-abb6-d6cf46d3aaba",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("851fb4ec-3648-49bb-b198-cf566dc838ce",
	"5e9051a8-5bd7-4e93-abb6-d6cf46d3aaba");
INSERT INTO ACT_ACT
	VALUES ("851fb4ec-3648-49bb-b198-cf566dc838ce",
	'bridge',
	0,
	"c1ca3710-4151-4818-86d6-22c2ffdd8388",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c1ca3710-4151-4818-86d6-22c2ffdd8388",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"851fb4ec-3648-49bb-b198-cf566dc838ce",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("41cca2bf-f03c-41df-a4f3-d7bf39464602",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"bb34097c-6e5c-4f96-834d-9e54c2e06a1f",
	'');
INSERT INTO S_BPARM
	VALUES ("2f3ff0ff-4eb8-4a04-95be-9ec9d4113add",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"d8a5c736-7b16-45a7-b47a-a947b98991af",
	'');
INSERT INTO S_BPARM
	VALUES ("d8a5c736-7b16-45a7-b47a-a947b98991af",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"dddc669d-da28-401c-9eae-aedddd7f6806",
	'');
INSERT INTO S_BPARM
	VALUES ("dddc669d-da28-401c-9eae-aedddd7f6806",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("bb34097c-6e5c-4f96-834d-9e54c2e06a1f",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"2f3ff0ff-4eb8-4a04-95be-9ec9d4113add",
	'');
INSERT INTO S_BPARM
	VALUES ("df112212-72c7-4a28-978b-c64559621753",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"41cca2bf-f03c-41df-a4f3-d7bf39464602",
	'');
INSERT INTO ACT_BRB
	VALUES ("7f463d7e-5536-4ca1-bc51-b50d0d2be3ca",
	"cd7589b9-bdf2-4cc0-ad25-7314e4df7ff2");
INSERT INTO ACT_ACT
	VALUES ("7f463d7e-5536-4ca1-bc51-b50d0d2be3ca",
	'bridge',
	0,
	"b29072bb-c48b-4218-b01e-c026b276e318",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b29072bb-c48b-4218-b01e-c026b276e318",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"7f463d7e-5536-4ca1-bc51-b50d0d2be3ca",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("03a5534c-65b7-4853-8db4-5878e319e3af",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f6162786-feeb-4d8a-8714-82ef519deffe",
	"03a5534c-65b7-4853-8db4-5878e319e3af",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("1673cd91-ca12-4161-829d-423fbc089a91",
	"03a5534c-65b7-4853-8db4-5878e319e3af");
INSERT INTO ACT_ACT
	VALUES ("1673cd91-ca12-4161-829d-423fbc089a91",
	'bridge',
	0,
	"d058d094-17f7-45cf-8690-92011bead422",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d058d094-17f7-45cf-8690-92011bead422",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"1673cd91-ca12-4161-829d-423fbc089a91",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("dbf05a61-7ad9-4a17-a120-2abe57e2c51e",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("b4c6ed95-488d-489a-8e33-0845c0a04c16",
	"dbf05a61-7ad9-4a17-a120-2abe57e2c51e",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("49ce3083-3655-4177-9acf-df96097cd851",
	"dbf05a61-7ad9-4a17-a120-2abe57e2c51e");
INSERT INTO ACT_ACT
	VALUES ("49ce3083-3655-4177-9acf-df96097cd851",
	'bridge',
	0,
	"b959058c-8fed-470e-9cee-6f3577c4aca7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b959058c-8fed-470e-9cee-6f3577c4aca7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"49ce3083-3655-4177-9acf-df96097cd851",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e2ffcf2c-31d3-40b7-bbeb-5ddb7467b4ee",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("ff4e7038-88e2-465a-98ee-d6234b60f7f3",
	"e2ffcf2c-31d3-40b7-bbeb-5ddb7467b4ee",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("ff2ff739-3b93-4e58-a6c7-a1f82b1ee4e5",
	"e2ffcf2c-31d3-40b7-bbeb-5ddb7467b4ee");
INSERT INTO ACT_ACT
	VALUES ("ff2ff739-3b93-4e58-a6c7-a1f82b1ee4e5",
	'bridge',
	0,
	"15119200-a45e-426a-b046-50cf8806ffae",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("15119200-a45e-426a-b046-50cf8806ffae",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ff2ff739-3b93-4e58-a6c7-a1f82b1ee4e5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("eaad03a3-d1ec-4286-a960-8dad1b67c40f",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a7c68a7e-d5d6-4ccc-a7c2-0d1f7a8f226f",
	"eaad03a3-d1ec-4286-a960-8dad1b67c40f",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("9799c0f6-9dcb-484b-9963-76e00bc2dd0a",
	"eaad03a3-d1ec-4286-a960-8dad1b67c40f");
INSERT INTO ACT_ACT
	VALUES ("9799c0f6-9dcb-484b-9963-76e00bc2dd0a",
	'bridge',
	0,
	"d26fc5d4-9c2f-4a71-8754-a7612a3a5f73",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d26fc5d4-9c2f-4a71-8754-a7612a3a5f73",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9799c0f6-9dcb-484b-9963-76e00bc2dd0a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("a0a186cd-b81f-4d03-925b-011354554409",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("9ec35553-ad12-4aa9-bbc6-197e37e27e3a",
	"a0a186cd-b81f-4d03-925b-011354554409",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("04a15480-5408-4dc5-8bf6-a2ce69264770",
	"a0a186cd-b81f-4d03-925b-011354554409");
INSERT INTO ACT_ACT
	VALUES ("04a15480-5408-4dc5-8bf6-a2ce69264770",
	'bridge',
	0,
	"75ac4e93-9385-4cba-9252-30c1f6f0d14a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("75ac4e93-9385-4cba-9252-30c1f6f0d14a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"04a15480-5408-4dc5-8bf6-a2ce69264770",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("7842ba60-dc56-4d36-bddc-9c61140caed9",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("bd7a8570-2f04-43e4-9ea1-0f4055b05511",
	"7842ba60-dc56-4d36-bddc-9c61140caed9",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("38b09c46-f420-466a-80ac-87d918853c2c",
	"7842ba60-dc56-4d36-bddc-9c61140caed9");
INSERT INTO ACT_ACT
	VALUES ("38b09c46-f420-466a-80ac-87d918853c2c",
	'bridge',
	0,
	"04a6e3bd-77bd-4cfd-ba78-b97ced8090cd",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("04a6e3bd-77bd-4cfd-ba78-b97ced8090cd",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"38b09c46-f420-466a-80ac-87d918853c2c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("61edb2ca-1b0c-45e3-972c-9700eeb5d045",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("138028ac-dcaf-425d-987c-27a562a5f182",
	"61edb2ca-1b0c-45e3-972c-9700eeb5d045");
INSERT INTO ACT_ACT
	VALUES ("138028ac-dcaf-425d-987c-27a562a5f182",
	'bridge',
	0,
	"5f119dc2-d8c2-4371-aa9c-fc1d077d6825",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5f119dc2-d8c2-4371-aa9c-fc1d077d6825",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"138028ac-dcaf-425d-987c-27a562a5f182",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0d3483d3-a1cc-4030-b1dd-2236805e0d57",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("b5a11dfe-0e4b-4513-b538-b48bf4d1b296",
	"0d3483d3-a1cc-4030-b1dd-2236805e0d57",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"adbc13be-6a40-4bf0-b738-1d067cb486ef",
	'');
INSERT INTO S_BPARM
	VALUES ("adbc13be-6a40-4bf0-b738-1d067cb486ef",
	"0d3483d3-a1cc-4030-b1dd-2236805e0d57",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("60256c4b-8b55-4425-ad65-732d9c367ed0",
	"0d3483d3-a1cc-4030-b1dd-2236805e0d57");
INSERT INTO ACT_ACT
	VALUES ("60256c4b-8b55-4425-ad65-732d9c367ed0",
	'bridge',
	0,
	"93a10ba0-f795-4c40-b0be-d8075c5b53bc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("93a10ba0-f795-4c40-b0be-d8075c5b53bc",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"60256c4b-8b55-4425-ad65-732d9c367ed0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("fdb09f81-994c-425c-957e-5945995b3602",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"c7969145-b2c4-4155-9c6c-d55e9db5ef68",
	'');
INSERT INTO S_BPARM
	VALUES ("c7969145-b2c4-4155-9c6c-d55e9db5ef68",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("2ec705de-1db3-4d86-97cc-156ec0014d00",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7");
INSERT INTO ACT_ACT
	VALUES ("2ec705de-1db3-4d86-97cc-156ec0014d00",
	'bridge',
	0,
	"cd2aa8b8-596c-4ccf-af7a-dc289ccbb1e7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cd2aa8b8-596c-4ccf-af7a-dc289ccbb1e7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2ec705de-1db3-4d86-97cc-156ec0014d00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("35c01465-c18a-43f4-896f-5b76b79de6fa",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("b60b2d7e-6cb5-4443-b8dc-0a9ee1193750",
	"35c01465-c18a-43f4-896f-5b76b79de6fa",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("7c1645e9-bf1e-4158-9521-3e4ef79da556",
	"35c01465-c18a-43f4-896f-5b76b79de6fa");
INSERT INTO ACT_ACT
	VALUES ("7c1645e9-bf1e-4158-9521-3e4ef79da556",
	'bridge',
	0,
	"0c5fb4c6-ae83-448a-9663-0279765122b0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0c5fb4c6-ae83-448a-9663-0279765122b0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"7c1645e9-bf1e-4158-9521-3e4ef79da556",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("5e009c8f-aa4a-494b-93d6-5f4d822151b6",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("c5633b17-8d95-465e-85bd-ee1fce2be64e",
	"5e009c8f-aa4a-494b-93d6-5f4d822151b6",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"4e801c31-4335-4621-a5da-08862d3f034b",
	'');
INSERT INTO S_BPARM
	VALUES ("4e801c31-4335-4621-a5da-08862d3f034b",
	"5e009c8f-aa4a-494b-93d6-5f4d822151b6",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("236f1124-2e9f-46c8-b63a-bff860493cf5",
	"5e009c8f-aa4a-494b-93d6-5f4d822151b6");
INSERT INTO ACT_ACT
	VALUES ("236f1124-2e9f-46c8-b63a-bff860493cf5",
	'bridge',
	0,
	"1ff8ecfc-d479-4419-84b7-5a7114e9b17c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1ff8ecfc-d479-4419-84b7-5a7114e9b17c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"236f1124-2e9f-46c8-b63a-bff860493cf5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("3887f970-2bbe-49ad-9e5a-4c0445e3084a",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("699259b8-7772-4341-a1f1-7b6878324fbb",
	"3887f970-2bbe-49ad-9e5a-4c0445e3084a",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"3728deba-bc5e-41d4-b4cd-5b71986e3d2e",
	'');
INSERT INTO S_BPARM
	VALUES ("3728deba-bc5e-41d4-b4cd-5b71986e3d2e",
	"3887f970-2bbe-49ad-9e5a-4c0445e3084a",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("4616dad6-3104-4368-899c-3e004d3c9a3e",
	"3887f970-2bbe-49ad-9e5a-4c0445e3084a");
INSERT INTO ACT_ACT
	VALUES ("4616dad6-3104-4368-899c-3e004d3c9a3e",
	'bridge',
	0,
	"cb337f59-232f-4b2c-9671-18ab9b9bedab",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cb337f59-232f-4b2c-9671-18ab9b9bedab",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4616dad6-3104-4368-899c-3e004d3c9a3e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("26d40e8d-6597-4e31-8685-2511abd21e19",
	"7a754196-7e3a-4b98-9067-0a0192c2df2c",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("75d306d8-0dfb-472c-9cb3-6937a0783194",
	"26d40e8d-6597-4e31-8685-2511abd21e19",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("1571d265-64eb-4246-8b83-5871e3f9f139",
	"26d40e8d-6597-4e31-8685-2511abd21e19");
INSERT INTO ACT_ACT
	VALUES ("1571d265-64eb-4246-8b83-5871e3f9f139",
	'bridge',
	0,
	"499a8ef3-a46e-4109-a6be-a8256b608cd7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("499a8ef3-a46e-4109-a6be-a8256b608cd7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"1571d265-64eb-4246-8b83-5871e3f9f139",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("8e4f89a9-5684-4df3-acf8-930b5c3a156c",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("8e4f89a9-5684-4df3-acf8-930b5c3a156c",
	"00000000-0000-0000-0000-000000000000",
	'GoalTest_1',
	'',
	'// Initialize the system.
::Initialize();

// Create some goal specifications.
send UI::newGoalSpec( 
  sequenceNumber: 1,
  minimum: 2.0,
  maximum: 8.0,
  span: 150.0,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Distance );
  
send UI::newGoalSpec( 
  sequenceNumber: 2,
  minimum: 60.0,
  maximum: 80.0,
  span: 10,
  criteriaType: GoalCriteria::HeartRate,
  spanType: GoalSpan::Time );
  
send UI::newGoalSpec( 
  sequenceNumber: 3,
  minimum: 5.0,
  maximum: 6.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  
send UI::newGoalSpec( 
  sequenceNumber: 4,
  minimum: 1.0,
  maximum: 2.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  ',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("71f44413-e43c-4404-bfa2-e9ca6dba5936",
	"8e4f89a9-5684-4df3-acf8-930b5c3a156c");
INSERT INTO ACT_ACT
	VALUES ("71f44413-e43c-4404-bfa2-e9ca6dba5936",
	'function',
	0,
	"e537675c-94cb-4c80-8651-32554995564f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GoalTest_1',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e537675c-94cb-4c80-8651-32554995564f",
	0,
	0,
	0,
	'UI',
	'',
	'',
	29,
	1,
	29,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	35,
	13,
	0,
	"71f44413-e43c-4404-bfa2-e9ca6dba5936",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("730ed783-4a48-43df-94ca-5e306d8eb649",
	"e537675c-94cb-4c80-8651-32554995564f",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES ("730ed783-4a48-43df-94ca-5e306d8eb649",
	"9eb52caf-12f9-4561-9e5f-26bc6479dba2",
	2,
	3);
INSERT INTO ACT_SMT
	VALUES ("f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"e537675c-94cb-4c80-8651-32554995564f",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES ("f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	5,
	10,
	5,
	6,
	"00000000-0000-0000-0000-000000000000",
	"82481c5b-ecb4-4930-b3ee-a4196791915e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"e537675c-94cb-4c80-8651-32554995564f",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES ("7453dbe4-15fe-4871-98f5-d7b03a6df940",
	13,
	10,
	13,
	6,
	"00000000-0000-0000-0000-000000000000",
	"82481c5b-ecb4-4930-b3ee-a4196791915e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"e537675c-94cb-4c80-8651-32554995564f",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES ("3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	21,
	10,
	21,
	6,
	"00000000-0000-0000-0000-000000000000",
	"82481c5b-ecb4-4930-b3ee-a4196791915e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("495fb493-4739-41c7-84e8-5a3667c0bbac",
	"e537675c-94cb-4c80-8651-32554995564f",
	"00000000-0000-0000-0000-000000000000",
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES ("495fb493-4739-41c7-84e8-5a3667c0bbac",
	29,
	10,
	29,
	6,
	"00000000-0000-0000-0000-000000000000",
	"82481c5b-ecb4-4930-b3ee-a4196791915e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("0800416b-5679-4d04-85f5-3695a74b3803",
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("0800416b-5679-4d04-85f5-3695a74b3803",
	'1');
INSERT INTO V_PAR
	VALUES ("0800416b-5679-4d04-85f5-3695a74b3803",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"c4330888-9830-4bcd-95f9-347a22b2924e",
	6,
	3);
INSERT INTO V_VAL
	VALUES ("c4330888-9830-4bcd-95f9-347a22b2924e",
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("c4330888-9830-4bcd-95f9-347a22b2924e",
	'2.0');
INSERT INTO V_PAR
	VALUES ("c4330888-9830-4bcd-95f9-347a22b2924e",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"f44d501f-4dab-43a6-a157-4ba5b82e01dc",
	7,
	3);
INSERT INTO V_VAL
	VALUES ("f44d501f-4dab-43a6-a157-4ba5b82e01dc",
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("f44d501f-4dab-43a6-a157-4ba5b82e01dc",
	'8.0');
INSERT INTO V_PAR
	VALUES ("f44d501f-4dab-43a6-a157-4ba5b82e01dc",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"9426ccef-d67e-4dae-8702-b2e74db0f840",
	8,
	3);
INSERT INTO V_VAL
	VALUES ("9426ccef-d67e-4dae-8702-b2e74db0f840",
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("9426ccef-d67e-4dae-8702-b2e74db0f840",
	'150.0');
INSERT INTO V_PAR
	VALUES ("9426ccef-d67e-4dae-8702-b2e74db0f840",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"17767acb-e7fa-49ce-9333-784318feb71e",
	9,
	3);
INSERT INTO V_VAL
	VALUES ("17767acb-e7fa-49ce-9333-784318feb71e",
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("17767acb-e7fa-49ce-9333-784318feb71e",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	10,
	17);
INSERT INTO V_PAR
	VALUES ("17767acb-e7fa-49ce-9333-784318feb71e",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"e22e5738-d109-432f-b7b4-e1efef83afc1",
	10,
	3);
INSERT INTO V_VAL
	VALUES ("e22e5738-d109-432f-b7b4-e1efef83afc1",
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("e22e5738-d109-432f-b7b4-e1efef83afc1",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc",
	11,
	13);
INSERT INTO V_PAR
	VALUES ("e22e5738-d109-432f-b7b4-e1efef83afc1",
	"f20a9325-e27f-4ed0-bd5c-f2ecc121f9b7",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	11,
	3);
INSERT INTO V_VAL
	VALUES ("76155010-614d-44ce-9b85-819b9b10eeba",
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("76155010-614d-44ce-9b85-819b9b10eeba",
	'2');
INSERT INTO V_PAR
	VALUES ("76155010-614d-44ce-9b85-819b9b10eeba",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"e4126236-a400-460b-8693-e57e79e23286",
	14,
	3);
INSERT INTO V_VAL
	VALUES ("e4126236-a400-460b-8693-e57e79e23286",
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("e4126236-a400-460b-8693-e57e79e23286",
	'60.0');
INSERT INTO V_PAR
	VALUES ("e4126236-a400-460b-8693-e57e79e23286",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"1b704b82-8f2b-4a8d-bcaf-d0016e70a517",
	15,
	3);
INSERT INTO V_VAL
	VALUES ("1b704b82-8f2b-4a8d-bcaf-d0016e70a517",
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("1b704b82-8f2b-4a8d-bcaf-d0016e70a517",
	'80.0');
INSERT INTO V_PAR
	VALUES ("1b704b82-8f2b-4a8d-bcaf-d0016e70a517",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"e51e4d7e-5052-43ea-addf-5a4f3db9128f",
	16,
	3);
INSERT INTO V_VAL
	VALUES ("e51e4d7e-5052-43ea-addf-5a4f3db9128f",
	0,
	0,
	17,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("e51e4d7e-5052-43ea-addf-5a4f3db9128f",
	'10');
INSERT INTO V_PAR
	VALUES ("e51e4d7e-5052-43ea-addf-5a4f3db9128f",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"e65554ed-b884-4ae9-9b9d-0c43ffb25f49",
	17,
	3);
INSERT INTO V_VAL
	VALUES ("e65554ed-b884-4ae9-9b9d-0c43ffb25f49",
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("e65554ed-b884-4ae9-9b9d-0c43ffb25f49",
	"3e48843f-0ea9-4021-97ba-72f059cce838",
	18,
	17);
INSERT INTO V_PAR
	VALUES ("e65554ed-b884-4ae9-9b9d-0c43ffb25f49",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"d5c122c4-c87f-47e2-b632-e317a5c70ef1",
	18,
	3);
INSERT INTO V_VAL
	VALUES ("d5c122c4-c87f-47e2-b632-e317a5c70ef1",
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("d5c122c4-c87f-47e2-b632-e317a5c70ef1",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	19,
	13);
INSERT INTO V_PAR
	VALUES ("d5c122c4-c87f-47e2-b632-e317a5c70ef1",
	"7453dbe4-15fe-4871-98f5-d7b03a6df940",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	19,
	3);
INSERT INTO V_VAL
	VALUES ("712df84b-adea-4162-bee4-61492830a2f8",
	0,
	0,
	22,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("712df84b-adea-4162-bee4-61492830a2f8",
	'3');
INSERT INTO V_PAR
	VALUES ("712df84b-adea-4162-bee4-61492830a2f8",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"0621db6c-56bd-4f67-a706-ab91836b7001",
	22,
	3);
INSERT INTO V_VAL
	VALUES ("0621db6c-56bd-4f67-a706-ab91836b7001",
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("0621db6c-56bd-4f67-a706-ab91836b7001",
	'5.0');
INSERT INTO V_PAR
	VALUES ("0621db6c-56bd-4f67-a706-ab91836b7001",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"cc2abc94-4605-497a-bef7-35211a1ca448",
	23,
	3);
INSERT INTO V_VAL
	VALUES ("cc2abc94-4605-497a-bef7-35211a1ca448",
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("cc2abc94-4605-497a-bef7-35211a1ca448",
	'6.0');
INSERT INTO V_PAR
	VALUES ("cc2abc94-4605-497a-bef7-35211a1ca448",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"dd5b1002-6b24-4744-9883-8f11e44a8513",
	24,
	3);
INSERT INTO V_VAL
	VALUES ("dd5b1002-6b24-4744-9883-8f11e44a8513",
	0,
	0,
	25,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("dd5b1002-6b24-4744-9883-8f11e44a8513",
	'15');
INSERT INTO V_PAR
	VALUES ("dd5b1002-6b24-4744-9883-8f11e44a8513",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"39f67cda-5549-4a28-8ca5-d379c81744c7",
	25,
	3);
INSERT INTO V_VAL
	VALUES ("39f67cda-5549-4a28-8ca5-d379c81744c7",
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("39f67cda-5549-4a28-8ca5-d379c81744c7",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	26,
	17);
INSERT INTO V_PAR
	VALUES ("39f67cda-5549-4a28-8ca5-d379c81744c7",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"c42df266-ce8b-4da0-922f-4036562ccf7a",
	26,
	3);
INSERT INTO V_VAL
	VALUES ("c42df266-ce8b-4da0-922f-4036562ccf7a",
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("c42df266-ce8b-4da0-922f-4036562ccf7a",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	27,
	13);
INSERT INTO V_PAR
	VALUES ("c42df266-ce8b-4da0-922f-4036562ccf7a",
	"3a6ffe5f-147d-4955-8edc-00e9d8fda68f",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	27,
	3);
INSERT INTO V_VAL
	VALUES ("161eed83-4b8c-4596-8c1c-26bce82b4365",
	0,
	0,
	30,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("161eed83-4b8c-4596-8c1c-26bce82b4365",
	'4');
INSERT INTO V_PAR
	VALUES ("161eed83-4b8c-4596-8c1c-26bce82b4365",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"042640b8-f950-411e-b489-0e16f80e0b72",
	30,
	3);
INSERT INTO V_VAL
	VALUES ("042640b8-f950-411e-b489-0e16f80e0b72",
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("042640b8-f950-411e-b489-0e16f80e0b72",
	'1.0');
INSERT INTO V_PAR
	VALUES ("042640b8-f950-411e-b489-0e16f80e0b72",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"f2b7d8fd-3444-400d-9135-063554da5aec",
	31,
	3);
INSERT INTO V_VAL
	VALUES ("f2b7d8fd-3444-400d-9135-063554da5aec",
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LRL
	VALUES ("f2b7d8fd-3444-400d-9135-063554da5aec",
	'2.0');
INSERT INTO V_PAR
	VALUES ("f2b7d8fd-3444-400d-9135-063554da5aec",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"b7ca9a0f-dc04-46a7-9acb-2f97adfc509e",
	32,
	3);
INSERT INTO V_VAL
	VALUES ("b7ca9a0f-dc04-46a7-9acb-2f97adfc509e",
	0,
	0,
	33,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LIN
	VALUES ("b7ca9a0f-dc04-46a7-9acb-2f97adfc509e",
	'15');
INSERT INTO V_PAR
	VALUES ("b7ca9a0f-dc04-46a7-9acb-2f97adfc509e",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"18b150d3-2a6d-4266-ba14-7df689e6dcd4",
	33,
	3);
INSERT INTO V_VAL
	VALUES ("18b150d3-2a6d-4266-ba14-7df689e6dcd4",
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("18b150d3-2a6d-4266-ba14-7df689e6dcd4",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	34,
	17);
INSERT INTO V_PAR
	VALUES ("18b150d3-2a6d-4266-ba14-7df689e6dcd4",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"6ec85a23-ad96-4cf9-a4de-d26c35160b83",
	34,
	3);
INSERT INTO V_VAL
	VALUES ("6ec85a23-ad96-4cf9-a4de-d26c35160b83",
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e537675c-94cb-4c80-8651-32554995564f");
INSERT INTO V_LEN
	VALUES ("6ec85a23-ad96-4cf9-a4de-d26c35160b83",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	35,
	13);
INSERT INTO V_PAR
	VALUES ("6ec85a23-ad96-4cf9-a4de-d26c35160b83",
	"495fb493-4739-41c7-84e8-5a3667c0bbac",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	35,
	3);
INSERT INTO PE_PE
	VALUES ("9eb52caf-12f9-4561-9e5f-26bc6479dba2",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("9eb52caf-12f9-4561-9e5f-26bc6479dba2",
	"00000000-0000-0000-0000-000000000000",
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::create();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("2a7bfba9-e7f3-4d48-9e1c-d5274daac0c8",
	"9eb52caf-12f9-4561-9e5f-26bc6479dba2");
INSERT INTO ACT_ACT
	VALUES ("2a7bfba9-e7f3-4d48-9e1c-d5274daac0c8",
	'function',
	0,
	"1e84bccf-b27c-46b0-afd2-2a710eb7a36a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Initialize',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1e84bccf-b27c-46b0-afd2-2a710eb7a36a",
	0,
	0,
	0,
	'WorkoutSession',
	'',
	'',
	2,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2a7bfba9-e7f3-4d48-9e1c-d5274daac0c8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2f75a06d-b09c-45b3-9a1b-a84a150e7aee",
	"1e84bccf-b27c-46b0-afd2-2a710eb7a36a",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES ("2f75a06d-b09c-45b3-9a1b-a84a150e7aee",
	"00525632-d22d-499f-a687-1011af2bd989",
	"00000000-0000-0000-0000-000000000000",
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("abab4fba-eacd-4315-9ed6-c661f446cd63",
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("d6a01bcc-6245-4c42-9882-7d744de2929b",
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	'close',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Close this open achievement record by storing the end time, relating this
//   record as a recorded one and unrelating it as the open one.
select one goal related by self->Goal[R14.''is open for''];
select one workoutTimer related by 
  goal->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  self.endTime = workoutTimer.time;
unrelate self from goal across R14.''is open for'';
relate self to goal across R12.''specifies achievement of'';


',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("42a0fc00-fae0-4df0-8a8a-aaca45cacacf",
	"d6a01bcc-6245-4c42-9882-7d744de2929b");
INSERT INTO ACT_ACT
	VALUES ("42a0fc00-fae0-4df0-8a8a-aaca45cacacf",
	'operation',
	0,
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Achievement::close',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("173e91cd-589e-41d5-a139-616fc76a7642",
	1,
	0,
	0,
	'''specifies achievement of''',
	'',
	'',
	8,
	1,
	5,
	62,
	0,
	0,
	8,
	28,
	8,
	32,
	0,
	0,
	0,
	"42a0fc00-fae0-4df0-8a8a-aaca45cacacf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a5cc2a48-eda6-4684-a798-ead0b1a95a5b",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"4ed38814-5f57-4f6c-b701-b2b42868e556",
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES ("a5cc2a48-eda6-4684-a798-ead0b1a95a5b",
	"74ed53c4-c9d0-495a-9555-fbce9aba53c7",
	1,
	'one',
	"5542f830-4933-40a2-8188-7b6ad351c0e7");
INSERT INTO ACT_SR
	VALUES ("a5cc2a48-eda6-4684-a798-ead0b1a95a5b");
INSERT INTO ACT_LNK
	VALUES ("23d236aa-bdce-4a55-a215-540014e7592c",
	'''is open for''',
	"a5cc2a48-eda6-4684-a798-ead0b1a95a5b",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES ("4ed38814-5f57-4f6c-b701-b2b42868e556",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"ea0f3d7f-3ccf-4496-9716-1e57434b9930",
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES ("4ed38814-5f57-4f6c-b701-b2b42868e556",
	"f9cab0bc-2e02-4a53-8aca-ef438ad466ec",
	1,
	'one',
	"72a6986a-ce37-446a-9170-8f753db162a8");
INSERT INTO ACT_SR
	VALUES ("4ed38814-5f57-4f6c-b701-b2b42868e556");
INSERT INTO ACT_LNK
	VALUES ("0a8c8e53-1942-4ec1-a118-af6bd7fecc42",
	'''is currently executing within''',
	"4ed38814-5f57-4f6c-b701-b2b42868e556",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"da458a80-0d03-4e5d-86c7-09fa3549a0a9",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES ("da458a80-0d03-4e5d-86c7-09fa3549a0a9",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES ("ea0f3d7f-3ccf-4496-9716-1e57434b9930",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"b2544100-fbbb-4f21-b14f-8808aa59a506",
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES ("ea0f3d7f-3ccf-4496-9716-1e57434b9930",
	"6f416b46-3f79-46a0-a337-bd767f5a22fe",
	"686c098c-11b4-49d4-a5c2-66f27bcb29a4",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b2544100-fbbb-4f21-b14f-8808aa59a506",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"bb4d596c-0370-4dd6-9368-8e9c5e7f18d7",
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES ("b2544100-fbbb-4f21-b14f-8808aa59a506",
	"4cca8635-4467-4777-98d6-71768c3422ae",
	"74ed53c4-c9d0-495a-9555-fbce9aba53c7",
	'''is open for''',
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES ("bb4d596c-0370-4dd6-9368-8e9c5e7f18d7",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	"00000000-0000-0000-0000-000000000000",
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES ("bb4d596c-0370-4dd6-9368-8e9c5e7f18d7",
	"4cca8635-4467-4777-98d6-71768c3422ae",
	"74ed53c4-c9d0-495a-9555-fbce9aba53c7",
	'''specifies achievement of''',
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES ("5542f830-4933-40a2-8188-7b6ad351c0e7",
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_IRF
	VALUES ("5542f830-4933-40a2-8188-7b6ad351c0e7",
	"4cca8635-4467-4777-98d6-71768c3422ae");
INSERT INTO V_VAL
	VALUES ("72a6986a-ce37-446a-9170-8f753db162a8",
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_IRF
	VALUES ("72a6986a-ce37-446a-9170-8f753db162a8",
	"74ed53c4-c9d0-495a-9555-fbce9aba53c7");
INSERT INTO V_VAL
	VALUES ("1a19d985-0dce-4f9b-93cb-de16bec70d41",
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_IRF
	VALUES ("1a19d985-0dce-4f9b-93cb-de16bec70d41",
	"4cca8635-4467-4777-98d6-71768c3422ae");
INSERT INTO V_VAL
	VALUES ("686c098c-11b4-49d4-a5c2-66f27bcb29a4",
	1,
	0,
	6,
	8,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_AVL
	VALUES ("686c098c-11b4-49d4-a5c2-66f27bcb29a4",
	"1a19d985-0dce-4f9b-93cb-de16bec70d41",
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	"b22a5e03-92f9-4281-b3e9-9d8ef787ee61");
INSERT INTO V_VAL
	VALUES ("042f3f07-1579-401b-9fcc-4d9513fe2835",
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_IRF
	VALUES ("042f3f07-1579-401b-9fcc-4d9513fe2835",
	"f9cab0bc-2e02-4a53-8aca-ef438ad466ec");
INSERT INTO V_VAL
	VALUES ("6f416b46-3f79-46a0-a337-bd767f5a22fe",
	0,
	0,
	6,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"173e91cd-589e-41d5-a139-616fc76a7642");
INSERT INTO V_AVL
	VALUES ("6f416b46-3f79-46a0-a337-bd767f5a22fe",
	"042f3f07-1579-401b-9fcc-4d9513fe2835",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAR
	VALUES ("74ed53c4-c9d0-495a-9555-fbce9aba53c7",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	'goal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("74ed53c4-c9d0-495a-9555-fbce9aba53c7",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("4cca8635-4467-4777-98d6-71768c3422ae",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("4cca8635-4467-4777-98d6-71768c3422ae",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO V_VAR
	VALUES ("f9cab0bc-2e02-4a53-8aca-ef438ad466ec",
	"173e91cd-589e-41d5-a139-616fc76a7642",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("f9cab0bc-2e02-4a53-8aca-ef438ad466ec",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_NBATTR
	VALUES ("137b4b40-f737-4f12-8897-f5e5b87963f0",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_BATTR
	VALUES ("137b4b40-f737-4f12-8897-f5e5b87963f0",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_ATTR
	VALUES ("137b4b40-f737-4f12-8897-f5e5b87963f0",
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	"00000000-0000-0000-0000-000000000000",
	'startTime',
	'Starting time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'startTime',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("b22a5e03-92f9-4281-b3e9-9d8ef787ee61",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_BATTR
	VALUES ("b22a5e03-92f9-4281-b3e9-9d8ef787ee61",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_ATTR
	VALUES ("b22a5e03-92f9-4281-b3e9-9d8ef787ee61",
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	"137b4b40-f737-4f12-8897-f5e5b87963f0",
	'endTime',
	'Ending time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'endTime',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_ID
	VALUES (1,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO O_ID
	VALUES (2,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO PE_PE
	VALUES ("ff85d606-fe7f-44c1-9258-266ca776b55e",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("ff85d606-fe7f-44c1-9258-266ca776b55e",
	'Display',
	6,
	'Display',
	'Represents the display for the device, managing the sequence of screens
and displaying the appropriate values based on the current mode of the 
display.  
This is a singleton instance.
',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("02abe128-46f2-4b09-80ee-33519871d5e8",
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	'goalDispositionIndicator',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	0,
	'// Return the indicator value representing the disposition of 
// the currently executing goal, if one exists.  If there is
// no currently executing goal, return Blank.

// Find the currently executing goal (if one exists) associated 
// with the singleton instance of the workout session.
select any session from instances of WorkoutSession;
select one goal related by session->Goal[R11.''is currently executing''];

// Convert the disposition of the currently executing goal
// (if it exists) to a UI indicator.
indicator = Indicator::Blank;
if ( not empty goal )
  if ( goal.disposition == GoalDisposition::Increase )
    indicator = Indicator::Up;
  elif ( goal.disposition == GoalDisposition::Decrease )
    indicator = Indicator::Down;
  else
    indicator = Indicator::Flat;
  end if;
end if;

return( indicator );',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"02abe128-46f2-4b09-80ee-33519871d5e8");
INSERT INTO ACT_ACT
	VALUES ("60a2e02f-35b8-4ff9-900a-7cac809fb824",
	'class operation',
	0,
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::goalDispositionIndicator',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5be83025-6a52-40a1-a5e2-593ba7314a6c",
	1,
	0,
	0,
	'',
	'',
	'',
	23,
	1,
	8,
	37,
	0,
	0,
	8,
	42,
	8,
	46,
	12,
	13,
	0,
	"60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("06f3a152-45e4-43b0-aadc-92c48cc8f88e",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"d658097d-93c2-4e29-a820-03f7d8dd9091",
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES ("06f3a152-45e4-43b0-aadc-92c48cc8f88e",
	"9331a0dc-f2e3-49c4-8f0b-dc6812d11077",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	7,
	38);
INSERT INTO ACT_SMT
	VALUES ("d658097d-93c2-4e29-a820-03f7d8dd9091",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"c762ebc5-2146-44b2-a5d4-487274d4ccb8",
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES ("d658097d-93c2-4e29-a820-03f7d8dd9091",
	"5aa9fb1d-289a-4d11-b5bf-197e095f8936",
	1,
	'one',
	"94c44eaf-e066-47b6-b50e-2bb191ebdfe4");
INSERT INTO ACT_SR
	VALUES ("d658097d-93c2-4e29-a820-03f7d8dd9091");
INSERT INTO ACT_LNK
	VALUES ("b3bf7921-2e72-4381-89d8-d2e9efdd1467",
	'''is currently executing''',
	"d658097d-93c2-4e29-a820-03f7d8dd9091",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES ("c762ebc5-2146-44b2-a5d4-487274d4ccb8",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"fc6cbd46-e132-4adf-99c6-6baff3ad4231",
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES ("c762ebc5-2146-44b2-a5d4-487274d4ccb8",
	"f98774e2-1ba2-4a88-8605-17c4160d9aef",
	"c81ea8ef-6f11-49da-85c8-06dd916135da",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("fc6cbd46-e132-4adf-99c6-6baff3ad4231",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"59b31c57-01d0-456d-b5e3-6dac27d74142",
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES ("fc6cbd46-e132-4adf-99c6-6baff3ad4231",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46",
	"af1d6a59-f561-4872-984d-044ba20f1cdb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("59b31c57-01d0-456d-b5e3-6dac27d74142",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	"00000000-0000-0000-0000-000000000000",
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES ("59b31c57-01d0-456d-b5e3-6dac27d74142",
	"d2a0c34b-2896-466c-8d86-3d0c57a5aa46");
INSERT INTO V_VAL
	VALUES ("94c44eaf-e066-47b6-b50e-2bb191ebdfe4",
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_IRF
	VALUES ("94c44eaf-e066-47b6-b50e-2bb191ebdfe4",
	"9331a0dc-f2e3-49c4-8f0b-dc6812d11077");
INSERT INTO V_VAL
	VALUES ("c81ea8ef-6f11-49da-85c8-06dd916135da",
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_TVL
	VALUES ("c81ea8ef-6f11-49da-85c8-06dd916135da",
	"d2cb5638-7226-4b94-9065-c789aaf74e0b");
INSERT INTO V_VAL
	VALUES ("f98774e2-1ba2-4a88-8605-17c4160d9aef",
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_LEN
	VALUES ("f98774e2-1ba2-4a88-8605-17c4160d9aef",
	"bfcfb13d-2405-4556-ac08-9dcb68fe93cc",
	12,
	13);
INSERT INTO V_VAL
	VALUES ("e9e56f91-754a-4e74-97dc-786532781fe5",
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_IRF
	VALUES ("e9e56f91-754a-4e74-97dc-786532781fe5",
	"5aa9fb1d-289a-4d11-b5bf-197e095f8936");
INSERT INTO V_VAL
	VALUES ("e7dcf1ce-c8f9-40ae-a55e-5f72633d47a8",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_UNY
	VALUES ("e7dcf1ce-c8f9-40ae-a55e-5f72633d47a8",
	"e9e56f91-754a-4e74-97dc-786532781fe5",
	'empty');
INSERT INTO V_VAL
	VALUES ("af1d6a59-f561-4872-984d-044ba20f1cdb",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_UNY
	VALUES ("af1d6a59-f561-4872-984d-044ba20f1cdb",
	"e7dcf1ce-c8f9-40ae-a55e-5f72633d47a8",
	'not');
INSERT INTO V_VAL
	VALUES ("d2a0c34b-2896-466c-8d86-3d0c57a5aa46",
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c");
INSERT INTO V_TVL
	VALUES ("d2a0c34b-2896-466c-8d86-3d0c57a5aa46",
	"d2cb5638-7226-4b94-9065-c789aaf74e0b");
INSERT INTO V_VAR
	VALUES ("9331a0dc-f2e3-49c4-8f0b-dc6812d11077",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("9331a0dc-f2e3-49c4-8f0b-dc6812d11077",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("5aa9fb1d-289a-4d11-b5bf-197e095f8936",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	'goal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5aa9fb1d-289a-4d11-b5bf-197e095f8936",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("d2cb5638-7226-4b94-9065-c789aaf74e0b",
	"5be83025-6a52-40a1-a5e2-593ba7314a6c",
	'indicator',
	1,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407");
INSERT INTO V_TRN
	VALUES ("d2cb5638-7226-4b94-9065-c789aaf74e0b",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46",
	0,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	16,
	30,
	0,
	"60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9dc9a256-9887-4553-8082-ac5f9e812122",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46",
	"00000000-0000-0000-0000-000000000000",
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES ("9dc9a256-9887-4553-8082-ac5f9e812122",
	"9d4da143-92df-4a73-baa6-1f1216ebedeb",
	"0d5d1578-d2ad-4b0f-8ec2-9f34f709f442",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1da0ff75-0b79-4822-a49f-2674528e4cab",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46",
	"00000000-0000-0000-0000-000000000000",
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES ("1da0ff75-0b79-4822-a49f-2674528e4cab",
	"1def7cee-76c4-48d0-90ef-3462cfba420d",
	"982d4353-8547-4b45-b8d1-9ccc1345d07c",
	"9dc9a256-9887-4553-8082-ac5f9e812122");
INSERT INTO ACT_SMT
	VALUES ("aaffd888-8c23-43ed-8369-68bec42dd13a",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46",
	"00000000-0000-0000-0000-000000000000",
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES ("aaffd888-8c23-43ed-8369-68bec42dd13a",
	"b6486c9a-7853-4b7c-82e9-9474fcadc33d",
	"9dc9a256-9887-4553-8082-ac5f9e812122");
INSERT INTO V_VAL
	VALUES ("c78a8782-3f89-495d-8422-6cf69cd2907f",
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_IRF
	VALUES ("c78a8782-3f89-495d-8422-6cf69cd2907f",
	"5aa9fb1d-289a-4d11-b5bf-197e095f8936");
INSERT INTO V_VAL
	VALUES ("eb9c23f2-438e-48a6-96fb-2947a2b0019b",
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_AVL
	VALUES ("eb9c23f2-438e-48a6-96fb-2947a2b0019b",
	"c78a8782-3f89-495d-8422-6cf69cd2907f",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("0d5d1578-d2ad-4b0f-8ec2-9f34f709f442",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_BIN
	VALUES ("0d5d1578-d2ad-4b0f-8ec2-9f34f709f442",
	"994ccf2a-7b48-4418-bad9-ae2ed0109594",
	"eb9c23f2-438e-48a6-96fb-2947a2b0019b",
	'==');
INSERT INTO V_VAL
	VALUES ("994ccf2a-7b48-4418-bad9-ae2ed0109594",
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_LEN
	VALUES ("994ccf2a-7b48-4418-bad9-ae2ed0109594",
	"65119beb-591b-4c13-bd4b-5e54fe07e151",
	14,
	28);
INSERT INTO V_VAL
	VALUES ("4d24ad95-0e4b-4bbf-8a21-5a8451d1e6eb",
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_IRF
	VALUES ("4d24ad95-0e4b-4bbf-8a21-5a8451d1e6eb",
	"5aa9fb1d-289a-4d11-b5bf-197e095f8936");
INSERT INTO V_VAL
	VALUES ("204b891b-4b3f-4f12-9937-6f2d74fa0cf3",
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_AVL
	VALUES ("204b891b-4b3f-4f12-9937-6f2d74fa0cf3",
	"4d24ad95-0e4b-4bbf-8a21-5a8451d1e6eb",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("982d4353-8547-4b45-b8d1-9ccc1345d07c",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_BIN
	VALUES ("982d4353-8547-4b45-b8d1-9ccc1345d07c",
	"7b964242-d0f4-48d8-b516-82e852301e63",
	"204b891b-4b3f-4f12-9937-6f2d74fa0cf3",
	'==');
INSERT INTO V_VAL
	VALUES ("7b964242-d0f4-48d8-b516-82e852301e63",
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"cb75cc6d-b0bb-4fba-9f26-583d5a0a8b46");
INSERT INTO V_LEN
	VALUES ("7b964242-d0f4-48d8-b516-82e852301e63",
	"0ede2949-8a99-4a0a-8873-c5794ad645c8",
	16,
	30);
INSERT INTO ACT_BLK
	VALUES ("9d4da143-92df-4a73-baa6-1f1216ebedeb",
	0,
	0,
	0,
	'',
	'',
	'',
	15,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	15,
	17,
	0,
	"60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6153c881-e6bd-4c9a-83b6-d7f31b842ebf",
	"9d4da143-92df-4a73-baa6-1f1216ebedeb",
	"00000000-0000-0000-0000-000000000000",
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES ("6153c881-e6bd-4c9a-83b6-d7f31b842ebf",
	"b9b74be0-f24e-4450-9c0f-95bd4d80826a",
	"2f623d81-1f42-4ce5-80a3-3358a72a70a7",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("2f623d81-1f42-4ce5-80a3-3358a72a70a7",
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"9d4da143-92df-4a73-baa6-1f1216ebedeb");
INSERT INTO V_TVL
	VALUES ("2f623d81-1f42-4ce5-80a3-3358a72a70a7",
	"d2cb5638-7226-4b94-9065-c789aaf74e0b");
INSERT INTO V_VAL
	VALUES ("b9b74be0-f24e-4450-9c0f-95bd4d80826a",
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"9d4da143-92df-4a73-baa6-1f1216ebedeb");
INSERT INTO V_LEN
	VALUES ("b9b74be0-f24e-4450-9c0f-95bd4d80826a",
	"23d6047d-33fd-4b4b-b9e9-6115aea3ac0d",
	15,
	17);
INSERT INTO ACT_BLK
	VALUES ("1def7cee-76c4-48d0-90ef-3462cfba420d",
	0,
	0,
	0,
	'',
	'',
	'',
	17,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	17,
	17,
	0,
	"60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3863289c-3f93-4a4f-be60-c26762e437fa",
	"1def7cee-76c4-48d0-90ef-3462cfba420d",
	"00000000-0000-0000-0000-000000000000",
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES ("3863289c-3f93-4a4f-be60-c26762e437fa",
	"956fcd28-f794-4192-87dc-5ccab63a79d7",
	"0411ace7-c16b-42ad-b40f-832d591ceab0",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("0411ace7-c16b-42ad-b40f-832d591ceab0",
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"1def7cee-76c4-48d0-90ef-3462cfba420d");
INSERT INTO V_TVL
	VALUES ("0411ace7-c16b-42ad-b40f-832d591ceab0",
	"d2cb5638-7226-4b94-9065-c789aaf74e0b");
INSERT INTO V_VAL
	VALUES ("956fcd28-f794-4192-87dc-5ccab63a79d7",
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"1def7cee-76c4-48d0-90ef-3462cfba420d");
INSERT INTO V_LEN
	VALUES ("956fcd28-f794-4192-87dc-5ccab63a79d7",
	"a18b7f18-190a-41a6-8d84-5e395a2c3f1b",
	17,
	17);
INSERT INTO ACT_BLK
	VALUES ("b6486c9a-7853-4b7c-82e9-9474fcadc33d",
	0,
	0,
	0,
	'',
	'',
	'',
	19,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	19,
	17,
	0,
	"60a2e02f-35b8-4ff9-900a-7cac809fb824",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("487597ae-631d-4dcf-9ea6-e7bdcd7fc20e",
	"b6486c9a-7853-4b7c-82e9-9474fcadc33d",
	"00000000-0000-0000-0000-000000000000",
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES ("487597ae-631d-4dcf-9ea6-e7bdcd7fc20e",
	"bba98c74-abcb-4ae9-a2e8-330dec582a80",
	"f661ed8b-6192-4f62-86d6-c1fefbe4d5e0",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("f661ed8b-6192-4f62-86d6-c1fefbe4d5e0",
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b6486c9a-7853-4b7c-82e9-9474fcadc33d");
INSERT INTO V_TVL
	VALUES ("f661ed8b-6192-4f62-86d6-c1fefbe4d5e0",
	"d2cb5638-7226-4b94-9065-c789aaf74e0b");
INSERT INTO V_VAL
	VALUES ("bba98c74-abcb-4ae9-a2e8-330dec582a80",
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b6486c9a-7853-4b7c-82e9-9474fcadc33d");
INSERT INTO V_LEN
	VALUES ("bba98c74-abcb-4ae9-a2e8-330dec582a80",
	"b57f0cef-a243-4175-83e7-77765500e5e3",
	19,
	17);
INSERT INTO O_NBATTR
	VALUES ("93d874e0-0f42-4ee2-bc5a-0744b8662ca1",
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_BATTR
	VALUES ("93d874e0-0f42-4ee2-bc5a-0744b8662ca1",
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_ATTR
	VALUES ("93d874e0-0f42-4ee2-bc5a-0744b8662ca1",
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	"00000000-0000-0000-0000-000000000000",
	'current_state',
	'',
	'',
	'current_state',
	0,
	"ba5eda7a-def5-0000-0000-000000000006",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_ID
	VALUES (1,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_ID
	VALUES (2,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO SM_ISM
	VALUES ("b0373a3a-583f-464e-b680-c2b2df9b2294",
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO SM_SM
	VALUES ("b0373a3a-583f-464e-b680-c2b2df9b2294",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_LEVT
	VALUES ("e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES ("75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES ("eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES ("eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("0e60d315-10c7-407c-a59d-c034283b289d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1");
INSERT INTO SM_AH
	VALUES ("0e60d315-10c7-407c-a59d-c034283b289d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("0e60d315-10c7-407c-a59d-c034283b289d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'select one session related by self->WorkoutSession[R7.''indicates current status of''];
distance = session.accumulatedDistance;
if ( distance > 1000.0 )
  send UI::setData(value: distance / 1000.0, unit: Unit::km);
else 
  send UI::setData(value: distance, unit: Unit::meters);
end if;
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES ("4cc981b2-418b-479c-aeda-020409032d25",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"0e60d315-10c7-407c-a59d-c034283b289d");
INSERT INTO ACT_ACT
	VALUES ("4cc981b2-418b-479c-aeda-020409032d25",
	'state',
	0,
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::displayDistance',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	1,
	0,
	0,
	'Display',
	'',
	'',
	8,
	1,
	8,
	35,
	0,
	0,
	1,
	52,
	1,
	55,
	0,
	0,
	0,
	"4cc981b2-418b-479c-aeda-020409032d25",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4f81a232-4d8b-4410-806f-c35d8336ae82",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"0d582a42-55cc-4e4b-8d68-683ee11165a2",
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES ("4f81a232-4d8b-4410-806f-c35d8336ae82",
	"5c93de82-ee00-4464-8896-264b92adfe7e",
	1,
	'one',
	"0ee5a2fe-4193-46f0-b848-957d83427012");
INSERT INTO ACT_SR
	VALUES ("4f81a232-4d8b-4410-806f-c35d8336ae82");
INSERT INTO ACT_LNK
	VALUES ("bcab473e-a952-4062-a927-b21fac57fde5",
	'''indicates current status of''',
	"4f81a232-4d8b-4410-806f-c35d8336ae82",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES ("0d582a42-55cc-4e4b-8d68-683ee11165a2",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"28f6442c-485d-472e-b6d4-1c00574ada72",
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES ("0d582a42-55cc-4e4b-8d68-683ee11165a2",
	"efa176a9-f94f-44b5-925f-158ccb4e21da",
	"edcf908b-d2f3-4488-9ca9-d7376f5eef8c",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("28f6442c-485d-472e-b6d4-1c00574ada72",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"1f2f59fc-1daa-4dfe-b1fe-7d93cf170f54",
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES ("28f6442c-485d-472e-b6d4-1c00574ada72",
	"e20cc213-cffe-4f34-8f09-c481d978de0b",
	"19fa75d9-c656-4aae-b79c-a517a5df1bcf",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("eec268a1-4f2f-49d3-beaf-23c7bdde033d",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES ("eec268a1-4f2f-49d3-beaf-23c7bdde033d",
	"4bf39af6-e768-4870-aacc-85ecc4b170a3",
	"28f6442c-485d-472e-b6d4-1c00574ada72");
INSERT INTO ACT_SMT
	VALUES ("1f2f59fc-1daa-4dfe-b1fe-7d93cf170f54",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	"00000000-0000-0000-0000-000000000000",
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES ("1f2f59fc-1daa-4dfe-b1fe-7d93cf170f54",
	8,
	10,
	8,
	6,
	"00000000-0000-0000-0000-000000000000",
	"29a8a541-95e0-448f-ba04-02664b8a34a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("0ee5a2fe-4193-46f0-b848-957d83427012",
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_IRF
	VALUES ("0ee5a2fe-4193-46f0-b848-957d83427012",
	"2d0888bb-e981-497b-af16-8ee7fc225f13");
INSERT INTO V_VAL
	VALUES ("edcf908b-d2f3-4488-9ca9-d7376f5eef8c",
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_TVL
	VALUES ("edcf908b-d2f3-4488-9ca9-d7376f5eef8c",
	"cd07a155-ec01-4343-acd3-a5fdcf0c2d93");
INSERT INTO V_VAL
	VALUES ("8dd1351c-554d-402e-8d21-8054329ab2ba",
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_IRF
	VALUES ("8dd1351c-554d-402e-8d21-8054329ab2ba",
	"5c93de82-ee00-4464-8896-264b92adfe7e");
INSERT INTO V_VAL
	VALUES ("efa176a9-f94f-44b5-925f-158ccb4e21da",
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_AVL
	VALUES ("efa176a9-f94f-44b5-925f-158ccb4e21da",
	"8dd1351c-554d-402e-8d21-8054329ab2ba",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("24df6913-a5c8-45ad-b280-4f15064f0650",
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_TVL
	VALUES ("24df6913-a5c8-45ad-b280-4f15064f0650",
	"cd07a155-ec01-4343-acd3-a5fdcf0c2d93");
INSERT INTO V_VAL
	VALUES ("19fa75d9-c656-4aae-b79c-a517a5df1bcf",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_BIN
	VALUES ("19fa75d9-c656-4aae-b79c-a517a5df1bcf",
	"8b7c8136-3d01-48f8-8b2f-a9ba43d4bda4",
	"24df6913-a5c8-45ad-b280-4f15064f0650",
	'>');
INSERT INTO V_VAL
	VALUES ("8b7c8136-3d01-48f8-8b2f-a9ba43d4bda4",
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_LRL
	VALUES ("8b7c8136-3d01-48f8-8b2f-a9ba43d4bda4",
	'1000.0');
INSERT INTO V_VAL
	VALUES ("cf617a92-121e-4a70-858f-0da626b9bd9c",
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60");
INSERT INTO V_TRV
	VALUES ("cf617a92-121e-4a70-858f-0da626b9bd9c",
	"02abe128-46f2-4b09-80ee-33519871d5e8",
	"00000000-0000-0000-0000-000000000000",
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES ("cf617a92-121e-4a70-858f-0da626b9bd9c",
	"1f2f59fc-1daa-4dfe-b1fe-7d93cf170f54",
	"00000000-0000-0000-0000-000000000000",
	'indicator',
	"00000000-0000-0000-0000-000000000000",
	8,
	24);
INSERT INTO V_VAR
	VALUES ("5c93de82-ee00-4464-8896-264b92adfe7e",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5c93de82-ee00-4464-8896-264b92adfe7e",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("2d0888bb-e981-497b-af16-8ee7fc225f13",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("2d0888bb-e981-497b-af16-8ee7fc225f13",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO V_VAR
	VALUES ("cd07a155-ec01-4343-acd3-a5fdcf0c2d93",
	"f271ceb5-4f5b-4a29-9e55-085bd5c02a60",
	'distance',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("cd07a155-ec01-4343-acd3-a5fdcf0c2d93",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("e20cc213-cffe-4f34-8f09-c481d978de0b",
	0,
	0,
	0,
	'UI',
	'',
	'',
	4,
	3,
	4,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	4,
	52,
	0,
	"4cc981b2-418b-479c-aeda-020409032d25",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bb5bdc98-572a-4328-9f6b-91d4239bbafc",
	"e20cc213-cffe-4f34-8f09-c481d978de0b",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES ("bb5bdc98-572a-4328-9f6b-91d4239bbafc",
	4,
	12,
	4,
	8,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("ff547321-b5b2-4003-8af0-53f77da3d6fe",
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e20cc213-cffe-4f34-8f09-c481d978de0b");
INSERT INTO V_TVL
	VALUES ("ff547321-b5b2-4003-8af0-53f77da3d6fe",
	"cd07a155-ec01-4343-acd3-a5fdcf0c2d93");
INSERT INTO V_VAL
	VALUES ("3a8372da-ae02-45be-94ca-d19220a1cf2d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e20cc213-cffe-4f34-8f09-c481d978de0b");
INSERT INTO V_BIN
	VALUES ("3a8372da-ae02-45be-94ca-d19220a1cf2d",
	"f97206f7-6c69-45aa-b9cc-fe8fc7cee8de",
	"ff547321-b5b2-4003-8af0-53f77da3d6fe",
	'/');
INSERT INTO V_PAR
	VALUES ("3a8372da-ae02-45be-94ca-d19220a1cf2d",
	"bb5bdc98-572a-4328-9f6b-91d4239bbafc",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"4a41d27a-8229-4217-9fd0-4f0ccabc2810",
	4,
	20);
INSERT INTO V_VAL
	VALUES ("f97206f7-6c69-45aa-b9cc-fe8fc7cee8de",
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e20cc213-cffe-4f34-8f09-c481d978de0b");
INSERT INTO V_LRL
	VALUES ("f97206f7-6c69-45aa-b9cc-fe8fc7cee8de",
	'1000.0');
INSERT INTO V_VAL
	VALUES ("4a41d27a-8229-4217-9fd0-4f0ccabc2810",
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"e20cc213-cffe-4f34-8f09-c481d978de0b");
INSERT INTO V_LEN
	VALUES ("4a41d27a-8229-4217-9fd0-4f0ccabc2810",
	"ca42057e-708e-4242-b608-09a079ac0bf3",
	4,
	52);
INSERT INTO V_PAR
	VALUES ("4a41d27a-8229-4217-9fd0-4f0ccabc2810",
	"bb5bdc98-572a-4328-9f6b-91d4239bbafc",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	46);
INSERT INTO ACT_BLK
	VALUES ("4bf39af6-e768-4870-aacc-85ecc4b170a3",
	0,
	0,
	0,
	'UI',
	'',
	'',
	6,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	6,
	43,
	0,
	"4cc981b2-418b-479c-aeda-020409032d25",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bc819121-4821-413f-9fdf-ddfb37a5b4d7",
	"4bf39af6-e768-4870-aacc-85ecc4b170a3",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES ("bc819121-4821-413f-9fdf-ddfb37a5b4d7",
	6,
	12,
	6,
	8,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("f1820c8d-2373-4e84-832e-afec8705eddd",
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4bf39af6-e768-4870-aacc-85ecc4b170a3");
INSERT INTO V_TVL
	VALUES ("f1820c8d-2373-4e84-832e-afec8705eddd",
	"cd07a155-ec01-4343-acd3-a5fdcf0c2d93");
INSERT INTO V_PAR
	VALUES ("f1820c8d-2373-4e84-832e-afec8705eddd",
	"bc819121-4821-413f-9fdf-ddfb37a5b4d7",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"22fe2407-cda7-4e23-b6c8-66aa25b8c9df",
	6,
	20);
INSERT INTO V_VAL
	VALUES ("22fe2407-cda7-4e23-b6c8-66aa25b8c9df",
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"4bf39af6-e768-4870-aacc-85ecc4b170a3");
INSERT INTO V_LEN
	VALUES ("22fe2407-cda7-4e23-b6c8-66aa25b8c9df",
	"2480d904-80f2-4e5c-aeda-315e77ae2d0f",
	6,
	43);
INSERT INTO V_PAR
	VALUES ("22fe2407-cda7-4e23-b6c8-66aa25b8c9df",
	"bc819121-4821-413f-9fdf-ddfb37a5b4d7",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	6,
	37);
INSERT INTO SM_STATE
	VALUES ("8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("0b75223b-01af-4c69-bc62-85502709802d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8811031f-edc1-48d0-90b7-d9ef7ca022fe");
INSERT INTO SM_AH
	VALUES ("0b75223b-01af-4c69-bc62-85502709802d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("0b75223b-01af-4c69-bc62-85502709802d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES ("3abdc324-0eb1-45da-b969-5fa3ff73ad5b",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"0b75223b-01af-4c69-bc62-85502709802d");
INSERT INTO ACT_ACT
	VALUES ("3abdc324-0eb1-45da-b969-5fa3ff73ad5b",
	'state',
	0,
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::displaySpeed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1dd92195-dd97-41d0-918b-328edb0d0c8c",
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	38,
	0,
	"3abdc324-0eb1-45da-b969-5fa3ff73ad5b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c822ba8f-64dd-46ec-a66d-04fa4e83021f",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	"2f8004c3-f3a7-4d1a-a5b0-a07de871dd03",
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES ("c822ba8f-64dd-46ec-a66d-04fa4e83021f",
	"91f92e5d-21bb-475e-a87c-f7685f8ec2f5",
	1,
	'one',
	"cf50c114-52b3-47a8-82cf-527a0f04ba02");
INSERT INTO ACT_SR
	VALUES ("c822ba8f-64dd-46ec-a66d-04fa4e83021f");
INSERT INTO ACT_LNK
	VALUES ("0c863c1c-8e14-4833-9a76-777ac2265094",
	'''indicates current status of''',
	"c822ba8f-64dd-46ec-a66d-04fa4e83021f",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES ("2f8004c3-f3a7-4d1a-a5b0-a07de871dd03",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	"d82751f1-8b33-48ef-baa5-0b47042c9c81",
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES ("2f8004c3-f3a7-4d1a-a5b0-a07de871dd03",
	"fa903bd5-e566-40cb-b843-43e44325f190",
	"6b6e92ad-17a2-42ac-8859-3379db9f781a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d82751f1-8b33-48ef-baa5-0b47042c9c81",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	"bc2104a6-afc8-495f-a2a0-1135e0f1a9c8",
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES ("d82751f1-8b33-48ef-baa5-0b47042c9c81",
	4,
	10,
	4,
	6,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bc2104a6-afc8-495f-a2a0-1135e0f1a9c8",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES ("bc2104a6-afc8-495f-a2a0-1135e0f1a9c8",
	5,
	10,
	5,
	6,
	"00000000-0000-0000-0000-000000000000",
	"29a8a541-95e0-448f-ba04-02664b8a34a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("cf50c114-52b3-47a8-82cf-527a0f04ba02",
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_IRF
	VALUES ("cf50c114-52b3-47a8-82cf-527a0f04ba02",
	"62656a7a-ba35-426f-9679-7d504eb3558f");
INSERT INTO V_VAL
	VALUES ("6b6e92ad-17a2-42ac-8859-3379db9f781a",
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_TVL
	VALUES ("6b6e92ad-17a2-42ac-8859-3379db9f781a",
	"b6bfed0c-5557-447d-9419-4a15ec1c8fc0");
INSERT INTO V_VAL
	VALUES ("4492504f-8274-4cfc-9c55-f596acee6839",
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_IRF
	VALUES ("4492504f-8274-4cfc-9c55-f596acee6839",
	"91f92e5d-21bb-475e-a87c-f7685f8ec2f5");
INSERT INTO V_VAL
	VALUES ("fa903bd5-e566-40cb-b843-43e44325f190",
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_AVL
	VALUES ("fa903bd5-e566-40cb-b843-43e44325f190",
	"4492504f-8274-4cfc-9c55-f596acee6839",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3");
INSERT INTO V_VAL
	VALUES ("8449ffaa-710b-4186-940b-5b0ac2a6105e",
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_TVL
	VALUES ("8449ffaa-710b-4186-940b-5b0ac2a6105e",
	"b6bfed0c-5557-447d-9419-4a15ec1c8fc0");
INSERT INTO V_PAR
	VALUES ("8449ffaa-710b-4186-940b-5b0ac2a6105e",
	"d82751f1-8b33-48ef-baa5-0b47042c9c81",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"e93c38bf-2fca-4ebb-92da-2cceadff3fee",
	4,
	18);
INSERT INTO V_VAL
	VALUES ("e93c38bf-2fca-4ebb-92da-2cceadff3fee",
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_LEN
	VALUES ("e93c38bf-2fca-4ebb-92da-2cceadff3fee",
	"ad0dca51-be89-4ba8-9be7-cc30caa6a793",
	4,
	38);
INSERT INTO V_PAR
	VALUES ("e93c38bf-2fca-4ebb-92da-2cceadff3fee",
	"d82751f1-8b33-48ef-baa5-0b47042c9c81",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	32);
INSERT INTO V_VAL
	VALUES ("0b42f6eb-f940-418b-bb01-86ff8369a816",
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c");
INSERT INTO V_TRV
	VALUES ("0b42f6eb-f940-418b-bb01-86ff8369a816",
	"02abe128-46f2-4b09-80ee-33519871d5e8",
	"00000000-0000-0000-0000-000000000000",
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES ("0b42f6eb-f940-418b-bb01-86ff8369a816",
	"bc2104a6-afc8-495f-a2a0-1135e0f1a9c8",
	"00000000-0000-0000-0000-000000000000",
	'indicator',
	"00000000-0000-0000-0000-000000000000",
	5,
	24);
INSERT INTO V_VAR
	VALUES ("91f92e5d-21bb-475e-a87c-f7685f8ec2f5",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("91f92e5d-21bb-475e-a87c-f7685f8ec2f5",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("62656a7a-ba35-426f-9679-7d504eb3558f",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("62656a7a-ba35-426f-9679-7d504eb3558f",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO V_VAR
	VALUES ("b6bfed0c-5557-447d-9419-4a15ec1c8fc0",
	"1dd92195-dd97-41d0-918b-328edb0d0c8c",
	'speed',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("b6bfed0c-5557-447d-9419-4a15ec1c8fc0",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_STATE
	VALUES ("7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES ("7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("067f51aa-44eb-429d-a94c-11bccfad4d0c",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab");
INSERT INTO SM_AH
	VALUES ("067f51aa-44eb-429d-a94c-11bccfad4d0c",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("067f51aa-44eb-429d-a94c-11bccfad4d0c",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES ("968312dd-2221-4135-8848-8d1717f6c1c5",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"067f51aa-44eb-429d-a94c-11bccfad4d0c");
INSERT INTO ACT_ACT
	VALUES ("968312dd-2221-4135-8848-8d1717f6c1c5",
	'state',
	0,
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::displayPace',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("725e8fda-0855-4124-8e54-0840bd535b0c",
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	37,
	0,
	"968312dd-2221-4135-8848-8d1717f6c1c5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8c2d81ec-efa2-4656-adf8-9a84edf5bbda",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	"93ff2bad-5f04-4786-9c1b-77128c267e97",
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES ("8c2d81ec-efa2-4656-adf8-9a84edf5bbda",
	"344d7976-031f-4c81-8b71-7484781c4a4e",
	1,
	'one',
	"4e748dad-b8b4-4df0-9e21-aafbb6ede2ab");
INSERT INTO ACT_SR
	VALUES ("8c2d81ec-efa2-4656-adf8-9a84edf5bbda");
INSERT INTO ACT_LNK
	VALUES ("f0852e3b-89fe-47a5-9a39-101a408f2348",
	'''indicates current status of''',
	"8c2d81ec-efa2-4656-adf8-9a84edf5bbda",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES ("93ff2bad-5f04-4786-9c1b-77128c267e97",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	"c0fc0156-f30a-4235-9220-43ac8306f12a",
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES ("93ff2bad-5f04-4786-9c1b-77128c267e97",
	"c6ce6925-0cfe-4705-9869-285b8ed4d036",
	"39e5fec4-dabd-4d28-b231-b63511f7587b",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("c0fc0156-f30a-4235-9220-43ac8306f12a",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	"5b5c11bb-a191-4055-bdde-d85173213cea",
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES ("c0fc0156-f30a-4235-9220-43ac8306f12a",
	4,
	10,
	4,
	6,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5b5c11bb-a191-4055-bdde-d85173213cea",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES ("5b5c11bb-a191-4055-bdde-d85173213cea",
	5,
	10,
	5,
	6,
	"00000000-0000-0000-0000-000000000000",
	"29a8a541-95e0-448f-ba04-02664b8a34a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("4e748dad-b8b4-4df0-9e21-aafbb6ede2ab",
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_IRF
	VALUES ("4e748dad-b8b4-4df0-9e21-aafbb6ede2ab",
	"0064eafc-a420-4877-bdb5-b99fafd98f4c");
INSERT INTO V_VAL
	VALUES ("39e5fec4-dabd-4d28-b231-b63511f7587b",
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_TVL
	VALUES ("39e5fec4-dabd-4d28-b231-b63511f7587b",
	"223d7884-86be-45af-b33c-099e2599ef46");
INSERT INTO V_VAL
	VALUES ("87825389-1903-4157-bd06-b3a3603b40da",
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_IRF
	VALUES ("87825389-1903-4157-bd06-b3a3603b40da",
	"344d7976-031f-4c81-8b71-7484781c4a4e");
INSERT INTO V_VAL
	VALUES ("c6ce6925-0cfe-4705-9869-285b8ed4d036",
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_AVL
	VALUES ("c6ce6925-0cfe-4705-9869-285b8ed4d036",
	"87825389-1903-4157-bd06-b3a3603b40da",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5");
INSERT INTO V_VAL
	VALUES ("2625c70a-b0c9-4524-84b1-52d74fe149e3",
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_TVL
	VALUES ("2625c70a-b0c9-4524-84b1-52d74fe149e3",
	"223d7884-86be-45af-b33c-099e2599ef46");
INSERT INTO V_PAR
	VALUES ("2625c70a-b0c9-4524-84b1-52d74fe149e3",
	"c0fc0156-f30a-4235-9220-43ac8306f12a",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"c63ff488-de89-4f01-859b-cf4f01372ed3",
	4,
	18);
INSERT INTO V_VAL
	VALUES ("c63ff488-de89-4f01-859b-cf4f01372ed3",
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_LEN
	VALUES ("c63ff488-de89-4f01-859b-cf4f01372ed3",
	"da234bff-2f05-4dd4-9ed2-28529c8c4401",
	4,
	37);
INSERT INTO V_PAR
	VALUES ("c63ff488-de89-4f01-859b-cf4f01372ed3",
	"c0fc0156-f30a-4235-9220-43ac8306f12a",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	31);
INSERT INTO V_VAL
	VALUES ("a53e337d-297c-452a-9026-d08581154b3e",
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"725e8fda-0855-4124-8e54-0840bd535b0c");
INSERT INTO V_TRV
	VALUES ("a53e337d-297c-452a-9026-d08581154b3e",
	"02abe128-46f2-4b09-80ee-33519871d5e8",
	"00000000-0000-0000-0000-000000000000",
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES ("a53e337d-297c-452a-9026-d08581154b3e",
	"5b5c11bb-a191-4055-bdde-d85173213cea",
	"00000000-0000-0000-0000-000000000000",
	'indicator',
	"00000000-0000-0000-0000-000000000000",
	5,
	24);
INSERT INTO V_VAR
	VALUES ("344d7976-031f-4c81-8b71-7484781c4a4e",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("344d7976-031f-4c81-8b71-7484781c4a4e",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("0064eafc-a420-4877-bdb5-b99fafd98f4c",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("0064eafc-a420-4877-bdb5-b99fafd98f4c",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO V_VAR
	VALUES ("223d7884-86be-45af-b33c-099e2599ef46",
	"725e8fda-0855-4124-8e54-0840bd535b0c",
	'pace',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("223d7884-86be-45af-b33c-099e2599ef46",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_STATE
	VALUES ("f5219401-18d2-495c-9ce9-70457640cb18",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES ("f5219401-18d2-495c-9ce9-70457640cb18",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("f5219401-18d2-495c-9ce9-70457640cb18",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("4f3a644c-7cfd-4323-b63f-0aa8138e8df9",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f5219401-18d2-495c-9ce9-70457640cb18");
INSERT INTO SM_AH
	VALUES ("4f3a644c-7cfd-4323-b63f-0aa8138e8df9",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("4f3a644c-7cfd-4323-b63f-0aa8138e8df9",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES ("8acb00b0-1025-47d3-99f0-c96ef9cd629b",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"4f3a644c-7cfd-4323-b63f-0aa8138e8df9");
INSERT INTO ACT_ACT
	VALUES ("8acb00b0-1025-47d3-99f0-c96ef9cd629b",
	'state',
	0,
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::displayHeartRate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	42,
	0,
	"8acb00b0-1025-47d3-99f0-c96ef9cd629b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("52096b50-2258-466b-b2fd-d83e62d7c464",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	"1a26e7c2-a1c1-4bbc-86ba-29cc8ff5a056",
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES ("52096b50-2258-466b-b2fd-d83e62d7c464",
	"acff56a5-784e-48a8-91ea-712faf7f2317",
	1,
	'one',
	"db4f4709-16d8-4c76-9f16-d424028ba216");
INSERT INTO ACT_SR
	VALUES ("52096b50-2258-466b-b2fd-d83e62d7c464");
INSERT INTO ACT_LNK
	VALUES ("6cf952db-449b-4b35-b0d3-02d9ba2a366f",
	'''indicates current status of''',
	"52096b50-2258-466b-b2fd-d83e62d7c464",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES ("1a26e7c2-a1c1-4bbc-86ba-29cc8ff5a056",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	"01e8f14a-2e69-4faa-986f-a8df623c4370",
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES ("1a26e7c2-a1c1-4bbc-86ba-29cc8ff5a056",
	"ea723b2a-6448-4e18-80b0-7487d14f4ea3",
	"19b52b32-d356-47e0-ace2-f33b6b2f3715",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("01e8f14a-2e69-4faa-986f-a8df623c4370",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	"2263415d-2472-4f8c-80c0-c2774ed2ea3e",
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES ("01e8f14a-2e69-4faa-986f-a8df623c4370",
	4,
	10,
	4,
	6,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2263415d-2472-4f8c-80c0-c2774ed2ea3e",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES ("2263415d-2472-4f8c-80c0-c2774ed2ea3e",
	5,
	10,
	5,
	6,
	"00000000-0000-0000-0000-000000000000",
	"29a8a541-95e0-448f-ba04-02664b8a34a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("db4f4709-16d8-4c76-9f16-d424028ba216",
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_IRF
	VALUES ("db4f4709-16d8-4c76-9f16-d424028ba216",
	"2ae940d6-56bd-448b-80b9-bacdd6d9e81a");
INSERT INTO V_VAL
	VALUES ("19b52b32-d356-47e0-ace2-f33b6b2f3715",
	1,
	1,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_TVL
	VALUES ("19b52b32-d356-47e0-ace2-f33b6b2f3715",
	"4e1b4d58-966d-490a-825a-d01257923b26");
INSERT INTO V_VAL
	VALUES ("4b7f597f-e116-4b64-bf53-6a09570d2377",
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_IRF
	VALUES ("4b7f597f-e116-4b64-bf53-6a09570d2377",
	"acff56a5-784e-48a8-91ea-712faf7f2317");
INSERT INTO V_VAL
	VALUES ("ea723b2a-6448-4e18-80b0-7487d14f4ea3",
	0,
	0,
	3,
	21,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_AVL
	VALUES ("ea723b2a-6448-4e18-80b0-7487d14f4ea3",
	"4b7f597f-e116-4b64-bf53-6a09570d2377",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a");
INSERT INTO V_VAL
	VALUES ("2914cc6d-62aa-4946-a934-b1428b4d4937",
	0,
	0,
	4,
	25,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_TVL
	VALUES ("2914cc6d-62aa-4946-a934-b1428b4d4937",
	"4e1b4d58-966d-490a-825a-d01257923b26");
INSERT INTO V_PAR
	VALUES ("2914cc6d-62aa-4946-a934-b1428b4d4937",
	"01e8f14a-2e69-4faa-986f-a8df623c4370",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"e5d6c079-7ae1-45a2-b796-13a2d0e7c768",
	4,
	18);
INSERT INTO V_VAL
	VALUES ("e5d6c079-7ae1-45a2-b796-13a2d0e7c768",
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_LEN
	VALUES ("e5d6c079-7ae1-45a2-b796-13a2d0e7c768",
	"4d653ad9-fc24-4028-8aee-4eaf58f18fef",
	4,
	42);
INSERT INTO V_PAR
	VALUES ("e5d6c079-7ae1-45a2-b796-13a2d0e7c768",
	"01e8f14a-2e69-4faa-986f-a8df623c4370",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	36);
INSERT INTO V_VAL
	VALUES ("3ecd3677-029c-4062-bf04-90f9bcd8be0e",
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39");
INSERT INTO V_TRV
	VALUES ("3ecd3677-029c-4062-bf04-90f9bcd8be0e",
	"02abe128-46f2-4b09-80ee-33519871d5e8",
	"00000000-0000-0000-0000-000000000000",
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES ("3ecd3677-029c-4062-bf04-90f9bcd8be0e",
	"2263415d-2472-4f8c-80c0-c2774ed2ea3e",
	"00000000-0000-0000-0000-000000000000",
	'indicator',
	"00000000-0000-0000-0000-000000000000",
	5,
	24);
INSERT INTO V_VAR
	VALUES ("acff56a5-784e-48a8-91ea-712faf7f2317",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("acff56a5-784e-48a8-91ea-712faf7f2317",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("2ae940d6-56bd-448b-80b9-bacdd6d9e81a",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("2ae940d6-56bd-448b-80b9-bacdd6d9e81a",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO V_VAR
	VALUES ("4e1b4d58-966d-490a-825a-d01257923b26",
	"e0065597-12d3-4ccf-8cbf-bbaf2c82ab39",
	'heartRate',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("4e1b4d58-966d-490a-825a-d01257923b26",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_STATE
	VALUES ("cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000",
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES ("cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("f41fe2db-1e68-42a0-818b-3a21ef112ed4",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"cd5ef07e-2c15-4ec3-ae7d-82788b39376f");
INSERT INTO SM_AH
	VALUES ("f41fe2db-1e68-42a0-818b-3a21ef112ed4",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("f41fe2db-1e68-42a0-818b-3a21ef112ed4",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES ("1b43ba3f-f8c5-48f6-b730-ee172ae9492e",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f41fe2db-1e68-42a0-818b-3a21ef112ed4");
INSERT INTO ACT_ACT
	VALUES ("1b43ba3f-f8c5-48f6-b730-ee172ae9492e",
	'state',
	0,
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display::displayLapCount',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cc8da0da-fa4f-4293-b4de-004f94580c70",
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	3,
	46,
	3,
	49,
	4,
	55,
	0,
	"1b43ba3f-f8c5-48f6-b730-ee172ae9492e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("d75fb492-2958-47cd-b0a6-119ab2d040b8",
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	"7f30688d-5d9f-4829-bbbd-5d505223b9d4",
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES ("d75fb492-2958-47cd-b0a6-119ab2d040b8",
	"f4084e98-a6ad-4967-9e29-20eddbc0c025",
	1,
	'many',
	"ef3a9b1e-6bd4-465b-9c91-dd45e14a65c0");
INSERT INTO ACT_SR
	VALUES ("d75fb492-2958-47cd-b0a6-119ab2d040b8");
INSERT INTO ACT_LNK
	VALUES ("6a978c38-1aed-43ca-8653-7068a655beff",
	'''indicates current status of''',
	"d75fb492-2958-47cd-b0a6-119ab2d040b8",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"0e3d551f-a7ea-4052-91d9-acd366027feb",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES ("0e3d551f-a7ea-4052-91d9-acd366027feb",
	'''captures path in''',
	"00000000-0000-0000-0000-000000000000",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"3d8fecbb-daf2-4d14-a3ff-d41bc1e2315e",
	2,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES ("3d8fecbb-daf2-4d14-a3ff-d41bc1e2315e",
	'''has laps defined by''',
	"00000000-0000-0000-0000-000000000000",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"00000000-0000-0000-0000-000000000000",
	3,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c",
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES ("7f30688d-5d9f-4829-bbbd-5d505223b9d4",
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	"9d3ff235-1b62-485e-b135-5ca6c63ccf5b",
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES ("7f30688d-5d9f-4829-bbbd-5d505223b9d4",
	4,
	10,
	4,
	6,
	"00000000-0000-0000-0000-000000000000",
	"3e83fa1d-4338-4f52-8ad7-f7e957d8ed18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9d3ff235-1b62-485e-b135-5ca6c63ccf5b",
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES ("9d3ff235-1b62-485e-b135-5ca6c63ccf5b",
	5,
	10,
	5,
	6,
	"00000000-0000-0000-0000-000000000000",
	"29a8a541-95e0-448f-ba04-02664b8a34a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("ef3a9b1e-6bd4-465b-9c91-dd45e14a65c0",
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"cc8da0da-fa4f-4293-b4de-004f94580c70");
INSERT INTO V_IRF
	VALUES ("ef3a9b1e-6bd4-465b-9c91-dd45e14a65c0",
	"9310837e-51af-4b1a-ad44-10bb2b903ffe");
INSERT INTO V_VAL
	VALUES ("01b24fa9-2f4f-42be-afe9-7d7c23d94411",
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000009",
	"cc8da0da-fa4f-4293-b4de-004f94580c70");
INSERT INTO V_ISR
	VALUES ("01b24fa9-2f4f-42be-afe9-7d7c23d94411",
	"f4084e98-a6ad-4967-9e29-20eddbc0c025");
INSERT INTO V_VAL
	VALUES ("5f6af114-2f86-487c-815f-8d0ca8689ece",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"cc8da0da-fa4f-4293-b4de-004f94580c70");
INSERT INTO V_UNY
	VALUES ("5f6af114-2f86-487c-815f-8d0ca8689ece",
	"01b24fa9-2f4f-42be-afe9-7d7c23d94411",
	'cardinality');
INSERT INTO V_PAR
	VALUES ("5f6af114-2f86-487c-815f-8d0ca8689ece",
	"7f30688d-5d9f-4829-bbbd-5d505223b9d4",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"9dc5105f-3887-48c6-a2ec-4b1a20b0f5a8",
	4,
	18);
INSERT INTO V_VAL
	VALUES ("9dc5105f-3887-48c6-a2ec-4b1a20b0f5a8",
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"cc8da0da-fa4f-4293-b4de-004f94580c70");
INSERT INTO V_LEN
	VALUES ("9dc5105f-3887-48c6-a2ec-4b1a20b0f5a8",
	"65b05d85-4965-43a9-aab2-ec8bbcbbbac3",
	4,
	55);
INSERT INTO V_PAR
	VALUES ("9dc5105f-3887-48c6-a2ec-4b1a20b0f5a8",
	"7f30688d-5d9f-4829-bbbd-5d505223b9d4",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	49);
INSERT INTO V_VAL
	VALUES ("306512f7-3436-4e90-8299-0257744ef44c",
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"cc8da0da-fa4f-4293-b4de-004f94580c70");
INSERT INTO V_TRV
	VALUES ("306512f7-3436-4e90-8299-0257744ef44c",
	"02abe128-46f2-4b09-80ee-33519871d5e8",
	"00000000-0000-0000-0000-000000000000",
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES ("306512f7-3436-4e90-8299-0257744ef44c",
	"9d3ff235-1b62-485e-b135-5ca6c63ccf5b",
	"00000000-0000-0000-0000-000000000000",
	'indicator',
	"00000000-0000-0000-0000-000000000000",
	5,
	24);
INSERT INTO V_VAR
	VALUES ("f4084e98-a6ad-4967-9e29-20eddbc0c025",
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	'lapMarkers',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("f4084e98-a6ad-4967-9e29-20eddbc0c025",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO V_VAR
	VALUES ("9310837e-51af-4b1a-ad44-10bb2b903ffe",
	"cc8da0da-fa4f-4293-b4de-004f94580c70",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("9310837e-51af-4b1a-ad44-10bb2b903ffe",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO SM_NSTXN
	VALUES ("2a6236e5-e9b1-4e3b-ac1d-1f1dcba02e66",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("da0a93c5-ee35-4bcc-824e-46805dddc186",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"2a6236e5-e9b1-4e3b-ac1d-1f1dcba02e66");
INSERT INTO SM_AH
	VALUES ("da0a93c5-ee35-4bcc-824e-46805dddc186",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("da0a93c5-ee35-4bcc-824e-46805dddc186",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("c3a5eccc-c473-4694-8d3b-0f74d3b6d451",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"da0a93c5-ee35-4bcc-824e-46805dddc186");
INSERT INTO ACT_ACT
	VALUES ("c3a5eccc-c473-4694-8d3b-0f74d3b6d451",
	'transition',
	0,
	"b60446f3-bdfa-4ede-be99-ebe574651d1c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display1: modeChange',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b60446f3-bdfa-4ede-be99-ebe574651d1c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c3a5eccc-c473-4694-8d3b-0f74d3b6d451",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("2a6236e5-e9b1-4e3b-ac1d-1f1dcba02e66",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("3b2e53d9-6c3f-41f5-a192-6ef51dfd7689",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("8be1cc77-d3df-441d-94f4-65cbc0667394",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"3b2e53d9-6c3f-41f5-a192-6ef51dfd7689");
INSERT INTO SM_AH
	VALUES ("8be1cc77-d3df-441d-94f4-65cbc0667394",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("8be1cc77-d3df-441d-94f4-65cbc0667394",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("3ab65a5e-bd1d-4e9f-bc09-d894d83db84d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8be1cc77-d3df-441d-94f4-65cbc0667394");
INSERT INTO ACT_ACT
	VALUES ("3ab65a5e-bd1d-4e9f-bc09-d894d83db84d",
	'transition',
	0,
	"e5877370-0faa-4095-8a26-7de09e9da103",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display1: modeChange',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e5877370-0faa-4095-8a26-7de09e9da103",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3ab65a5e-bd1d-4e9f-bc09-d894d83db84d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("3b2e53d9-6c3f-41f5-a192-6ef51dfd7689",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("318a76a0-5ae5-4dd9-86b4-066f775c720d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a5bcea77-0ab9-4d62-b1a5-ebbb10eb2168",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"318a76a0-5ae5-4dd9-86b4-066f775c720d");
INSERT INTO SM_AH
	VALUES ("a5bcea77-0ab9-4d62-b1a5-ebbb10eb2168",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("a5bcea77-0ab9-4d62-b1a5-ebbb10eb2168",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("ca19eac9-46ad-4847-bc26-ca77b572b9b0",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"a5bcea77-0ab9-4d62-b1a5-ebbb10eb2168");
INSERT INTO ACT_ACT
	VALUES ("ca19eac9-46ad-4847-bc26-ca77b572b9b0",
	'transition',
	0,
	"80da9e63-3771-41c8-8190-86542f72a91b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display1: modeChange',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("80da9e63-3771-41c8-8190-86542f72a91b",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ca19eac9-46ad-4847-bc26-ca77b572b9b0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("318a76a0-5ae5-4dd9-86b4-066f775c720d",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f5219401-18d2-495c-9ce9-70457640cb18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("bcfbf101-1790-4717-b13e-026689d20e6a",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f5219401-18d2-495c-9ce9-70457640cb18",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("773fd4ed-ec6a-49d3-bdc0-78810efc9be2",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"bcfbf101-1790-4717-b13e-026689d20e6a");
INSERT INTO SM_AH
	VALUES ("773fd4ed-ec6a-49d3-bdc0-78810efc9be2",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("773fd4ed-ec6a-49d3-bdc0-78810efc9be2",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("3046bde1-a4f0-4e89-a864-b1dae2bc86c7",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"773fd4ed-ec6a-49d3-bdc0-78810efc9be2");
INSERT INTO ACT_ACT
	VALUES ("3046bde1-a4f0-4e89-a864-b1dae2bc86c7",
	'transition',
	0,
	"59f9bf57-e9ee-4444-99a7-ff5b6175f3c7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display1: modeChange',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("59f9bf57-e9ee-4444-99a7-ff5b6175f3c7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3046bde1-a4f0-4e89-a864-b1dae2bc86c7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("bcfbf101-1790-4717-b13e-026689d20e6a",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("b0098b77-5ebe-46b5-981f-f7094f6462d7",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("50c05e80-d7ff-4b76-8cae-fbce7e346b25",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"b0098b77-5ebe-46b5-981f-f7094f6462d7");
INSERT INTO SM_AH
	VALUES ("50c05e80-d7ff-4b76-8cae-fbce7e346b25",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("50c05e80-d7ff-4b76-8cae-fbce7e346b25",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("381342bf-5cb3-4627-9466-017c2e9e17fb",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"50c05e80-d7ff-4b76-8cae-fbce7e346b25");
INSERT INTO ACT_ACT
	VALUES ("381342bf-5cb3-4627-9466-017c2e9e17fb",
	'transition',
	0,
	"a0c57913-f110-4ad0-8c62-408ecbfc2a4a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display2: refresh',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a0c57913-f110-4ad0-8c62-408ecbfc2a4a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"381342bf-5cb3-4627-9466-017c2e9e17fb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("b0098b77-5ebe-46b5-981f-f7094f6462d7",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("c6e20b8e-e5a6-4246-b359-bce15f805b8a",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("8b898077-f0de-41dc-9eee-e3607b7d3114",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"c6e20b8e-e5a6-4246-b359-bce15f805b8a");
INSERT INTO SM_AH
	VALUES ("8b898077-f0de-41dc-9eee-e3607b7d3114",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("8b898077-f0de-41dc-9eee-e3607b7d3114",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("e3dd0cdb-d5ae-4fea-9581-f10046d857cd",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8b898077-f0de-41dc-9eee-e3607b7d3114");
INSERT INTO ACT_ACT
	VALUES ("e3dd0cdb-d5ae-4fea-9581-f10046d857cd",
	'transition',
	0,
	"e25db543-7dc7-4331-aca7-6bd349a5cdce",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display2: refresh',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e25db543-7dc7-4331-aca7-6bd349a5cdce",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e3dd0cdb-d5ae-4fea-9581-f10046d857cd",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("c6e20b8e-e5a6-4246-b359-bce15f805b8a",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"8811031f-edc1-48d0-90b7-d9ef7ca022fe",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("6d68bda1-0e85-41af-b574-c31c41d8c852",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f5219401-18d2-495c-9ce9-70457640cb18",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("f4caabe9-69cc-4a51-832f-501833f6cadd",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"6d68bda1-0e85-41af-b574-c31c41d8c852");
INSERT INTO SM_AH
	VALUES ("f4caabe9-69cc-4a51-832f-501833f6cadd",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("f4caabe9-69cc-4a51-832f-501833f6cadd",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("8787c101-9dad-45c8-b045-9ecd848b8208",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f4caabe9-69cc-4a51-832f-501833f6cadd");
INSERT INTO ACT_ACT
	VALUES ("8787c101-9dad-45c8-b045-9ecd848b8208",
	'transition',
	0,
	"e9772658-8835-4284-aea9-d9a7a2ccdaaa",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display2: refresh',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e9772658-8835-4284-aea9-d9a7a2ccdaaa",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8787c101-9dad-45c8-b045-9ecd848b8208",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("6d68bda1-0e85-41af-b574-c31c41d8c852",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"f5219401-18d2-495c-9ce9-70457640cb18",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("dcf72713-72c2-454f-8862-8f0f2c522540",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("361a4efe-d85d-4910-b179-6eacae057639",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"dcf72713-72c2-454f-8862-8f0f2c522540");
INSERT INTO SM_AH
	VALUES ("361a4efe-d85d-4910-b179-6eacae057639",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("361a4efe-d85d-4910-b179-6eacae057639",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("683d5991-19e9-492b-b5af-16810ae28ce8",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"361a4efe-d85d-4910-b179-6eacae057639");
INSERT INTO ACT_ACT
	VALUES ("683d5991-19e9-492b-b5af-16810ae28ce8",
	'transition',
	0,
	"8c9d48e3-1e5c-4396-b91d-bfdc23e65f81",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display2: refresh',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8c9d48e3-1e5c-4396-b91d-bfdc23e65f81",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"683d5991-19e9-492b-b5af-16810ae28ce8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("dcf72713-72c2-454f-8862-8f0f2c522540",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("20d609ee-73fb-40fd-ae7a-b6376bc08747",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("aae41af3-1eba-4dfc-8df3-bb6b4eced4a1",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"20d609ee-73fb-40fd-ae7a-b6376bc08747");
INSERT INTO SM_AH
	VALUES ("aae41af3-1eba-4dfc-8df3-bb6b4eced4a1",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("aae41af3-1eba-4dfc-8df3-bb6b4eced4a1",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("55081313-b9c3-441f-9ff7-fbcfca790d4f",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"aae41af3-1eba-4dfc-8df3-bb6b4eced4a1");
INSERT INTO ACT_ACT
	VALUES ("55081313-b9c3-441f-9ff7-fbcfca790d4f",
	'transition',
	0,
	"b5825d1d-a6f6-4e76-8ed5-dc5fad96bc9f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display2: refresh',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b5825d1d-a6f6-4e76-8ed5-dc5fad96bc9f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"55081313-b9c3-441f-9ff7-fbcfca790d4f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("20d609ee-73fb-40fd-ae7a-b6376bc08747",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"7fe3df32-3e2b-47c4-bd6d-46275bd8b2ab",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("c0101d68-54fb-4810-b02d-15e544964980",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"cd5ef07e-2c15-4ec3-ae7d-82788b39376f",
	"e6b5903f-ae36-4be2-8e42-5b78a7e1fbaf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("36f262ab-7a53-4da8-aea3-0c18503ba323",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"c0101d68-54fb-4810-b02d-15e544964980");
INSERT INTO SM_AH
	VALUES ("36f262ab-7a53-4da8-aea3-0c18503ba323",
	"b0373a3a-583f-464e-b680-c2b2df9b2294");
INSERT INTO SM_ACT
	VALUES ("36f262ab-7a53-4da8-aea3-0c18503ba323",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("8fe1bee0-328e-447a-a84e-691360e4b0de",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"36f262ab-7a53-4da8-aea3-0c18503ba323");
INSERT INTO ACT_ACT
	VALUES ("8fe1bee0-328e-447a-a84e-691360e4b0de",
	'transition',
	0,
	"a2286745-ce0e-49b1-b4c0-6935f97c2f9b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Display1: modeChange',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a2286745-ce0e-49b1-b4c0-6935f97c2f9b",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8fe1bee0-328e-447a-a84e-691360e4b0de",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("c0101d68-54fb-4810-b02d-15e544964980",
	"b0373a3a-583f-464e-b680-c2b2df9b2294",
	"eeb9d66f-5c29-4051-8ae5-c6ad99beb2b1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("472a759d-5701-4af4-9f68-7813a11ee4e7",
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("b104ebc0-aeee-4076-a86c-f2eeea09bf72",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	'create',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'// Create and activate an instance of a goal specified by
//   the goal specification, if it exists, identified by 
//   the incoming parameter.

// Find the goal specification for this goal, then
//   create and relate this goal to the specification
//   and to the singleton workout session.
select any goalSpec from instances of GoalSpec 
  where ( selected.sequenceNumber == param.sequenceNumber );
if ( not empty goalSpec )
  create object instance goal of Goal;
  relate goal to goalSpec across R9.''specified by'';
  select any session from instances of WorkoutSession;  // WorkoutSession is a singleton
  relate goal to session across R11.''is currently executing within'';

  // Initialize this goal.
  goal.calculateStart();
  goal.disposition = GoalDisposition::Increase;

  // Start a timer that periodically causes evaluation of goal achievement.
  create event instance evaluateEvent of Goal2:Evaluate to goal;
  goal.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );
end if;

',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TPARM
	VALUES ("a723b6d4-0527-469e-9a1f-efc495841e79",
	"b104ebc0-aeee-4076-a86c-f2eeea09bf72",
	'sequenceNumber',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES ("905ab199-52c4-4f3b-9b00-b820b7c9fd47",
	"b104ebc0-aeee-4076-a86c-f2eeea09bf72");
INSERT INTO ACT_ACT
	VALUES ("905ab199-52c4-4f3b-9b00-b820b7c9fd47",
	'class operation',
	0,
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::create',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c0cb29d8-3170-48b5-858f-bafcc37fefd8",
	1,
	0,
	1,
	'',
	'',
	'',
	10,
	1,
	8,
	39,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"905ab199-52c4-4f3b-9b00-b820b7c9fd47",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("561d9e03-bff4-4f72-9712-348f6e997fa4",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8",
	"851e8152-a7cd-424d-b870-ccbb4d5108b3",
	8,
	1,
	'Goal::create line: 8');
INSERT INTO ACT_FIW
	VALUES ("561d9e03-bff4-4f72-9712-348f6e997fa4",
	"14c7adf4-4767-44ad-bde0-bd0d1a5ce2d9",
	1,
	'any',
	"b6e13087-3b57-46b4-a6f4-80f94fb041ae",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	8,
	39);
INSERT INTO ACT_SMT
	VALUES ("851e8152-a7cd-424d-b870-ccbb4d5108b3",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8",
	"00000000-0000-0000-0000-000000000000",
	10,
	1,
	'Goal::create line: 10');
INSERT INTO ACT_IF
	VALUES ("851e8152-a7cd-424d-b870-ccbb4d5108b3",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"e1be08a9-7847-4f24-ba68-259c77364e2d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("676e097e-80c8-4363-a5a7-f144dcc29a45",
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_SLR
	VALUES ("676e097e-80c8-4363-a5a7-f144dcc29a45",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("6b8645a4-53fb-4973-8cdb-b7e2b911d18d",
	0,
	0,
	9,
	20,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_AVL
	VALUES ("6b8645a4-53fb-4973-8cdb-b7e2b911d18d",
	"676e097e-80c8-4363-a5a7-f144dcc29a45",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d");
INSERT INTO V_VAL
	VALUES ("b6e13087-3b57-46b4-a6f4-80f94fb041ae",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_BIN
	VALUES ("b6e13087-3b57-46b4-a6f4-80f94fb041ae",
	"f0b2b021-d553-4375-9837-b0b6a4fa077d",
	"6b8645a4-53fb-4973-8cdb-b7e2b911d18d",
	'==');
INSERT INTO V_VAL
	VALUES ("f0b2b021-d553-4375-9837-b0b6a4fa077d",
	0,
	0,
	9,
	44,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_PVL
	VALUES ("f0b2b021-d553-4375-9837-b0b6a4fa077d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"a723b6d4-0527-469e-9a1f-efc495841e79",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("9ab72b67-c293-4014-8f45-46a127754d45",
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_IRF
	VALUES ("9ab72b67-c293-4014-8f45-46a127754d45",
	"14c7adf4-4767-44ad-bde0-bd0d1a5ce2d9");
INSERT INTO V_VAL
	VALUES ("2d2da6e7-98d9-4afa-9726-cd88dca54393",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_UNY
	VALUES ("2d2da6e7-98d9-4afa-9726-cd88dca54393",
	"9ab72b67-c293-4014-8f45-46a127754d45",
	'empty');
INSERT INTO V_VAL
	VALUES ("e1be08a9-7847-4f24-ba68-259c77364e2d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8");
INSERT INTO V_UNY
	VALUES ("e1be08a9-7847-4f24-ba68-259c77364e2d",
	"2d2da6e7-98d9-4afa-9726-cd88dca54393",
	'not');
INSERT INTO V_VAR
	VALUES ("14c7adf4-4767-44ad-bde0-bd0d1a5ce2d9",
	"c0cb29d8-3170-48b5-858f-bafcc37fefd8",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("14c7adf4-4767-44ad-bde0-bd0d1a5ce2d9",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO ACT_BLK
	VALUES ("11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	1,
	0,
	0,
	'TIM',
	'',
	'',
	22,
	3,
	22,
	26,
	0,
	0,
	14,
	33,
	14,
	37,
	18,
	22,
	0,
	"905ab199-52c4-4f3b-9b00-b820b7c9fd47",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("33a13c99-9a16-4687-97f1-b6a3931bcf3b",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"f30d3b7e-60ff-439d-89c7-36ec9f174190",
	11,
	3,
	'Goal::create line: 11');
INSERT INTO ACT_CR
	VALUES ("33a13c99-9a16-4687-97f1-b6a3931bcf3b",
	"7077cade-f220-4d7c-865f-a9458b522d8b",
	1,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	11,
	34);
INSERT INTO ACT_SMT
	VALUES ("f30d3b7e-60ff-439d-89c7-36ec9f174190",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"f34d3681-956c-4b44-aa6d-8e275c7adc13",
	12,
	3,
	'Goal::create line: 12');
INSERT INTO ACT_REL
	VALUES ("f30d3b7e-60ff-439d-89c7-36ec9f174190",
	"7077cade-f220-4d7c-865f-a9458b522d8b",
	"14c7adf4-4767-44ad-bde0-bd0d1a5ce2d9",
	'''specified by''',
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES ("f34d3681-956c-4b44-aa6d-8e275c7adc13",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"d30caa38-6579-4333-805f-82bb85f5ac48",
	13,
	3,
	'Goal::create line: 13');
INSERT INTO ACT_FIO
	VALUES ("f34d3681-956c-4b44-aa6d-8e275c7adc13",
	"2077b2fc-fa44-4798-b6f5-bca1359f198b",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	13,
	40);
INSERT INTO ACT_SMT
	VALUES ("d30caa38-6579-4333-805f-82bb85f5ac48",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"ddfdb1ba-55d8-4c8d-b7a9-dcfc91879955",
	14,
	3,
	'Goal::create line: 14');
INSERT INTO ACT_REL
	VALUES ("d30caa38-6579-4333-805f-82bb85f5ac48",
	"7077cade-f220-4d7c-865f-a9458b522d8b",
	"2077b2fc-fa44-4798-b6f5-bca1359f198b",
	'''is currently executing within''',
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES ("ddfdb1ba-55d8-4c8d-b7a9-dcfc91879955",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"98831bd8-3b88-483a-a5bf-594eabeebece",
	17,
	3,
	'Goal::create line: 17');
INSERT INTO ACT_TFM
	VALUES ("ddfdb1ba-55d8-4c8d-b7a9-dcfc91879955",
	"feeb244f-368a-41c4-a410-aaabac80d5c2",
	"7077cade-f220-4d7c-865f-a9458b522d8b",
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("98831bd8-3b88-483a-a5bf-594eabeebece",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"202d7770-8cad-430a-b18f-3cd2db5ae73a",
	18,
	3,
	'Goal::create line: 18');
INSERT INTO ACT_AI
	VALUES ("98831bd8-3b88-483a-a5bf-594eabeebece",
	"07a919cd-917d-4156-be4c-48faeff92266",
	"f3e89c8a-f498-433d-afa2-9c3ae845b3a9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("202d7770-8cad-430a-b18f-3cd2db5ae73a",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"bfb4cf34-c884-4008-bec3-a6f52c6dfe00",
	21,
	3,
	'Goal::create line: 21');
INSERT INTO E_ESS
	VALUES ("202d7770-8cad-430a-b18f-3cd2db5ae73a",
	1,
	0,
	21,
	42,
	21,
	48,
	13,
	40,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("202d7770-8cad-430a-b18f-3cd2db5ae73a",
	1,
	"d06264b1-31a1-443a-9437-a72e3354a0f2");
INSERT INTO E_CSME
	VALUES ("202d7770-8cad-430a-b18f-3cd2db5ae73a",
	"d98ec3cf-963c-4323-a368-63521ffd22d2");
INSERT INTO E_CEI
	VALUES ("202d7770-8cad-430a-b18f-3cd2db5ae73a",
	"7077cade-f220-4d7c-865f-a9458b522d8b");
INSERT INTO ACT_SMT
	VALUES ("bfb4cf34-c884-4008-bec3-a6f52c6dfe00",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	"00000000-0000-0000-0000-000000000000",
	22,
	3,
	'Goal::create line: 22');
INSERT INTO ACT_AI
	VALUES ("bfb4cf34-c884-4008-bec3-a6f52c6dfe00",
	"f802b898-349f-44be-afab-ab42243432e4",
	"8d155500-dea0-41fe-9bcf-5e95ba82d838",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("a339eda3-8e7c-4ae5-80a2-a5922e0033dc",
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_IRF
	VALUES ("a339eda3-8e7c-4ae5-80a2-a5922e0033dc",
	"7077cade-f220-4d7c-865f-a9458b522d8b");
INSERT INTO V_VAL
	VALUES ("f3e89c8a-f498-433d-afa2-9c3ae845b3a9",
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_AVL
	VALUES ("f3e89c8a-f498-433d-afa2-9c3ae845b3a9",
	"a339eda3-8e7c-4ae5-80a2-a5922e0033dc",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("07a919cd-917d-4156-be4c-48faeff92266",
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_LEN
	VALUES ("07a919cd-917d-4156-be4c-48faeff92266",
	"65119beb-591b-4c13-bd4b-5e54fe07e151",
	18,
	22);
INSERT INTO V_VAL
	VALUES ("08acb9ed-235c-4860-bd02-2e79275b7b28",
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_IRF
	VALUES ("08acb9ed-235c-4860-bd02-2e79275b7b28",
	"7077cade-f220-4d7c-865f-a9458b522d8b");
INSERT INTO V_VAL
	VALUES ("8d155500-dea0-41fe-9bcf-5e95ba82d838",
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_AVL
	VALUES ("8d155500-dea0-41fe-9bcf-5e95ba82d838",
	"08acb9ed-235c-4860-bd02-2e79275b7b28",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f7043385-0988-4b53-a097-900838ad5695");
INSERT INTO V_VAL
	VALUES ("f802b898-349f-44be-afab-ab42243432e4",
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_BRV
	VALUES ("f802b898-349f-44be-afab-ab42243432e4",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES ("b710c148-5eef-4580-ad5d-ed0484f3a9d5",
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_TVL
	VALUES ("b710c148-5eef-4580-ad5d-ed0484f3a9d5",
	"d06264b1-31a1-443a-9437-a72e3354a0f2");
INSERT INTO V_PAR
	VALUES ("b710c148-5eef-4580-ad5d-ed0484f3a9d5",
	"00000000-0000-0000-0000-000000000000",
	"f802b898-349f-44be-afab-ab42243432e4",
	'event_inst',
	"12438843-b008-46a6-8957-8816a0317c26",
	22,
	54);
INSERT INTO V_VAL
	VALUES ("12438843-b008-46a6-8957-8816a0317c26",
	0,
	0,
	22,
	95,
	110,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc");
INSERT INTO V_SCV
	VALUES ("12438843-b008-46a6-8957-8816a0317c26",
	"5e795bf3-3982-4be9-890f-9ecdb755eae9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_PAR
	VALUES ("12438843-b008-46a6-8957-8816a0317c26",
	"00000000-0000-0000-0000-000000000000",
	"f802b898-349f-44be-afab-ab42243432e4",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	22,
	81);
INSERT INTO V_VAR
	VALUES ("7077cade-f220-4d7c-865f-a9458b522d8b",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	'goal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7077cade-f220-4d7c-865f-a9458b522d8b",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("2077b2fc-fa44-4798-b6f5-bca1359f198b",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("2077b2fc-fa44-4798-b6f5-bca1359f198b",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("d06264b1-31a1-443a-9437-a72e3354a0f2",
	"11289cc4-fef0-4c4b-9cfd-5845b1ba4cfc",
	'evaluateEvent',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("d06264b1-31a1-443a-9437-a72e3354a0f2",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO O_TFR
	VALUES ("feeb244f-368a-41c4-a410-aaabac80d5c2",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	'calculateStart',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Based on the span type for this goal, calculate and
//   store the value of the start attribute.
select one goalSpec related by self->GoalSpec[R9.''specified by''];
if ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  self.start = workoutTimer.time;
elif ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  self.start = session.accumulatedDistance;
else
  LOG::LogFailure( message: "Goal.calculateStart: Unknown Goal Span Type." );
end if;',
	1,
	'',
	"b104ebc0-aeee-4076-a86c-f2eeea09bf72");
INSERT INTO ACT_OPB
	VALUES ("68c35d4b-9f65-4b13-8071-1805aca94551",
	"feeb244f-368a-41c4-a410-aaabac80d5c2");
INSERT INTO ACT_ACT
	VALUES ("68c35d4b-9f65-4b13-8071-1805aca94551",
	'operation',
	0,
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::calculateStart',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	1,
	0,
	0,
	'',
	'',
	'',
	11,
	1,
	3,
	38,
	0,
	0,
	3,
	47,
	3,
	50,
	8,
	29,
	0,
	"68c35d4b-9f65-4b13-8071-1805aca94551",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f8c79423-0e4e-48c0-96ca-8773ac4f951b",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	"dc67b2e1-8590-4309-9ace-df558008b54d",
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES ("f8c79423-0e4e-48c0-96ca-8773ac4f951b",
	"10ec8348-6dc8-412f-9c1e-c603e90c9368",
	1,
	'one',
	"2a1cbdb6-4793-4357-bbaf-6b5f32ed363b");
INSERT INTO ACT_SR
	VALUES ("f8c79423-0e4e-48c0-96ca-8773ac4f951b");
INSERT INTO ACT_LNK
	VALUES ("df728289-8991-400c-bc89-8d5764a5a3dd",
	'''specified by''',
	"f8c79423-0e4e-48c0-96ca-8773ac4f951b",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"00000000-0000-0000-0000-000000000000",
	2,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES ("dc67b2e1-8590-4309-9ace-df558008b54d",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES ("dc67b2e1-8590-4309-9ace-df558008b54d",
	"a6df0648-5b29-4788-8a2f-c01521542a3f",
	"c87d7850-bf91-4f39-9fc9-1b9218f3936d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a3e0a16d-fef1-43dc-b94c-002af242640f",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	"00000000-0000-0000-0000-000000000000",
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES ("a3e0a16d-fef1-43dc-b94c-002af242640f",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c",
	"6453dc74-63b6-49ec-a649-fcf6ad5ea3b7",
	"dc67b2e1-8590-4309-9ace-df558008b54d");
INSERT INTO ACT_SMT
	VALUES ("901353d0-c119-44e0-a538-a60d0b0ac59e",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	"00000000-0000-0000-0000-000000000000",
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES ("901353d0-c119-44e0-a538-a60d0b0ac59e",
	"500d0c1c-661f-41dd-bd7d-66e6f2c0128c",
	"dc67b2e1-8590-4309-9ace-df558008b54d");
INSERT INTO V_VAL
	VALUES ("2a1cbdb6-4793-4357-bbaf-6b5f32ed363b",
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_IRF
	VALUES ("2a1cbdb6-4793-4357-bbaf-6b5f32ed363b",
	"7a6823ca-0f60-4f2b-ae05-5643bea54d2d");
INSERT INTO V_VAL
	VALUES ("45bdc5ac-00d6-425d-9cd3-521f65cfac01",
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_IRF
	VALUES ("45bdc5ac-00d6-425d-9cd3-521f65cfac01",
	"10ec8348-6dc8-412f-9c1e-c603e90c9368");
INSERT INTO V_VAL
	VALUES ("5f8d0475-05e7-454c-be0c-3359b636c9a4",
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_AVL
	VALUES ("5f8d0475-05e7-454c-be0c-3359b636c9a4",
	"45bdc5ac-00d6-425d-9cd3-521f65cfac01",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d");
INSERT INTO V_VAL
	VALUES ("c87d7850-bf91-4f39-9fc9-1b9218f3936d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_BIN
	VALUES ("c87d7850-bf91-4f39-9fc9-1b9218f3936d",
	"054d2bea-f242-42b0-b07b-c314297f110d",
	"5f8d0475-05e7-454c-be0c-3359b636c9a4",
	'==');
INSERT INTO V_VAL
	VALUES ("054d2bea-f242-42b0-b07b-c314297f110d",
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_LEN
	VALUES ("054d2bea-f242-42b0-b07b-c314297f110d",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	4,
	27);
INSERT INTO V_VAL
	VALUES ("9ce72ee9-1015-4e63-9d64-cae10de350c4",
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_IRF
	VALUES ("9ce72ee9-1015-4e63-9d64-cae10de350c4",
	"10ec8348-6dc8-412f-9c1e-c603e90c9368");
INSERT INTO V_VAL
	VALUES ("949e32d3-cc75-4b10-905b-f6d2e57d9bc2",
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_AVL
	VALUES ("949e32d3-cc75-4b10-905b-f6d2e57d9bc2",
	"9ce72ee9-1015-4e63-9d64-cae10de350c4",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d");
INSERT INTO V_VAL
	VALUES ("6453dc74-63b6-49ec-a649-fcf6ad5ea3b7",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_BIN
	VALUES ("6453dc74-63b6-49ec-a649-fcf6ad5ea3b7",
	"80b3f6c0-f6af-44ae-a1b9-502a1ea0da2d",
	"949e32d3-cc75-4b10-905b-f6d2e57d9bc2",
	'==');
INSERT INTO V_VAL
	VALUES ("80b3f6c0-f6af-44ae-a1b9-502a1ea0da2d",
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1");
INSERT INTO V_LEN
	VALUES ("80b3f6c0-f6af-44ae-a1b9-502a1ea0da2d",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc",
	8,
	29);
INSERT INTO V_VAR
	VALUES ("10ec8348-6dc8-412f-9c1e-c603e90c9368",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("10ec8348-6dc8-412f-9c1e-c603e90c9368",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("7a6823ca-0f60-4f2b-ae05-5643bea54d2d",
	"e0cff442-3e4c-42c3-9563-a84fd3e05cf1",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7a6823ca-0f60-4f2b-ae05-5643bea54d2d",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("a6df0648-5b29-4788-8a2f-c01521542a3f",
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	3,
	6,
	64,
	0,
	0,
	6,
	77,
	6,
	80,
	0,
	0,
	0,
	"68c35d4b-9f65-4b13-8071-1805aca94551",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1b30cbb1-a55f-4465-9f21-6c2e1bc800e1",
	"a6df0648-5b29-4788-8a2f-c01521542a3f",
	"f3db3c73-1524-4180-9e5d-7206c8870489",
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES ("1b30cbb1-a55f-4465-9f21-6c2e1bc800e1",
	"74ed0156-f24a-4560-a5bb-d1f8d587e3ca",
	1,
	'one',
	"c0d395e3-c3d7-47a3-83bd-cc911412c692");
INSERT INTO ACT_SR
	VALUES ("1b30cbb1-a55f-4465-9f21-6c2e1bc800e1");
INSERT INTO ACT_LNK
	VALUES ("773b774d-25a0-42a0-8c12-49b2831fe872",
	'''is currently executing within''',
	"1b30cbb1-a55f-4465-9f21-6c2e1bc800e1",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"c8e3c478-88cf-4e3c-a69a-ab6554b2c10c",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES ("c8e3c478-88cf-4e3c-a69a-ab6554b2c10c",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES ("f3db3c73-1524-4180-9e5d-7206c8870489",
	"a6df0648-5b29-4788-8a2f-c01521542a3f",
	"00000000-0000-0000-0000-000000000000",
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES ("f3db3c73-1524-4180-9e5d-7206c8870489",
	"961ae1b9-11c4-465e-ad57-77c2f8d6ba35",
	"f46b5eef-01f7-42cb-86ae-928f22424123",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("c0d395e3-c3d7-47a3-83bd-cc911412c692",
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"a6df0648-5b29-4788-8a2f-c01521542a3f");
INSERT INTO V_IRF
	VALUES ("c0d395e3-c3d7-47a3-83bd-cc911412c692",
	"7a6823ca-0f60-4f2b-ae05-5643bea54d2d");
INSERT INTO V_VAL
	VALUES ("552c3b37-a77e-4e59-be28-932aa60a6d42",
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"a6df0648-5b29-4788-8a2f-c01521542a3f");
INSERT INTO V_IRF
	VALUES ("552c3b37-a77e-4e59-be28-932aa60a6d42",
	"7a6823ca-0f60-4f2b-ae05-5643bea54d2d");
INSERT INTO V_VAL
	VALUES ("f46b5eef-01f7-42cb-86ae-928f22424123",
	1,
	0,
	7,
	8,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"a6df0648-5b29-4788-8a2f-c01521542a3f");
INSERT INTO V_AVL
	VALUES ("f46b5eef-01f7-42cb-86ae-928f22424123",
	"552c3b37-a77e-4e59-be28-932aa60a6d42",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"5542b20c-c95b-4c73-9a69-58fa78e884f3");
INSERT INTO V_VAL
	VALUES ("9cf5c466-ee67-49f5-a0eb-8d3019da0e00",
	0,
	0,
	7,
	16,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"a6df0648-5b29-4788-8a2f-c01521542a3f");
INSERT INTO V_IRF
	VALUES ("9cf5c466-ee67-49f5-a0eb-8d3019da0e00",
	"74ed0156-f24a-4560-a5bb-d1f8d587e3ca");
INSERT INTO V_VAL
	VALUES ("961ae1b9-11c4-465e-ad57-77c2f8d6ba35",
	0,
	0,
	7,
	29,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a6df0648-5b29-4788-8a2f-c01521542a3f");
INSERT INTO V_AVL
	VALUES ("961ae1b9-11c4-465e-ad57-77c2f8d6ba35",
	"9cf5c466-ee67-49f5-a0eb-8d3019da0e00",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAR
	VALUES ("74ed0156-f24a-4560-a5bb-d1f8d587e3ca",
	"a6df0648-5b29-4788-8a2f-c01521542a3f",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("74ed0156-f24a-4560-a5bb-d1f8d587e3ca",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO ACT_BLK
	VALUES ("6fcdab04-049b-489f-bb70-ba792ba8b80c",
	1,
	0,
	0,
	'',
	'',
	'',
	10,
	3,
	9,
	39,
	0,
	0,
	9,
	54,
	9,
	58,
	0,
	0,
	0,
	"68c35d4b-9f65-4b13-8071-1805aca94551",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b45224b8-dfa0-42f2-8595-b0567a78015f",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c",
	"223b5b04-c9f2-4857-8402-f582a5adebf0",
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES ("b45224b8-dfa0-42f2-8595-b0567a78015f",
	"136e2cdf-ea75-4634-b51e-bc887a776195",
	1,
	'one',
	"98032b7d-aa9e-437a-8c9b-3e3b130af587");
INSERT INTO ACT_SR
	VALUES ("b45224b8-dfa0-42f2-8595-b0567a78015f");
INSERT INTO ACT_LNK
	VALUES ("82d8863f-1662-442c-8b76-3d94223ef5c5",
	'''is currently executing within''',
	"b45224b8-dfa0-42f2-8595-b0567a78015f",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES ("223b5b04-c9f2-4857-8402-f582a5adebf0",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c",
	"00000000-0000-0000-0000-000000000000",
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES ("223b5b04-c9f2-4857-8402-f582a5adebf0",
	"1cf7077b-0cb4-45eb-b045-6962e46dba18",
	"7a94d37c-d827-4d11-b828-7d4063f85fd5",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("98032b7d-aa9e-437a-8c9b-3e3b130af587",
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c");
INSERT INTO V_IRF
	VALUES ("98032b7d-aa9e-437a-8c9b-3e3b130af587",
	"7a6823ca-0f60-4f2b-ae05-5643bea54d2d");
INSERT INTO V_VAL
	VALUES ("817987b8-0a4d-4667-8c37-2f60b0b466c1",
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c");
INSERT INTO V_IRF
	VALUES ("817987b8-0a4d-4667-8c37-2f60b0b466c1",
	"7a6823ca-0f60-4f2b-ae05-5643bea54d2d");
INSERT INTO V_VAL
	VALUES ("7a94d37c-d827-4d11-b828-7d4063f85fd5",
	1,
	0,
	10,
	8,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c");
INSERT INTO V_AVL
	VALUES ("7a94d37c-d827-4d11-b828-7d4063f85fd5",
	"817987b8-0a4d-4667-8c37-2f60b0b466c1",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"5542b20c-c95b-4c73-9a69-58fa78e884f3");
INSERT INTO V_VAL
	VALUES ("285b20b5-58a5-4111-a28c-147d72346778",
	0,
	0,
	10,
	16,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c");
INSERT INTO V_IRF
	VALUES ("285b20b5-58a5-4111-a28c-147d72346778",
	"136e2cdf-ea75-4634-b51e-bc887a776195");
INSERT INTO V_VAL
	VALUES ("1cf7077b-0cb4-45eb-b045-6962e46dba18",
	0,
	0,
	10,
	24,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c");
INSERT INTO V_AVL
	VALUES ("1cf7077b-0cb4-45eb-b045-6962e46dba18",
	"285b20b5-58a5-4111-a28c-147d72346778",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAR
	VALUES ("136e2cdf-ea75-4634-b51e-bc887a776195",
	"6fcdab04-049b-489f-bb70-ba792ba8b80c",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("136e2cdf-ea75-4634-b51e-bc887a776195",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("500d0c1c-661f-41dd-bd7d-66e6f2c0128c",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	12,
	3,
	12,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"68c35d4b-9f65-4b13-8071-1805aca94551",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f91cd5fd-a9b2-40b8-be64-3b344129ef38",
	"500d0c1c-661f-41dd-bd7d-66e6f2c0128c",
	"00000000-0000-0000-0000-000000000000",
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES ("f91cd5fd-a9b2-40b8-be64-3b344129ef38",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES ("663b82cf-9cba-49c8-b02e-1eaa7993ad03",
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"500d0c1c-661f-41dd-bd7d-66e6f2c0128c");
INSERT INTO V_LST
	VALUES ("663b82cf-9cba-49c8-b02e-1eaa7993ad03",
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES ("663b82cf-9cba-49c8-b02e-1eaa7993ad03",
	"f91cd5fd-a9b2-40b8-be64-3b344129ef38",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	12,
	20);
INSERT INTO O_TFR
	VALUES ("531e939d-3051-465d-aaa6-037871bdc296",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	'evaluateAchievement',
	'',
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	1,
	'// Based on the type of goal, determine whether this one is 
//   currently being achieved and return a value indicating
//   the disposition of the this goal.    

// Find the related goal specification and workout session for this goal.
select one goalSpec related by self->GoalSpec[R9.''specified by''];
select one session related by self->WorkoutSession[R11.''is currently executing within''];

// Based on the goal criteria type, get the appropriate current value
//   for comparison against the criteria (minimum and maximum).
currentValue = 0.0;  // Explicit declaration
if ( goalSpec.criteriaType == GoalCriteria::HeartRate )
  currentValue = session.currentHeartRate;
elif ( goalSpec.criteriaType == GoalCriteria::Pace )
  currentValue = session.currentPace;
else
  LOG::LogFailure( message: "Goal.evaluateAchievement: Unknown Goal Criteria Type." );
end if;
 
// Compare the current value against the criteria to calculate the return value.
goalDisposition = GoalDisposition::Achieving; 
if ( currentValue < goalSpec.minimum )
  goalDisposition = GoalDisposition::Increase;
elif ( currentValue > goalSpec.maximum )
  goalDisposition = GoalDisposition::Decrease;
end if;

// Invert the disposition value to produce a logical, semantic disposition for
//   goal types, such as pace, that require it.
if ( goalSpec.criteriaType == GoalCriteria::Pace )
  if ( goalDisposition == GoalDisposition::Increase )
    goalDisposition = GoalDisposition::Decrease;
  elif ( goalDisposition == GoalDisposition::Decrease )
    goalDisposition = GoalDisposition::Increase;
  end if;
end if;
 
return( goalDisposition );',
	1,
	'',
	"feeb244f-368a-41c4-a410-aaabac80d5c2");
INSERT INTO ACT_OPB
	VALUES ("190a164d-4ad0-4638-9f32-c5cf367c0332",
	"531e939d-3051-465d-aaa6-037871bdc296");
INSERT INTO ACT_ACT
	VALUES ("190a164d-4ad0-4638-9f32-c5cf367c0332",
	'operation',
	0,
	"67a09985-0462-41e8-81d3-cc532356af25",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::evaluateAchievement',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("67a09985-0462-41e8-81d3-cc532356af25",
	1,
	0,
	0,
	'',
	'',
	'',
	38,
	1,
	7,
	37,
	0,
	0,
	7,
	52,
	7,
	56,
	30,
	31,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0e2dbb22-0c0e-42b2-94af-eaecdf2fd728",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"ac9b7611-5fb6-461c-bc79-72efbde204e6",
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES ("0e2dbb22-0c0e-42b2-94af-eaecdf2fd728",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c",
	1,
	'one',
	"65ad491f-b4b0-4245-aabd-8e10c30c9a15");
INSERT INTO ACT_SR
	VALUES ("0e2dbb22-0c0e-42b2-94af-eaecdf2fd728");
INSERT INTO ACT_LNK
	VALUES ("b6d8937a-3b0d-41c6-906b-ceaf2e749a0f",
	'''specified by''',
	"0e2dbb22-0c0e-42b2-94af-eaecdf2fd728",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"00000000-0000-0000-0000-000000000000",
	2,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES ("ac9b7611-5fb6-461c-bc79-72efbde204e6",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"5841b013-fba0-4e4c-b6fa-5aaa385d2ecd",
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES ("ac9b7611-5fb6-461c-bc79-72efbde204e6",
	"6306a94c-a1eb-4862-a932-96c052b00952",
	1,
	'one',
	"560a1f3b-3c2c-4c5b-a644-dfe39fdabd5c");
INSERT INTO ACT_SR
	VALUES ("ac9b7611-5fb6-461c-bc79-72efbde204e6");
INSERT INTO ACT_LNK
	VALUES ("3ca5bf7e-2753-4c9d-b1be-3d16469d822a",
	'''is currently executing within''',
	"ac9b7611-5fb6-461c-bc79-72efbde204e6",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES ("5841b013-fba0-4e4c-b6fa-5aaa385d2ecd",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"9703697d-4437-40ef-aa74-f8a3b84b31d8",
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES ("5841b013-fba0-4e4c-b6fa-5aaa385d2ecd",
	"99cb2dd6-a84e-434c-867f-ba46ef9bb093",
	"2e6d5248-ba03-4058-b058-2cde74c8aeed",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("9703697d-4437-40ef-aa74-f8a3b84b31d8",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"81af5a2f-f4d3-4af5-9632-5becad31e697",
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES ("9703697d-4437-40ef-aa74-f8a3b84b31d8",
	"305fb180-1f03-48e6-a7e8-68481963093a",
	"5653e497-3c15-4823-a7a4-a8d86f356de2",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("cd979b0a-b507-4a23-a176-eb59614365e3",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES ("cd979b0a-b507-4a23-a176-eb59614365e3",
	"c872f190-c231-469a-b05d-4bb39aee5b83",
	"df129d7e-0589-4132-b02d-837e1e2c0397",
	"9703697d-4437-40ef-aa74-f8a3b84b31d8");
INSERT INTO ACT_SMT
	VALUES ("9e28601e-ff84-4fdd-8d86-9f3d3b09b2b5",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"00000000-0000-0000-0000-000000000000",
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES ("9e28601e-ff84-4fdd-8d86-9f3d3b09b2b5",
	"8060ba17-340e-4f5d-851f-375af2c78acc",
	"9703697d-4437-40ef-aa74-f8a3b84b31d8");
INSERT INTO ACT_SMT
	VALUES ("81af5a2f-f4d3-4af5-9632-5becad31e697",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"005a7b5e-016f-48bf-a7da-63b2daa37c01",
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES ("81af5a2f-f4d3-4af5-9632-5becad31e697",
	"d6d91edf-ace5-4238-a843-3effd05e124a",
	"aeba9844-47c7-452d-8e74-71434b96f5d7",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("005a7b5e-016f-48bf-a7da-63b2daa37c01",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"01f6d5af-a28e-4293-9788-52e6601275e4",
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES ("005a7b5e-016f-48bf-a7da-63b2daa37c01",
	"9e1397f4-9539-40f8-8733-c96a0268b381",
	"264268e9-7f72-4310-a3e7-7ebf2b864e0e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("18fdcde5-71ef-40db-a223-511dbe6dce8b",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"00000000-0000-0000-0000-000000000000",
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES ("18fdcde5-71ef-40db-a223-511dbe6dce8b",
	"541e3178-54c3-4e3e-8cbc-20a0aa88678d",
	"c1501d90-a1f4-49f6-ab12-695c4de1a8ff",
	"005a7b5e-016f-48bf-a7da-63b2daa37c01");
INSERT INTO ACT_SMT
	VALUES ("01f6d5af-a28e-4293-9788-52e6601275e4",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"328afa9d-6d08-4cc1-b5f0-1a2f64e8f44a",
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES ("01f6d5af-a28e-4293-9788-52e6601275e4",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc",
	"d5593f2f-b7f0-4b2b-9e8b-0f644958079e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("328afa9d-6d08-4cc1-b5f0-1a2f64e8f44a",
	"67a09985-0462-41e8-81d3-cc532356af25",
	"00000000-0000-0000-0000-000000000000",
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES ("328afa9d-6d08-4cc1-b5f0-1a2f64e8f44a",
	"362d06c2-483a-4e22-9a60-4c5b137530c9");
INSERT INTO V_VAL
	VALUES ("65ad491f-b4b0-4245-aabd-8e10c30c9a15",
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("65ad491f-b4b0-4245-aabd-8e10c30c9a15",
	"cb4edb88-4b1e-4190-8b2a-60a7f8b0bfab");
INSERT INTO V_VAL
	VALUES ("560a1f3b-3c2c-4c5b-a644-dfe39fdabd5c",
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("560a1f3b-3c2c-4c5b-a644-dfe39fdabd5c",
	"cb4edb88-4b1e-4190-8b2a-60a7f8b0bfab");
INSERT INTO V_VAL
	VALUES ("2e6d5248-ba03-4058-b058-2cde74c8aeed",
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_TVL
	VALUES ("2e6d5248-ba03-4058-b058-2cde74c8aeed",
	"632d6dba-7311-484e-90e0-b3201f0dcb73");
INSERT INTO V_VAL
	VALUES ("99cb2dd6-a84e-434c-867f-ba46ef9bb093",
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_LRL
	VALUES ("99cb2dd6-a84e-434c-867f-ba46ef9bb093",
	'0.0');
INSERT INTO V_VAL
	VALUES ("823fbdc1-424e-4f19-803e-b3da43538420",
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("823fbdc1-424e-4f19-803e-b3da43538420",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c");
INSERT INTO V_VAL
	VALUES ("d2b612aa-975f-4a9f-8ba7-7fdb35f8bd81",
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_AVL
	VALUES ("d2b612aa-975f-4a9f-8ba7-7fdb35f8bd81",
	"823fbdc1-424e-4f19-803e-b3da43538420",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"dd7fc64c-49f7-4730-a710-8919eb383415");
INSERT INTO V_VAL
	VALUES ("5653e497-3c15-4823-a7a4-a8d86f356de2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_BIN
	VALUES ("5653e497-3c15-4823-a7a4-a8d86f356de2",
	"c65e39d7-7fa4-434b-ac30-4baf8d2bf1a2",
	"d2b612aa-975f-4a9f-8ba7-7fdb35f8bd81",
	'==');
INSERT INTO V_VAL
	VALUES ("c65e39d7-7fa4-434b-ac30-4baf8d2bf1a2",
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_LEN
	VALUES ("c65e39d7-7fa4-434b-ac30-4baf8d2bf1a2",
	"3e48843f-0ea9-4021-97ba-72f059cce838",
	12,
	31);
INSERT INTO V_VAL
	VALUES ("b0154ca1-f490-46f3-b230-05ce3a2cf917",
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("b0154ca1-f490-46f3-b230-05ce3a2cf917",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c");
INSERT INTO V_VAL
	VALUES ("3d90f0b6-2e3e-42de-847d-979798503d46",
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_AVL
	VALUES ("3d90f0b6-2e3e-42de-847d-979798503d46",
	"b0154ca1-f490-46f3-b230-05ce3a2cf917",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"dd7fc64c-49f7-4730-a710-8919eb383415");
INSERT INTO V_VAL
	VALUES ("df129d7e-0589-4132-b02d-837e1e2c0397",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_BIN
	VALUES ("df129d7e-0589-4132-b02d-837e1e2c0397",
	"7dbb77cc-4bbf-45bc-98d7-e0380a2147f2",
	"3d90f0b6-2e3e-42de-847d-979798503d46",
	'==');
INSERT INTO V_VAL
	VALUES ("7dbb77cc-4bbf-45bc-98d7-e0380a2147f2",
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_LEN
	VALUES ("7dbb77cc-4bbf-45bc-98d7-e0380a2147f2",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	14,
	33);
INSERT INTO V_VAL
	VALUES ("aeba9844-47c7-452d-8e74-71434b96f5d7",
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_TVL
	VALUES ("aeba9844-47c7-452d-8e74-71434b96f5d7",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("d6d91edf-ace5-4238-a843-3effd05e124a",
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_LEN
	VALUES ("d6d91edf-ace5-4238-a843-3effd05e124a",
	"32cb2c18-4313-4253-a679-2d06b9b050bc",
	21,
	19);
INSERT INTO V_VAL
	VALUES ("7c9958a1-a757-42f5-9ac0-96d7d2ad8235",
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_TVL
	VALUES ("7c9958a1-a757-42f5-9ac0-96d7d2ad8235",
	"632d6dba-7311-484e-90e0-b3201f0dcb73");
INSERT INTO V_VAL
	VALUES ("264268e9-7f72-4310-a3e7-7ebf2b864e0e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_BIN
	VALUES ("264268e9-7f72-4310-a3e7-7ebf2b864e0e",
	"949e03dc-1f95-4cb2-95c3-685c33759cbe",
	"7c9958a1-a757-42f5-9ac0-96d7d2ad8235",
	'<');
INSERT INTO V_VAL
	VALUES ("6af15c6d-f0d5-42a3-8ad9-838e18fb555f",
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("6af15c6d-f0d5-42a3-8ad9-838e18fb555f",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c");
INSERT INTO V_VAL
	VALUES ("949e03dc-1f95-4cb2-95c3-685c33759cbe",
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_AVL
	VALUES ("949e03dc-1f95-4cb2-95c3-685c33759cbe",
	"6af15c6d-f0d5-42a3-8ad9-838e18fb555f",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"5e4df9ae-802a-4760-bc98-ec74dae4add5");
INSERT INTO V_VAL
	VALUES ("69888648-e01e-42c2-b2a9-02e13d1faad3",
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_TVL
	VALUES ("69888648-e01e-42c2-b2a9-02e13d1faad3",
	"632d6dba-7311-484e-90e0-b3201f0dcb73");
INSERT INTO V_VAL
	VALUES ("c1501d90-a1f4-49f6-ab12-695c4de1a8ff",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_BIN
	VALUES ("c1501d90-a1f4-49f6-ab12-695c4de1a8ff",
	"38341691-cfbd-459c-85f7-f3cb99811874",
	"69888648-e01e-42c2-b2a9-02e13d1faad3",
	'>');
INSERT INTO V_VAL
	VALUES ("ce839eca-d7f6-484e-93bd-18f53f776c49",
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("ce839eca-d7f6-484e-93bd-18f53f776c49",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c");
INSERT INTO V_VAL
	VALUES ("38341691-cfbd-459c-85f7-f3cb99811874",
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_AVL
	VALUES ("38341691-cfbd-459c-85f7-f3cb99811874",
	"ce839eca-d7f6-484e-93bd-18f53f776c49",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"563b27ee-fa16-4e60-a7a9-edd4c4cee86d");
INSERT INTO V_VAL
	VALUES ("d4f6b919-8fd3-4217-878a-35dc054163fe",
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_IRF
	VALUES ("d4f6b919-8fd3-4217-878a-35dc054163fe",
	"715a1f2f-e55d-4d1b-bd7d-2da348f2648c");
INSERT INTO V_VAL
	VALUES ("9d0c2068-73e2-4544-b0d7-188f35a08e85",
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_AVL
	VALUES ("9d0c2068-73e2-4544-b0d7-188f35a08e85",
	"d4f6b919-8fd3-4217-878a-35dc054163fe",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"dd7fc64c-49f7-4730-a710-8919eb383415");
INSERT INTO V_VAL
	VALUES ("d5593f2f-b7f0-4b2b-9e8b-0f644958079e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_BIN
	VALUES ("d5593f2f-b7f0-4b2b-9e8b-0f644958079e",
	"39bf5d3f-ca85-40c8-ae57-15fc4a66407e",
	"9d0c2068-73e2-4544-b0d7-188f35a08e85",
	'==');
INSERT INTO V_VAL
	VALUES ("39bf5d3f-ca85-40c8-ae57-15fc4a66407e",
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_LEN
	VALUES ("39bf5d3f-ca85-40c8-ae57-15fc4a66407e",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	30,
	31);
INSERT INTO V_VAL
	VALUES ("362d06c2-483a-4e22-9a60-4c5b137530c9",
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"67a09985-0462-41e8-81d3-cc532356af25");
INSERT INTO V_TVL
	VALUES ("362d06c2-483a-4e22-9a60-4c5b137530c9",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAR
	VALUES ("715a1f2f-e55d-4d1b-bd7d-2da348f2648c",
	"67a09985-0462-41e8-81d3-cc532356af25",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("715a1f2f-e55d-4d1b-bd7d-2da348f2648c",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("cb4edb88-4b1e-4190-8b2a-60a7f8b0bfab",
	"67a09985-0462-41e8-81d3-cc532356af25",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("cb4edb88-4b1e-4190-8b2a-60a7f8b0bfab",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("6306a94c-a1eb-4862-a932-96c052b00952",
	"67a09985-0462-41e8-81d3-cc532356af25",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("6306a94c-a1eb-4862-a932-96c052b00952",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("632d6dba-7311-484e-90e0-b3201f0dcb73",
	"67a09985-0462-41e8-81d3-cc532356af25",
	'currentValue',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("632d6dba-7311-484e-90e0-b3201f0dcb73",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("984c764e-a4d4-4b54-b37d-d2aae9971513",
	"67a09985-0462-41e8-81d3-cc532356af25",
	'goalDisposition',
	1,
	"581bce01-aba7-4236-a02f-a3833c4b660c");
INSERT INTO V_TRN
	VALUES ("984c764e-a4d4-4b54-b37d-d2aae9971513",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("305fb180-1f03-48e6-a7e8-68481963093a",
	0,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("36602021-8357-405a-98e5-080502e60fc5",
	"305fb180-1f03-48e6-a7e8-68481963093a",
	"00000000-0000-0000-0000-000000000000",
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES ("36602021-8357-405a-98e5-080502e60fc5",
	"2a50bbd5-db3f-46b5-b915-666e9fee7050",
	"e6f7cf8c-2abc-42dc-9218-3e1124f8d2dd",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("e6f7cf8c-2abc-42dc-9218-3e1124f8d2dd",
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"305fb180-1f03-48e6-a7e8-68481963093a");
INSERT INTO V_TVL
	VALUES ("e6f7cf8c-2abc-42dc-9218-3e1124f8d2dd",
	"632d6dba-7311-484e-90e0-b3201f0dcb73");
INSERT INTO V_VAL
	VALUES ("7f4117aa-bfda-4144-a73b-206be63ff4ac",
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"305fb180-1f03-48e6-a7e8-68481963093a");
INSERT INTO V_IRF
	VALUES ("7f4117aa-bfda-4144-a73b-206be63ff4ac",
	"6306a94c-a1eb-4862-a932-96c052b00952");
INSERT INTO V_VAL
	VALUES ("2a50bbd5-db3f-46b5-b915-666e9fee7050",
	0,
	0,
	13,
	26,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"305fb180-1f03-48e6-a7e8-68481963093a");
INSERT INTO V_AVL
	VALUES ("2a50bbd5-db3f-46b5-b915-666e9fee7050",
	"7f4117aa-bfda-4144-a73b-206be63ff4ac",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a");
INSERT INTO ACT_BLK
	VALUES ("c872f190-c231-469a-b05d-4bb39aee5b83",
	0,
	0,
	0,
	'',
	'',
	'',
	15,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("88b89a39-d8ec-4d16-908b-c1bb8c3a47fe",
	"c872f190-c231-469a-b05d-4bb39aee5b83",
	"00000000-0000-0000-0000-000000000000",
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES ("88b89a39-d8ec-4d16-908b-c1bb8c3a47fe",
	"b01c2cac-1557-40df-9b93-07f21a66c013",
	"5876805d-6c79-42bf-9db7-5990fa84b213",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("5876805d-6c79-42bf-9db7-5990fa84b213",
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c872f190-c231-469a-b05d-4bb39aee5b83");
INSERT INTO V_TVL
	VALUES ("5876805d-6c79-42bf-9db7-5990fa84b213",
	"632d6dba-7311-484e-90e0-b3201f0dcb73");
INSERT INTO V_VAL
	VALUES ("6b2039b0-3172-4d03-ac48-0b6ba5bbcdf3",
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c872f190-c231-469a-b05d-4bb39aee5b83");
INSERT INTO V_IRF
	VALUES ("6b2039b0-3172-4d03-ac48-0b6ba5bbcdf3",
	"6306a94c-a1eb-4862-a932-96c052b00952");
INSERT INTO V_VAL
	VALUES ("b01c2cac-1557-40df-9b93-07f21a66c013",
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c872f190-c231-469a-b05d-4bb39aee5b83");
INSERT INTO V_AVL
	VALUES ("b01c2cac-1557-40df-9b93-07f21a66c013",
	"6b2039b0-3172-4d03-ac48-0b6ba5bbcdf3",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5");
INSERT INTO ACT_BLK
	VALUES ("8060ba17-340e-4f5d-851f-375af2c78acc",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	17,
	3,
	17,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b8445acb-a588-47ba-a563-a79b181a15bd",
	"8060ba17-340e-4f5d-851f-375af2c78acc",
	"00000000-0000-0000-0000-000000000000",
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES ("b8445acb-a588-47ba-a563-a79b181a15bd",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES ("c35ef68e-d1a5-4dad-b892-73795181dbe5",
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"8060ba17-340e-4f5d-851f-375af2c78acc");
INSERT INTO V_LST
	VALUES ("c35ef68e-d1a5-4dad-b892-73795181dbe5",
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES ("c35ef68e-d1a5-4dad-b892-73795181dbe5",
	"b8445acb-a588-47ba-a563-a79b181a15bd",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	17,
	20);
INSERT INTO ACT_BLK
	VALUES ("9e1397f4-9539-40f8-8733-c96a0268b381",
	0,
	0,
	0,
	'',
	'',
	'',
	23,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	23,
	21,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6d9a30c7-1bf7-4ec7-8188-19d8bc76743f",
	"9e1397f4-9539-40f8-8733-c96a0268b381",
	"00000000-0000-0000-0000-000000000000",
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES ("6d9a30c7-1bf7-4ec7-8188-19d8bc76743f",
	"7b26af58-d081-4adf-b45c-c3b79928d159",
	"27d4ecdd-e29b-4596-908f-1956e396df08",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("27d4ecdd-e29b-4596-908f-1956e396df08",
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"9e1397f4-9539-40f8-8733-c96a0268b381");
INSERT INTO V_TVL
	VALUES ("27d4ecdd-e29b-4596-908f-1956e396df08",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("7b26af58-d081-4adf-b45c-c3b79928d159",
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"9e1397f4-9539-40f8-8733-c96a0268b381");
INSERT INTO V_LEN
	VALUES ("7b26af58-d081-4adf-b45c-c3b79928d159",
	"65119beb-591b-4c13-bd4b-5e54fe07e151",
	23,
	21);
INSERT INTO ACT_BLK
	VALUES ("541e3178-54c3-4e3e-8cbc-20a0aa88678d",
	0,
	0,
	0,
	'',
	'',
	'',
	25,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	25,
	21,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c9aebc67-b51c-4a2c-a828-5681b76c52b0",
	"541e3178-54c3-4e3e-8cbc-20a0aa88678d",
	"00000000-0000-0000-0000-000000000000",
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES ("c9aebc67-b51c-4a2c-a828-5681b76c52b0",
	"499db3a8-4d17-42ab-8380-1ecae016d75e",
	"5d70cb0b-e366-4493-9275-d04ffe231d5d",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("5d70cb0b-e366-4493-9275-d04ffe231d5d",
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"541e3178-54c3-4e3e-8cbc-20a0aa88678d");
INSERT INTO V_TVL
	VALUES ("5d70cb0b-e366-4493-9275-d04ffe231d5d",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("499db3a8-4d17-42ab-8380-1ecae016d75e",
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"541e3178-54c3-4e3e-8cbc-20a0aa88678d");
INSERT INTO V_LEN
	VALUES ("499db3a8-4d17-42ab-8380-1ecae016d75e",
	"0ede2949-8a99-4a0a-8873-c5794ad645c8",
	25,
	21);
INSERT INTO ACT_BLK
	VALUES ("c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc",
	0,
	0,
	0,
	'',
	'',
	'',
	33,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	33,
	29,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a8f26bf7-0262-4310-985f-13638ecf25cb",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc",
	"00000000-0000-0000-0000-000000000000",
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES ("a8f26bf7-0262-4310-985f-13638ecf25cb",
	"481839ee-b01f-4323-8cd1-e6e6ef5d9b34",
	"867eb5ff-347d-4a6b-98e0-8220caf8a6ee",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("340ddf23-fd26-4203-b075-f89a101e8008",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc",
	"00000000-0000-0000-0000-000000000000",
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES ("340ddf23-fd26-4203-b075-f89a101e8008",
	"c9072ee2-668e-4adc-8067-3467412f68aa",
	"42411bcd-4d83-4863-a577-10fbe1761639",
	"a8f26bf7-0262-4310-985f-13638ecf25cb");
INSERT INTO V_VAL
	VALUES ("1b3f834a-0566-4020-8f2c-fafadf31ef54",
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_TVL
	VALUES ("1b3f834a-0566-4020-8f2c-fafadf31ef54",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("867eb5ff-347d-4a6b-98e0-8220caf8a6ee",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_BIN
	VALUES ("867eb5ff-347d-4a6b-98e0-8220caf8a6ee",
	"a05c48d7-e33f-4af2-a8c1-7cfaf50a9b95",
	"1b3f834a-0566-4020-8f2c-fafadf31ef54",
	'==');
INSERT INTO V_VAL
	VALUES ("a05c48d7-e33f-4af2-a8c1-7cfaf50a9b95",
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_LEN
	VALUES ("a05c48d7-e33f-4af2-a8c1-7cfaf50a9b95",
	"65119beb-591b-4c13-bd4b-5e54fe07e151",
	31,
	27);
INSERT INTO V_VAL
	VALUES ("888abcad-5cdb-4cd2-9d0a-8fe15f0fddf4",
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_TVL
	VALUES ("888abcad-5cdb-4cd2-9d0a-8fe15f0fddf4",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("42411bcd-4d83-4863-a577-10fbe1761639",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_BIN
	VALUES ("42411bcd-4d83-4863-a577-10fbe1761639",
	"f6f66548-ab82-4604-9ced-22f21b671102",
	"888abcad-5cdb-4cd2-9d0a-8fe15f0fddf4",
	'==');
INSERT INTO V_VAL
	VALUES ("f6f66548-ab82-4604-9ced-22f21b671102",
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c7ba1ea7-6517-4ce4-af8a-d81b8b883fdc");
INSERT INTO V_LEN
	VALUES ("f6f66548-ab82-4604-9ced-22f21b671102",
	"0ede2949-8a99-4a0a-8873-c5794ad645c8",
	33,
	29);
INSERT INTO ACT_BLK
	VALUES ("481839ee-b01f-4323-8cd1-e6e6ef5d9b34",
	0,
	0,
	0,
	'',
	'',
	'',
	32,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	32,
	23,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0dc3e722-ac37-4c5b-8f65-d7af3ef963b7",
	"481839ee-b01f-4323-8cd1-e6e6ef5d9b34",
	"00000000-0000-0000-0000-000000000000",
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES ("0dc3e722-ac37-4c5b-8f65-d7af3ef963b7",
	"982a514c-4067-45df-9c6b-04fc7fff3fe4",
	"ffad9134-ccf7-4cf1-bc87-41aa24b1ecfc",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("ffad9134-ccf7-4cf1-bc87-41aa24b1ecfc",
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"481839ee-b01f-4323-8cd1-e6e6ef5d9b34");
INSERT INTO V_TVL
	VALUES ("ffad9134-ccf7-4cf1-bc87-41aa24b1ecfc",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("982a514c-4067-45df-9c6b-04fc7fff3fe4",
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"481839ee-b01f-4323-8cd1-e6e6ef5d9b34");
INSERT INTO V_LEN
	VALUES ("982a514c-4067-45df-9c6b-04fc7fff3fe4",
	"0ede2949-8a99-4a0a-8873-c5794ad645c8",
	32,
	23);
INSERT INTO ACT_BLK
	VALUES ("c9072ee2-668e-4adc-8067-3467412f68aa",
	0,
	0,
	0,
	'',
	'',
	'',
	34,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	34,
	23,
	0,
	"190a164d-4ad0-4638-9f32-c5cf367c0332",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("58a3a7a9-c189-4cfe-9de1-1742e312f176",
	"c9072ee2-668e-4adc-8067-3467412f68aa",
	"00000000-0000-0000-0000-000000000000",
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES ("58a3a7a9-c189-4cfe-9de1-1742e312f176",
	"6d3fd367-d590-43a4-a44b-f89bc3dff269",
	"c412de48-e6aa-4b72-835e-6898606182cf",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("c412de48-e6aa-4b72-835e-6898606182cf",
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c9072ee2-668e-4adc-8067-3467412f68aa");
INSERT INTO V_TVL
	VALUES ("c412de48-e6aa-4b72-835e-6898606182cf",
	"984c764e-a4d4-4b54-b37d-d2aae9971513");
INSERT INTO V_VAL
	VALUES ("6d3fd367-d590-43a4-a44b-f89bc3dff269",
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"c9072ee2-668e-4adc-8067-3467412f68aa");
INSERT INTO V_LEN
	VALUES ("6d3fd367-d590-43a4-a44b-f89bc3dff269",
	"65119beb-591b-4c13-bd4b-5e54fe07e151",
	34,
	23);
INSERT INTO O_TFR
	VALUES ("0d01f42a-bc05-4492-a99e-89c886b75c07",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	'evaluateCompletion',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Based on the span type for this goal, determine 
//  whether it has been completed, update achievement
//  records as necessary, and advance to the next goal
//  if appropriate.

select one goalSpec related by self->GoalSpec[R9.''specified by''];

// Based on the span type for the goal, get the elapsed span 
//   for comparison against the specified span for the goal.
elapsedSpan = 0.0;  // Explicit declaration
if ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  elapsedSpan = session.accumulatedDistance - self.start;
elif ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  elapsedSpan = workoutTimer.time - self.start;
else
  LOG::LogFailure( message: "Goal.evaluateCompletion: Unknown Goal Span Type." );
end if;

// Compare the current value against the specified span to determine 
//   whether the execution of this workout goal is complete.
if ( elapsedSpan >= goalSpec.span )
  select one openAchievement related by self->Achievement[R14.''has open''];
  if ( not empty openAchievement )
    openAchievement.close();
  end if;
  generate Goal1:Completed to self;
end if;
',
	1,
	'',
	"531e939d-3051-465d-aaa6-037871bdc296");
INSERT INTO ACT_OPB
	VALUES ("6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"0d01f42a-bc05-4492-a99e-89c886b75c07");
INSERT INTO ACT_ACT
	VALUES ("6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	'operation',
	0,
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::evaluateCompletion',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	1,
	0,
	0,
	'',
	'',
	'',
	24,
	1,
	6,
	38,
	0,
	0,
	6,
	47,
	6,
	50,
	14,
	29,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("46acc38f-8f9e-4616-a1df-e846e91d6e9d",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"104f9766-49b5-42b4-a523-0413d6c27f80",
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES ("46acc38f-8f9e-4616-a1df-e846e91d6e9d",
	"5ced7580-cd99-4f83-bb50-be338f225f86",
	1,
	'one',
	"1d2851a2-99e3-4254-906b-456901166eca");
INSERT INTO ACT_SR
	VALUES ("46acc38f-8f9e-4616-a1df-e846e91d6e9d");
INSERT INTO ACT_LNK
	VALUES ("e6caec57-c0ab-42b0-a1da-0de0107273d0",
	'''specified by''',
	"46acc38f-8f9e-4616-a1df-e846e91d6e9d",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"00000000-0000-0000-0000-000000000000",
	2,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES ("104f9766-49b5-42b4-a523-0413d6c27f80",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"90e6aee3-c8bb-499e-9483-63a7208a7b38",
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES ("104f9766-49b5-42b4-a523-0413d6c27f80",
	"2ad8abc9-44f5-497b-aa03-6ce602fe13f3",
	"9647c6c7-c4d0-42b8-894f-9e458e058069",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("90e6aee3-c8bb-499e-9483-63a7208a7b38",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"c082fdb4-5178-4640-8bf3-39a1a7662b72",
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES ("90e6aee3-c8bb-499e-9483-63a7208a7b38",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134",
	"96f34100-25c4-424d-ac48-1f47bae240dd",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("458d6c36-507c-4eec-8195-90a5cfe5681d",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES ("458d6c36-507c-4eec-8195-90a5cfe5681d",
	"45e25353-3081-434a-85b7-d0fa06f4def3",
	"eba45cc9-1fe7-4af4-824c-f0a585f0548e",
	"90e6aee3-c8bb-499e-9483-63a7208a7b38");
INSERT INTO ACT_SMT
	VALUES ("41279267-9a8c-45ef-9bc7-0bd3d55e4904",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"00000000-0000-0000-0000-000000000000",
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES ("41279267-9a8c-45ef-9bc7-0bd3d55e4904",
	"a11e7e5f-9d80-44fc-b513-f5aeda900fd7",
	"90e6aee3-c8bb-499e-9483-63a7208a7b38");
INSERT INTO ACT_SMT
	VALUES ("c082fdb4-5178-4640-8bf3-39a1a7662b72",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	"00000000-0000-0000-0000-000000000000",
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES ("c082fdb4-5178-4640-8bf3-39a1a7662b72",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc",
	"ebf44fab-feb2-46b8-a553-038ec7d33e1d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("1d2851a2-99e3-4254-906b-456901166eca",
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_IRF
	VALUES ("1d2851a2-99e3-4254-906b-456901166eca",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("9647c6c7-c4d0-42b8-894f-9e458e058069",
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_TVL
	VALUES ("9647c6c7-c4d0-42b8-894f-9e458e058069",
	"22c3ca93-4931-4ff9-8e31-16a9fc75b6e2");
INSERT INTO V_VAL
	VALUES ("2ad8abc9-44f5-497b-aa03-6ce602fe13f3",
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_LRL
	VALUES ("2ad8abc9-44f5-497b-aa03-6ce602fe13f3",
	'0.0');
INSERT INTO V_VAL
	VALUES ("04ed2caa-b00a-4baf-9c33-0a0c3b566fee",
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_IRF
	VALUES ("04ed2caa-b00a-4baf-9c33-0a0c3b566fee",
	"5ced7580-cd99-4f83-bb50-be338f225f86");
INSERT INTO V_VAL
	VALUES ("cea45860-13cb-4374-a351-ab435155cbc3",
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_AVL
	VALUES ("cea45860-13cb-4374-a351-ab435155cbc3",
	"04ed2caa-b00a-4baf-9c33-0a0c3b566fee",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d");
INSERT INTO V_VAL
	VALUES ("96f34100-25c4-424d-ac48-1f47bae240dd",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_BIN
	VALUES ("96f34100-25c4-424d-ac48-1f47bae240dd",
	"ed3b94f9-f04a-4941-93c0-cbf07ca4a14e",
	"cea45860-13cb-4374-a351-ab435155cbc3",
	'==');
INSERT INTO V_VAL
	VALUES ("ed3b94f9-f04a-4941-93c0-cbf07ca4a14e",
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_LEN
	VALUES ("ed3b94f9-f04a-4941-93c0-cbf07ca4a14e",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc",
	11,
	27);
INSERT INTO V_VAL
	VALUES ("59bf8ef2-3253-4390-b645-23c1de6d1642",
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_IRF
	VALUES ("59bf8ef2-3253-4390-b645-23c1de6d1642",
	"5ced7580-cd99-4f83-bb50-be338f225f86");
INSERT INTO V_VAL
	VALUES ("67618d34-21ad-49d2-8132-eae804c3af53",
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_AVL
	VALUES ("67618d34-21ad-49d2-8132-eae804c3af53",
	"59bf8ef2-3253-4390-b645-23c1de6d1642",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d");
INSERT INTO V_VAL
	VALUES ("eba45cc9-1fe7-4af4-824c-f0a585f0548e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_BIN
	VALUES ("eba45cc9-1fe7-4af4-824c-f0a585f0548e",
	"421a6b95-3d13-45b7-9658-9a1c9986ef38",
	"67618d34-21ad-49d2-8132-eae804c3af53",
	'==');
INSERT INTO V_VAL
	VALUES ("421a6b95-3d13-45b7-9658-9a1c9986ef38",
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_LEN
	VALUES ("421a6b95-3d13-45b7-9658-9a1c9986ef38",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	14,
	29);
INSERT INTO V_VAL
	VALUES ("e5965383-ecfc-4821-94ed-11a91edfa2c8",
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_TVL
	VALUES ("e5965383-ecfc-4821-94ed-11a91edfa2c8",
	"22c3ca93-4931-4ff9-8e31-16a9fc75b6e2");
INSERT INTO V_VAL
	VALUES ("ebf44fab-feb2-46b8-a553-038ec7d33e1d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_BIN
	VALUES ("ebf44fab-feb2-46b8-a553-038ec7d33e1d",
	"2cec3de9-b844-4d24-9e0a-825776fc9b59",
	"e5965383-ecfc-4821-94ed-11a91edfa2c8",
	'>=');
INSERT INTO V_VAL
	VALUES ("d7b234f6-5b65-4a04-934a-6a1c3743cc28",
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_IRF
	VALUES ("d7b234f6-5b65-4a04-934a-6a1c3743cc28",
	"5ced7580-cd99-4f83-bb50-be338f225f86");
INSERT INTO V_VAL
	VALUES ("2cec3de9-b844-4d24-9e0a-825776fc9b59",
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74");
INSERT INTO V_AVL
	VALUES ("2cec3de9-b844-4d24-9e0a-825776fc9b59",
	"d7b234f6-5b65-4a04-934a-6a1c3743cc28",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"750e35cc-6a44-4329-8738-d31e94569d45");
INSERT INTO V_VAR
	VALUES ("5ced7580-cd99-4f83-bb50-be338f225f86",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5ced7580-cd99-4f83-bb50-be338f225f86",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("fc97078b-2bef-4ed7-81e7-d96f9cd3d295",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("fc97078b-2bef-4ed7-81e7-d96f9cd3d295",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("22c3ca93-4931-4ff9-8e31-16a9fc75b6e2",
	"bdafbfc0-83c6-4b9c-b421-563ecf10fd74",
	'elapsedSpan',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("22c3ca93-4931-4ff9-8e31-16a9fc75b6e2",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("fcd942e3-ef4f-42bd-aace-5b2b2fd71134",
	1,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	12,
	39,
	0,
	0,
	12,
	54,
	12,
	58,
	0,
	0,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c5b45167-80ea-41e1-a955-ef42d69fbf26",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134",
	"8cf8c930-72f9-43c0-931a-26c6b5b4585e",
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES ("c5b45167-80ea-41e1-a955-ef42d69fbf26",
	"702f0cef-3c52-4875-b8ed-b1e9e51d6a9b",
	1,
	'one',
	"a67e6f13-1f2a-466c-8c45-17b5b2853db6");
INSERT INTO ACT_SR
	VALUES ("c5b45167-80ea-41e1-a955-ef42d69fbf26");
INSERT INTO ACT_LNK
	VALUES ("c123f898-e8b8-4e42-bb85-d47956ccaaa4",
	'''is currently executing within''',
	"c5b45167-80ea-41e1-a955-ef42d69fbf26",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES ("8cf8c930-72f9-43c0-931a-26c6b5b4585e",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134",
	"00000000-0000-0000-0000-000000000000",
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES ("8cf8c930-72f9-43c0-931a-26c6b5b4585e",
	"dd057179-ae28-4c34-9ec8-2bc86f5f910e",
	"59ac77cb-a63f-4033-8cbc-905e7d6e351c",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("a67e6f13-1f2a-466c-8c45-17b5b2853db6",
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_IRF
	VALUES ("a67e6f13-1f2a-466c-8c45-17b5b2853db6",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("59ac77cb-a63f-4033-8cbc-905e7d6e351c",
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_TVL
	VALUES ("59ac77cb-a63f-4033-8cbc-905e7d6e351c",
	"22c3ca93-4931-4ff9-8e31-16a9fc75b6e2");
INSERT INTO V_VAL
	VALUES ("3c4703c6-b574-493c-b22c-7732ec944d45",
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_IRF
	VALUES ("3c4703c6-b574-493c-b22c-7732ec944d45",
	"702f0cef-3c52-4875-b8ed-b1e9e51d6a9b");
INSERT INTO V_VAL
	VALUES ("69ecf0b8-263d-424b-b304-49e50e2d3eb8",
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_AVL
	VALUES ("69ecf0b8-263d-424b-b304-49e50e2d3eb8",
	"3c4703c6-b574-493c-b22c-7732ec944d45",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("dd057179-ae28-4c34-9ec8-2bc86f5f910e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_BIN
	VALUES ("dd057179-ae28-4c34-9ec8-2bc86f5f910e",
	"5ca99d28-b7a3-4cdd-abb6-3d2304697d57",
	"69ecf0b8-263d-424b-b304-49e50e2d3eb8",
	'-');
INSERT INTO V_VAL
	VALUES ("f045080a-90a8-4152-b96d-1921a6847846",
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_IRF
	VALUES ("f045080a-90a8-4152-b96d-1921a6847846",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("5ca99d28-b7a3-4cdd-abb6-3d2304697d57",
	0,
	0,
	13,
	52,
	56,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134");
INSERT INTO V_AVL
	VALUES ("5ca99d28-b7a3-4cdd-abb6-3d2304697d57",
	"f045080a-90a8-4152-b96d-1921a6847846",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"5542b20c-c95b-4c73-9a69-58fa78e884f3");
INSERT INTO V_VAR
	VALUES ("702f0cef-3c52-4875-b8ed-b1e9e51d6a9b",
	"fcd942e3-ef4f-42bd-aace-5b2b2fd71134",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("702f0cef-3c52-4875-b8ed-b1e9e51d6a9b",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("45e25353-3081-434a-85b7-d0fa06f4def3",
	1,
	0,
	0,
	'',
	'',
	'',
	17,
	3,
	16,
	64,
	0,
	0,
	16,
	77,
	16,
	80,
	0,
	0,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9193a30e-2d1c-404a-97bf-58c02a5a0b07",
	"45e25353-3081-434a-85b7-d0fa06f4def3",
	"9425ee6e-ce1c-45d1-85af-2bca9d109e3e",
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES ("9193a30e-2d1c-404a-97bf-58c02a5a0b07",
	"89e368cd-4acf-4e1d-b13d-288b89700c5a",
	1,
	'one',
	"31b1654d-b62b-4f73-ba5d-414b78766343");
INSERT INTO ACT_SR
	VALUES ("9193a30e-2d1c-404a-97bf-58c02a5a0b07");
INSERT INTO ACT_LNK
	VALUES ("e02f46f6-a4ed-4d81-a584-49e5c7e9ee70",
	'''is currently executing within''',
	"9193a30e-2d1c-404a-97bf-58c02a5a0b07",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"85704830-cf0c-4b6f-9014-8aaaeb57ae52",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES ("85704830-cf0c-4b6f-9014-8aaaeb57ae52",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES ("9425ee6e-ce1c-45d1-85af-2bca9d109e3e",
	"45e25353-3081-434a-85b7-d0fa06f4def3",
	"00000000-0000-0000-0000-000000000000",
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES ("9425ee6e-ce1c-45d1-85af-2bca9d109e3e",
	"afbb07e9-b872-43cc-9af2-d41c27f7e680",
	"af78232c-cfb3-4f73-b31d-866ec8117d4e",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("31b1654d-b62b-4f73-ba5d-414b78766343",
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_IRF
	VALUES ("31b1654d-b62b-4f73-ba5d-414b78766343",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("af78232c-cfb3-4f73-b31d-866ec8117d4e",
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_TVL
	VALUES ("af78232c-cfb3-4f73-b31d-866ec8117d4e",
	"22c3ca93-4931-4ff9-8e31-16a9fc75b6e2");
INSERT INTO V_VAL
	VALUES ("7f7583f9-1e83-4b16-8488-40df4019fa39",
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_IRF
	VALUES ("7f7583f9-1e83-4b16-8488-40df4019fa39",
	"89e368cd-4acf-4e1d-b13d-288b89700c5a");
INSERT INTO V_VAL
	VALUES ("2dac889e-1e7d-4783-a3a0-c37ed780775f",
	0,
	0,
	17,
	30,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_AVL
	VALUES ("2dac889e-1e7d-4783-a3a0-c37ed780775f",
	"7f7583f9-1e83-4b16-8488-40df4019fa39",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("afbb07e9-b872-43cc-9af2-d41c27f7e680",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_BIN
	VALUES ("afbb07e9-b872-43cc-9af2-d41c27f7e680",
	"0d1f4554-1fc7-453d-a9dc-904fd4bbddc5",
	"2dac889e-1e7d-4783-a3a0-c37ed780775f",
	'-');
INSERT INTO V_VAL
	VALUES ("bd546d6d-6951-449e-9b7a-8d6ecac892f0",
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_IRF
	VALUES ("bd546d6d-6951-449e-9b7a-8d6ecac892f0",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("0d1f4554-1fc7-453d-a9dc-904fd4bbddc5",
	0,
	0,
	17,
	42,
	46,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"45e25353-3081-434a-85b7-d0fa06f4def3");
INSERT INTO V_AVL
	VALUES ("0d1f4554-1fc7-453d-a9dc-904fd4bbddc5",
	"bd546d6d-6951-449e-9b7a-8d6ecac892f0",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"5542b20c-c95b-4c73-9a69-58fa78e884f3");
INSERT INTO V_VAR
	VALUES ("89e368cd-4acf-4e1d-b13d-288b89700c5a",
	"45e25353-3081-434a-85b7-d0fa06f4def3",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("89e368cd-4acf-4e1d-b13d-288b89700c5a",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO ACT_BLK
	VALUES ("a11e7e5f-9d80-44fc-b513-f5aeda900fd7",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	19,
	3,
	19,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a45a3561-1592-4125-a37c-8d6782adacc7",
	"a11e7e5f-9d80-44fc-b513-f5aeda900fd7",
	"00000000-0000-0000-0000-000000000000",
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES ("a45a3561-1592-4125-a37c-8d6782adacc7",
	"0522fd1e-e71a-4f62-ae19-aeabbcdcfff2",
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES ("dd99edfd-071e-4fb5-bd0d-dd779303f557",
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"a11e7e5f-9d80-44fc-b513-f5aeda900fd7");
INSERT INTO V_LST
	VALUES ("dd99edfd-071e-4fb5-bd0d-dd779303f557",
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES ("dd99edfd-071e-4fb5-bd0d-dd779303f557",
	"a45a3561-1592-4125-a37c-8d6782adacc7",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	19,
	20);
INSERT INTO ACT_BLK
	VALUES ("fe1a8f10-6961-4c57-823b-f739a5c097fc",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	29,
	3,
	25,
	47,
	0,
	0,
	25,
	59,
	25,
	63,
	0,
	0,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a5160f23-0707-4269-82ea-3eebbb234a5c",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc",
	"413c1de6-6896-480d-8b28-0c882867a457",
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES ("a5160f23-0707-4269-82ea-3eebbb234a5c",
	"88e6268b-13a3-4dc5-9563-9d37e5e5258f",
	1,
	'one',
	"07818d1e-b589-4053-a07e-2dd58207c88d");
INSERT INTO ACT_SR
	VALUES ("a5160f23-0707-4269-82ea-3eebbb234a5c");
INSERT INTO ACT_LNK
	VALUES ("100b4d4c-9da0-46f8-a609-5055720a52e1",
	'''has open''',
	"a5160f23-0707-4269-82ea-3eebbb234a5c",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"00000000-0000-0000-0000-000000000000",
	2,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES ("413c1de6-6896-480d-8b28-0c882867a457",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc",
	"941bf47e-5388-476a-b648-0c565ad42c1b",
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES ("413c1de6-6896-480d-8b28-0c882867a457",
	"3ea630af-10df-4093-841e-b072f7a35fd8",
	"58a4a72d-7fce-452f-b3d0-5208f05fbfd2",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("941bf47e-5388-476a-b648-0c565ad42c1b",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc",
	"00000000-0000-0000-0000-000000000000",
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES ("941bf47e-5388-476a-b648-0c565ad42c1b",
	1,
	0,
	29,
	12,
	29,
	18,
	25,
	47,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("941bf47e-5388-476a-b648-0c565ad42c1b");
INSERT INTO E_GSME
	VALUES ("941bf47e-5388-476a-b648-0c565ad42c1b",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de");
INSERT INTO E_GEN
	VALUES ("941bf47e-5388-476a-b648-0c565ad42c1b",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("07818d1e-b589-4053-a07e-2dd58207c88d",
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc");
INSERT INTO V_IRF
	VALUES ("07818d1e-b589-4053-a07e-2dd58207c88d",
	"fc97078b-2bef-4ed7-81e7-d96f9cd3d295");
INSERT INTO V_VAL
	VALUES ("6794260d-b969-4024-989c-e4eeac5b2350",
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc");
INSERT INTO V_IRF
	VALUES ("6794260d-b969-4024-989c-e4eeac5b2350",
	"88e6268b-13a3-4dc5-9563-9d37e5e5258f");
INSERT INTO V_VAL
	VALUES ("8d3c0a55-623a-41f1-97de-49132dac967d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc");
INSERT INTO V_UNY
	VALUES ("8d3c0a55-623a-41f1-97de-49132dac967d",
	"6794260d-b969-4024-989c-e4eeac5b2350",
	'empty');
INSERT INTO V_VAL
	VALUES ("58a4a72d-7fce-452f-b3d0-5208f05fbfd2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc");
INSERT INTO V_UNY
	VALUES ("58a4a72d-7fce-452f-b3d0-5208f05fbfd2",
	"8d3c0a55-623a-41f1-97de-49132dac967d",
	'not');
INSERT INTO V_VAR
	VALUES ("88e6268b-13a3-4dc5-9563-9d37e5e5258f",
	"fe1a8f10-6961-4c57-823b-f739a5c097fc",
	'openAchievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("88e6268b-13a3-4dc5-9563-9d37e5e5258f",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO ACT_BLK
	VALUES ("3ea630af-10df-4093-841e-b072f7a35fd8",
	0,
	0,
	0,
	'',
	'',
	'',
	27,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"6ad3a31c-d272-4025-afeb-5f8681bc0fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("42c6cd49-6476-46b5-88e8-7b60b19e6f1c",
	"3ea630af-10df-4093-841e-b072f7a35fd8",
	"00000000-0000-0000-0000-000000000000",
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES ("42c6cd49-6476-46b5-88e8-7b60b19e6f1c",
	"d6a01bcc-6245-4c42-9882-7d744de2929b",
	"88e6268b-13a3-4dc5-9563-9d37e5e5258f",
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES ("24389471-1521-4fce-8365-adf9c1772b4a",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	'nextGoal',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'// Advance to the next goal or start the first one if one
//   is currently not exectuing.

//  If there is a goal currently executing, notify it that its execution
//    has completed.
//  Otherwise, create and start a goal for the first goal specification
//    if one exists.
select any session from instances of WorkoutSession;  // WorkoutSession is a singleton.
if ( not empty session )
  select one goal related by session->Goal[R11.''is currently executing''];
  if ( not empty goal )
    generate Goal1:Completed to goal;
  else
    Goal::create( sequenceNumber: GoalSpecOrigin );
  end if;
end if;',
	1,
	'',
	"0d01f42a-bc05-4492-a99e-89c886b75c07");
INSERT INTO ACT_OPB
	VALUES ("a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	"24389471-1521-4fce-8365-adf9c1772b4a");
INSERT INTO ACT_ACT
	VALUES ("a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	'class operation',
	0,
	"2f57129e-cc81-4145-bc49-9b555b120384",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::nextGoal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2f57129e-cc81-4145-bc49-9b555b120384",
	1,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	8,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b6a0cb7a-298d-4b87-9de9-8e1ccab0ac3e",
	"2f57129e-cc81-4145-bc49-9b555b120384",
	"cb0ac320-06bf-475c-9604-c019780ea1bd",
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES ("b6a0cb7a-298d-4b87-9de9-8e1ccab0ac3e",
	"a9851d16-293d-462d-bf60-f05076c581c3",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	8,
	38);
INSERT INTO ACT_SMT
	VALUES ("cb0ac320-06bf-475c-9604-c019780ea1bd",
	"2f57129e-cc81-4145-bc49-9b555b120384",
	"00000000-0000-0000-0000-000000000000",
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES ("cb0ac320-06bf-475c-9604-c019780ea1bd",
	"72c9733f-1386-495b-8715-8687e430910d",
	"e9cc6b51-a0ed-4c24-8daf-b2399cae48ff",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("c2e8d1a8-d615-4a64-8628-086166b5d508",
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"2f57129e-cc81-4145-bc49-9b555b120384");
INSERT INTO V_IRF
	VALUES ("c2e8d1a8-d615-4a64-8628-086166b5d508",
	"a9851d16-293d-462d-bf60-f05076c581c3");
INSERT INTO V_VAL
	VALUES ("f17df606-1935-4335-8f02-29cd3463277e",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"2f57129e-cc81-4145-bc49-9b555b120384");
INSERT INTO V_UNY
	VALUES ("f17df606-1935-4335-8f02-29cd3463277e",
	"c2e8d1a8-d615-4a64-8628-086166b5d508",
	'empty');
INSERT INTO V_VAL
	VALUES ("e9cc6b51-a0ed-4c24-8daf-b2399cae48ff",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"2f57129e-cc81-4145-bc49-9b555b120384");
INSERT INTO V_UNY
	VALUES ("e9cc6b51-a0ed-4c24-8daf-b2399cae48ff",
	"f17df606-1935-4335-8f02-29cd3463277e",
	'not');
INSERT INTO V_VAR
	VALUES ("a9851d16-293d-462d-bf60-f05076c581c3",
	"2f57129e-cc81-4145-bc49-9b555b120384",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a9851d16-293d-462d-bf60-f05076c581c3",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("72c9733f-1386-495b-8715-8687e430910d",
	1,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	10,
	39,
	0,
	0,
	10,
	44,
	10,
	48,
	0,
	0,
	0,
	"a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5bda874c-fc50-4fa1-9d03-a948edbfbfc2",
	"72c9733f-1386-495b-8715-8687e430910d",
	"747997af-5c6e-497d-9292-9a956fd1e06c",
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES ("5bda874c-fc50-4fa1-9d03-a948edbfbfc2",
	"e9a33fb3-52ab-40e2-84ac-f8492b16875e",
	1,
	'one',
	"a31bb057-8b8a-4f73-86ac-e8210e9cc9b1");
INSERT INTO ACT_SR
	VALUES ("5bda874c-fc50-4fa1-9d03-a948edbfbfc2");
INSERT INTO ACT_LNK
	VALUES ("5a26f456-8cf6-4807-b1fd-25eb099e2aba",
	'''is currently executing''',
	"5bda874c-fc50-4fa1-9d03-a948edbfbfc2",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES ("747997af-5c6e-497d-9292-9a956fd1e06c",
	"72c9733f-1386-495b-8715-8687e430910d",
	"00000000-0000-0000-0000-000000000000",
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES ("747997af-5c6e-497d-9292-9a956fd1e06c",
	"df6ac069-cf75-4256-b4ed-2b3b94fca6b1",
	"52956688-0c04-40f5-b998-90d787748dac",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bea305f0-5ca6-43a6-9a84-00873b0d821d",
	"72c9733f-1386-495b-8715-8687e430910d",
	"00000000-0000-0000-0000-000000000000",
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES ("bea305f0-5ca6-43a6-9a84-00873b0d821d",
	"5014a7e4-507f-4ffe-9d17-82e539c1b3ad",
	"747997af-5c6e-497d-9292-9a956fd1e06c");
INSERT INTO V_VAL
	VALUES ("a31bb057-8b8a-4f73-86ac-e8210e9cc9b1",
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"72c9733f-1386-495b-8715-8687e430910d");
INSERT INTO V_IRF
	VALUES ("a31bb057-8b8a-4f73-86ac-e8210e9cc9b1",
	"a9851d16-293d-462d-bf60-f05076c581c3");
INSERT INTO V_VAL
	VALUES ("baab138b-5cbd-4e86-bc40-858f3a414259",
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"72c9733f-1386-495b-8715-8687e430910d");
INSERT INTO V_IRF
	VALUES ("baab138b-5cbd-4e86-bc40-858f3a414259",
	"e9a33fb3-52ab-40e2-84ac-f8492b16875e");
INSERT INTO V_VAL
	VALUES ("8b213b02-4c89-43b4-87af-22b918d38921",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"72c9733f-1386-495b-8715-8687e430910d");
INSERT INTO V_UNY
	VALUES ("8b213b02-4c89-43b4-87af-22b918d38921",
	"baab138b-5cbd-4e86-bc40-858f3a414259",
	'empty');
INSERT INTO V_VAL
	VALUES ("52956688-0c04-40f5-b998-90d787748dac",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"72c9733f-1386-495b-8715-8687e430910d");
INSERT INTO V_UNY
	VALUES ("52956688-0c04-40f5-b998-90d787748dac",
	"8b213b02-4c89-43b4-87af-22b918d38921",
	'not');
INSERT INTO V_VAR
	VALUES ("e9a33fb3-52ab-40e2-84ac-f8492b16875e",
	"72c9733f-1386-495b-8715-8687e430910d",
	'goal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("e9a33fb3-52ab-40e2-84ac-f8492b16875e",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("df6ac069-cf75-4256-b4ed-2b3b94fca6b1",
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	12,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("af0cf5d3-4a63-49f3-a4c0-11a70a963689",
	"df6ac069-cf75-4256-b4ed-2b3b94fca6b1",
	"00000000-0000-0000-0000-000000000000",
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES ("af0cf5d3-4a63-49f3-a4c0-11a70a963689",
	1,
	0,
	12,
	14,
	12,
	20,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("af0cf5d3-4a63-49f3-a4c0-11a70a963689");
INSERT INTO E_GSME
	VALUES ("af0cf5d3-4a63-49f3-a4c0-11a70a963689",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de");
INSERT INTO E_GEN
	VALUES ("af0cf5d3-4a63-49f3-a4c0-11a70a963689",
	"e9a33fb3-52ab-40e2-84ac-f8492b16875e");
INSERT INTO ACT_BLK
	VALUES ("5014a7e4-507f-4ffe-9d17-82e539c1b3ad",
	0,
	0,
	0,
	'Goal',
	'',
	'',
	14,
	5,
	14,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a3e3cdb8-42f8-44ef-a52f-85f0bc6de015",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0875aed3-95da-420b-aa58-86776b4d6248",
	"5014a7e4-507f-4ffe-9d17-82e539c1b3ad",
	"00000000-0000-0000-0000-000000000000",
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES ("0875aed3-95da-420b-aa58-86776b4d6248",
	"b104ebc0-aeee-4076-a86c-f2eeea09bf72",
	"00000000-0000-0000-0000-000000000000",
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES ("4c0f1d4e-faa1-431b-a7d7-d2970373b33b",
	0,
	0,
	14,
	35,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"5014a7e4-507f-4ffe-9d17-82e539c1b3ad");
INSERT INTO V_SCV
	VALUES ("4c0f1d4e-faa1-431b-a7d7-d2970373b33b",
	"0655631d-3463-41c1-852f-18163e7722e5",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_PAR
	VALUES ("4c0f1d4e-faa1-431b-a7d7-d2970373b33b",
	"0875aed3-95da-420b-aa58-86776b4d6248",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"00000000-0000-0000-0000-000000000000",
	14,
	19);
INSERT INTO O_NBATTR
	VALUES ("c967d826-200c-405a-ab98-38e0637f54c7",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_BATTR
	VALUES ("c967d826-200c-405a-ab98-38e0637f54c7",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ATTR
	VALUES ("c967d826-200c-405a-ab98-38e0637f54c7",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"5542b20c-c95b-4c73-9a69-58fa78e884f3",
	'disposition',
	'The disposition of this goal.  See data type descriptions for details.
This attribute represents the logical or semantic disposition of the goal.
For example, a disposition indicating the need to increase the value in question
for a heart-rate goal means that activity should be increased to drive up the 
heart rate.  Since pace is the inverse of speed, a disposition indicating 
the need to increase the value in question (pace) means that the user must
increase speed, causing a lower (faster) pace number.',
	'',
	'disposition',
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("5542b20c-c95b-4c73-9a69-58fa78e884f3",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_BATTR
	VALUES ("5542b20c-c95b-4c73-9a69-58fa78e884f3",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ATTR
	VALUES ("5542b20c-c95b-4c73-9a69-58fa78e884f3",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"0a8d6e52-5d8c-469d-b45f-25a2d01394cb",
	'start',
	'Captures the starting point of the span for this particular goal so 
that the end of the goal execution period can be determined.  In other
words, using the value of this attribute together with the span specified
by the associated goal specification, the goal knows when it is finished.

For distance-based goals, it is expressed as the accumulated distance
in meters for the associated workout session at the time this goal
execution commenced.

For time-based goals, it is expressed as the elapsed time in seconds
for the associated workout session at the time this goal execution
commenced.',
	'',
	'start',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("0a8d6e52-5d8c-469d-b45f-25a2d01394cb",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_BATTR
	VALUES ("0a8d6e52-5d8c-469d-b45f-25a2d01394cb",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ATTR
	VALUES ("0a8d6e52-5d8c-469d-b45f-25a2d01394cb",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"00000000-0000-0000-0000-000000000000",
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	"ba5eda7a-def5-0000-0000-000000000005",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("3a5caa66-4658-4a15-a18f-a2ac6f707a25",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_BATTR
	VALUES ("3a5caa66-4658-4a15-a18f-a2ac6f707a25",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ATTR
	VALUES ("3a5caa66-4658-4a15-a18f-a2ac6f707a25",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f7043385-0988-4b53-a097-900838ad5695",
	'current_state',
	'',
	'',
	'current_state',
	0,
	"ba5eda7a-def5-0000-0000-000000000006",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("f7043385-0988-4b53-a097-900838ad5695",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_BATTR
	VALUES ("f7043385-0988-4b53-a097-900838ad5695",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ATTR
	VALUES ("f7043385-0988-4b53-a097-900838ad5695",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7",
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ID
	VALUES (1,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO O_ID
	VALUES (2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO SM_ISM
	VALUES ("286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO SM_SM
	VALUES ("286a812a-1619-45fe-9bb1-a0e22ed433cb",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_LEVT
	VALUES ("bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES ("d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES ("b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES ("01258120-9fd1-491f-b7ed-6838e0c60c49",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES ("01258120-9fd1-491f-b7ed-6838e0c60c49",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("01258120-9fd1-491f-b7ed-6838e0c60c49",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("01258120-9fd1-491f-b7ed-6838e0c60c49",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("58a57aee-cd73-481d-b830-36e0463731ac",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49");
INSERT INTO SM_AH
	VALUES ("58a57aee-cd73-481d-b830-36e0463731ac",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("58a57aee-cd73-481d-b830-36e0463731ac",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'// Determine whether this goal is currently being achieved.
disposition = self.evaluateAchievement();

// Update achievement records if necessary.  There are four cases:
//   0. Still not achieving this goal. 
//   1. Just started achieving this goal.
//   2. Just stopped achieving this goal.
//   3. Still achieving this goal.
// For cases 0 and 3, there is nothing to be done for achievement records.
// Case 1 requires the creation of a new achievment record, storing the start time.
// Case 2 requires the storing of the end time for the open achievement record.
if ( (self.disposition != GoalDisposition::Achieving) and (disposition == GoalDisposition::Achieving) )
  // Case 1, create achievement record, store start time, relate it as open record.
  create object instance achievement of Achievement;
  relate self to achievement across R14.''has open'';
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  achievement.startTime = workoutTimer.time;
elif ( (self.disposition == GoalDisposition::Achieving) and (disposition != GoalDisposition::Achieving) )
  // Case 2, store end time, relate as recorded record, unrelate as open record.
  select one achievement related by self->Achievement[R14.''has open''];
  achievement.close();
end if;

// Update disposition of this goal.
self.disposition = disposition;

// Determine whether execution of this goal is complete, 
//  and if so, advance to the next one if it exists.
self.evaluateCompletion();',
	'');
INSERT INTO ACT_SAB
	VALUES ("7525f120-da5d-4136-af8d-385cdbfb9cbb",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"58a57aee-cd73-481d-b830-36e0463731ac");
INSERT INTO ACT_ACT
	VALUES ("7525f120-da5d-4136-af8d-385cdbfb9cbb",
	'state',
	0,
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::Executing',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("97f91b42-18b8-4443-88d8-822c45a99a30",
	0,
	0,
	0,
	'',
	'',
	'',
	30,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	19,
	77,
	0,
	"7525f120-da5d-4136-af8d-385cdbfb9cbb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("05037c02-61ac-4857-9f18-97de0264b560",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"574450e4-521b-45f2-b3fd-b0ed92d76f59",
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES ("05037c02-61ac-4857-9f18-97de0264b560",
	"2e7d67de-c9dd-4f43-8798-6e672776cc45",
	"67e79e47-b3b3-4bf9-b10a-1f9e91937ff0",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("574450e4-521b-45f2-b3fd-b0ed92d76f59",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"58a7a670-6941-4524-8c7e-e82f4a10f2cc",
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES ("574450e4-521b-45f2-b3fd-b0ed92d76f59",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	"83344fe7-3b36-40e6-a043-7a030998ca79",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("aa939011-ee1b-42ff-984c-45cc886ec407",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"00000000-0000-0000-0000-000000000000",
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES ("aa939011-ee1b-42ff-984c-45cc886ec407",
	"4975ba3b-95b3-4577-82fd-fa25d57a3c3f",
	"bdd8fec4-6b0d-4f5b-b242-48598a9193ce",
	"574450e4-521b-45f2-b3fd-b0ed92d76f59");
INSERT INTO ACT_SMT
	VALUES ("58a7a670-6941-4524-8c7e-e82f4a10f2cc",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"eeb3dd2f-6e4c-4ffa-b208-f3f148a8b432",
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES ("58a7a670-6941-4524-8c7e-e82f4a10f2cc",
	"8c036c94-410f-4e9e-9e27-aaf53eb6e78d",
	"a5154b25-ab01-4bdb-911f-458cc700d2e1",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("eeb3dd2f-6e4c-4ffa-b208-f3f148a8b432",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	"00000000-0000-0000-0000-000000000000",
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES ("eeb3dd2f-6e4c-4ffa-b208-f3f148a8b432",
	"0d01f42a-bc05-4492-a99e-89c886b75c07",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70",
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("67e79e47-b3b3-4bf9-b10a-1f9e91937ff0",
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_TVL
	VALUES ("67e79e47-b3b3-4bf9-b10a-1f9e91937ff0",
	"eda8c027-8f0d-4b7e-a81b-101f6f09da88");
INSERT INTO V_VAL
	VALUES ("2e7d67de-c9dd-4f43-8798-6e672776cc45",
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_TRV
	VALUES ("2e7d67de-c9dd-4f43-8798-6e672776cc45",
	"531e939d-3051-465d-aaa6-037871bdc296",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70",
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("2210d31c-738b-40f5-b20f-33af3a5ec872",
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_IRF
	VALUES ("2210d31c-738b-40f5-b20f-33af3a5ec872",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70");
INSERT INTO V_VAL
	VALUES ("2949e000-2f05-40aa-b048-3a72f32c4f4c",
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_AVL
	VALUES ("2949e000-2f05-40aa-b048-3a72f32c4f4c",
	"2210d31c-738b-40f5-b20f-33af3a5ec872",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("2125ecc7-67e9-4872-9327-f7155f007919",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("2125ecc7-67e9-4872-9327-f7155f007919",
	"9bce3e2e-d637-41b6-8020-845126476e71",
	"2949e000-2f05-40aa-b048-3a72f32c4f4c",
	'!=');
INSERT INTO V_VAL
	VALUES ("9bce3e2e-d637-41b6-8020-845126476e71",
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_LEN
	VALUES ("9bce3e2e-d637-41b6-8020-845126476e71",
	"32cb2c18-4313-4253-a679-2d06b9b050bc",
	12,
	27);
INSERT INTO V_VAL
	VALUES ("b4c2e155-de84-4e6f-9148-50a66910e4f6",
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_TVL
	VALUES ("b4c2e155-de84-4e6f-9148-50a66910e4f6",
	"eda8c027-8f0d-4b7e-a81b-101f6f09da88");
INSERT INTO V_VAL
	VALUES ("de2b228b-2c4e-48e9-93c4-a3f330178cd4",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("de2b228b-2c4e-48e9-93c4-a3f330178cd4",
	"2eb16f4a-f607-479c-8b8c-6deb6b49d550",
	"b4c2e155-de84-4e6f-9148-50a66910e4f6",
	'==');
INSERT INTO V_VAL
	VALUES ("2eb16f4a-f607-479c-8b8c-6deb6b49d550",
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_LEN
	VALUES ("2eb16f4a-f607-479c-8b8c-6deb6b49d550",
	"32cb2c18-4313-4253-a679-2d06b9b050bc",
	12,
	75);
INSERT INTO V_VAL
	VALUES ("83344fe7-3b36-40e6-a043-7a030998ca79",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("83344fe7-3b36-40e6-a043-7a030998ca79",
	"de2b228b-2c4e-48e9-93c4-a3f330178cd4",
	"2125ecc7-67e9-4872-9327-f7155f007919",
	'and');
INSERT INTO V_VAL
	VALUES ("3a5f1f28-10f6-4a69-b1d7-c60a02544aa5",
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_IRF
	VALUES ("3a5f1f28-10f6-4a69-b1d7-c60a02544aa5",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70");
INSERT INTO V_VAL
	VALUES ("dcad95e1-507f-41b0-8931-b8cbfc39d4df",
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_AVL
	VALUES ("dcad95e1-507f-41b0-8931-b8cbfc39d4df",
	"3a5f1f28-10f6-4a69-b1d7-c60a02544aa5",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("efd06936-ca71-466b-b527-123f20c7f5c5",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("efd06936-ca71-466b-b527-123f20c7f5c5",
	"08a780a7-a4ae-4ce3-8b1f-88a46b607357",
	"dcad95e1-507f-41b0-8931-b8cbfc39d4df",
	'==');
INSERT INTO V_VAL
	VALUES ("08a780a7-a4ae-4ce3-8b1f-88a46b607357",
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_LEN
	VALUES ("08a780a7-a4ae-4ce3-8b1f-88a46b607357",
	"32cb2c18-4313-4253-a679-2d06b9b050bc",
	19,
	29);
INSERT INTO V_VAL
	VALUES ("eea136cd-f67a-4e46-928c-19c9525171d9",
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_TVL
	VALUES ("eea136cd-f67a-4e46-928c-19c9525171d9",
	"eda8c027-8f0d-4b7e-a81b-101f6f09da88");
INSERT INTO V_VAL
	VALUES ("1e09658b-d505-4e9a-bc13-fffc6fd65101",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("1e09658b-d505-4e9a-bc13-fffc6fd65101",
	"c355a056-c0ae-446c-b401-961ae5a3cd31",
	"eea136cd-f67a-4e46-928c-19c9525171d9",
	'!=');
INSERT INTO V_VAL
	VALUES ("c355a056-c0ae-446c-b401-961ae5a3cd31",
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_LEN
	VALUES ("c355a056-c0ae-446c-b401-961ae5a3cd31",
	"32cb2c18-4313-4253-a679-2d06b9b050bc",
	19,
	77);
INSERT INTO V_VAL
	VALUES ("bdd8fec4-6b0d-4f5b-b242-48598a9193ce",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_BIN
	VALUES ("bdd8fec4-6b0d-4f5b-b242-48598a9193ce",
	"1e09658b-d505-4e9a-bc13-fffc6fd65101",
	"efd06936-ca71-466b-b527-123f20c7f5c5",
	'and');
INSERT INTO V_VAL
	VALUES ("b94d52c3-9198-4855-b0aa-450e58508ac8",
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_IRF
	VALUES ("b94d52c3-9198-4855-b0aa-450e58508ac8",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70");
INSERT INTO V_VAL
	VALUES ("a5154b25-ab01-4bdb-911f-458cc700d2e1",
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_AVL
	VALUES ("a5154b25-ab01-4bdb-911f-458cc700d2e1",
	"b94d52c3-9198-4855-b0aa-450e58508ac8",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"c967d826-200c-405a-ab98-38e0637f54c7");
INSERT INTO V_VAL
	VALUES ("8c036c94-410f-4e9e-9e27-aaf53eb6e78d",
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"97f91b42-18b8-4443-88d8-822c45a99a30");
INSERT INTO V_TVL
	VALUES ("8c036c94-410f-4e9e-9e27-aaf53eb6e78d",
	"eda8c027-8f0d-4b7e-a81b-101f6f09da88");
INSERT INTO V_VAR
	VALUES ("eda8c027-8f0d-4b7e-a81b-101f6f09da88",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	'disposition',
	1,
	"581bce01-aba7-4236-a02f-a3833c4b660c");
INSERT INTO V_TRN
	VALUES ("eda8c027-8f0d-4b7e-a81b-101f6f09da88",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("b0b5d81f-0e37-418f-9668-f061e9a6ad70",
	"97f91b42-18b8-4443-88d8-822c45a99a30",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("b0b5d81f-0e37-418f-9668-f061e9a6ad70",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	1,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	17,
	64,
	0,
	0,
	17,
	77,
	17,
	80,
	0,
	0,
	0,
	"7525f120-da5d-4136-af8d-385cdbfb9cbb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("52977056-5dad-4e28-a549-12101ff9f4c8",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	"7682025a-2e5e-4a34-b413-9b68051c162a",
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES ("52977056-5dad-4e28-a549-12101ff9f4c8",
	"f2347c04-da91-4e79-ab8b-bcf9a2106600",
	1,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	14,
	41);
INSERT INTO ACT_SMT
	VALUES ("7682025a-2e5e-4a34-b413-9b68051c162a",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	"26be6648-1fd6-4436-aa54-3733386e5c1e",
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES ("7682025a-2e5e-4a34-b413-9b68051c162a",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70",
	"f2347c04-da91-4e79-ab8b-bcf9a2106600",
	'''has open''',
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES ("26be6648-1fd6-4436-aa54-3733386e5c1e",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	"18ab42c1-d951-41a0-8a5d-2a9b33ae8e28",
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES ("26be6648-1fd6-4436-aa54-3733386e5c1e",
	"5de94d23-6005-4845-85de-8da741ba7ad8",
	1,
	'one',
	"5957ba1d-ed9a-4b81-aedc-f039f8587b22");
INSERT INTO ACT_SR
	VALUES ("26be6648-1fd6-4436-aa54-3733386e5c1e");
INSERT INTO ACT_LNK
	VALUES ("688f7d4c-4693-466d-b228-5f888c08ee8a",
	'''is currently executing within''',
	"26be6648-1fd6-4436-aa54-3733386e5c1e",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"0416caf8-4c0c-46ca-8787-7c92e0ec8dc4",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES ("0416caf8-4c0c-46ca-8787-7c92e0ec8dc4",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES ("18ab42c1-d951-41a0-8a5d-2a9b33ae8e28",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	"00000000-0000-0000-0000-000000000000",
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES ("18ab42c1-d951-41a0-8a5d-2a9b33ae8e28",
	"97f38563-7652-4819-ad2f-eb697bb92948",
	"e000fd00-fd1c-4374-bfe8-192a2195b7e0",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("5957ba1d-ed9a-4b81-aedc-f039f8587b22",
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c");
INSERT INTO V_IRF
	VALUES ("5957ba1d-ed9a-4b81-aedc-f039f8587b22",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70");
INSERT INTO V_VAL
	VALUES ("ca11c350-0a29-448e-8f56-ce95608adb73",
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c");
INSERT INTO V_IRF
	VALUES ("ca11c350-0a29-448e-8f56-ce95608adb73",
	"f2347c04-da91-4e79-ab8b-bcf9a2106600");
INSERT INTO V_VAL
	VALUES ("e000fd00-fd1c-4374-bfe8-192a2195b7e0",
	1,
	0,
	18,
	15,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c");
INSERT INTO V_AVL
	VALUES ("e000fd00-fd1c-4374-bfe8-192a2195b7e0",
	"ca11c350-0a29-448e-8f56-ce95608adb73",
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	"137b4b40-f737-4f12-8897-f5e5b87963f0");
INSERT INTO V_VAL
	VALUES ("03dcfb72-c26c-4293-b9da-768d362bd2a3",
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c");
INSERT INTO V_IRF
	VALUES ("03dcfb72-c26c-4293-b9da-768d362bd2a3",
	"5de94d23-6005-4845-85de-8da741ba7ad8");
INSERT INTO V_VAL
	VALUES ("97f38563-7652-4819-ad2f-eb697bb92948",
	0,
	0,
	18,
	40,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c");
INSERT INTO V_AVL
	VALUES ("97f38563-7652-4819-ad2f-eb697bb92948",
	"03dcfb72-c26c-4293-b9da-768d362bd2a3",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAR
	VALUES ("f2347c04-da91-4e79-ab8b-bcf9a2106600",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	'achievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("f2347c04-da91-4e79-ab8b-bcf9a2106600",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO V_VAR
	VALUES ("5de94d23-6005-4845-85de-8da741ba7ad8",
	"9c6c70dd-e758-4007-9fcd-b6d527a5576c",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5de94d23-6005-4845-85de-8da741ba7ad8",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO ACT_BLK
	VALUES ("4975ba3b-95b3-4577-82fd-fa25d57a3c3f",
	1,
	0,
	0,
	'',
	'',
	'',
	22,
	3,
	21,
	43,
	0,
	0,
	21,
	55,
	21,
	59,
	0,
	0,
	0,
	"7525f120-da5d-4136-af8d-385cdbfb9cbb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("e013eb4b-e186-4f17-a1d3-e6e8d6382b8f",
	"4975ba3b-95b3-4577-82fd-fa25d57a3c3f",
	"7ac44a79-77d6-4d88-a359-d742e986a8ab",
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES ("e013eb4b-e186-4f17-a1d3-e6e8d6382b8f",
	"fd001f5c-017d-44a7-82f2-679d8ba16fa1",
	1,
	'one',
	"e258f246-10de-4580-b953-c86b4941529b");
INSERT INTO ACT_SR
	VALUES ("e013eb4b-e186-4f17-a1d3-e6e8d6382b8f");
INSERT INTO ACT_LNK
	VALUES ("0f34d8b8-503a-4a58-9ba1-459eceadd7e6",
	'''has open''',
	"e013eb4b-e186-4f17-a1d3-e6e8d6382b8f",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"00000000-0000-0000-0000-000000000000",
	2,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES ("7ac44a79-77d6-4d88-a359-d742e986a8ab",
	"4975ba3b-95b3-4577-82fd-fa25d57a3c3f",
	"00000000-0000-0000-0000-000000000000",
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES ("7ac44a79-77d6-4d88-a359-d742e986a8ab",
	"d6a01bcc-6245-4c42-9882-7d744de2929b",
	"fd001f5c-017d-44a7-82f2-679d8ba16fa1",
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("e258f246-10de-4580-b953-c86b4941529b",
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4975ba3b-95b3-4577-82fd-fa25d57a3c3f");
INSERT INTO V_IRF
	VALUES ("e258f246-10de-4580-b953-c86b4941529b",
	"b0b5d81f-0e37-418f-9668-f061e9a6ad70");
INSERT INTO V_VAR
	VALUES ("fd001f5c-017d-44a7-82f2-679d8ba16fa1",
	"4975ba3b-95b3-4577-82fd-fa25d57a3c3f",
	'achievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("fd001f5c-017d-44a7-82f2-679d8ba16fa1",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO SM_STATE
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EIGN
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("54d9deb4-34fb-4087-9c38-d5e96d05c00a",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"b8e58204-40b2-43ae-b622-a526e1f0a8ca");
INSERT INTO SM_AH
	VALUES ("54d9deb4-34fb-4087-9c38-d5e96d05c00a",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("54d9deb4-34fb-4087-9c38-d5e96d05c00a",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'// Stop executing this goal and begin executing the next one, if there is one.

// Stop the goal-evaluation timer, ignoring the return code which indicates 
//   whether a timer event was in flight when the timer was cancelled.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );

// If this goal has an open achievement record, close it.
select one openAchievement related by self->Achievement[R14.''has open''];
if ( not empty openAchievement )
  openAchievement.close();
end if;

// Add this goal to the collection of those that have already executed.
select one session related by self->WorkoutSession[R11.''is currently executing within''];
relate self to session across R13.''was executed within'';

// Remove this goal from the collection of currently executing ones.
unrelate self from session across R11.''is currently executing within'';

// Find the next goal specification in the sequence and start executing it, if it exists.
select one currentGoalSpec related by self->GoalSpec[R9.''specified by''];

select any nextGoalSpec related by session->GoalSpec[R10.''includes'']
  where ( selected.sequenceNumber == (currentGoalSpec.sequenceNumber + 1) );
  
if ( not empty nextGoalSpec )
  Goal::create( sequenceNumber: nextGoalSpec.sequenceNumber );
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES ("c173e0cd-4ca4-4463-b54d-0b683044cf92",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"54d9deb4-34fb-4087-9c38-d5e96d05c00a");
INSERT INTO ACT_ACT
	VALUES ("c173e0cd-4ca4-4463-b54d-0b683044cf92",
	'state',
	0,
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::Completed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7ad59cf5-0e78-4acb-863a-105c4af0a237",
	1,
	0,
	1,
	'',
	'',
	'',
	26,
	1,
	23,
	45,
	0,
	0,
	23,
	54,
	23,
	58,
	0,
	0,
	0,
	"c173e0cd-4ca4-4463-b54d-0b683044cf92",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1c0447fb-8c19-430c-b078-6b9ff41d8d67",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"d9dae60a-57b6-40d0-a905-c93680ba14f5",
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES ("1c0447fb-8c19-430c-b078-6b9ff41d8d67",
	"6b434a39-05b4-46aa-bbe9-657f607d3412",
	"59fded99-6756-4f73-9890-51b12e9389a2",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d9dae60a-57b6-40d0-a905-c93680ba14f5",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"636b4a99-513d-4d7a-931b-b8a6e9b70a5f",
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES ("d9dae60a-57b6-40d0-a905-c93680ba14f5",
	"751dabca-c24c-4c91-98e0-083956cba12f",
	1,
	'one',
	"1215bfd8-00c3-4cf8-b9e0-ebe6717c3a43");
INSERT INTO ACT_SR
	VALUES ("d9dae60a-57b6-40d0-a905-c93680ba14f5");
INSERT INTO ACT_LNK
	VALUES ("958deb3d-d9e2-4fdc-b295-d88fab9c026f",
	'''has open''',
	"d9dae60a-57b6-40d0-a905-c93680ba14f5",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"00000000-0000-0000-0000-000000000000",
	2,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES ("636b4a99-513d-4d7a-931b-b8a6e9b70a5f",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"46ff3f67-b5b8-42d1-8374-1ce048ff79ca",
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES ("636b4a99-513d-4d7a-931b-b8a6e9b70a5f",
	"52e513ff-c33b-4c4c-81f8-95fd58ce2774",
	"b2c80f4b-1d4e-42ef-8c2c-46181e89fd7f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("46ff3f67-b5b8-42d1-8374-1ce048ff79ca",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"b83b4a65-a5ec-4119-8190-e62222191d0a",
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES ("46ff3f67-b5b8-42d1-8374-1ce048ff79ca",
	"712d14c4-1c3f-4b25-96b5-33b47ee74b37",
	1,
	'one',
	"80c611ba-afb9-489a-bb15-e8e68129a144");
INSERT INTO ACT_SR
	VALUES ("46ff3f67-b5b8-42d1-8374-1ce048ff79ca");
INSERT INTO ACT_LNK
	VALUES ("3fbc76a6-f3ce-4b8a-8c48-ce59d97125a2",
	'''is currently executing within''',
	"46ff3f67-b5b8-42d1-8374-1ce048ff79ca",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES ("b83b4a65-a5ec-4119-8190-e62222191d0a",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"0cc199e0-1dfb-4330-a16b-528205157b0c",
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES ("b83b4a65-a5ec-4119-8190-e62222191d0a",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba",
	"712d14c4-1c3f-4b25-96b5-33b47ee74b37",
	'''was executed within''',
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES ("0cc199e0-1dfb-4330-a16b-528205157b0c",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"a45c2e23-8d07-4839-a1a9-4b744e7b0675",
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES ("0cc199e0-1dfb-4330-a16b-528205157b0c",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba",
	"712d14c4-1c3f-4b25-96b5-33b47ee74b37",
	'''is currently executing within''',
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES ("a45c2e23-8d07-4839-a1a9-4b744e7b0675",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"9eb99a25-f9a3-43bd-abd0-c73fe054edd2",
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES ("a45c2e23-8d07-4839-a1a9-4b744e7b0675",
	"ac668621-59ee-4d79-bf62-c0df5ec77b20",
	1,
	'one',
	"44d76130-2d5a-40c6-96f9-feb13272d5f5");
INSERT INTO ACT_SR
	VALUES ("a45c2e23-8d07-4839-a1a9-4b744e7b0675");
INSERT INTO ACT_LNK
	VALUES ("e69ecaef-4b64-488e-9275-b42164f25290",
	'''specified by''',
	"a45c2e23-8d07-4839-a1a9-4b744e7b0675",
	"10f79f27-a03b-4527-aace-17a75f60f87e",
	"00000000-0000-0000-0000-000000000000",
	2,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES ("9eb99a25-f9a3-43bd-abd0-c73fe054edd2",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"b503b4f4-ae66-4a36-aac1-fb14c8af6162",
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES ("9eb99a25-f9a3-43bd-abd0-c73fe054edd2",
	"4d25c8dc-b8d2-4671-9ad6-4efb8dd337e9",
	1,
	'any',
	"8d0412cf-0d4f-4bed-b73a-d6a002961319");
INSERT INTO ACT_SRW
	VALUES ("9eb99a25-f9a3-43bd-abd0-c73fe054edd2",
	"65ce78e0-9a98-45cd-9e37-2f94c8277355");
INSERT INTO ACT_LNK
	VALUES ("71e14746-59bd-47f1-94a0-6e99543e39c7",
	'''includes''',
	"9eb99a25-f9a3-43bd-abd0-c73fe054edd2",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"00000000-0000-0000-0000-000000000000",
	3,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES ("b503b4f4-ae66-4a36-aac1-fb14c8af6162",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	"00000000-0000-0000-0000-000000000000",
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES ("b503b4f4-ae66-4a36-aac1-fb14c8af6162",
	"55029e85-9b8a-4bed-870e-890e68c4f292",
	"789bc1d2-fffb-4f71-93fc-f4c70bdeaad5",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("59fded99-6756-4f73-9890-51b12e9389a2",
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_TVL
	VALUES ("59fded99-6756-4f73-9890-51b12e9389a2",
	"5f711bad-0847-4cef-b2ec-1fb0a63d1726");
INSERT INTO V_VAL
	VALUES ("6b434a39-05b4-46aa-bbe9-657f607d3412",
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_BRV
	VALUES ("6b434a39-05b4-46aa-bbe9-657f607d3412",
	"26d40e8d-6597-4e31-8685-2511abd21e19",
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES ("6b8d20de-669e-46e6-b91e-1fa20ab8d810",
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("6b8d20de-669e-46e6-b91e-1fa20ab8d810",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba");
INSERT INTO V_VAL
	VALUES ("aa731edb-9997-4163-a741-69ed0e8fb5ca",
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_AVL
	VALUES ("aa731edb-9997-4163-a741-69ed0e8fb5ca",
	"6b8d20de-669e-46e6-b91e-1fa20ab8d810",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f7043385-0988-4b53-a097-900838ad5695");
INSERT INTO V_PAR
	VALUES ("aa731edb-9997-4163-a741-69ed0e8fb5ca",
	"00000000-0000-0000-0000-000000000000",
	"6b434a39-05b4-46aa-bbe9-657f607d3412",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	5,
	38);
INSERT INTO V_VAL
	VALUES ("1215bfd8-00c3-4cf8-b9e0-ebe6717c3a43",
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("1215bfd8-00c3-4cf8-b9e0-ebe6717c3a43",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba");
INSERT INTO V_VAL
	VALUES ("f695480b-d6b2-4c3c-9247-4aeb47446500",
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("f695480b-d6b2-4c3c-9247-4aeb47446500",
	"751dabca-c24c-4c91-98e0-083956cba12f");
INSERT INTO V_VAL
	VALUES ("436995b3-e96e-4dd1-812d-0d04641caffe",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_UNY
	VALUES ("436995b3-e96e-4dd1-812d-0d04641caffe",
	"f695480b-d6b2-4c3c-9247-4aeb47446500",
	'empty');
INSERT INTO V_VAL
	VALUES ("b2c80f4b-1d4e-42ef-8c2c-46181e89fd7f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_UNY
	VALUES ("b2c80f4b-1d4e-42ef-8c2c-46181e89fd7f",
	"436995b3-e96e-4dd1-812d-0d04641caffe",
	'not');
INSERT INTO V_VAL
	VALUES ("80c611ba-afb9-489a-bb15-e8e68129a144",
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("80c611ba-afb9-489a-bb15-e8e68129a144",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba");
INSERT INTO V_VAL
	VALUES ("44d76130-2d5a-40c6-96f9-feb13272d5f5",
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("44d76130-2d5a-40c6-96f9-feb13272d5f5",
	"34f97d7d-959f-48f7-a944-be4fb80a69ba");
INSERT INTO V_VAL
	VALUES ("8d0412cf-0d4f-4bed-b73a-d6a002961319",
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("8d0412cf-0d4f-4bed-b73a-d6a002961319",
	"712d14c4-1c3f-4b25-96b5-33b47ee74b37");
INSERT INTO V_VAL
	VALUES ("08635eaa-0782-40b6-8362-96fa62314e39",
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_SLR
	VALUES ("08635eaa-0782-40b6-8362-96fa62314e39",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("a56e8428-341c-4209-a242-8cf152efc049",
	0,
	0,
	24,
	20,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_AVL
	VALUES ("a56e8428-341c-4209-a242-8cf152efc049",
	"08635eaa-0782-40b6-8362-96fa62314e39",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d");
INSERT INTO V_VAL
	VALUES ("65ce78e0-9a98-45cd-9e37-2f94c8277355",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_BIN
	VALUES ("65ce78e0-9a98-45cd-9e37-2f94c8277355",
	"514aebc7-9680-438d-97e0-2aa72b1ac063",
	"a56e8428-341c-4209-a242-8cf152efc049",
	'==');
INSERT INTO V_VAL
	VALUES ("a8d6d662-6f97-499f-94fa-dbcb8e31ff20",
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("a8d6d662-6f97-499f-94fa-dbcb8e31ff20",
	"ac668621-59ee-4d79-bf62-c0df5ec77b20");
INSERT INTO V_VAL
	VALUES ("b0575c8d-a3a6-4aa3-acbb-35730edd6bbe",
	0,
	0,
	24,
	55,
	68,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_AVL
	VALUES ("b0575c8d-a3a6-4aa3-acbb-35730edd6bbe",
	"a8d6d662-6f97-499f-94fa-dbcb8e31ff20",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d");
INSERT INTO V_VAL
	VALUES ("514aebc7-9680-438d-97e0-2aa72b1ac063",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_BIN
	VALUES ("514aebc7-9680-438d-97e0-2aa72b1ac063",
	"d2a7e853-7c4a-4ce0-a13d-9f6b91322f75",
	"b0575c8d-a3a6-4aa3-acbb-35730edd6bbe",
	'+');
INSERT INTO V_VAL
	VALUES ("d2a7e853-7c4a-4ce0-a13d-9f6b91322f75",
	0,
	0,
	24,
	72,
	72,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_LIN
	VALUES ("d2a7e853-7c4a-4ce0-a13d-9f6b91322f75",
	'1');
INSERT INTO V_VAL
	VALUES ("65ef6fad-aa3b-4e0e-8af8-42895f79d51c",
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_IRF
	VALUES ("65ef6fad-aa3b-4e0e-8af8-42895f79d51c",
	"4d25c8dc-b8d2-4671-9ad6-4efb8dd337e9");
INSERT INTO V_VAL
	VALUES ("7b979a2b-672f-4330-84b5-8cb1157db1f9",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_UNY
	VALUES ("7b979a2b-672f-4330-84b5-8cb1157db1f9",
	"65ef6fad-aa3b-4e0e-8af8-42895f79d51c",
	'empty');
INSERT INTO V_VAL
	VALUES ("789bc1d2-fffb-4f71-93fc-f4c70bdeaad5",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237");
INSERT INTO V_UNY
	VALUES ("789bc1d2-fffb-4f71-93fc-f4c70bdeaad5",
	"7b979a2b-672f-4330-84b5-8cb1157db1f9",
	'not');
INSERT INTO V_VAR
	VALUES ("5f711bad-0847-4cef-b2ec-1fb0a63d1726",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'cancelSucceeded',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("5f711bad-0847-4cef-b2ec-1fb0a63d1726",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("34f97d7d-959f-48f7-a944-be4fb80a69ba",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("34f97d7d-959f-48f7-a944-be4fb80a69ba",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("751dabca-c24c-4c91-98e0-083956cba12f",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'openAchievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("751dabca-c24c-4c91-98e0-083956cba12f",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO V_VAR
	VALUES ("712d14c4-1c3f-4b25-96b5-33b47ee74b37",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("712d14c4-1c3f-4b25-96b5-33b47ee74b37",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("ac668621-59ee-4d79-bf62-c0df5ec77b20",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'currentGoalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("ac668621-59ee-4d79-bf62-c0df5ec77b20",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("4d25c8dc-b8d2-4671-9ad6-4efb8dd337e9",
	"7ad59cf5-0e78-4acb-863a-105c4af0a237",
	'nextGoalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("4d25c8dc-b8d2-4671-9ad6-4efb8dd337e9",
	0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO ACT_BLK
	VALUES ("52e513ff-c33b-4c4c-81f8-95fd58ce2774",
	0,
	0,
	0,
	'',
	'',
	'',
	10,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c173e0cd-4ca4-4463-b54d-0b683044cf92",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("036e804a-8055-4fb5-b792-2ea2c146e4d8",
	"52e513ff-c33b-4c4c-81f8-95fd58ce2774",
	"00000000-0000-0000-0000-000000000000",
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES ("036e804a-8055-4fb5-b792-2ea2c146e4d8",
	"d6a01bcc-6245-4c42-9882-7d744de2929b",
	"751dabca-c24c-4c91-98e0-083956cba12f",
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES ("55029e85-9b8a-4bed-870e-890e68c4f292",
	0,
	0,
	0,
	'Goal',
	'',
	'',
	27,
	3,
	27,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c173e0cd-4ca4-4463-b54d-0b683044cf92",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4fc7b6c1-9338-463c-a520-988fd91230eb",
	"55029e85-9b8a-4bed-870e-890e68c4f292",
	"00000000-0000-0000-0000-000000000000",
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES ("4fc7b6c1-9338-463c-a520-988fd91230eb",
	"b104ebc0-aeee-4076-a86c-f2eeea09bf72",
	"00000000-0000-0000-0000-000000000000",
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES ("030a8ac2-728e-4ca2-8b2b-b00d85071596",
	0,
	0,
	27,
	33,
	44,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"55029e85-9b8a-4bed-870e-890e68c4f292");
INSERT INTO V_IRF
	VALUES ("030a8ac2-728e-4ca2-8b2b-b00d85071596",
	"4d25c8dc-b8d2-4671-9ad6-4efb8dd337e9");
INSERT INTO V_VAL
	VALUES ("2a251e2c-38b4-49c6-aa36-c9a877bda07e",
	0,
	0,
	27,
	46,
	59,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"55029e85-9b8a-4bed-870e-890e68c4f292");
INSERT INTO V_AVL
	VALUES ("2a251e2c-38b4-49c6-aa36-c9a877bda07e",
	"030a8ac2-728e-4ca2-8b2b-b00d85071596",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d");
INSERT INTO V_PAR
	VALUES ("2a251e2c-38b4-49c6-aa36-c9a877bda07e",
	"4fc7b6c1-9338-463c-a520-988fd91230eb",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"00000000-0000-0000-0000-000000000000",
	27,
	17);
INSERT INTO SM_STATE
	VALUES ("e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES ("e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("90ffed37-6a44-4da0-b805-cc2e316fa96f",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e7c3948e-b234-4685-97cd-07cd5d2b7d8b");
INSERT INTO SM_AH
	VALUES ("90ffed37-6a44-4da0-b805-cc2e316fa96f",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("90ffed37-6a44-4da0-b805-cc2e316fa96f",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES ("367f1c88-eb52-4ff8-998d-0673194eb911",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"90ffed37-6a44-4da0-b805-cc2e316fa96f");
INSERT INTO ACT_ACT
	VALUES ("367f1c88-eb52-4ff8-998d-0673194eb911",
	'state',
	0,
	"4216b4e5-3f34-489b-8668-49c8d249d420",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal::Paused',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4216b4e5-3f34-489b-8668-49c8d249d420",
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	19,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"367f1c88-eb52-4ff8-998d-0673194eb911",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3adeaa6d-9544-420d-9e5a-dc4190432aac",
	"4216b4e5-3f34-489b-8668-49c8d249d420",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES ("3adeaa6d-9544-420d-9e5a-dc4190432aac",
	"607e7129-aedc-49db-b2c9-1c29eef5a57a",
	"7ba0d453-26b1-4565-86c1-12d9525ba8b8",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("7ba0d453-26b1-4565-86c1-12d9525ba8b8",
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4216b4e5-3f34-489b-8668-49c8d249d420");
INSERT INTO V_TVL
	VALUES ("7ba0d453-26b1-4565-86c1-12d9525ba8b8",
	"89c89964-3c49-4d7b-9125-be11960745c0");
INSERT INTO V_VAL
	VALUES ("607e7129-aedc-49db-b2c9-1c29eef5a57a",
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4216b4e5-3f34-489b-8668-49c8d249d420");
INSERT INTO V_BRV
	VALUES ("607e7129-aedc-49db-b2c9-1c29eef5a57a",
	"26d40e8d-6597-4e31-8685-2511abd21e19",
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES ("75b977b5-29b2-45bc-b693-3b762eff6c3b",
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4216b4e5-3f34-489b-8668-49c8d249d420");
INSERT INTO V_IRF
	VALUES ("75b977b5-29b2-45bc-b693-3b762eff6c3b",
	"e513a9bc-9482-46b7-a5e6-04f9e38bc8f4");
INSERT INTO V_VAL
	VALUES ("bd9b8c10-4380-4e90-8bea-f41abcd503d2",
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"4216b4e5-3f34-489b-8668-49c8d249d420");
INSERT INTO V_AVL
	VALUES ("bd9b8c10-4380-4e90-8bea-f41abcd503d2",
	"75b977b5-29b2-45bc-b693-3b762eff6c3b",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f7043385-0988-4b53-a097-900838ad5695");
INSERT INTO V_PAR
	VALUES ("bd9b8c10-4380-4e90-8bea-f41abcd503d2",
	"00000000-0000-0000-0000-000000000000",
	"607e7129-aedc-49db-b2c9-1c29eef5a57a",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	3,
	38);
INSERT INTO V_VAR
	VALUES ("89c89964-3c49-4d7b-9125-be11960745c0",
	"4216b4e5-3f34-489b-8668-49c8d249d420",
	'cancelSucceeded',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("89c89964-3c49-4d7b-9125-be11960745c0",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("e513a9bc-9482-46b7-a5e6-04f9e38bc8f4",
	"4216b4e5-3f34-489b-8668-49c8d249d420",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("e513a9bc-9482-46b7-a5e6-04f9e38bc8f4",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO SM_NSTXN
	VALUES ("7f9834fe-111a-4023-9e8e-8cddda567a38",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("e113e0c8-e140-433a-a231-9265e709265c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"7f9834fe-111a-4023-9e8e-8cddda567a38");
INSERT INTO SM_AH
	VALUES ("e113e0c8-e140-433a-a231-9265e709265c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("e113e0c8-e140-433a-a231-9265e709265c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("46ddd7bb-ad50-4643-8ad6-200ebf99bd36",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e113e0c8-e140-433a-a231-9265e709265c");
INSERT INTO ACT_ACT
	VALUES ("46ddd7bb-ad50-4643-8ad6-200ebf99bd36",
	'transition',
	0,
	"73691ced-46fa-48e7-8ae4-d16a781ad79b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal1: Completed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("73691ced-46fa-48e7-8ae4-d16a781ad79b",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"46ddd7bb-ad50-4643-8ad6-200ebf99bd36",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("7f9834fe-111a-4023-9e8e-8cddda567a38",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("30ad5ddc-8aec-4d8c-9a28-977051b4fbab",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a527ff8e-c16c-4720-b555-d7ba5001e6ab",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"30ad5ddc-8aec-4d8c-9a28-977051b4fbab");
INSERT INTO SM_AH
	VALUES ("a527ff8e-c16c-4720-b555-d7ba5001e6ab",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("a527ff8e-c16c-4720-b555-d7ba5001e6ab",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("3431968f-3b76-4664-8d9c-29940e153c0d",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"a527ff8e-c16c-4720-b555-d7ba5001e6ab");
INSERT INTO ACT_ACT
	VALUES ("3431968f-3b76-4664-8d9c-29940e153c0d",
	'transition',
	0,
	"8c32572f-4ed1-456a-b294-9af0c43894fe",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal2: Evaluate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8c32572f-4ed1-456a-b294-9af0c43894fe",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3431968f-3b76-4664-8d9c-29940e153c0d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("30ad5ddc-8aec-4d8c-9a28-977051b4fbab",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("e3149dda-5db2-4e62-8a16-b83a744399b8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49",
	"b0acceb3-82b5-42d7-8455-38432a607ed8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("9c01c7b4-ae80-4b56-aef5-a38fa38d7b8c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e3149dda-5db2-4e62-8a16-b83a744399b8");
INSERT INTO SM_AH
	VALUES ("9c01c7b4-ae80-4b56-aef5-a38fa38d7b8c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("9c01c7b4-ae80-4b56-aef5-a38fa38d7b8c",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("3cf489af-1ae4-46a6-81fe-0b7377ed1087",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"9c01c7b4-ae80-4b56-aef5-a38fa38d7b8c");
INSERT INTO ACT_ACT
	VALUES ("3cf489af-1ae4-46a6-81fe-0b7377ed1087",
	'transition',
	0,
	"bef849f8-9597-45c5-8b72-f9ecf76c75cc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal3: Pause',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bef849f8-9597-45c5-8b72-f9ecf76c75cc",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3cf489af-1ae4-46a6-81fe-0b7377ed1087",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("e3149dda-5db2-4e62-8a16-b83a744399b8",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("0c6651c2-bbab-42f7-b29f-944cbc4b40b7",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"d98ec3cf-963c-4323-a368-63521ffd22d2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("4ea3cbed-91e7-4255-b9f2-ef2f2ab75c2e",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"0c6651c2-bbab-42f7-b29f-944cbc4b40b7");
INSERT INTO SM_AH
	VALUES ("4ea3cbed-91e7-4255-b9f2-ef2f2ab75c2e",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("4ea3cbed-91e7-4255-b9f2-ef2f2ab75c2e",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES ("8e542d42-5092-4155-8091-fb5ed4b9b407",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"4ea3cbed-91e7-4255-b9f2-ef2f2ab75c2e");
INSERT INTO ACT_ACT
	VALUES ("8e542d42-5092-4155-8091-fb5ed4b9b407",
	'transition',
	0,
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal2: Evaluate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	24,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8e542d42-5092-4155-8091-fb5ed4b9b407",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ea64df3e-41ba-4584-9d00-e1e6083a6575",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	"08dfb896-3986-41ea-acdb-eb089a63189f",
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES ("ea64df3e-41ba-4584-9d00-e1e6083a6575",
	1,
	0,
	2,
	40,
	2,
	46,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("ea64df3e-41ba-4584-9d00-e1e6083a6575",
	1,
	"c7ac47ae-52f1-4982-b77d-d910a7643810");
INSERT INTO E_CSME
	VALUES ("ea64df3e-41ba-4584-9d00-e1e6083a6575",
	"d98ec3cf-963c-4323-a368-63521ffd22d2");
INSERT INTO E_CEI
	VALUES ("ea64df3e-41ba-4584-9d00-e1e6083a6575",
	"c18c8143-1c6f-4ee7-a8b9-d37a89886ba3");
INSERT INTO ACT_SMT
	VALUES ("08dfb896-3986-41ea-acdb-eb089a63189f",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES ("08dfb896-3986-41ea-acdb-eb089a63189f",
	"19a591c1-4844-4967-b0b9-c5152dddcda8",
	"ad61992e-c101-475e-bf8b-f7cced655e01",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("2aec6dcf-2838-4b8e-921c-6511ce0b5d2b",
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4");
INSERT INTO V_IRF
	VALUES ("2aec6dcf-2838-4b8e-921c-6511ce0b5d2b",
	"c18c8143-1c6f-4ee7-a8b9-d37a89886ba3");
INSERT INTO V_VAL
	VALUES ("ad61992e-c101-475e-bf8b-f7cced655e01",
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4");
INSERT INTO V_AVL
	VALUES ("ad61992e-c101-475e-bf8b-f7cced655e01",
	"2aec6dcf-2838-4b8e-921c-6511ce0b5d2b",
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	"f7043385-0988-4b53-a097-900838ad5695");
INSERT INTO V_VAL
	VALUES ("19a591c1-4844-4967-b0b9-c5152dddcda8",
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4");
INSERT INTO V_BRV
	VALUES ("19a591c1-4844-4967-b0b9-c5152dddcda8",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES ("a1e59f20-53af-4afc-8213-5dac8f26ce8c",
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4");
INSERT INTO V_TVL
	VALUES ("a1e59f20-53af-4afc-8213-5dac8f26ce8c",
	"c7ac47ae-52f1-4982-b77d-d910a7643810");
INSERT INTO V_PAR
	VALUES ("a1e59f20-53af-4afc-8213-5dac8f26ce8c",
	"00000000-0000-0000-0000-000000000000",
	"19a591c1-4844-4967-b0b9-c5152dddcda8",
	'event_inst',
	"0b7ee75f-fb7c-4d5d-bfbc-7f26fe9adb58",
	3,
	52);
INSERT INTO V_VAL
	VALUES ("0b7ee75f-fb7c-4d5d-bfbc-7f26fe9adb58",
	0,
	0,
	3,
	93,
	108,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4");
INSERT INTO V_SCV
	VALUES ("0b7ee75f-fb7c-4d5d-bfbc-7f26fe9adb58",
	"5e795bf3-3982-4be9-890f-9ecdb755eae9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_PAR
	VALUES ("0b7ee75f-fb7c-4d5d-bfbc-7f26fe9adb58",
	"00000000-0000-0000-0000-000000000000",
	"19a591c1-4844-4967-b0b9-c5152dddcda8",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	3,
	79);
INSERT INTO V_VAR
	VALUES ("c7ac47ae-52f1-4982-b77d-d910a7643810",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	'evaluateEvent',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("c7ac47ae-52f1-4982-b77d-d910a7643810",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("c18c8143-1c6f-4ee7-a8b9-d37a89886ba3",
	"8db9e67b-e0f2-4159-afb0-e547fa54efd4",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("c18c8143-1c6f-4ee7-a8b9-d37a89886ba3",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO SM_TXN
	VALUES ("0c6651c2-bbab-42f7-b29f-944cbc4b40b7",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"01258120-9fd1-491f-b7ed-6838e0c60c49",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("1c1bbbf7-51d6-403f-84cd-c72676719e33",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"e7c3948e-b234-4685-97cd-07cd5d2b7d8b",
	"bc12f7f4-8cea-472b-ba39-9f6a6f5210de",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("77af03d4-55d8-4123-b6aa-b1af99af1fbc",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"1c1bbbf7-51d6-403f-84cd-c72676719e33");
INSERT INTO SM_AH
	VALUES ("77af03d4-55d8-4123-b6aa-b1af99af1fbc",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb");
INSERT INTO SM_ACT
	VALUES ("77af03d4-55d8-4123-b6aa-b1af99af1fbc",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("3f3b2f87-dc7a-436c-ad3a-96a21dfb01a7",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"77af03d4-55d8-4123-b6aa-b1af99af1fbc");
INSERT INTO ACT_ACT
	VALUES ("3f3b2f87-dc7a-436c-ad3a-96a21dfb01a7",
	'transition',
	0,
	"28fe562a-6a37-4af2-a03a-3454b74abbf2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Goal1: Completed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("28fe562a-6a37-4af2-a03a-3454b74abbf2",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3f3b2f87-dc7a-436c-ad3a-96a21dfb01a7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("1c1bbbf7-51d6-403f-84cd-c72676719e33",
	"286a812a-1619-45fe-9bb1-a0e22ed433cb",
	"b8e58204-40b2-43ae-b622-a526e1f0a8ca",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("3c552ce7-35fe-4a72-857b-f3a2420b4442",
	'GoalSpec',
	8,
	'GoalSpec',
	'Each instance specifies one particular workout goal.  The actual execution of the goal
along with evaluation of whether it is currently being achieved is handled by another
class, not this one.

The criteria for the goal are merely numerical figures for comparison against the 
measured quantity.  Accordingly, the terms may create confusion with certain goal
types such as pace.  Since pace is the inverse of speed, a lower number represents
a faster speed.  Even so, when specifying a pace-related goal the value for 
minimum should be the lowest number (fastest pace) and the value for maximum should
be the higher number (slower pace).',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_NBATTR
	VALUES ("5e4df9ae-802a-4760-bc98-ec74dae4add5",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("5e4df9ae-802a-4760-bc98-ec74dae4add5",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("5e4df9ae-802a-4760-bc98-ec74dae4add5",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"7350ae8c-c749-4e1d-8a20-7fc7cf19018d",
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("563b27ee-fa16-4e60-a7a9-edd4c4cee86d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("563b27ee-fa16-4e60-a7a9-edd4c4cee86d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("563b27ee-fa16-4e60-a7a9-edd4c4cee86d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"5e4df9ae-802a-4760-bc98-ec74dae4add5",
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("750e35cc-6a44-4329-8738-d31e94569d45",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("750e35cc-6a44-4329-8738-d31e94569d45",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("750e35cc-6a44-4329-8738-d31e94569d45",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"563b27ee-fa16-4e60-a7a9-edd4c4cee86d",
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("dd7fc64c-49f7-4730-a710-8919eb383415",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("dd7fc64c-49f7-4730-a710-8919eb383415",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("dd7fc64c-49f7-4730-a710-8919eb383415",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"750e35cc-6a44-4329-8738-d31e94569d45",
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("e05115bd-c8bf-4a8a-ae99-7b2ca52fb21d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"dd7fc64c-49f7-4730-a710-8919eb383415",
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("7350ae8c-c749-4e1d-8a20-7fc7cf19018d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_BATTR
	VALUES ("7350ae8c-c749-4e1d-8a20-7fc7cf19018d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ATTR
	VALUES ("7350ae8c-c749-4e1d-8a20-7fc7cf19018d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	'Workout goals are sequenced according to a number specified by the user when the goal
is specified.  This attribute represents that user-specified number. ',
	'',
	'sequenceNumber',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_OIDA
	VALUES ("7350ae8c-c749-4e1d-8a20-7fc7cf19018d",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO O_ID
	VALUES (2,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO PE_PE
	VALUES ("8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_NBATTR
	VALUES ("ee5b3f68-6956-42f6-ba26-7e3176575682",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_BATTR
	VALUES ("ee5b3f68-6956-42f6-ba26-7e3176575682",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_ATTR
	VALUES ("ee5b3f68-6956-42f6-ba26-7e3176575682",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"00000000-0000-0000-0000-000000000000",
	'heartRate',
	'Heart rate expressed in beats per minute.',
	'',
	'heartRate',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("7fb30d45-9969-42f5-a488-a4de89f8cbd2",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_BATTR
	VALUES ("7fb30d45-9969-42f5-a488-a4de89f8cbd2",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_ATTR
	VALUES ("7fb30d45-9969-42f5-a488-a4de89f8cbd2",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"ee5b3f68-6956-42f6-ba26-7e3176575682",
	'time',
	'Number of seconds between start time for the associated workout and recording of this heart rate sample.',
	'',
	'time',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_ID
	VALUES (1,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO O_ID
	VALUES (2,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO PE_PE
	VALUES ("4ff5f39c-493f-4348-abc0-1d652462fa3c",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("4ff5f39c-493f-4348-abc0-1d652462fa3c",
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_NBATTR
	VALUES ("faf777a5-dba3-4748-a898-0bb63c43abab",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO O_BATTR
	VALUES ("faf777a5-dba3-4748-a898-0bb63c43abab",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO O_ATTR
	VALUES ("faf777a5-dba3-4748-a898-0bb63c43abab",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c",
	"00000000-0000-0000-0000-000000000000",
	'lapTime',
	'Number of seconds between start time for the associated workout and this lap marker.',
	'',
	'lapTime',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO O_ID
	VALUES (1,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO O_ID
	VALUES (2,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO PE_PE
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'TrackLog',
	2,
	'TrackLog',
	'The collection of track points stored during a workout session.

Presently the device supports only a single track log, and it 
is always the active one for the current workout session.
However, future releases may add a capability for storing
multiple track logs on the device.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("e0ab45a4-d9d2-4db5-8df2-2016134f83f4",
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'addTrackPoint',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Add a track point to this track log, update the accumulated distance
// and current speed, and then notify the UI.

// Create a new track point, retrieving the current location from the GPS.
create object instance trackPoint of TrackPoint;
select one workoutTimer related by 
  self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
trackPoint.time = workoutTimer.time;
send Location::getLocation( latitude: trackPoint.latitude, longitude: trackPoint.longitude );

// Add the newly created track point to the track log.
select one firstPoint related by self->TrackPoint[R1];
select one lastPoint related by self->TrackPoint[R3];

// Explicit variable declarations for later use outside if-else clause.
isFirstTrackPoint = false;
lastLatitude = 0.0;
lastLongitude = 0.0;  
if (empty firstPoint)
  isFirstTrackPoint = true;
  relate self to trackPoint across R1.''has first'';
  relate self to trackPoint across R3.''has last'';
else 
  // Save last location for use in updating accumulated distance.
  lastLatitude = lastPoint.latitude;
  lastLongitude = lastPoint.longitude;
  unrelate self from lastPoint across R3.''has last'';
  relate self to trackPoint across R3.''has last'';
  relate lastPoint to trackPoint across R2.''follows'';
end if;

// Update accumulated distance and current speed.
distance = 0.0;
if (not isFirstTrackPoint)
  send distance = Location::getDistance( fromLat: lastLatitude, fromLong: lastLongitude,
                                     toLat: trackPoint.latitude, toLong: trackPoint.longitude );
end if;

select one session related by self->WorkoutSession[R4.''represents path for''];
session.accumulatedDistance = session.accumulatedDistance + distance;

// Notify display of of the updated values.
self.updateDisplay();',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("55b706c3-fbb0-486e-b518-13147f218f4c",
	"e0ab45a4-d9d2-4db5-8df2-2016134f83f4");
INSERT INTO ACT_ACT
	VALUES ("55b706c3-fbb0-486e-b518-13147f218f4c",
	'operation',
	0,
	"0823e11b-929c-4942-823e-83b70964dc34",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TrackLog::addTrackPoint',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0823e11b-929c-4942-823e-83b70964dc34",
	1,
	0,
	0,
	'',
	'',
	'',
	43,
	1,
	39,
	37,
	0,
	0,
	39,
	52,
	39,
	55,
	0,
	0,
	0,
	"55b706c3-fbb0-486e-b518-13147f218f4c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2c636e17-8655-4553-8ded-be4d9473062a",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"3bcae5e8-4fbd-4828-940c-a8238d8f1bf4",
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES ("2c636e17-8655-4553-8ded-be4d9473062a",
	"35af8730-5d4c-4ffb-8261-33fade217f3b",
	1,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	5,
	38);
INSERT INTO ACT_SMT
	VALUES ("3bcae5e8-4fbd-4828-940c-a8238d8f1bf4",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"3b2e98b8-a865-4bbe-8145-d61a5effa0a9",
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES ("3bcae5e8-4fbd-4828-940c-a8238d8f1bf4",
	"d97c4db6-a2d5-41c8-a734-4891988208b4",
	1,
	'one',
	"0ade0c65-ebbf-4c17-aec3-3ce93ea4d26e");
INSERT INTO ACT_SR
	VALUES ("3bcae5e8-4fbd-4828-940c-a8238d8f1bf4");
INSERT INTO ACT_LNK
	VALUES ("489c5bb4-0f67-4c7f-8e94-d18364439330",
	'''represents path for''',
	"3bcae5e8-4fbd-4828-940c-a8238d8f1bf4",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"7a2ab088-3a60-40f7-83a6-0718d58a97d5",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES ("7a2ab088-3a60-40f7-83a6-0718d58a97d5",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES ("3b2e98b8-a865-4bbe-8145-d61a5effa0a9",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"77499953-c92f-49e9-9e3f-dae2715d164e",
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES ("3b2e98b8-a865-4bbe-8145-d61a5effa0a9",
	"571d08fb-dc41-457b-8d7e-4da30dd6c197",
	"a4ff927e-63c6-499e-8ebe-41c9a66f192b",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("77499953-c92f-49e9-9e3f-dae2715d164e",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"ac77d25b-a7d6-4473-bdcd-888384c72413",
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES ("77499953-c92f-49e9-9e3f-dae2715d164e",
	9,
	16,
	9,
	6,
	"00000000-0000-0000-0000-000000000000",
	"799179b7-ca50-4e22-b045-f5fbd1a3dbd1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ac77d25b-a7d6-4473-bdcd-888384c72413",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"253b589d-d17b-4e56-98dc-2bab7e1f10ef",
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES ("ac77d25b-a7d6-4473-bdcd-888384c72413",
	"a821b093-cc31-41c6-af2a-120e2b1d84a7",
	1,
	'one',
	"61c41cec-df51-4cbe-a4ab-935b46342264");
INSERT INTO ACT_SR
	VALUES ("ac77d25b-a7d6-4473-bdcd-888384c72413");
INSERT INTO ACT_LNK
	VALUES ("aeeda396-d224-4991-ad96-81ed00cdcf31",
	'',
	"ac77d25b-a7d6-4473-bdcd-888384c72413",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("253b589d-d17b-4e56-98dc-2bab7e1f10ef",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"6f820db0-99b0-4646-b3bf-cf69b3c1149d",
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES ("253b589d-d17b-4e56-98dc-2bab7e1f10ef",
	"668dd3c2-ce8c-4d74-8541-2ea1686c5e28",
	1,
	'one',
	"7c0b4dee-237d-480f-a2cd-378429eedfaa");
INSERT INTO ACT_SR
	VALUES ("253b589d-d17b-4e56-98dc-2bab7e1f10ef");
INSERT INTO ACT_LNK
	VALUES ("563bb027-e85b-443a-94e6-044fab97fc33",
	'',
	"253b589d-d17b-4e56-98dc-2bab7e1f10ef",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("6f820db0-99b0-4646-b3bf-cf69b3c1149d",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"355a966c-2484-43b5-9663-f222b7280fb3",
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES ("6f820db0-99b0-4646-b3bf-cf69b3c1149d",
	"20a7d1f5-644b-49e8-83a1-ed408a4f57af",
	"811b5ead-d4e8-4a2a-aeb0-edab221dce0f",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("355a966c-2484-43b5-9663-f222b7280fb3",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"d22b2cfc-4177-4c52-b5d9-527d48d94598",
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES ("355a966c-2484-43b5-9663-f222b7280fb3",
	"32ef146b-b2cf-4845-9730-1c0cac46a729",
	"3b470b70-1e3d-4a3e-bd17-02a391e25c92",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d22b2cfc-4177-4c52-b5d9-527d48d94598",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"09a8a29d-436b-4400-aba3-a53a57a3df57",
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES ("d22b2cfc-4177-4c52-b5d9-527d48d94598",
	"f2000ec3-c098-45d6-a551-a8f4680fdeae",
	"9d0225b6-cfa3-4ffa-8b6b-b9ae025dad17",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("09a8a29d-436b-4400-aba3-a53a57a3df57",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"8d13f64e-0e63-4fc9-8411-7fe2a57324ed",
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES ("09a8a29d-436b-4400-aba3-a53a57a3df57",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3",
	"a8f08df8-b4db-443c-a328-e38443e06102",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("653e0546-186a-459a-8404-ec8ab682b676",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"00000000-0000-0000-0000-000000000000",
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES ("653e0546-186a-459a-8404-ec8ab682b676",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"09a8a29d-436b-4400-aba3-a53a57a3df57");
INSERT INTO ACT_SMT
	VALUES ("8d13f64e-0e63-4fc9-8411-7fe2a57324ed",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"5c77d31e-4e7b-47a7-9efc-07047cf24a39",
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES ("8d13f64e-0e63-4fc9-8411-7fe2a57324ed",
	"749cde49-5fc2-42dd-8673-5c56e73f860c",
	"48ba4819-631f-4617-b534-75f6e0dcc73a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("5c77d31e-4e7b-47a7-9efc-07047cf24a39",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"e351fea0-5a3f-4522-a8b8-93eb6b8cf905",
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES ("5c77d31e-4e7b-47a7-9efc-07047cf24a39",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c",
	"2a3d9729-614a-43cb-a869-8ffad7cec3a1",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("e351fea0-5a3f-4522-a8b8-93eb6b8cf905",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"7333982b-68d8-45a3-8fff-e8203045635e",
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES ("e351fea0-5a3f-4522-a8b8-93eb6b8cf905",
	"2b16b04f-a983-4ff0-92f8-540b45b137ff",
	1,
	'one',
	"ba5c512c-f9d6-40a6-9227-d03812d2b1b0");
INSERT INTO ACT_SR
	VALUES ("e351fea0-5a3f-4522-a8b8-93eb6b8cf905");
INSERT INTO ACT_LNK
	VALUES ("42f3c286-beb2-4a8f-843c-4e862a43d2cc",
	'''represents path for''',
	"e351fea0-5a3f-4522-a8b8-93eb6b8cf905",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES ("7333982b-68d8-45a3-8fff-e8203045635e",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"4cabffc6-d32a-4196-9688-5bf3b109a22a",
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES ("7333982b-68d8-45a3-8fff-e8203045635e",
	"e957afaa-47ad-403b-9977-c50b3f02c36a",
	"750952ed-d06e-4132-b571-8f02a7d05651",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("4cabffc6-d32a-4196-9688-5bf3b109a22a",
	"0823e11b-929c-4942-823e-83b70964dc34",
	"00000000-0000-0000-0000-000000000000",
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES ("4cabffc6-d32a-4196-9688-5bf3b109a22a",
	"1f60b0a9-d3d9-49c0-a69c-3a43625d242b",
	"34246183-b9c7-4f08-85ba-2f9c29363b37",
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("0ade0c65-ebbf-4c17-aec3-3ce93ea4d26e",
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("0ade0c65-ebbf-4c17-aec3-3ce93ea4d26e",
	"34246183-b9c7-4f08-85ba-2f9c29363b37");
INSERT INTO V_VAL
	VALUES ("6124a25a-2014-45e4-8735-79211466d294",
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("6124a25a-2014-45e4-8735-79211466d294",
	"35af8730-5d4c-4ffb-8261-33fade217f3b");
INSERT INTO V_VAL
	VALUES ("a4ff927e-63c6-499e-8ebe-41c9a66f192b",
	1,
	0,
	8,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("a4ff927e-63c6-499e-8ebe-41c9a66f192b",
	"6124a25a-2014-45e4-8735-79211466d294",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"6afeffb5-33ae-4167-adda-1de88e5d6a95");
INSERT INTO V_VAL
	VALUES ("8910b757-e201-4611-8352-c91e2478dcdc",
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("8910b757-e201-4611-8352-c91e2478dcdc",
	"d97c4db6-a2d5-41c8-a734-4891988208b4");
INSERT INTO V_VAL
	VALUES ("571d08fb-dc41-457b-8d7e-4da30dd6c197",
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("571d08fb-dc41-457b-8d7e-4da30dd6c197",
	"8910b757-e201-4611-8352-c91e2478dcdc",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("eeada75b-378d-44bb-b4d8-4d1ed3a50dd2",
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("eeada75b-378d-44bb-b4d8-4d1ed3a50dd2",
	"35af8730-5d4c-4ffb-8261-33fade217f3b");
INSERT INTO V_VAL
	VALUES ("d3f16a21-a010-4877-8d89-18bf35f9e1a1",
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("d3f16a21-a010-4877-8d89-18bf35f9e1a1",
	"eeada75b-378d-44bb-b4d8-4d1ed3a50dd2",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"b8023c0d-dc60-4a92-adaa-b8adb8718439");
INSERT INTO V_PAR
	VALUES ("d3f16a21-a010-4877-8d89-18bf35f9e1a1",
	"77499953-c92f-49e9-9e3f-dae2715d164e",
	"00000000-0000-0000-0000-000000000000",
	'latitude',
	"851e304a-9dbc-47b6-bb9c-604c3758ea11",
	9,
	29);
INSERT INTO V_VAL
	VALUES ("e4c57914-b27b-4ebf-a85b-c3c001102ec1",
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("e4c57914-b27b-4ebf-a85b-c3c001102ec1",
	"35af8730-5d4c-4ffb-8261-33fade217f3b");
INSERT INTO V_VAL
	VALUES ("851e304a-9dbc-47b6-bb9c-604c3758ea11",
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("851e304a-9dbc-47b6-bb9c-604c3758ea11",
	"e4c57914-b27b-4ebf-a85b-c3c001102ec1",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34");
INSERT INTO V_PAR
	VALUES ("851e304a-9dbc-47b6-bb9c-604c3758ea11",
	"77499953-c92f-49e9-9e3f-dae2715d164e",
	"00000000-0000-0000-0000-000000000000",
	'longitude',
	"00000000-0000-0000-0000-000000000000",
	9,
	60);
INSERT INTO V_VAL
	VALUES ("61c41cec-df51-4cbe-a4ab-935b46342264",
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("61c41cec-df51-4cbe-a4ab-935b46342264",
	"34246183-b9c7-4f08-85ba-2f9c29363b37");
INSERT INTO V_VAL
	VALUES ("7c0b4dee-237d-480f-a2cd-378429eedfaa",
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("7c0b4dee-237d-480f-a2cd-378429eedfaa",
	"34246183-b9c7-4f08-85ba-2f9c29363b37");
INSERT INTO V_VAL
	VALUES ("811b5ead-d4e8-4a2a-aeb0-edab221dce0f",
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("811b5ead-d4e8-4a2a-aeb0-edab221dce0f",
	"abe9504a-00f1-4572-988f-18231205505a");
INSERT INTO V_VAL
	VALUES ("20a7d1f5-644b-49e8-83a1-ed408a4f57af",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_LBO
	VALUES ("20a7d1f5-644b-49e8-83a1-ed408a4f57af",
	'FALSE');
INSERT INTO V_VAL
	VALUES ("3b470b70-1e3d-4a3e-bd17-02a391e25c92",
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("3b470b70-1e3d-4a3e-bd17-02a391e25c92",
	"bf10b89d-f8e5-4060-aca7-032398e888fe");
INSERT INTO V_VAL
	VALUES ("32ef146b-b2cf-4845-9730-1c0cac46a729",
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_LRL
	VALUES ("32ef146b-b2cf-4845-9730-1c0cac46a729",
	'0.0');
INSERT INTO V_VAL
	VALUES ("9d0225b6-cfa3-4ffa-8b6b-b9ae025dad17",
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("9d0225b6-cfa3-4ffa-8b6b-b9ae025dad17",
	"a0f29ad7-a11f-497f-aa7a-3d98f8d8d433");
INSERT INTO V_VAL
	VALUES ("f2000ec3-c098-45d6-a551-a8f4680fdeae",
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_LRL
	VALUES ("f2000ec3-c098-45d6-a551-a8f4680fdeae",
	'0.0');
INSERT INTO V_VAL
	VALUES ("68ebfb20-3f7f-465d-9148-a93ddc555edb",
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("68ebfb20-3f7f-465d-9148-a93ddc555edb",
	"a821b093-cc31-41c6-af2a-120e2b1d84a7");
INSERT INTO V_VAL
	VALUES ("a8f08df8-b4db-443c-a328-e38443e06102",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_UNY
	VALUES ("a8f08df8-b4db-443c-a328-e38443e06102",
	"68ebfb20-3f7f-465d-9148-a93ddc555edb",
	'empty');
INSERT INTO V_VAL
	VALUES ("48ba4819-631f-4617-b534-75f6e0dcc73a",
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("48ba4819-631f-4617-b534-75f6e0dcc73a",
	"fb5894b4-07fd-477d-a0e9-04535016ec6d");
INSERT INTO V_VAL
	VALUES ("749cde49-5fc2-42dd-8673-5c56e73f860c",
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_LRL
	VALUES ("749cde49-5fc2-42dd-8673-5c56e73f860c",
	'0.0');
INSERT INTO V_VAL
	VALUES ("e5d11997-155e-47f8-882c-3f6c77a2d611",
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("e5d11997-155e-47f8-882c-3f6c77a2d611",
	"abe9504a-00f1-4572-988f-18231205505a");
INSERT INTO V_VAL
	VALUES ("2a3d9729-614a-43cb-a869-8ffad7cec3a1",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_UNY
	VALUES ("2a3d9729-614a-43cb-a869-8ffad7cec3a1",
	"e5d11997-155e-47f8-882c-3f6c77a2d611",
	'not');
INSERT INTO V_VAL
	VALUES ("ba5c512c-f9d6-40a6-9227-d03812d2b1b0",
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("ba5c512c-f9d6-40a6-9227-d03812d2b1b0",
	"34246183-b9c7-4f08-85ba-2f9c29363b37");
INSERT INTO V_VAL
	VALUES ("1aa6d798-272c-4ea6-8527-4a55279ce164",
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("1aa6d798-272c-4ea6-8527-4a55279ce164",
	"2b16b04f-a983-4ff0-92f8-540b45b137ff");
INSERT INTO V_VAL
	VALUES ("750952ed-d06e-4132-b571-8f02a7d05651",
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("750952ed-d06e-4132-b571-8f02a7d05651",
	"1aa6d798-272c-4ea6-8527-4a55279ce164",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("2d4bf12e-b871-4da9-b28a-bd44ef63d02e",
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_IRF
	VALUES ("2d4bf12e-b871-4da9-b28a-bd44ef63d02e",
	"2b16b04f-a983-4ff0-92f8-540b45b137ff");
INSERT INTO V_VAL
	VALUES ("d5d88490-0024-491a-9cc9-afa6cf079ce5",
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_AVL
	VALUES ("d5d88490-0024-491a-9cc9-afa6cf079ce5",
	"2d4bf12e-b871-4da9-b28a-bd44ef63d02e",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("e957afaa-47ad-403b-9977-c50b3f02c36a",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_BIN
	VALUES ("e957afaa-47ad-403b-9977-c50b3f02c36a",
	"5641e7ad-813c-4481-b28a-e72ac9d39f49",
	"d5d88490-0024-491a-9cc9-afa6cf079ce5",
	'+');
INSERT INTO V_VAL
	VALUES ("5641e7ad-813c-4481-b28a-e72ac9d39f49",
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0823e11b-929c-4942-823e-83b70964dc34");
INSERT INTO V_TVL
	VALUES ("5641e7ad-813c-4481-b28a-e72ac9d39f49",
	"fb5894b4-07fd-477d-a0e9-04535016ec6d");
INSERT INTO V_VAR
	VALUES ("35af8730-5d4c-4ffb-8261-33fade217f3b",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'trackPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("35af8730-5d4c-4ffb-8261-33fade217f3b",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("d97c4db6-a2d5-41c8-a734-4891988208b4",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("d97c4db6-a2d5-41c8-a734-4891988208b4",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("34246183-b9c7-4f08-85ba-2f9c29363b37",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("34246183-b9c7-4f08-85ba-2f9c29363b37",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("a821b093-cc31-41c6-af2a-120e2b1d84a7",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'firstPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a821b093-cc31-41c6-af2a-120e2b1d84a7",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("668dd3c2-ce8c-4d74-8541-2ea1686c5e28",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'lastPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("668dd3c2-ce8c-4d74-8541-2ea1686c5e28",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("abe9504a-00f1-4572-988f-18231205505a",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'isFirstTrackPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("abe9504a-00f1-4572-988f-18231205505a",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("bf10b89d-f8e5-4060-aca7-032398e888fe",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'lastLatitude',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("bf10b89d-f8e5-4060-aca7-032398e888fe",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("a0f29ad7-a11f-497f-aa7a-3d98f8d8d433",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'lastLongitude',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("a0f29ad7-a11f-497f-aa7a-3d98f8d8d433",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("fb5894b4-07fd-477d-a0e9-04535016ec6d",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'distance',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("fb5894b4-07fd-477d-a0e9-04535016ec6d",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("2b16b04f-a983-4ff0-92f8-540b45b137ff",
	"0823e11b-929c-4942-823e-83b70964dc34",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("2b16b04f-a983-4ff0-92f8-540b45b137ff",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("79aa4525-8c0b-4cc2-8797-735120c24eb3",
	0,
	0,
	0,
	'''has last''',
	'',
	'',
	22,
	3,
	0,
	0,
	0,
	0,
	22,
	36,
	22,
	39,
	0,
	0,
	0,
	"55b706c3-fbb0-486e-b518-13147f218f4c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a986d3c1-2709-4942-afb6-d0e223ce6c98",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3",
	"d9e20f00-a34a-45af-895e-bd68e621fbcd",
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES ("a986d3c1-2709-4942-afb6-d0e223ce6c98",
	"6be929c8-44e4-4524-8977-7677e1a36c6b",
	"7a6e44f3-6970-49c7-88cc-57fc227e782c",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d9e20f00-a34a-45af-895e-bd68e621fbcd",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3",
	"8137f579-4855-4024-9759-80129e707eed",
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES ("d9e20f00-a34a-45af-895e-bd68e621fbcd",
	"34246183-b9c7-4f08-85ba-2f9c29363b37",
	"35af8730-5d4c-4ffb-8261-33fade217f3b",
	'''has first''',
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES ("8137f579-4855-4024-9759-80129e707eed",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3",
	"00000000-0000-0000-0000-000000000000",
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES ("8137f579-4855-4024-9759-80129e707eed",
	"34246183-b9c7-4f08-85ba-2f9c29363b37",
	"35af8730-5d4c-4ffb-8261-33fade217f3b",
	'''has last''',
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES ("7a6e44f3-6970-49c7-88cc-57fc227e782c",
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3");
INSERT INTO V_TVL
	VALUES ("7a6e44f3-6970-49c7-88cc-57fc227e782c",
	"abe9504a-00f1-4572-988f-18231205505a");
INSERT INTO V_VAL
	VALUES ("6be929c8-44e4-4524-8977-7677e1a36c6b",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"79aa4525-8c0b-4cc2-8797-735120c24eb3");
INSERT INTO V_LBO
	VALUES ("6be929c8-44e4-4524-8977-7677e1a36c6b",
	'TRUE');
INSERT INTO ACT_BLK
	VALUES ("c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	0,
	0,
	0,
	'''follows''',
	'',
	'',
	29,
	3,
	0,
	0,
	0,
	0,
	29,
	41,
	29,
	44,
	0,
	0,
	0,
	"55b706c3-fbb0-486e-b518-13147f218f4c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("04b3b133-187c-445a-a060-1d847015da1d",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"75d1f2e6-bb29-4eb8-9a93-b70a2d179228",
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES ("04b3b133-187c-445a-a060-1d847015da1d",
	"165a6595-78d0-4da4-89e2-49ac792f7b01",
	"9b10123a-7396-42c9-aad2-40bd77d07f5e",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("75d1f2e6-bb29-4eb8-9a93-b70a2d179228",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"609cb344-b17a-48d8-80d0-6896d255715b",
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES ("75d1f2e6-bb29-4eb8-9a93-b70a2d179228",
	"2608a556-686a-444f-b911-f814545d39e8",
	"4bffd7c8-9bb7-4b6e-b131-4e8ab29dfd8a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("609cb344-b17a-48d8-80d0-6896d255715b",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"6200d6ad-8dbf-40ef-838b-26e974086e4e",
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES ("609cb344-b17a-48d8-80d0-6896d255715b",
	"34246183-b9c7-4f08-85ba-2f9c29363b37",
	"668dd3c2-ce8c-4d74-8541-2ea1686c5e28",
	'''has last''',
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES ("6200d6ad-8dbf-40ef-838b-26e974086e4e",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"9a284ba6-91dd-4309-9a30-f7917bfe1b4a",
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES ("6200d6ad-8dbf-40ef-838b-26e974086e4e",
	"34246183-b9c7-4f08-85ba-2f9c29363b37",
	"35af8730-5d4c-4ffb-8261-33fade217f3b",
	'''has last''',
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES ("9a284ba6-91dd-4309-9a30-f7917bfe1b4a",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0",
	"00000000-0000-0000-0000-000000000000",
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES ("9a284ba6-91dd-4309-9a30-f7917bfe1b4a",
	"668dd3c2-ce8c-4d74-8541-2ea1686c5e28",
	"35af8730-5d4c-4ffb-8261-33fade217f3b",
	'''follows''',
	"88267812-6798-42ca-aa4c-390b14aba209",
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES ("9b10123a-7396-42c9-aad2-40bd77d07f5e",
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_TVL
	VALUES ("9b10123a-7396-42c9-aad2-40bd77d07f5e",
	"bf10b89d-f8e5-4060-aca7-032398e888fe");
INSERT INTO V_VAL
	VALUES ("84798ca7-8e19-48c3-9b0b-98975869a0c3",
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_IRF
	VALUES ("84798ca7-8e19-48c3-9b0b-98975869a0c3",
	"668dd3c2-ce8c-4d74-8541-2ea1686c5e28");
INSERT INTO V_VAL
	VALUES ("165a6595-78d0-4da4-89e2-49ac792f7b01",
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_AVL
	VALUES ("165a6595-78d0-4da4-89e2-49ac792f7b01",
	"84798ca7-8e19-48c3-9b0b-98975869a0c3",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"b8023c0d-dc60-4a92-adaa-b8adb8718439");
INSERT INTO V_VAL
	VALUES ("4bffd7c8-9bb7-4b6e-b131-4e8ab29dfd8a",
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_TVL
	VALUES ("4bffd7c8-9bb7-4b6e-b131-4e8ab29dfd8a",
	"a0f29ad7-a11f-497f-aa7a-3d98f8d8d433");
INSERT INTO V_VAL
	VALUES ("d753be86-1314-47d8-906a-076aa1f97ced",
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_IRF
	VALUES ("d753be86-1314-47d8-906a-076aa1f97ced",
	"668dd3c2-ce8c-4d74-8541-2ea1686c5e28");
INSERT INTO V_VAL
	VALUES ("2608a556-686a-444f-b911-f814545d39e8",
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c72f50a4-6735-4101-8fe7-8f4130d93ca0");
INSERT INTO V_AVL
	VALUES ("2608a556-686a-444f-b911-f814545d39e8",
	"d753be86-1314-47d8-906a-076aa1f97ced",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34");
INSERT INTO ACT_BLK
	VALUES ("ce9e2a7d-15f6-45c9-9771-669b32d9bc7c",
	0,
	0,
	0,
	'Location',
	'',
	'',
	35,
	3,
	35,
	19,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"55b706c3-fbb0-486e-b518-13147f218f4c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b56855e4-717b-4511-87e2-86437e4812fd",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c",
	"00000000-0000-0000-0000-000000000000",
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES ("b56855e4-717b-4511-87e2-86437e4812fd",
	"212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	"a087740c-1b5c-4c78-a5a0-198cd683ff0e",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("a087740c-1b5c-4c78-a5a0-198cd683ff0e",
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_TVL
	VALUES ("a087740c-1b5c-4c78-a5a0-198cd683ff0e",
	"fb5894b4-07fd-477d-a0e9-04535016ec6d");
INSERT INTO V_VAL
	VALUES ("212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_MSV
	VALUES ("212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	"00000000-0000-0000-0000-000000000000",
	"37d3eec0-4bb5-46db-9d0f-072b524d3951",
	1,
	35,
	19,
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("fe7df08f-cef6-4dba-8f80-a824e85537bf",
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_TVL
	VALUES ("fe7df08f-cef6-4dba-8f80-a824e85537bf",
	"bf10b89d-f8e5-4060-aca7-032398e888fe");
INSERT INTO V_PAR
	VALUES ("fe7df08f-cef6-4dba-8f80-a824e85537bf",
	"00000000-0000-0000-0000-000000000000",
	"212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	'fromLat',
	"3c3cf50b-f6c4-4635-8800-ce198606754a",
	35,
	42);
INSERT INTO V_VAL
	VALUES ("3c3cf50b-f6c4-4635-8800-ce198606754a",
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_TVL
	VALUES ("3c3cf50b-f6c4-4635-8800-ce198606754a",
	"a0f29ad7-a11f-497f-aa7a-3d98f8d8d433");
INSERT INTO V_PAR
	VALUES ("3c3cf50b-f6c4-4635-8800-ce198606754a",
	"00000000-0000-0000-0000-000000000000",
	"212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	'fromLong',
	"4dafa219-f856-4c13-baef-fa69972856ee",
	35,
	65);
INSERT INTO V_VAL
	VALUES ("10bd058a-9c61-4388-ba3d-3a7feb1f593e",
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_IRF
	VALUES ("10bd058a-9c61-4388-ba3d-3a7feb1f593e",
	"35af8730-5d4c-4ffb-8261-33fade217f3b");
INSERT INTO V_VAL
	VALUES ("4dafa219-f856-4c13-baef-fa69972856ee",
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_AVL
	VALUES ("4dafa219-f856-4c13-baef-fa69972856ee",
	"10bd058a-9c61-4388-ba3d-3a7feb1f593e",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"b8023c0d-dc60-4a92-adaa-b8adb8718439");
INSERT INTO V_PAR
	VALUES ("4dafa219-f856-4c13-baef-fa69972856ee",
	"00000000-0000-0000-0000-000000000000",
	"212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	'toLat',
	"e1109f1b-f152-480d-b99f-e8211c67665b",
	36,
	38);
INSERT INTO V_VAL
	VALUES ("95dfff3e-21a4-4816-b0bd-863f1e765f19",
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_IRF
	VALUES ("95dfff3e-21a4-4816-b0bd-863f1e765f19",
	"35af8730-5d4c-4ffb-8261-33fade217f3b");
INSERT INTO V_VAL
	VALUES ("e1109f1b-f152-480d-b99f-e8211c67665b",
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ce9e2a7d-15f6-45c9-9771-669b32d9bc7c");
INSERT INTO V_AVL
	VALUES ("e1109f1b-f152-480d-b99f-e8211c67665b",
	"95dfff3e-21a4-4816-b0bd-863f1e765f19",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34");
INSERT INTO V_PAR
	VALUES ("e1109f1b-f152-480d-b99f-e8211c67665b",
	"00000000-0000-0000-0000-000000000000",
	"212ca8b9-3d9d-47b7-82f3-a7ff4eadb94a",
	'toLong',
	"00000000-0000-0000-0000-000000000000",
	36,
	66);
INSERT INTO O_TFR
	VALUES ("c1105cc6-3ed4-4601-a7b5-a7e1e89ed587",
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'clearTrackPoints',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'select one nextPoint related by self->TrackPoint[R1];
select one lastPoint related by self->TrackPoint[R3];

if (not empty lastPoint)
  unrelate self from lastPoint across R3;
end if;

if (not empty nextPoint)
  unrelate self from nextPoint across R1;
end if;

while (not empty nextPoint)
  prevPoint = nextPoint;
  select one nextPoint related by nextPoint->TrackPoint[R2.''follows''];
  if ( not_empty nextPoint )
    unrelate prevPoint from nextPoint across R2.''follows'';
  end if;
  delete object instance prevPoint;
end while;
',
	1,
	'',
	"e0ab45a4-d9d2-4db5-8df2-2016134f83f4");
INSERT INTO ACT_OPB
	VALUES ("db193cbf-9551-4594-a301-ed4527221efc",
	"c1105cc6-3ed4-4601-a7b5-a7e1e89ed587");
INSERT INTO ACT_ACT
	VALUES ("db193cbf-9551-4594-a301-ed4527221efc",
	'operation',
	0,
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TrackLog::clearTrackPoints',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	1,
	0,
	0,
	'',
	'',
	'',
	12,
	1,
	2,
	39,
	0,
	0,
	2,
	50,
	0,
	0,
	0,
	0,
	0,
	"db193cbf-9551-4594-a301-ed4527221efc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("d1bae3e2-7a7c-4aed-bf55-c804d17684d6",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"bd8aca0e-0d11-4ae2-990f-491324bd5e06",
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES ("d1bae3e2-7a7c-4aed-bf55-c804d17684d6",
	"96ca72a6-5908-4534-bb66-ec85ead05092",
	1,
	'one',
	"a58a9452-df89-4f52-96af-49a0f866d7d1");
INSERT INTO ACT_SR
	VALUES ("d1bae3e2-7a7c-4aed-bf55-c804d17684d6");
INSERT INTO ACT_LNK
	VALUES ("c4c04475-89cd-4dc4-ba05-c2401a2005d6",
	'',
	"d1bae3e2-7a7c-4aed-bf55-c804d17684d6",
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("bd8aca0e-0d11-4ae2-990f-491324bd5e06",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"32c1d92b-c8f6-44d7-a119-87ccd0ce2898",
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES ("bd8aca0e-0d11-4ae2-990f-491324bd5e06",
	"238b4114-43a1-4d07-b861-ea80bcd9eef1",
	1,
	'one',
	"923579de-9502-4da0-a7ac-766a34d40501");
INSERT INTO ACT_SR
	VALUES ("bd8aca0e-0d11-4ae2-990f-491324bd5e06");
INSERT INTO ACT_LNK
	VALUES ("d57b3322-da3e-4729-9003-1abbbd64b473",
	'',
	"bd8aca0e-0d11-4ae2-990f-491324bd5e06",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("32c1d92b-c8f6-44d7-a119-87ccd0ce2898",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"21769a6c-7400-4f2a-82a4-8f20f2b3f115",
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES ("32c1d92b-c8f6-44d7-a119-87ccd0ce2898",
	"cf794d69-0f0c-41be-b0a4-492bf7d07ea3",
	"f78e71b8-fede-45a5-9829-fc3c5d4c5e4b",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("21769a6c-7400-4f2a-82a4-8f20f2b3f115",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"f367de02-a07e-41f6-83ae-92a150256eac",
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES ("21769a6c-7400-4f2a-82a4-8f20f2b3f115",
	"32f5d0ae-13d7-43eb-8ae9-c559a72362d1",
	"7d6e1eba-1004-4508-ade4-b810577f5b27",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f367de02-a07e-41f6-83ae-92a150256eac",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	"00000000-0000-0000-0000-000000000000",
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES ("f367de02-a07e-41f6-83ae-92a150256eac",
	"d35cf83f-126f-4ff2-943c-4334e727e108",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_VAL
	VALUES ("a58a9452-df89-4f52-96af-49a0f866d7d1",
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_IRF
	VALUES ("a58a9452-df89-4f52-96af-49a0f866d7d1",
	"31386c30-c28c-4e4c-9a68-624f1fe5420d");
INSERT INTO V_VAL
	VALUES ("923579de-9502-4da0-a7ac-766a34d40501",
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_IRF
	VALUES ("923579de-9502-4da0-a7ac-766a34d40501",
	"31386c30-c28c-4e4c-9a68-624f1fe5420d");
INSERT INTO V_VAL
	VALUES ("03242775-c41f-47b8-91b2-eca076abe44f",
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_IRF
	VALUES ("03242775-c41f-47b8-91b2-eca076abe44f",
	"238b4114-43a1-4d07-b861-ea80bcd9eef1");
INSERT INTO V_VAL
	VALUES ("11f69f88-1b3f-4096-bc30-eb742035d072",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("11f69f88-1b3f-4096-bc30-eb742035d072",
	"03242775-c41f-47b8-91b2-eca076abe44f",
	'empty');
INSERT INTO V_VAL
	VALUES ("f78e71b8-fede-45a5-9829-fc3c5d4c5e4b",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("f78e71b8-fede-45a5-9829-fc3c5d4c5e4b",
	"11f69f88-1b3f-4096-bc30-eb742035d072",
	'not');
INSERT INTO V_VAL
	VALUES ("44f26c0b-059e-44f5-8643-c2076b8afae8",
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_IRF
	VALUES ("44f26c0b-059e-44f5-8643-c2076b8afae8",
	"96ca72a6-5908-4534-bb66-ec85ead05092");
INSERT INTO V_VAL
	VALUES ("c2eff910-3a28-4a80-b8b7-398843eb230d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("c2eff910-3a28-4a80-b8b7-398843eb230d",
	"44f26c0b-059e-44f5-8643-c2076b8afae8",
	'empty');
INSERT INTO V_VAL
	VALUES ("7d6e1eba-1004-4508-ade4-b810577f5b27",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("7d6e1eba-1004-4508-ade4-b810577f5b27",
	"c2eff910-3a28-4a80-b8b7-398843eb230d",
	'not');
INSERT INTO V_VAL
	VALUES ("84846470-cc48-4eea-913e-58cd5f54b068",
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_IRF
	VALUES ("84846470-cc48-4eea-913e-58cd5f54b068",
	"96ca72a6-5908-4534-bb66-ec85ead05092");
INSERT INTO V_VAL
	VALUES ("5529abd9-7182-43ec-b452-f165e2c50e2d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("5529abd9-7182-43ec-b452-f165e2c50e2d",
	"84846470-cc48-4eea-913e-58cd5f54b068",
	'empty');
INSERT INTO V_VAL
	VALUES ("d35cf83f-126f-4ff2-943c-4334e727e108",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f");
INSERT INTO V_UNY
	VALUES ("d35cf83f-126f-4ff2-943c-4334e727e108",
	"5529abd9-7182-43ec-b452-f165e2c50e2d",
	'not');
INSERT INTO V_VAR
	VALUES ("96ca72a6-5908-4534-bb66-ec85ead05092",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	'nextPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("96ca72a6-5908-4534-bb66-ec85ead05092",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("31386c30-c28c-4e4c-9a68-624f1fe5420d",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("31386c30-c28c-4e4c-9a68-624f1fe5420d",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("238b4114-43a1-4d07-b861-ea80bcd9eef1",
	"de5b9d99-0f59-42b7-a857-da5c1b5a234f",
	'lastPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("238b4114-43a1-4d07-b861-ea80bcd9eef1",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO ACT_BLK
	VALUES ("cf794d69-0f0c-41be-b0a4-492bf7d07ea3",
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	3,
	0,
	0,
	0,
	0,
	5,
	39,
	0,
	0,
	0,
	0,
	0,
	"db193cbf-9551-4594-a301-ed4527221efc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5d9c7180-f5e3-4f38-8066-e283b085b9ad",
	"cf794d69-0f0c-41be-b0a4-492bf7d07ea3",
	"00000000-0000-0000-0000-000000000000",
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES ("5d9c7180-f5e3-4f38-8066-e283b085b9ad",
	"31386c30-c28c-4e4c-9a68-624f1fe5420d",
	"238b4114-43a1-4d07-b861-ea80bcd9eef1",
	'',
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES ("32f5d0ae-13d7-43eb-8ae9-c559a72362d1",
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	3,
	0,
	0,
	0,
	0,
	9,
	39,
	0,
	0,
	0,
	0,
	0,
	"db193cbf-9551-4594-a301-ed4527221efc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3c1fd1ce-605b-46cc-b218-871bcec6e66e",
	"32f5d0ae-13d7-43eb-8ae9-c559a72362d1",
	"00000000-0000-0000-0000-000000000000",
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES ("3c1fd1ce-605b-46cc-b218-871bcec6e66e",
	"31386c30-c28c-4e4c-9a68-624f1fe5420d",
	"96ca72a6-5908-4534-bb66-ec85ead05092",
	'',
	"c768d632-76e3-409d-a572-d7ceebb9d3d8",
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES ("f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	1,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	14,
	46,
	0,
	0,
	14,
	57,
	14,
	60,
	0,
	0,
	0,
	"db193cbf-9551-4594-a301-ed4527221efc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("385a303c-afd5-4d92-87ac-e2ec5b730542",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	"ad5dee37-c72f-4ad7-a0dc-bc3d5e2b7c01",
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES ("385a303c-afd5-4d92-87ac-e2ec5b730542",
	"12224314-e7d2-485d-a26a-f55638b4b02b",
	"3840821c-706d-4e84-a739-25580326e03b",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("ad5dee37-c72f-4ad7-a0dc-bc3d5e2b7c01",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	"9480a349-4738-47d4-814f-1b2236ffef55",
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES ("ad5dee37-c72f-4ad7-a0dc-bc3d5e2b7c01",
	"96ca72a6-5908-4534-bb66-ec85ead05092",
	0,
	'one',
	"123d638c-bd07-4249-8605-94bac2d941d5");
INSERT INTO ACT_SR
	VALUES ("ad5dee37-c72f-4ad7-a0dc-bc3d5e2b7c01");
INSERT INTO ACT_LNK
	VALUES ("01e62589-0ede-4029-b215-19c33f15dec5",
	'''follows''',
	"ad5dee37-c72f-4ad7-a0dc-bc3d5e2b7c01",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES ("9480a349-4738-47d4-814f-1b2236ffef55",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	"1f857209-ce57-46a3-ad39-1b9a9f1d9be6",
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES ("9480a349-4738-47d4-814f-1b2236ffef55",
	"bbe92273-f127-4cde-b05f-282c47c85ebe",
	"93667daf-4a9a-4bff-a3c8-77de1a12d3a6",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1f857209-ce57-46a3-ad39-1b9a9f1d9be6",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	"00000000-0000-0000-0000-000000000000",
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES ("1f857209-ce57-46a3-ad39-1b9a9f1d9be6",
	"1f4516d1-dd55-45b7-ab56-9d9c79f48b35");
INSERT INTO V_VAL
	VALUES ("3840821c-706d-4e84-a739-25580326e03b",
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_IRF
	VALUES ("3840821c-706d-4e84-a739-25580326e03b",
	"1f4516d1-dd55-45b7-ab56-9d9c79f48b35");
INSERT INTO V_VAL
	VALUES ("12224314-e7d2-485d-a26a-f55638b4b02b",
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_IRF
	VALUES ("12224314-e7d2-485d-a26a-f55638b4b02b",
	"96ca72a6-5908-4534-bb66-ec85ead05092");
INSERT INTO V_VAL
	VALUES ("123d638c-bd07-4249-8605-94bac2d941d5",
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_IRF
	VALUES ("123d638c-bd07-4249-8605-94bac2d941d5",
	"96ca72a6-5908-4534-bb66-ec85ead05092");
INSERT INTO V_VAL
	VALUES ("5b2a114a-1518-47ca-87b0-2dc6337205e9",
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_IRF
	VALUES ("5b2a114a-1518-47ca-87b0-2dc6337205e9",
	"96ca72a6-5908-4534-bb66-ec85ead05092");
INSERT INTO V_VAL
	VALUES ("93667daf-4a9a-4bff-a3c8-77de1a12d3a6",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43");
INSERT INTO V_UNY
	VALUES ("93667daf-4a9a-4bff-a3c8-77de1a12d3a6",
	"5b2a114a-1518-47ca-87b0-2dc6337205e9",
	'not_empty');
INSERT INTO V_VAR
	VALUES ("1f4516d1-dd55-45b7-ab56-9d9c79f48b35",
	"f49a6efa-df3a-4a15-b7c2-7507f3cd2b43",
	'prevPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("1f4516d1-dd55-45b7-ab56-9d9c79f48b35",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO ACT_BLK
	VALUES ("bbe92273-f127-4cde-b05f-282c47c85ebe",
	0,
	0,
	0,
	'''follows''',
	'',
	'',
	16,
	5,
	0,
	0,
	0,
	0,
	16,
	46,
	16,
	49,
	0,
	0,
	0,
	"db193cbf-9551-4594-a301-ed4527221efc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8e28f2a9-557c-4fff-80c8-bb92f2eb58df",
	"bbe92273-f127-4cde-b05f-282c47c85ebe",
	"00000000-0000-0000-0000-000000000000",
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES ("8e28f2a9-557c-4fff-80c8-bb92f2eb58df",
	"1f4516d1-dd55-45b7-ab56-9d9c79f48b35",
	"96ca72a6-5908-4534-bb66-ec85ead05092",
	'''follows''',
	"88267812-6798-42ca-aa4c-390b14aba209",
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES ("18b8d880-9cef-4b63-8a9e-cc857e074e5c",
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'addLapMarker',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	"c1105cc6-3ed4-4601-a7b5-a7e1e89ed587");
INSERT INTO ACT_OPB
	VALUES ("bb11a8e4-6b48-4892-b736-4b17c360cbca",
	"18b8d880-9cef-4b63-8a9e-cc857e074e5c");
INSERT INTO ACT_ACT
	VALUES ("bb11a8e4-6b48-4892-b736-4b17c360cbca",
	'operation',
	0,
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TrackLog::addLapMarker',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4d8530da-6f14-45ce-bfec-8b1007941350",
	1,
	0,
	0,
	'''has laps defined by''',
	'',
	'',
	7,
	1,
	2,
	37,
	0,
	0,
	4,
	33,
	4,
	36,
	0,
	0,
	0,
	"bb11a8e4-6b48-4892-b736-4b17c360cbca",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("76abb74e-3267-4ab4-ac52-fc0151491f88",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"20cd35d7-e0be-4a2b-9fba-cef92b8e0a56",
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES ("76abb74e-3267-4ab4-ac52-fc0151491f88",
	"3ca21d1a-6b45-45ee-a245-fbcf2d271af6",
	1,
	'one',
	"d1a3e920-5edb-4dc3-a2ef-dbc7cf9c19c1");
INSERT INTO ACT_SR
	VALUES ("76abb74e-3267-4ab4-ac52-fc0151491f88");
INSERT INTO ACT_LNK
	VALUES ("a34f2174-dc5d-4745-80e3-5c89706a7ba5",
	'''represents path for''',
	"76abb74e-3267-4ab4-ac52-fc0151491f88",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"30cc28bd-8f32-489f-b992-4f00225dc7fc",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES ("30cc28bd-8f32-489f-b992-4f00225dc7fc",
	'''is timed by''',
	"00000000-0000-0000-0000-000000000000",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES ("20cd35d7-e0be-4a2b-9fba-cef92b8e0a56",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"43f6258b-a9d8-4ea7-ba45-a4ddebfc9eec",
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES ("20cd35d7-e0be-4a2b-9fba-cef92b8e0a56",
	"a3ec5fb6-81a3-4ce7-a219-abe899494410",
	1,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c",
	2,
	37);
INSERT INTO ACT_SMT
	VALUES ("43f6258b-a9d8-4ea7-ba45-a4ddebfc9eec",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"c251aa8d-9820-4a51-9efb-d7b370eed53a",
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES ("43f6258b-a9d8-4ea7-ba45-a4ddebfc9eec",
	"b7584374-e2bd-4d35-905e-ffecac425c59",
	"67ec1c50-252d-4e94-94c3-81a3802a98b4",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("c251aa8d-9820-4a51-9efb-d7b370eed53a",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"0b819c85-84b0-4675-90ad-65e2a3ac8d83",
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES ("c251aa8d-9820-4a51-9efb-d7b370eed53a",
	"30860526-f3ee-497a-8d0e-0b7021a37310",
	"a3ec5fb6-81a3-4ce7-a219-abe899494410",
	'''has laps defined by''',
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES ("0b819c85-84b0-4675-90ad-65e2a3ac8d83",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES ("0b819c85-84b0-4675-90ad-65e2a3ac8d83",
	"1f60b0a9-d3d9-49c0-a69c-3a43625d242b",
	"30860526-f3ee-497a-8d0e-0b7021a37310",
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("d1a3e920-5edb-4dc3-a2ef-dbc7cf9c19c1",
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4d8530da-6f14-45ce-bfec-8b1007941350");
INSERT INTO V_IRF
	VALUES ("d1a3e920-5edb-4dc3-a2ef-dbc7cf9c19c1",
	"30860526-f3ee-497a-8d0e-0b7021a37310");
INSERT INTO V_VAL
	VALUES ("50aae1a4-4fb3-4fae-b507-098ff67791c3",
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4d8530da-6f14-45ce-bfec-8b1007941350");
INSERT INTO V_IRF
	VALUES ("50aae1a4-4fb3-4fae-b507-098ff67791c3",
	"a3ec5fb6-81a3-4ce7-a219-abe899494410");
INSERT INTO V_VAL
	VALUES ("67ec1c50-252d-4e94-94c3-81a3802a98b4",
	1,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4d8530da-6f14-45ce-bfec-8b1007941350");
INSERT INTO V_AVL
	VALUES ("67ec1c50-252d-4e94-94c3-81a3802a98b4",
	"50aae1a4-4fb3-4fae-b507-098ff67791c3",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c",
	"faf777a5-dba3-4748-a898-0bb63c43abab");
INSERT INTO V_VAL
	VALUES ("fcac7432-8b2a-4511-bd5a-05eda4088663",
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4d8530da-6f14-45ce-bfec-8b1007941350");
INSERT INTO V_IRF
	VALUES ("fcac7432-8b2a-4511-bd5a-05eda4088663",
	"3ca21d1a-6b45-45ee-a245-fbcf2d271af6");
INSERT INTO V_VAL
	VALUES ("b7584374-e2bd-4d35-905e-ffecac425c59",
	0,
	0,
	3,
	27,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4d8530da-6f14-45ce-bfec-8b1007941350");
INSERT INTO V_AVL
	VALUES ("b7584374-e2bd-4d35-905e-ffecac425c59",
	"fcac7432-8b2a-4511-bd5a-05eda4088663",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAR
	VALUES ("3ca21d1a-6b45-45ee-a245-fbcf2d271af6",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	'timer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("3ca21d1a-6b45-45ee-a245-fbcf2d271af6",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("30860526-f3ee-497a-8d0e-0b7021a37310",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("30860526-f3ee-497a-8d0e-0b7021a37310",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("a3ec5fb6-81a3-4ce7-a219-abe899494410",
	"4d8530da-6f14-45ce-bfec-8b1007941350",
	'lapMarker',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a3ec5fb6-81a3-4ce7-a219-abe899494410",
	0,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO O_TFR
	VALUES ("1b1a4894-67a0-4815-a855-9799b12b3fc4",
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'clearLapMarkers',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	"18b8d880-9cef-4b63-8a9e-cc857e074e5c");
INSERT INTO ACT_OPB
	VALUES ("c2caa0a9-c0cd-4ded-b13b-c2f7ad42f890",
	"1b1a4894-67a0-4815-a855-9799b12b3fc4");
INSERT INTO ACT_ACT
	VALUES ("c2caa0a9-c0cd-4ded-b13b-c2f7ad42f890",
	'operation',
	0,
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TrackLog::clearLapMarkers',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6cb23b4d-fbb7-4051-aac4-4468a185e026",
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	41,
	0,
	0,
	1,
	51,
	0,
	0,
	0,
	0,
	0,
	"c2caa0a9-c0cd-4ded-b13b-c2f7ad42f890",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7845ee63-1bc3-454a-afe5-66198f399f31",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	"20a4329c-83b1-4e46-8eae-d1a199e406c9",
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES ("7845ee63-1bc3-454a-afe5-66198f399f31",
	"fb09285b-3b8a-48e8-ae0a-406baa1ce292",
	1,
	'many',
	"bfaa1cce-1ab7-436b-89a2-c8b151dbf405");
INSERT INTO ACT_SR
	VALUES ("7845ee63-1bc3-454a-afe5-66198f399f31");
INSERT INTO ACT_LNK
	VALUES ("0f620469-7e8f-4215-994f-ecfc1c805f96",
	'',
	"7845ee63-1bc3-454a-afe5-66198f399f31",
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	"00000000-0000-0000-0000-000000000000",
	3,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c",
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("20a4329c-83b1-4e46-8eae-d1a199e406c9",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES ("20a4329c-83b1-4e46-8eae-d1a199e406c9",
	"6d7b0f00-9c0d-4ac0-9b24-e4ef33f54e15",
	1,
	"285d42ef-4090-4caf-9829-42cabeebfcd7",
	"fb09285b-3b8a-48e8-ae0a-406baa1ce292",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO V_VAL
	VALUES ("bfaa1cce-1ab7-436b-89a2-c8b151dbf405",
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026");
INSERT INTO V_IRF
	VALUES ("bfaa1cce-1ab7-436b-89a2-c8b151dbf405",
	"a5af6a44-be6f-4c46-a985-fd107afab7ef");
INSERT INTO V_VAR
	VALUES ("fb09285b-3b8a-48e8-ae0a-406baa1ce292",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	'lapMarkers',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("fb09285b-3b8a-48e8-ae0a-406baa1ce292",
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO V_VAR
	VALUES ("a5af6a44-be6f-4c46-a985-fd107afab7ef",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a5af6a44-be6f-4c46-a985-fd107afab7ef",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("285d42ef-4090-4caf-9829-42cabeebfcd7",
	"6cb23b4d-fbb7-4051-aac4-4468a185e026",
	'lapMarker',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("285d42ef-4090-4caf-9829-42cabeebfcd7",
	1,
	"4ff5f39c-493f-4348-abc0-1d652462fa3c");
INSERT INTO ACT_BLK
	VALUES ("6d7b0f00-9c0d-4ac0-9b24-e4ef33f54e15",
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	0,
	0,
	0,
	0,
	3,
	39,
	0,
	0,
	0,
	0,
	0,
	"c2caa0a9-c0cd-4ded-b13b-c2f7ad42f890",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c358c102-d379-4c65-be62-f8f9f65f3cae",
	"6d7b0f00-9c0d-4ac0-9b24-e4ef33f54e15",
	"14f8d223-be26-4412-bf4a-f9419009a258",
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES ("c358c102-d379-4c65-be62-f8f9f65f3cae",
	"a5af6a44-be6f-4c46-a985-fd107afab7ef",
	"285d42ef-4090-4caf-9829-42cabeebfcd7",
	'',
	"2cb93147-b4d6-497e-a0c6-a33c78d5a4c7",
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("14f8d223-be26-4412-bf4a-f9419009a258",
	"6d7b0f00-9c0d-4ac0-9b24-e4ef33f54e15",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES ("14f8d223-be26-4412-bf4a-f9419009a258",
	"285d42ef-4090-4caf-9829-42cabeebfcd7");
INSERT INTO O_TFR
	VALUES ("1f60b0a9-d3d9-49c0-a69c-3a43625d242b",
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	'updateDisplay',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	"1b1a4894-67a0-4815-a855-9799b12b3fc4");
INSERT INTO ACT_OPB
	VALUES ("55be9a45-fdbd-4c3d-be7b-a7acd5848c46",
	"1f60b0a9-d3d9-49c0-a69c-3a43625d242b");
INSERT INTO ACT_ACT
	VALUES ("55be9a45-fdbd-4c3d-be7b-a7acd5848c46",
	'operation',
	0,
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TrackLog::updateDisplay',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	4,
	1,
	3,
	51,
	0,
	0,
	3,
	59,
	3,
	62,
	0,
	0,
	0,
	"55be9a45-fdbd-4c3d-be7b-a7acd5848c46",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0f40cb21-328b-4919-919f-062534c224c3",
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	"2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0",
	2,
	1,
	'TrackLog::updateDisplay line: 2');
INSERT INTO ACT_SEL
	VALUES ("0f40cb21-328b-4919-919f-062534c224c3",
	"ab0eb179-88f6-43d6-a87a-0c3c121bbfaa",
	1,
	'one',
	"d3005990-e34c-48ab-af46-e915e0495480");
INSERT INTO ACT_SR
	VALUES ("0f40cb21-328b-4919-919f-062534c224c3");
INSERT INTO ACT_LNK
	VALUES ("abd79052-7de9-4c8e-9970-14efd10fd61d",
	'''represents path for''',
	"0f40cb21-328b-4919-919f-062534c224c3",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"cc2f4613-2f5f-4d4e-aebb-ac277e6a269d",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES ("cc2f4613-2f5f-4d4e-aebb-ac277e6a269d",
	'''current status indicated on''',
	"00000000-0000-0000-0000-000000000000",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES ("2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0",
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES ("2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0",
	1,
	0,
	4,
	10,
	4,
	19,
	3,
	51,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0");
INSERT INTO E_GSME
	VALUES ("2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea");
INSERT INTO E_GEN
	VALUES ("2849f85e-aeb2-4f5a-83cb-bcb3eab1e9d0",
	"ab0eb179-88f6-43d6-a87a-0c3c121bbfaa");
INSERT INTO V_VAL
	VALUES ("d3005990-e34c-48ab-af46-e915e0495480",
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd");
INSERT INTO V_IRF
	VALUES ("d3005990-e34c-48ab-af46-e915e0495480",
	"b2810193-7b6c-4f3c-ad84-f284a3521594");
INSERT INTO V_VAR
	VALUES ("ab0eb179-88f6-43d6-a87a-0c3c121bbfaa",
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	'display',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("ab0eb179-88f6-43d6-a87a-0c3c121bbfaa",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO V_VAR
	VALUES ("b2810193-7b6c-4f3c-ad84-f284a3521594",
	"b97a5b3f-66bd-49b4-8185-38aef16a5ccd",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("b2810193-7b6c-4f3c-ad84-f284a3521594",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO O_ID
	VALUES (0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO O_ID
	VALUES (1,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO O_ID
	VALUES (2,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO PE_PE
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_NBATTR
	VALUES ("6afeffb5-33ae-4167-adda-1de88e5d6a95",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_BATTR
	VALUES ("6afeffb5-33ae-4167-adda-1de88e5d6a95",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_ATTR
	VALUES ("6afeffb5-33ae-4167-adda-1de88e5d6a95",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"00000000-0000-0000-0000-000000000000",
	'time',
	'Number of seconds between start time for the associated workout and recording of this location.
',
	'',
	'time',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("f32f41a7-87b9-4775-9eb1-9820601e7a34",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_BATTR
	VALUES ("f32f41a7-87b9-4775-9eb1-9820601e7a34",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_ATTR
	VALUES ("f32f41a7-87b9-4775-9eb1-9820601e7a34",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"6afeffb5-33ae-4167-adda-1de88e5d6a95",
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("b8023c0d-dc60-4a92-adaa-b8adb8718439",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_BATTR
	VALUES ("b8023c0d-dc60-4a92-adaa-b8adb8718439",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_ATTR
	VALUES ("b8023c0d-dc60-4a92-adaa-b8adb8718439",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34",
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_ID
	VALUES (1,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO O_ID
	VALUES (2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO PE_PE
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("d132a71c-3fa1-4589-bcec-418a8798e25b",
	'WorkoutSession',
	7,
	'WorkoutSession',
	'Each instance represents a single workout session.  

Presently, the device supports only a single session, 
but future releases may support multiple sessions.  
Even in that case, only a single session is executing 
at any given time.  Other sessions represent completed
or planned workout sessions.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("662a88c8-fae0-4063-bdb1-b17bc53523be",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'addHeartRateSample',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Add a new heart-rate sample and notify the UI of the current heart rate.

select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];

// Create and initialize a new heart-rate sample.
create object instance sample of HeartRateSample;
sample.heartRate = param.heartRate;
sample.time = workoutTimer.time;
relate self to sample across R6.''tracks heart rate over time as'';

// Notify UI of the new heart rate.
select one display related by self->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TPARM
	VALUES ("854d799b-341a-47d3-8b90-dd4eba1b0b56",
	"662a88c8-fae0-4063-bdb1-b17bc53523be",
	'heartRate',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_OPB
	VALUES ("6404700a-27d0-4cd7-bb1e-a2443177d54c",
	"662a88c8-fae0-4063-bdb1-b17bc53523be");
INSERT INTO ACT_ACT
	VALUES ("6404700a-27d0-4cd7-bb1e-a2443177d54c",
	'operation',
	0,
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::addHeartRateSample',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("595a1060-e36a-4565-bda4-c4511d2603d3",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	13,
	1,
	12,
	37,
	0,
	0,
	12,
	45,
	12,
	48,
	0,
	0,
	0,
	"6404700a-27d0-4cd7-bb1e-a2443177d54c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("44a31211-1472-44d4-bfd5-a27bf5334c4c",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"92850e47-a938-4782-b780-8ce03870163e",
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES ("44a31211-1472-44d4-bfd5-a27bf5334c4c",
	"e0ad4739-b51a-4fff-9bc3-04d62b4f4e40",
	1,
	'one',
	"cd50699f-dbfa-4b2e-a883-2feb08b876d2");
INSERT INTO ACT_SR
	VALUES ("44a31211-1472-44d4-bfd5-a27bf5334c4c");
INSERT INTO ACT_LNK
	VALUES ("1dd72153-263f-4b49-a5db-e7fae4b409e0",
	'''is timed by''',
	"44a31211-1472-44d4-bfd5-a27bf5334c4c",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES ("92850e47-a938-4782-b780-8ce03870163e",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"a34f985b-1b60-4f71-8e4f-37796735328d",
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES ("92850e47-a938-4782-b780-8ce03870163e",
	"34852d78-0f6b-4095-ad8c-f060901105d5",
	1,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	6,
	34);
INSERT INTO ACT_SMT
	VALUES ("a34f985b-1b60-4f71-8e4f-37796735328d",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"330fc19a-e96f-4a2a-82c3-d2bcb4c2279c",
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES ("a34f985b-1b60-4f71-8e4f-37796735328d",
	"7bfdbdb0-a9a1-4613-97e9-502cc51f71aa",
	"9fa504af-47a4-46f6-a396-e110b0fafbf9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("330fc19a-e96f-4a2a-82c3-d2bcb4c2279c",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"6b655ce9-fcd7-4752-9e2a-79547adb44d8",
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES ("330fc19a-e96f-4a2a-82c3-d2bcb4c2279c",
	"348c4454-eb42-425a-8dcb-2ce4bc3a9ca8",
	"2e47f246-caeb-4e98-8e94-49bc660f13d0",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("6b655ce9-fcd7-4752-9e2a-79547adb44d8",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"5452616c-fe24-4a1c-b0fa-e72492c72ce4",
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES ("6b655ce9-fcd7-4752-9e2a-79547adb44d8",
	"932c6acb-2360-4ea1-a186-cbc506659a02",
	"34852d78-0f6b-4095-ad8c-f060901105d5",
	'''tracks heart rate over time as''',
	"2da0e849-e040-4957-99a1-d4634277e94b",
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES ("5452616c-fe24-4a1c-b0fa-e72492c72ce4",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"80ee1c05-6248-4859-9955-f2e72c5938e1",
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES ("5452616c-fe24-4a1c-b0fa-e72492c72ce4",
	"7b6022e1-7b14-46c6-9e68-b96b0dd07100",
	1,
	'one',
	"875a4c09-cdce-4401-8fc2-8569a556184f");
INSERT INTO ACT_SR
	VALUES ("5452616c-fe24-4a1c-b0fa-e72492c72ce4");
INSERT INTO ACT_LNK
	VALUES ("45f0343c-0ffa-4707-81ca-a4e8be1064e9",
	'''current status indicated on''',
	"5452616c-fe24-4a1c-b0fa-e72492c72ce4",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES ("80ee1c05-6248-4859-9955-f2e72c5938e1",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	"00000000-0000-0000-0000-000000000000",
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES ("80ee1c05-6248-4859-9955-f2e72c5938e1",
	1,
	0,
	13,
	10,
	13,
	19,
	12,
	37,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("80ee1c05-6248-4859-9955-f2e72c5938e1");
INSERT INTO E_GSME
	VALUES ("80ee1c05-6248-4859-9955-f2e72c5938e1",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea");
INSERT INTO E_GEN
	VALUES ("80ee1c05-6248-4859-9955-f2e72c5938e1",
	"7b6022e1-7b14-46c6-9e68-b96b0dd07100");
INSERT INTO V_VAL
	VALUES ("cd50699f-dbfa-4b2e-a883-2feb08b876d2",
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_IRF
	VALUES ("cd50699f-dbfa-4b2e-a883-2feb08b876d2",
	"932c6acb-2360-4ea1-a186-cbc506659a02");
INSERT INTO V_VAL
	VALUES ("5c28bb06-760d-4e46-96c1-271cc708f4e8",
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_IRF
	VALUES ("5c28bb06-760d-4e46-96c1-271cc708f4e8",
	"34852d78-0f6b-4095-ad8c-f060901105d5");
INSERT INTO V_VAL
	VALUES ("9fa504af-47a4-46f6-a396-e110b0fafbf9",
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_AVL
	VALUES ("9fa504af-47a4-46f6-a396-e110b0fafbf9",
	"5c28bb06-760d-4e46-96c1-271cc708f4e8",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"ee5b3f68-6956-42f6-ba26-7e3176575682");
INSERT INTO V_VAL
	VALUES ("7bfdbdb0-a9a1-4613-97e9-502cc51f71aa",
	0,
	0,
	7,
	26,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_PVL
	VALUES ("7bfdbdb0-a9a1-4613-97e9-502cc51f71aa",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"854d799b-341a-47d3-8b90-dd4eba1b0b56",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("66a74148-ae9d-4308-8bed-f81ffef37967",
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_IRF
	VALUES ("66a74148-ae9d-4308-8bed-f81ffef37967",
	"34852d78-0f6b-4095-ad8c-f060901105d5");
INSERT INTO V_VAL
	VALUES ("2e47f246-caeb-4e98-8e94-49bc660f13d0",
	1,
	0,
	8,
	8,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_AVL
	VALUES ("2e47f246-caeb-4e98-8e94-49bc660f13d0",
	"66a74148-ae9d-4308-8bed-f81ffef37967",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"7fb30d45-9969-42f5-a488-a4de89f8cbd2");
INSERT INTO V_VAL
	VALUES ("c5e331d3-5853-4676-8c1a-621b9275f8d1",
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_IRF
	VALUES ("c5e331d3-5853-4676-8c1a-621b9275f8d1",
	"e0ad4739-b51a-4fff-9bc3-04d62b4f4e40");
INSERT INTO V_VAL
	VALUES ("348c4454-eb42-425a-8dcb-2ce4bc3a9ca8",
	0,
	0,
	8,
	28,
	31,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_AVL
	VALUES ("348c4454-eb42-425a-8dcb-2ce4bc3a9ca8",
	"c5e331d3-5853-4676-8c1a-621b9275f8d1",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("875a4c09-cdce-4401-8fc2-8569a556184f",
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"595a1060-e36a-4565-bda4-c4511d2603d3");
INSERT INTO V_IRF
	VALUES ("875a4c09-cdce-4401-8fc2-8569a556184f",
	"932c6acb-2360-4ea1-a186-cbc506659a02");
INSERT INTO V_VAR
	VALUES ("e0ad4739-b51a-4fff-9bc3-04d62b4f4e40",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("e0ad4739-b51a-4fff-9bc3-04d62b4f4e40",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("932c6acb-2360-4ea1-a186-cbc506659a02",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("932c6acb-2360-4ea1-a186-cbc506659a02",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("34852d78-0f6b-4095-ad8c-f060901105d5",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	'sample',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("34852d78-0f6b-4095-ad8c-f060901105d5",
	0,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO V_VAR
	VALUES ("7b6022e1-7b14-46c6-9e68-b96b0dd07100",
	"595a1060-e36a-4565-bda4-c4511d2603d3",
	'display',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7b6022e1-7b14-46c6-9e68-b96b0dd07100",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_TFR
	VALUES ("60793728-e9e9-402f-8f91-283342f1d09c",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'clearHeartRateSamples',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	"662a88c8-fae0-4063-bdb1-b17bc53523be");
INSERT INTO ACT_OPB
	VALUES ("c7ceaeab-7e94-42ba-aa4f-b264cd3a10fb",
	"60793728-e9e9-402f-8f91-283342f1d09c");
INSERT INTO ACT_ACT
	VALUES ("c7ceaeab-7e94-42ba-aa4f-b264cd3a10fb",
	'operation',
	0,
	"0491241f-2ff0-40fe-a033-b780575739b7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::clearHeartRateSamples',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0491241f-2ff0-40fe-a033-b780575739b7",
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	38,
	0,
	0,
	1,
	54,
	0,
	0,
	0,
	0,
	0,
	"c7ceaeab-7e94-42ba-aa4f-b264cd3a10fb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1fdcb2ac-3c9c-4764-aebf-bb798d95316e",
	"0491241f-2ff0-40fe-a033-b780575739b7",
	"b6bb6dcc-9e8f-460e-873c-2737c9fd8892",
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES ("1fdcb2ac-3c9c-4764-aebf-bb798d95316e",
	"b91876ba-13ee-4ff2-90a2-ee09745d5ab3",
	1,
	'many',
	"38cda22d-4b30-4635-a1af-f92ec4cd16cc");
INSERT INTO ACT_SR
	VALUES ("1fdcb2ac-3c9c-4764-aebf-bb798d95316e");
INSERT INTO ACT_LNK
	VALUES ("90af39ce-ac39-4982-bb23-261fab2e32c7",
	'',
	"1fdcb2ac-3c9c-4764-aebf-bb798d95316e",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"00000000-0000-0000-0000-000000000000",
	3,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b6bb6dcc-9e8f-460e-873c-2737c9fd8892",
	"0491241f-2ff0-40fe-a033-b780575739b7",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES ("b6bb6dcc-9e8f-460e-873c-2737c9fd8892",
	"61c7a157-81f8-429f-900e-87f368bc5bff",
	1,
	"c94a456d-0b4b-439a-a7d0-2b143363b7fb",
	"b91876ba-13ee-4ff2-90a2-ee09745d5ab3",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO V_VAL
	VALUES ("38cda22d-4b30-4635-a1af-f92ec4cd16cc",
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"0491241f-2ff0-40fe-a033-b780575739b7");
INSERT INTO V_IRF
	VALUES ("38cda22d-4b30-4635-a1af-f92ec4cd16cc",
	"d1ae14dc-bc2c-4f06-98c3-020d9a52ab54");
INSERT INTO V_VAR
	VALUES ("b91876ba-13ee-4ff2-90a2-ee09745d5ab3",
	"0491241f-2ff0-40fe-a033-b780575739b7",
	'samples',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("b91876ba-13ee-4ff2-90a2-ee09745d5ab3",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO V_VAR
	VALUES ("d1ae14dc-bc2c-4f06-98c3-020d9a52ab54",
	"0491241f-2ff0-40fe-a033-b780575739b7",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("d1ae14dc-bc2c-4f06-98c3-020d9a52ab54",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("c94a456d-0b4b-439a-a7d0-2b143363b7fb",
	"0491241f-2ff0-40fe-a033-b780575739b7",
	'sample',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("c94a456d-0b4b-439a-a7d0-2b143363b7fb",
	1,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO ACT_BLK
	VALUES ("61c7a157-81f8-429f-900e-87f368bc5bff",
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	0,
	0,
	0,
	0,
	3,
	36,
	0,
	0,
	0,
	0,
	0,
	"c7ceaeab-7e94-42ba-aa4f-b264cd3a10fb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4465fa1a-257a-4cb3-9d14-00f8200873a8",
	"61c7a157-81f8-429f-900e-87f368bc5bff",
	"60493b60-d4a2-478a-87a8-e08063efefde",
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES ("4465fa1a-257a-4cb3-9d14-00f8200873a8",
	"d1ae14dc-bc2c-4f06-98c3-020d9a52ab54",
	"c94a456d-0b4b-439a-a7d0-2b143363b7fb",
	'',
	"2da0e849-e040-4957-99a1-d4634277e94b",
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("60493b60-d4a2-478a-87a8-e08063efefde",
	"61c7a157-81f8-429f-900e-87f368bc5bff",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES ("60493b60-d4a2-478a-87a8-e08063efefde",
	"c94a456d-0b4b-439a-a7d0-2b143363b7fb");
INSERT INTO O_TFR
	VALUES ("4a9cf984-88b6-4e6f-9813-22c8716ef3f5",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'initialize',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	"60793728-e9e9-402f-8f91-283342f1d09c");
INSERT INTO ACT_OPB
	VALUES ("94f40682-f5f2-44ce-aaf2-1a43dfca7244",
	"4a9cf984-88b6-4e6f-9813-22c8716ef3f5");
INSERT INTO ACT_ACT
	VALUES ("94f40682-f5f2-44ce-aaf2-1a43dfca7244",
	'operation',
	0,
	"1bdedefc-0410-4f94-8059-b890e9c1ff44",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::initialize',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1bdedefc-0410-4f94-8059-b890e9c1ff44",
	0,
	0,
	0,
	'TIM',
	'',
	'',
	5,
	1,
	4,
	18,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"94f40682-f5f2-44ce-aaf2-1a43dfca7244",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("00f7ba63-0764-4836-8812-8be7af3eeacd",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44",
	"eef70332-5f7c-4105-82fe-7aef7e8f91a4",
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES ("00f7ba63-0764-4836-8812-8be7af3eeacd",
	"3c6fbeaf-cf48-4e29-bf89-c092adb83930",
	"b133bc76-3c12-415b-b83a-17d91b469407",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("eef70332-5f7c-4105-82fe-7aef7e8f91a4",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44",
	"de53720e-c514-428f-af76-e259622158c6",
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES ("eef70332-5f7c-4105-82fe-7aef7e8f91a4",
	"20adc889-21ca-46b9-a60f-24ffeca8f1dd",
	"f594c4ba-621c-4520-9f29-aadbff7c8417",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("de53720e-c514-428f-af76-e259622158c6",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES ("de53720e-c514-428f-af76-e259622158c6",
	"2f0a961e-dde8-4d17-8c7a-c159f5a249bf",
	"3c7155ea-1d72-45b7-817f-2546ebcb873e",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("2c88350f-38a0-4dbc-bd50-4b7a1a2341e8",
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_IRF
	VALUES ("2c88350f-38a0-4dbc-bd50-4b7a1a2341e8",
	"8f74c4b8-3b41-4177-85e0-2043861a01b0");
INSERT INTO V_VAL
	VALUES ("b133bc76-3c12-415b-b83a-17d91b469407",
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000e",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_AVL
	VALUES ("b133bc76-3c12-415b-b83a-17d91b469407",
	"2c88350f-38a0-4dbc-bd50-4b7a1a2341e8",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"8bb3816b-7899-4212-b44a-c5a6fd6f4c7d");
INSERT INTO V_VAL
	VALUES ("3c6fbeaf-cf48-4e29-bf89-c092adb83930",
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000e",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_BRV
	VALUES ("3c6fbeaf-cf48-4e29-bf89-c092adb83930",
	"5e9051a8-5bd7-4e93-abb6-d6cf46d3aaba",
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES ("e9f538c6-332c-4e3e-b20e-94dec2d0f0e5",
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_IRF
	VALUES ("e9f538c6-332c-4e3e-b20e-94dec2d0f0e5",
	"8f74c4b8-3b41-4177-85e0-2043861a01b0");
INSERT INTO V_VAL
	VALUES ("f594c4ba-621c-4520-9f29-aadbff7c8417",
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000010",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_AVL
	VALUES ("f594c4ba-621c-4520-9f29-aadbff7c8417",
	"e9f538c6-332c-4e3e-b20e-94dec2d0f0e5",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"83cc3629-9017-4ae5-a885-d52be892663c");
INSERT INTO V_VAL
	VALUES ("20adc889-21ca-46b9-a60f-24ffeca8f1dd",
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000010",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_BRV
	VALUES ("20adc889-21ca-46b9-a60f-24ffeca8f1dd",
	"61edb2ca-1b0c-45e3-972c-9700eeb5d045",
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES ("70da4ed3-f322-4597-a089-5ae7081021f9",
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_IRF
	VALUES ("70da4ed3-f322-4597-a089-5ae7081021f9",
	"8f74c4b8-3b41-4177-85e0-2043861a01b0");
INSERT INTO V_VAL
	VALUES ("3c7155ea-1d72-45b7-817f-2546ebcb873e",
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_AVL
	VALUES ("3c7155ea-1d72-45b7-817f-2546ebcb873e",
	"70da4ed3-f322-4597-a089-5ae7081021f9",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("2f0a961e-dde8-4d17-8c7a-c159f5a249bf",
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44");
INSERT INTO V_LRL
	VALUES ("2f0a961e-dde8-4d17-8c7a-c159f5a249bf",
	'0.0');
INSERT INTO V_VAR
	VALUES ("8f74c4b8-3b41-4177-85e0-2043861a01b0",
	"1bdedefc-0410-4f94-8059-b890e9c1ff44",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("8f74c4b8-3b41-4177-85e0-2043861a01b0",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_TFR
	VALUES ("00525632-d22d-499f-a687-1011af2bd989",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'create',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'// Unless a workout session already exists, create and initialize a 
// workout session, workout timer, and tracklog, and relate them all.

select any session from instances of WorkoutSession;

if ( empty session )

  // Create a workout session.
  create object instance session of WorkoutSession;
  session.initialize();

  // Create a workout timer.
  create object instance workoutTimer of WorkoutTimer;
  workoutTimer.initialize();

  // Create a track log.
  create object instance trackLog of TrackLog;
  
  // Create a display.
  create object instance display of Display;

  // Relate them all together.
  relate trackLog to session across R4.''represents path for'';
  relate workoutTimer to session across R8.''acts as the stopwatch for'';
  relate display to session across R7.''indicates current status of'';
  
end if;
',
	1,
	'',
	"4a9cf984-88b6-4e6f-9813-22c8716ef3f5");
INSERT INTO ACT_OPB
	VALUES ("2df86f59-3a30-450d-bd4e-abcf3c027634",
	"00525632-d22d-499f-a687-1011af2bd989");
INSERT INTO ACT_ACT
	VALUES ("2df86f59-3a30-450d-bd4e-abcf3c027634",
	'class operation',
	0,
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::create',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f1a73e4f-26bd-4b3c-943f-dd596c0eba7c",
	1,
	0,
	0,
	'',
	'',
	'',
	6,
	1,
	4,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2df86f59-3a30-450d-bd4e-abcf3c027634",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("07fd1ddc-75e6-48dc-baef-c71d0a499407",
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c",
	"fd34e143-fd08-413b-b2b5-c746b8767962",
	4,
	1,
	'WorkoutSession::create line: 4');
INSERT INTO ACT_FIO
	VALUES ("07fd1ddc-75e6-48dc-baef-c71d0a499407",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	1,
	'any',
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	4,
	38);
INSERT INTO ACT_SMT
	VALUES ("fd34e143-fd08-413b-b2b5-c746b8767962",
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'WorkoutSession::create line: 6');
INSERT INTO ACT_IF
	VALUES ("fd34e143-fd08-413b-b2b5-c746b8767962",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"bd6a74c5-9382-4a97-8d47-1d0ef246e723",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("2eec328f-f9f3-4354-b3b6-c1e25c9dba0f",
	0,
	0,
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c");
INSERT INTO V_IRF
	VALUES ("2eec328f-f9f3-4354-b3b6-c1e25c9dba0f",
	"817e3d53-9b4c-41e9-80b4-010448220c18");
INSERT INTO V_VAL
	VALUES ("bd6a74c5-9382-4a97-8d47-1d0ef246e723",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c");
INSERT INTO V_UNY
	VALUES ("bd6a74c5-9382-4a97-8d47-1d0ef246e723",
	"2eec328f-f9f3-4354-b3b6-c1e25c9dba0f",
	'empty');
INSERT INTO V_VAR
	VALUES ("817e3d53-9b4c-41e9-80b4-010448220c18",
	"f1a73e4f-26bd-4b3c-943f-dd596c0eba7c",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("817e3d53-9b4c-41e9-80b4-010448220c18",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	0,
	0,
	0,
	'''indicates current status of''',
	'',
	'',
	25,
	3,
	20,
	37,
	0,
	0,
	25,
	36,
	25,
	39,
	0,
	0,
	0,
	"2df86f59-3a30-450d-bd4e-abcf3c027634",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("fdd3bb63-f4e1-4a4a-8bba-ac4db26f66f9",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"c33d2277-7e47-45fc-af90-629ca825b7ca",
	9,
	3,
	'WorkoutSession::create line: 9');
INSERT INTO ACT_CR
	VALUES ("fdd3bb63-f4e1-4a4a-8bba-ac4db26f66f9",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	9,
	37);
INSERT INTO ACT_SMT
	VALUES ("c33d2277-7e47-45fc-af90-629ca825b7ca",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"668a4234-0901-462e-b7ce-30ae5be4be41",
	10,
	3,
	'WorkoutSession::create line: 10');
INSERT INTO ACT_TFM
	VALUES ("c33d2277-7e47-45fc-af90-629ca825b7ca",
	"4a9cf984-88b6-4e6f-9813-22c8716ef3f5",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("668a4234-0901-462e-b7ce-30ae5be4be41",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"707fb6fb-4491-4495-abe1-38ee72505307",
	13,
	3,
	'WorkoutSession::create line: 13');
INSERT INTO ACT_CR
	VALUES ("668a4234-0901-462e-b7ce-30ae5be4be41",
	"4713aabd-5003-4e55-b60c-f1e92314e9ad",
	1,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	13,
	42);
INSERT INTO ACT_SMT
	VALUES ("707fb6fb-4491-4495-abe1-38ee72505307",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"86e32557-66ae-49d0-a307-bcc3c90ce67e",
	14,
	3,
	'WorkoutSession::create line: 14');
INSERT INTO ACT_TFM
	VALUES ("707fb6fb-4491-4495-abe1-38ee72505307",
	"0918165c-7146-4bcd-9308-96dc9f6e5fe3",
	"4713aabd-5003-4e55-b60c-f1e92314e9ad",
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("86e32557-66ae-49d0-a307-bcc3c90ce67e",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"2de156f6-fa0f-456b-a006-57c51e24abb8",
	17,
	3,
	'WorkoutSession::create line: 17');
INSERT INTO ACT_CR
	VALUES ("86e32557-66ae-49d0-a307-bcc3c90ce67e",
	"22979ca8-fc36-4eb0-ad65-87f1a9f53d6e",
	1,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	17,
	38);
INSERT INTO ACT_SMT
	VALUES ("2de156f6-fa0f-456b-a006-57c51e24abb8",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"d8189172-58e7-4582-aaf6-ab7d9de6ecb7",
	20,
	3,
	'WorkoutSession::create line: 20');
INSERT INTO ACT_CR
	VALUES ("2de156f6-fa0f-456b-a006-57c51e24abb8",
	"a4527ddf-5223-4ff2-af07-f15af7385df9",
	1,
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	20,
	37);
INSERT INTO ACT_SMT
	VALUES ("d8189172-58e7-4582-aaf6-ab7d9de6ecb7",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"2f5098b3-290f-45ca-9eac-f897c84a0cf3",
	23,
	3,
	'WorkoutSession::create line: 23');
INSERT INTO ACT_REL
	VALUES ("d8189172-58e7-4582-aaf6-ab7d9de6ecb7",
	"22979ca8-fc36-4eb0-ad65-87f1a9f53d6e",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	'''represents path for''',
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES ("2f5098b3-290f-45ca-9eac-f897c84a0cf3",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"c77a1a3a-6523-4ba7-b0e0-99b2bc211422",
	24,
	3,
	'WorkoutSession::create line: 24');
INSERT INTO ACT_REL
	VALUES ("2f5098b3-290f-45ca-9eac-f897c84a0cf3",
	"4713aabd-5003-4e55-b60c-f1e92314e9ad",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	'''acts as the stopwatch for''',
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES ("c77a1a3a-6523-4ba7-b0e0-99b2bc211422",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	"00000000-0000-0000-0000-000000000000",
	25,
	3,
	'WorkoutSession::create line: 25');
INSERT INTO ACT_REL
	VALUES ("c77a1a3a-6523-4ba7-b0e0-99b2bc211422",
	"a4527ddf-5223-4ff2-af07-f15af7385df9",
	"817e3d53-9b4c-41e9-80b4-010448220c18",
	'''indicates current status of''',
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES ("4713aabd-5003-4e55-b60c-f1e92314e9ad",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("4713aabd-5003-4e55-b60c-f1e92314e9ad",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("22979ca8-fc36-4eb0-ad65-87f1a9f53d6e",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	'trackLog',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("22979ca8-fc36-4eb0-ad65-87f1a9f53d6e",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("a4527ddf-5223-4ff2-af07-f15af7385df9",
	"f0bc2814-c5b4-43f6-b511-f6aa670b8efc",
	'display',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a4527ddf-5223-4ff2-af07-f15af7385df9",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO O_TFR
	VALUES ("d02a7072-d48a-4b1e-836a-d5372e553f17",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'reset',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Reset this session, including the timer, track log, goal specifications,
// goals, and achievement records.

// Reset the timer.
select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];
workoutTimer.initialize();

// Reset the track log.
select one trackLog related by self->TrackLog[R4.''captures path in''];
trackLog.clearTrackPoints();
trackLog.clearLapMarkers();

// Remove all goal specifications.
select many goalSpecs related by self->GoalSpec[R10.''includes''];
for each goalSpec in goalSpecs
  unrelate self from goalSpec across R10.''includes'';
  delete object instance goalSpec;
end for;

// Remove any currently executing goal and open achievement record.
select one executingGoal related by self->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  select one openAchievement related by executingGoal->Achievement[R14.''has open''];
  if ( not empty openAchievement )
    unrelate openAchievement from executingGoal across R14.''is open for'';
    delete object instance openAchievement;
  end if;
  unrelate self from executingGoal across R11.''is currently executing'';
  delete object instance executingGoal;
end if;

// Remove all other goals and achievement records.
select many goals related by self->Goal[R13.''has executed''];
for each goal in goals
  select many achievements related by goal->Achievement[R12.''has recorded''];
  for each achievement in achievements
    unrelate goal from achievement across R12.''has recorded'';
    delete object instance achievement;
  end for;
  unrelate self from goal across R13.''has executed'';
  delete object instance goal;
end for;

// Reset the session.
self.accumulatedDistance = 0.0;
self.clearHeartRateSamples();
',
	1,
	'',
	"00525632-d22d-499f-a687-1011af2bd989");
INSERT INTO ACT_OPB
	VALUES ("bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"d02a7072-d48a-4b1e-836a-d5372e553f17");
INSERT INTO ACT_ACT
	VALUES ("bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	'operation',
	0,
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::reset',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	1,
	0,
	0,
	'',
	'',
	'',
	46,
	1,
	33,
	36,
	0,
	0,
	33,
	41,
	33,
	45,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3eef45f7-54dc-4ddd-8520-59764baa12e8",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"35510660-2db4-404b-8887-c447cd32a31e",
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES ("3eef45f7-54dc-4ddd-8520-59764baa12e8",
	"3ebfcf7c-00cb-4bb6-98ca-e1f8b483b76e",
	1,
	'one',
	"c30eafb7-79a4-439e-bfa8-bf9f8fc9e889");
INSERT INTO ACT_SR
	VALUES ("3eef45f7-54dc-4ddd-8520-59764baa12e8");
INSERT INTO ACT_LNK
	VALUES ("173cfd27-b843-4a7f-b2ed-b754c198616d",
	'''is timed by''',
	"3eef45f7-54dc-4ddd-8520-59764baa12e8",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES ("35510660-2db4-404b-8887-c447cd32a31e",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"e400d189-7f86-479c-bc0f-e14a031b32fa",
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES ("35510660-2db4-404b-8887-c447cd32a31e",
	"0918165c-7146-4bcd-9308-96dc9f6e5fe3",
	"3ebfcf7c-00cb-4bb6-98ca-e1f8b483b76e",
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("e400d189-7f86-479c-bc0f-e14a031b32fa",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"e3c405e5-ccdb-4d55-8b87-035ebd5d8c40",
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES ("e400d189-7f86-479c-bc0f-e14a031b32fa",
	"7dbcf86b-816b-4569-85ae-dd1ef64e23e9",
	1,
	'one',
	"6e09c3da-6352-45c8-870d-bd9903983123");
INSERT INTO ACT_SR
	VALUES ("e400d189-7f86-479c-bc0f-e14a031b32fa");
INSERT INTO ACT_LNK
	VALUES ("ca525fe3-fd62-4e98-96e4-f9bd431aa0f5",
	'''captures path in''',
	"e400d189-7f86-479c-bc0f-e14a031b32fa",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"00000000-0000-0000-0000-000000000000",
	2,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES ("e3c405e5-ccdb-4d55-8b87-035ebd5d8c40",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"374720f9-ceec-4224-b7b3-a0b961275fbb",
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES ("e3c405e5-ccdb-4d55-8b87-035ebd5d8c40",
	"c1105cc6-3ed4-4601-a7b5-a7e1e89ed587",
	"7dbcf86b-816b-4569-85ae-dd1ef64e23e9",
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("374720f9-ceec-4224-b7b3-a0b961275fbb",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"2d0580a4-215e-47cb-a0c2-2e60594be722",
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES ("374720f9-ceec-4224-b7b3-a0b961275fbb",
	"1b1a4894-67a0-4815-a855-9799b12b3fc4",
	"7dbcf86b-816b-4569-85ae-dd1ef64e23e9",
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("2d0580a4-215e-47cb-a0c2-2e60594be722",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"3cf21c44-be0f-4947-9b28-c60147ac1685",
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES ("2d0580a4-215e-47cb-a0c2-2e60594be722",
	"1263fea6-581c-4303-aacf-dd81552b6c05",
	1,
	'many',
	"ecc4b69d-41c3-484c-835a-b14462c8e964");
INSERT INTO ACT_SR
	VALUES ("2d0580a4-215e-47cb-a0c2-2e60594be722");
INSERT INTO ACT_LNK
	VALUES ("d76f20a8-50b0-45c8-926b-57a456e34f84",
	'''includes''',
	"2d0580a4-215e-47cb-a0c2-2e60594be722",
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	"00000000-0000-0000-0000-000000000000",
	3,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442",
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES ("3cf21c44-be0f-4947-9b28-c60147ac1685",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"8d514e1e-917a-4094-b8ee-16ce2ad05871",
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES ("3cf21c44-be0f-4947-9b28-c60147ac1685",
	"9c00062f-3899-48a0-b74b-a9bb59d0450c",
	1,
	"6a9642e0-aabd-4a70-848e-9bc69f479bd9",
	"1263fea6-581c-4303-aacf-dd81552b6c05",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO ACT_SMT
	VALUES ("8d514e1e-917a-4094-b8ee-16ce2ad05871",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"46133690-1fe5-4f76-8243-23e36f2be4fe",
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES ("8d514e1e-917a-4094-b8ee-16ce2ad05871",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1",
	1,
	'one',
	"e599e82f-a488-448b-bf39-2c17c63043fa");
INSERT INTO ACT_SR
	VALUES ("8d514e1e-917a-4094-b8ee-16ce2ad05871");
INSERT INTO ACT_LNK
	VALUES ("c6e78af0-a634-4632-ab96-0e4b38e31c5e",
	'''is currently executing''',
	"8d514e1e-917a-4094-b8ee-16ce2ad05871",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES ("46133690-1fe5-4f76-8243-23e36f2be4fe",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"1bfb27f4-a569-4c95-8fad-a447d44f0a06",
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES ("46133690-1fe5-4f76-8243-23e36f2be4fe",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	"2ceeb37d-953d-4165-a5ee-b1cf090372f2",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1bfb27f4-a569-4c95-8fad-a447d44f0a06",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"dd0748a4-0b7c-4bc4-9d8a-8402df372799",
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES ("1bfb27f4-a569-4c95-8fad-a447d44f0a06",
	"6d9acd11-e14b-4886-9797-bd1eb4f752a8",
	1,
	'many',
	"0c50c517-0834-4f9b-8b4a-4f44fb2db790");
INSERT INTO ACT_SR
	VALUES ("1bfb27f4-a569-4c95-8fad-a447d44f0a06");
INSERT INTO ACT_LNK
	VALUES ("ecbbd5d1-70a0-4ae9-a018-71c6101da751",
	'''has executed''',
	"1bfb27f4-a569-4c95-8fad-a447d44f0a06",
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	"00000000-0000-0000-0000-000000000000",
	3,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES ("dd0748a4-0b7c-4bc4-9d8a-8402df372799",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"2c9c452f-3223-4cdf-aa31-cc96c97bbb15",
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES ("dd0748a4-0b7c-4bc4-9d8a-8402df372799",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	1,
	"9355770a-8f2b-451d-993e-d3b5c540f232",
	"6d9acd11-e14b-4886-9797-bd1eb4f752a8",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_SMT
	VALUES ("2c9c452f-3223-4cdf-aa31-cc96c97bbb15",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"79710835-d769-418f-b91b-8e8cdc30ad21",
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES ("2c9c452f-3223-4cdf-aa31-cc96c97bbb15",
	"8cbe5bfe-2d2d-47f4-866a-2155659db506",
	"9129dadf-7123-411f-b1be-6e8efd421d20",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("79710835-d769-418f-b91b-8e8cdc30ad21",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	"00000000-0000-0000-0000-000000000000",
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES ("79710835-d769-418f-b91b-8e8cdc30ad21",
	"60793728-e9e9-402f-8f91-283342f1d09c",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES ("c30eafb7-79a4-439e-bfa8-bf9f8fc9e889",
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("c30eafb7-79a4-439e-bfa8-bf9f8fc9e889",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("6e09c3da-6352-45c8-870d-bd9903983123",
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("6e09c3da-6352-45c8-870d-bd9903983123",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("ecc4b69d-41c3-484c-835a-b14462c8e964",
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("ecc4b69d-41c3-484c-835a-b14462c8e964",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("e599e82f-a488-448b-bf39-2c17c63043fa",
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("e599e82f-a488-448b-bf39-2c17c63043fa",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("475cdb67-98b9-40f7-880c-3632c714caf2",
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("475cdb67-98b9-40f7-880c-3632c714caf2",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1");
INSERT INTO V_VAL
	VALUES ("acbee485-a62f-440b-ae38-a9252b173af4",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_UNY
	VALUES ("acbee485-a62f-440b-ae38-a9252b173af4",
	"475cdb67-98b9-40f7-880c-3632c714caf2",
	'empty');
INSERT INTO V_VAL
	VALUES ("2ceeb37d-953d-4165-a5ee-b1cf090372f2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_UNY
	VALUES ("2ceeb37d-953d-4165-a5ee-b1cf090372f2",
	"acbee485-a62f-440b-ae38-a9252b173af4",
	'not');
INSERT INTO V_VAL
	VALUES ("0c50c517-0834-4f9b-8b4a-4f44fb2db790",
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("0c50c517-0834-4f9b-8b4a-4f44fb2db790",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("c8791c5c-55ae-4811-a86d-b50a1ccfc0da",
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_IRF
	VALUES ("c8791c5c-55ae-4811-a86d-b50a1ccfc0da",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e");
INSERT INTO V_VAL
	VALUES ("9129dadf-7123-411f-b1be-6e8efd421d20",
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_AVL
	VALUES ("9129dadf-7123-411f-b1be-6e8efd421d20",
	"c8791c5c-55ae-4811-a86d-b50a1ccfc0da",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d006d565-af3e-4fb7-9008-901e6c517662");
INSERT INTO V_VAL
	VALUES ("8cbe5bfe-2d2d-47f4-866a-2155659db506",
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb");
INSERT INTO V_LRL
	VALUES ("8cbe5bfe-2d2d-47f4-866a-2155659db506",
	'0.0');
INSERT INTO V_VAR
	VALUES ("3ebfcf7c-00cb-4bb6-98ca-e1f8b483b76e",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("3ebfcf7c-00cb-4bb6-98ca-e1f8b483b76e",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("7dbcf86b-816b-4569-85ae-dd1ef64e23e9",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'trackLog',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7dbcf86b-816b-4569-85ae-dd1ef64e23e9",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO V_VAR
	VALUES ("1263fea6-581c-4303-aacf-dd81552b6c05",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'goalSpecs',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("1263fea6-581c-4303-aacf-dd81552b6c05",
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("6a9642e0-aabd-4a70-848e-9bc69f479bd9",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'goalSpec',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("6a9642e0-aabd-4a70-848e-9bc69f479bd9",
	1,
	"3c552ce7-35fe-4a72-857b-f3a2420b4442");
INSERT INTO V_VAR
	VALUES ("943d0663-d4ff-43de-a688-9bf6ea2041d1",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'executingGoal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("943d0663-d4ff-43de-a688-9bf6ea2041d1",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("6d9acd11-e14b-4886-9797-bd1eb4f752a8",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'goals',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("6d9acd11-e14b-4886-9797-bd1eb4f752a8",
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO V_VAR
	VALUES ("9355770a-8f2b-451d-993e-d3b5c540f232",
	"97ecb9e2-0db9-4ffa-be30-fffe762ab2fb",
	'goal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("9355770a-8f2b-451d-993e-d3b5c540f232",
	1,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("9c00062f-3899-48a0-b74b-a9bb59d0450c",
	0,
	0,
	0,
	'''includes''',
	'',
	'',
	17,
	3,
	0,
	0,
	0,
	0,
	16,
	38,
	16,
	42,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("e1c9a773-647e-46a0-8f4d-0a374cbf79ac",
	"9c00062f-3899-48a0-b74b-a9bb59d0450c",
	"0cafbdaa-64f9-45e1-b6e2-7a33c85aecb0",
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES ("e1c9a773-647e-46a0-8f4d-0a374cbf79ac",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	"6a9642e0-aabd-4a70-848e-9bc69f479bd9",
	'''includes''',
	"4a0fbecb-8406-473c-88ae-b8d7506ab992",
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES ("0cafbdaa-64f9-45e1-b6e2-7a33c85aecb0",
	"9c00062f-3899-48a0-b74b-a9bb59d0450c",
	"00000000-0000-0000-0000-000000000000",
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES ("0cafbdaa-64f9-45e1-b6e2-7a33c85aecb0",
	"6a9642e0-aabd-4a70-848e-9bc69f479bd9");
INSERT INTO ACT_BLK
	VALUES ("b6d3de5b-1264-4817-bed4-83a314236f91",
	1,
	0,
	0,
	'''is currently executing''',
	'',
	'',
	29,
	3,
	23,
	56,
	0,
	0,
	28,
	43,
	28,
	47,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8132f7b2-d723-4241-8f28-e6973a381409",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	"7eb593b4-2d3d-4fbe-9126-c47d12233c8a",
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES ("8132f7b2-d723-4241-8f28-e6973a381409",
	"aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4",
	1,
	'one',
	"aa5ee416-9d4d-42a7-805c-dafa051a5877");
INSERT INTO ACT_SR
	VALUES ("8132f7b2-d723-4241-8f28-e6973a381409");
INSERT INTO ACT_LNK
	VALUES ("b70e0eb5-29f4-4fc8-bef6-5271f225f571",
	'''has open''',
	"8132f7b2-d723-4241-8f28-e6973a381409",
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	"00000000-0000-0000-0000-000000000000",
	2,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES ("7eb593b4-2d3d-4fbe-9126-c47d12233c8a",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	"32168f9c-353e-4978-8b3b-f58c1c1a414e",
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES ("7eb593b4-2d3d-4fbe-9126-c47d12233c8a",
	"64eb2931-424b-4682-aed1-159b77f5fed6",
	"26a0b86a-0dd3-48e7-b364-243305e565d7",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("32168f9c-353e-4978-8b3b-f58c1c1a414e",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	"a1ec73fd-9596-4873-86a8-041cc3302c38",
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES ("32168f9c-353e-4978-8b3b-f58c1c1a414e",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1",
	'''is currently executing''',
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES ("a1ec73fd-9596-4873-86a8-041cc3302c38",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	"00000000-0000-0000-0000-000000000000",
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES ("a1ec73fd-9596-4873-86a8-041cc3302c38",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1");
INSERT INTO V_VAL
	VALUES ("aa5ee416-9d4d-42a7-805c-dafa051a5877",
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"b6d3de5b-1264-4817-bed4-83a314236f91");
INSERT INTO V_IRF
	VALUES ("aa5ee416-9d4d-42a7-805c-dafa051a5877",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1");
INSERT INTO V_VAL
	VALUES ("edb13296-7d89-424e-a429-da2e0f16e6aa",
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"b6d3de5b-1264-4817-bed4-83a314236f91");
INSERT INTO V_IRF
	VALUES ("edb13296-7d89-424e-a429-da2e0f16e6aa",
	"aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4");
INSERT INTO V_VAL
	VALUES ("0c7485a2-910a-4de6-9feb-9a6ae2824617",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b6d3de5b-1264-4817-bed4-83a314236f91");
INSERT INTO V_UNY
	VALUES ("0c7485a2-910a-4de6-9feb-9a6ae2824617",
	"edb13296-7d89-424e-a429-da2e0f16e6aa",
	'empty');
INSERT INTO V_VAL
	VALUES ("26a0b86a-0dd3-48e7-b364-243305e565d7",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b6d3de5b-1264-4817-bed4-83a314236f91");
INSERT INTO V_UNY
	VALUES ("26a0b86a-0dd3-48e7-b364-243305e565d7",
	"0c7485a2-910a-4de6-9feb-9a6ae2824617",
	'not');
INSERT INTO V_VAR
	VALUES ("aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4",
	"b6d3de5b-1264-4817-bed4-83a314236f91",
	'openAchievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4",
	0,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO ACT_BLK
	VALUES ("64eb2931-424b-4682-aed1-159b77f5fed6",
	0,
	0,
	0,
	'''is open for''',
	'',
	'',
	26,
	5,
	0,
	0,
	0,
	0,
	25,
	56,
	25,
	60,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bbbf4b73-f180-4dc5-b9bf-f71157e4a029",
	"64eb2931-424b-4682-aed1-159b77f5fed6",
	"a8f633ae-4b17-45a1-996d-a354eb397f1b",
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES ("bbbf4b73-f180-4dc5-b9bf-f71157e4a029",
	"aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4",
	"943d0663-d4ff-43de-a688-9bf6ea2041d1",
	'''is open for''',
	"2ed630b0-5d74-48c4-8b30-f2091a1b9e99",
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES ("a8f633ae-4b17-45a1-996d-a354eb397f1b",
	"64eb2931-424b-4682-aed1-159b77f5fed6",
	"00000000-0000-0000-0000-000000000000",
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES ("a8f633ae-4b17-45a1-996d-a354eb397f1b",
	"aafb05e2-f1e5-4ea9-ad96-882ab66ce0a4");
INSERT INTO ACT_BLK
	VALUES ("845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	1,
	0,
	0,
	'''has executed''',
	'',
	'',
	41,
	3,
	35,
	45,
	0,
	0,
	40,
	34,
	40,
	38,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3665dff6-b7b0-4a6a-b55d-a3bc1c48c7d6",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	"8ba09db2-9fe3-41ca-8c4e-b8a5274c9fa6",
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES ("3665dff6-b7b0-4a6a-b55d-a3bc1c48c7d6",
	"9b4b86db-c453-4f12-8255-99e1c319b056",
	1,
	'many',
	"fe44955b-2135-46fa-b6c6-400bd66ca707");
INSERT INTO ACT_SR
	VALUES ("3665dff6-b7b0-4a6a-b55d-a3bc1c48c7d6");
INSERT INTO ACT_LNK
	VALUES ("6fca8a0f-b439-4771-8b34-bf27ee229aab",
	'''has recorded''',
	"3665dff6-b7b0-4a6a-b55d-a3bc1c48c7d6",
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	"00000000-0000-0000-0000-000000000000",
	3,
	"abab4fba-eacd-4315-9ed6-c661f446cd63",
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES ("8ba09db2-9fe3-41ca-8c4e-b8a5274c9fa6",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	"7f405fbe-ca41-4e1b-8f12-89fa38813553",
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES ("8ba09db2-9fe3-41ca-8c4e-b8a5274c9fa6",
	"3f3a1590-4e49-4627-ab9e-0ba6e09fe848",
	1,
	"89f7d7a3-bf45-480e-a3d2-e8d9e7383957",
	"9b4b86db-c453-4f12-8255-99e1c319b056",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO ACT_SMT
	VALUES ("7f405fbe-ca41-4e1b-8f12-89fa38813553",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	"fd7c893d-9a06-46ec-bd68-9af5c7f27131",
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES ("7f405fbe-ca41-4e1b-8f12-89fa38813553",
	"71414364-d3a1-4a1f-a7eb-5e43974c1d6e",
	"9355770a-8f2b-451d-993e-d3b5c540f232",
	'''has executed''',
	"efa68880-a2aa-462b-b34a-bd84e4aa1ec2",
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES ("fd7c893d-9a06-46ec-bd68-9af5c7f27131",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	"00000000-0000-0000-0000-000000000000",
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES ("fd7c893d-9a06-46ec-bd68-9af5c7f27131",
	"9355770a-8f2b-451d-993e-d3b5c540f232");
INSERT INTO V_VAL
	VALUES ("fe44955b-2135-46fa-b6c6-400bd66ca707",
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b");
INSERT INTO V_IRF
	VALUES ("fe44955b-2135-46fa-b6c6-400bd66ca707",
	"9355770a-8f2b-451d-993e-d3b5c540f232");
INSERT INTO V_VAR
	VALUES ("9b4b86db-c453-4f12-8255-99e1c319b056",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	'achievements',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("9b4b86db-c453-4f12-8255-99e1c319b056",
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO V_VAR
	VALUES ("89f7d7a3-bf45-480e-a3d2-e8d9e7383957",
	"845c7f21-b1ce-43d3-b30d-f703fc68f66b",
	'achievement',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("89f7d7a3-bf45-480e-a3d2-e8d9e7383957",
	1,
	"abab4fba-eacd-4315-9ed6-c661f446cd63");
INSERT INTO ACT_BLK
	VALUES ("3f3a1590-4e49-4627-ab9e-0ba6e09fe848",
	0,
	0,
	0,
	'''has recorded''',
	'',
	'',
	38,
	5,
	0,
	0,
	0,
	0,
	37,
	43,
	37,
	47,
	0,
	0,
	0,
	"bbfa3576-5f74-4825-ac1c-da2ad1f32e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("e75d5f2d-0b56-4897-9afc-d9d825da7114",
	"3f3a1590-4e49-4627-ab9e-0ba6e09fe848",
	"892b8278-f054-4888-a631-d2eff6bae02c",
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES ("e75d5f2d-0b56-4897-9afc-d9d825da7114",
	"9355770a-8f2b-451d-993e-d3b5c540f232",
	"89f7d7a3-bf45-480e-a3d2-e8d9e7383957",
	'''has recorded''',
	"f2e9ea73-028b-4b29-82f9-eb60402699b5",
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES ("892b8278-f054-4888-a631-d2eff6bae02c",
	"3f3a1590-4e49-4627-ab9e-0ba6e09fe848",
	"00000000-0000-0000-0000-000000000000",
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES ("892b8278-f054-4888-a631-d2eff6bae02c",
	"89f7d7a3-bf45-480e-a3d2-e8d9e7383957");
INSERT INTO O_NBATTR
	VALUES ("8bb3816b-7899-4212-b44a-c5a6fd6f4c7d",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_BATTR
	VALUES ("8bb3816b-7899-4212-b44a-c5a6fd6f4c7d",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("8bb3816b-7899-4212-b44a-c5a6fd6f4c7d",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"00000000-0000-0000-0000-000000000000",
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("83cc3629-9017-4ae5-a885-d52be892663c",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_BATTR
	VALUES ("83cc3629-9017-4ae5-a885-d52be892663c",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("83cc3629-9017-4ae5-a885-d52be892663c",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"8bb3816b-7899-4212-b44a-c5a6fd6f4c7d",
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	'');
INSERT INTO O_DBATTR
	VALUES ("595893a9-af1f-4ec3-bf8f-7db90a7e1cb3",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'// Calculate the current speed, expressed in km per hour, by summing 
// the straight-line distance between each of several of the most recent 
// track points and then dividing that sum by the elapsed time between 
// the first and last point in the subset used for the calculation.

select one lastPoint related by self->TrackLog[R4.''captures path in'']->TrackPoint[R3.''has last''];
speed = 0.0;
if ( not empty lastPoint )
  cursor = lastPoint;
  index = SpeedAveragingWindow;  // Number of track points to use when calculating average speed.
  totalDistance = 0.0;
  elapsedTime = 0.0;  // Explicit delcaration because a Real is required for a later calculation.
  elapsedTime = lastPoint.time;
  while ( index > 0 )
    select one previousPoint related by cursor->TrackPoint[R2.preceeds];
    if ( empty previousPoint )
      break;
    end if;
    send distance = Location::getDistance( fromLat:cursor.latitude, fromLong: cursor.longitude,
                                      toLat: previousPoint.latitude, toLong: previousPoint.longitude );
    totalDistance = totalDistance + distance;
    index = index - 1;
    cursor = previousPoint;
  end while;
  elapsedTime = elapsedTime - cursor.time;
  speed = (totalDistance / 1000) / (elapsedTime / SecondsPerHour);
end if;

// Return the value by writing to the (derived) attribute.
self.currentSpeed = speed;',
	1);
INSERT INTO ACT_DAB
	VALUES ("5b842694-a99d-4909-aa1f-04cd3393e92a",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3",
	1);
INSERT INTO ACT_ACT
	VALUES ("5b842694-a99d-4909-aa1f-04cd3393e92a",
	'derived attribute',
	0,
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::currentSpeed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("70e4da5d-8119-4464-abd1-bcdb903a4621",
	1,
	0,
	0,
	'',
	'',
	'',
	30,
	1,
	6,
	72,
	0,
	0,
	6,
	83,
	6,
	86,
	0,
	0,
	0,
	"5b842694-a99d-4909-aa1f-04cd3393e92a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ed80f45d-332a-40f7-8fae-b1e4c9f86252",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	"c46230d6-42cd-4dfe-b89c-8aaa72907170",
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES ("ed80f45d-332a-40f7-8fae-b1e4c9f86252",
	"506d690d-2761-45f6-a3e8-09ec672f4409",
	1,
	'one',
	"b23f73af-9221-4306-935f-9792a99e0f46");
INSERT INTO ACT_SR
	VALUES ("ed80f45d-332a-40f7-8fae-b1e4c9f86252");
INSERT INTO ACT_LNK
	VALUES ("9264bc84-f347-4902-933e-29ec2f06dd67",
	'''captures path in''',
	"ed80f45d-332a-40f7-8fae-b1e4c9f86252",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"9c672bf2-6f2d-4d2e-bc17-9a75c7d8d81c",
	2,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES ("9c672bf2-6f2d-4d2e-bc17-9a75c7d8d81c",
	'''has last''',
	"00000000-0000-0000-0000-000000000000",
	"883aa8c4-ed04-4d44-b23e-3e20a11a3040",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES ("c46230d6-42cd-4dfe-b89c-8aaa72907170",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	"f6a7ea72-d145-4a6a-a1d0-a2f0ad02bac0",
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES ("c46230d6-42cd-4dfe-b89c-8aaa72907170",
	"7ba5087b-0544-4a21-8a47-4eda0e41b3b1",
	"f6955b79-709b-42c1-9404-bbc222d28c01",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("f6a7ea72-d145-4a6a-a1d0-a2f0ad02bac0",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	"d7bb8fcd-0802-41ce-89c4-ac1368144857",
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES ("f6a7ea72-d145-4a6a-a1d0-a2f0ad02bac0",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"bba6a9db-ecc4-4fdd-ad1b-9b3126b7e6cc",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("d7bb8fcd-0802-41ce-89c4-ac1368144857",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	"00000000-0000-0000-0000-000000000000",
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES ("d7bb8fcd-0802-41ce-89c4-ac1368144857",
	"2d9966dc-f050-4414-8b66-85599aa841f9",
	"b06fb70e-6dfa-4c9a-a522-d9513479d876",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("b23f73af-9221-4306-935f-9792a99e0f46",
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_IRF
	VALUES ("b23f73af-9221-4306-935f-9792a99e0f46",
	"2128b4c4-2ddb-4d98-b78d-11ebc319dbfb");
INSERT INTO V_VAL
	VALUES ("f6955b79-709b-42c1-9404-bbc222d28c01",
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_TVL
	VALUES ("f6955b79-709b-42c1-9404-bbc222d28c01",
	"bff00f5e-c18c-40bd-9a51-9854c58837a8");
INSERT INTO V_VAL
	VALUES ("7ba5087b-0544-4a21-8a47-4eda0e41b3b1",
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_LRL
	VALUES ("7ba5087b-0544-4a21-8a47-4eda0e41b3b1",
	'0.0');
INSERT INTO V_VAL
	VALUES ("572da4f9-b6b8-4fc5-82fa-dcd7a4532e4d",
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_IRF
	VALUES ("572da4f9-b6b8-4fc5-82fa-dcd7a4532e4d",
	"506d690d-2761-45f6-a3e8-09ec672f4409");
INSERT INTO V_VAL
	VALUES ("8c2d8cbb-994c-468c-8b57-73bae66be962",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_UNY
	VALUES ("8c2d8cbb-994c-468c-8b57-73bae66be962",
	"572da4f9-b6b8-4fc5-82fa-dcd7a4532e4d",
	'empty');
INSERT INTO V_VAL
	VALUES ("bba6a9db-ecc4-4fdd-ad1b-9b3126b7e6cc",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_UNY
	VALUES ("bba6a9db-ecc4-4fdd-ad1b-9b3126b7e6cc",
	"8c2d8cbb-994c-468c-8b57-73bae66be962",
	'not');
INSERT INTO V_VAL
	VALUES ("0d2e9cf4-cb8a-43c2-82b5-4f57b191f813",
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_IRF
	VALUES ("0d2e9cf4-cb8a-43c2-82b5-4f57b191f813",
	"2128b4c4-2ddb-4d98-b78d-11ebc319dbfb");
INSERT INTO V_VAL
	VALUES ("b06fb70e-6dfa-4c9a-a522-d9513479d876",
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_AVL
	VALUES ("b06fb70e-6dfa-4c9a-a522-d9513479d876",
	"0d2e9cf4-cb8a-43c2-82b5-4f57b191f813",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3");
INSERT INTO V_VAL
	VALUES ("2d9966dc-f050-4414-8b66-85599aa841f9",
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"70e4da5d-8119-4464-abd1-bcdb903a4621");
INSERT INTO V_TVL
	VALUES ("2d9966dc-f050-4414-8b66-85599aa841f9",
	"bff00f5e-c18c-40bd-9a51-9854c58837a8");
INSERT INTO V_VAR
	VALUES ("506d690d-2761-45f6-a3e8-09ec672f4409",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	'lastPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("506d690d-2761-45f6-a3e8-09ec672f4409",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("2128b4c4-2ddb-4d98-b78d-11ebc319dbfb",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("2128b4c4-2ddb-4d98-b78d-11ebc319dbfb",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("bff00f5e-c18c-40bd-9a51-9854c58837a8",
	"70e4da5d-8119-4464-abd1-bcdb903a4621",
	'speed',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("bff00f5e-c18c-40bd-9a51-9854c58837a8",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("c197b850-4b5a-484c-b586-a47e87e6e257",
	0,
	0,
	0,
	'',
	'',
	'',
	26,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5b842694-a99d-4909-aa1f-04cd3393e92a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("95cef0b1-15d1-4d45-9202-753e7ce5140f",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"17b3b59b-f596-4643-aeff-87fe99c6bcc4",
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES ("95cef0b1-15d1-4d45-9202-753e7ce5140f",
	"a88f7b34-cb00-418c-bee4-1b554b28889d",
	"8910f42d-5855-422a-8c1a-1d67cfe9d441",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("17b3b59b-f596-4643-aeff-87fe99c6bcc4",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"17c41589-e3ce-47d8-bfb6-b1bb828b7095",
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES ("17b3b59b-f596-4643-aeff-87fe99c6bcc4",
	"1aabd0c5-d80f-491b-98cf-2a80accd885e",
	"a0db7c38-2c4e-4c42-846f-0f57d956f7cd",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("17c41589-e3ce-47d8-bfb6-b1bb828b7095",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"4b46a0db-4ed6-4ecb-98be-9a54fc8108e6",
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES ("17c41589-e3ce-47d8-bfb6-b1bb828b7095",
	"de257812-ba2a-49cd-881f-5243cc0b5610",
	"4fa950e4-b0ab-4d5c-b106-79ade9074f5e",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("4b46a0db-4ed6-4ecb-98be-9a54fc8108e6",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"27c8871e-7dab-4ee8-b365-eccb105d94f0",
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES ("4b46a0db-4ed6-4ecb-98be-9a54fc8108e6",
	"56396e74-47f0-4dea-bbba-cd77c61bace5",
	"bb1a0c35-61c1-49b0-b811-b12cbe5ba5cb",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("27c8871e-7dab-4ee8-b365-eccb105d94f0",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"15b38794-5de3-4db6-ac9c-302206c99ece",
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES ("27c8871e-7dab-4ee8-b365-eccb105d94f0",
	"38fc4cb1-6194-4deb-811d-a96301c9a34f",
	"9372b44c-c6f4-4f7b-8a2a-5aac735cd91a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("15b38794-5de3-4db6-ac9c-302206c99ece",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"0d69ed7b-a44e-4ff1-851f-79516cce4f97",
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES ("15b38794-5de3-4db6-ac9c-302206c99ece",
	"db4a3aef-1c60-4314-9959-14dbf276d42a",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO ACT_SMT
	VALUES ("0d69ed7b-a44e-4ff1-851f-79516cce4f97",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"1c5594cb-fe7c-4dea-a20e-86b1555530bd",
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES ("0d69ed7b-a44e-4ff1-851f-79516cce4f97",
	"5fce47e9-2c06-4b87-86b2-52ea7c1fceed",
	"37a276b3-f8fa-496d-979a-28bca80ea8f1",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("1c5594cb-fe7c-4dea-a20e-86b1555530bd",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	"00000000-0000-0000-0000-000000000000",
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES ("1c5594cb-fe7c-4dea-a20e-86b1555530bd",
	"44dfcf32-aa1a-44e5-b654-ad719a9f2a3c",
	"0684f40c-21b0-4c69-8172-5244f3bdc2ea",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("8910f42d-5855-422a-8c1a-1d67cfe9d441",
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_IRF
	VALUES ("8910f42d-5855-422a-8c1a-1d67cfe9d441",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("a88f7b34-cb00-418c-bee4-1b554b28889d",
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_IRF
	VALUES ("a88f7b34-cb00-418c-bee4-1b554b28889d",
	"506d690d-2761-45f6-a3e8-09ec672f4409");
INSERT INTO V_VAL
	VALUES ("a0db7c38-2c4e-4c42-846f-0f57d956f7cd",
	1,
	1,
	10,
	3,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("a0db7c38-2c4e-4c42-846f-0f57d956f7cd",
	"a635a615-955b-470b-90bb-4f108decd63e");
INSERT INTO V_VAL
	VALUES ("1aabd0c5-d80f-491b-98cf-2a80accd885e",
	0,
	0,
	10,
	11,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_SCV
	VALUES ("1aabd0c5-d80f-491b-98cf-2a80accd885e",
	"c609bff5-7dec-4682-a7c8-7710322b7e06",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("4fa950e4-b0ab-4d5c-b106-79ade9074f5e",
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("4fa950e4-b0ab-4d5c-b106-79ade9074f5e",
	"5e742225-3d9c-40ff-8674-880bfdf60826");
INSERT INTO V_VAL
	VALUES ("de257812-ba2a-49cd-881f-5243cc0b5610",
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_LRL
	VALUES ("de257812-ba2a-49cd-881f-5243cc0b5610",
	'0.0');
INSERT INTO V_VAL
	VALUES ("bb1a0c35-61c1-49b0-b811-b12cbe5ba5cb",
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("bb1a0c35-61c1-49b0-b811-b12cbe5ba5cb",
	"dcdce9ab-a704-4315-9f1c-e00be625a7cc");
INSERT INTO V_VAL
	VALUES ("56396e74-47f0-4dea-bbba-cd77c61bace5",
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_LRL
	VALUES ("56396e74-47f0-4dea-bbba-cd77c61bace5",
	'0.0');
INSERT INTO V_VAL
	VALUES ("9372b44c-c6f4-4f7b-8a2a-5aac735cd91a",
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("9372b44c-c6f4-4f7b-8a2a-5aac735cd91a",
	"dcdce9ab-a704-4315-9f1c-e00be625a7cc");
INSERT INTO V_VAL
	VALUES ("edb744f3-99d8-42a1-b18f-dbc63d6498a3",
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_IRF
	VALUES ("edb744f3-99d8-42a1-b18f-dbc63d6498a3",
	"506d690d-2761-45f6-a3e8-09ec672f4409");
INSERT INTO V_VAL
	VALUES ("38fc4cb1-6194-4deb-811d-a96301c9a34f",
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_AVL
	VALUES ("38fc4cb1-6194-4deb-811d-a96301c9a34f",
	"edb744f3-99d8-42a1-b18f-dbc63d6498a3",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"6afeffb5-33ae-4167-adda-1de88e5d6a95");
INSERT INTO V_VAL
	VALUES ("833b9e99-fee1-4e34-9df5-9c3bc3720044",
	0,
	0,
	14,
	11,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("833b9e99-fee1-4e34-9df5-9c3bc3720044",
	"a635a615-955b-470b-90bb-4f108decd63e");
INSERT INTO V_VAL
	VALUES ("db4a3aef-1c60-4314-9959-14dbf276d42a",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_BIN
	VALUES ("db4a3aef-1c60-4314-9959-14dbf276d42a",
	"70f645dc-9da1-4800-a5a6-1afe0b5d81a1",
	"833b9e99-fee1-4e34-9df5-9c3bc3720044",
	'>');
INSERT INTO V_VAL
	VALUES ("70f645dc-9da1-4800-a5a6-1afe0b5d81a1",
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_LIN
	VALUES ("70f645dc-9da1-4800-a5a6-1afe0b5d81a1",
	'0');
INSERT INTO V_VAL
	VALUES ("37a276b3-f8fa-496d-979a-28bca80ea8f1",
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("37a276b3-f8fa-496d-979a-28bca80ea8f1",
	"dcdce9ab-a704-4315-9f1c-e00be625a7cc");
INSERT INTO V_VAL
	VALUES ("559fe4d6-7da7-49a0-97bf-2d099091630c",
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("559fe4d6-7da7-49a0-97bf-2d099091630c",
	"dcdce9ab-a704-4315-9f1c-e00be625a7cc");
INSERT INTO V_VAL
	VALUES ("5fce47e9-2c06-4b87-86b2-52ea7c1fceed",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_BIN
	VALUES ("5fce47e9-2c06-4b87-86b2-52ea7c1fceed",
	"d8ae4c8c-3c0a-4a02-b8c2-5fcbf6c22fc8",
	"559fe4d6-7da7-49a0-97bf-2d099091630c",
	'-');
INSERT INTO V_VAL
	VALUES ("45f1dec8-acda-415b-8c40-d16bd8a13527",
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_IRF
	VALUES ("45f1dec8-acda-415b-8c40-d16bd8a13527",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("d8ae4c8c-3c0a-4a02-b8c2-5fcbf6c22fc8",
	0,
	0,
	25,
	38,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_AVL
	VALUES ("d8ae4c8c-3c0a-4a02-b8c2-5fcbf6c22fc8",
	"45f1dec8-acda-415b-8c40-d16bd8a13527",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"6afeffb5-33ae-4167-adda-1de88e5d6a95");
INSERT INTO V_VAL
	VALUES ("0684f40c-21b0-4c69-8172-5244f3bdc2ea",
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("0684f40c-21b0-4c69-8172-5244f3bdc2ea",
	"bff00f5e-c18c-40bd-9a51-9854c58837a8");
INSERT INTO V_VAL
	VALUES ("d9383252-b8da-4100-8525-0fe7ff4ecf03",
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("d9383252-b8da-4100-8525-0fe7ff4ecf03",
	"5e742225-3d9c-40ff-8674-880bfdf60826");
INSERT INTO V_VAL
	VALUES ("cb121fb5-cda8-49fa-b81a-f7fa5871ac28",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_BIN
	VALUES ("cb121fb5-cda8-49fa-b81a-f7fa5871ac28",
	"8983fb14-9494-447b-8495-7102209768e0",
	"d9383252-b8da-4100-8525-0fe7ff4ecf03",
	'/');
INSERT INTO V_VAL
	VALUES ("8983fb14-9494-447b-8495-7102209768e0",
	0,
	0,
	26,
	28,
	31,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_LIN
	VALUES ("8983fb14-9494-447b-8495-7102209768e0",
	'1000');
INSERT INTO V_VAL
	VALUES ("44dfcf32-aa1a-44e5-b654-ad719a9f2a3c",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_BIN
	VALUES ("44dfcf32-aa1a-44e5-b654-ad719a9f2a3c",
	"94a33a74-2979-4e32-a5fe-21abdef811d0",
	"cb121fb5-cda8-49fa-b81a-f7fa5871ac28",
	'/');
INSERT INTO V_VAL
	VALUES ("11ec4e2c-f9cc-435e-b355-1fde37e156cc",
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_TVL
	VALUES ("11ec4e2c-f9cc-435e-b355-1fde37e156cc",
	"dcdce9ab-a704-4315-9f1c-e00be625a7cc");
INSERT INTO V_VAL
	VALUES ("94a33a74-2979-4e32-a5fe-21abdef811d0",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_BIN
	VALUES ("94a33a74-2979-4e32-a5fe-21abdef811d0",
	"ef81f658-64dc-457e-a07f-984b883c3f82",
	"11ec4e2c-f9cc-435e-b355-1fde37e156cc",
	'/');
INSERT INTO V_VAL
	VALUES ("ef81f658-64dc-457e-a07f-984b883c3f82",
	0,
	0,
	26,
	51,
	64,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c197b850-4b5a-484c-b586-a47e87e6e257");
INSERT INTO V_SCV
	VALUES ("ef81f658-64dc-457e-a07f-984b883c3f82",
	"c96b1640-6102-44ec-b2cb-a24e8ad7e00d",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAR
	VALUES ("83201aaf-364c-4396-8039-f4f1b820b36e",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	'cursor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("83201aaf-364c-4396-8039-f4f1b820b36e",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("a635a615-955b-470b-90bb-4f108decd63e",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	'index',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("a635a615-955b-470b-90bb-4f108decd63e",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("5e742225-3d9c-40ff-8674-880bfdf60826",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	'totalDistance',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("5e742225-3d9c-40ff-8674-880bfdf60826",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("dcdce9ab-a704-4315-9f1c-e00be625a7cc",
	"c197b850-4b5a-484c-b586-a47e87e6e257",
	'elapsedTime',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("dcdce9ab-a704-4315-9f1c-e00be625a7cc",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("990313c9-12eb-4053-89b2-f4a0f41cfafd",
	1,
	0,
	0,
	'Location',
	'',
	'',
	23,
	5,
	19,
	21,
	0,
	0,
	15,
	60,
	15,
	63,
	0,
	0,
	0,
	"5b842694-a99d-4909-aa1f-04cd3393e92a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a4d19ece-ab32-4ff2-9d56-d307e654d5db",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"e7414cd2-0515-4734-9f37-cc458a3e925d",
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES ("a4d19ece-ab32-4ff2-9d56-d307e654d5db",
	"26c276d4-5cac-48d3-9774-19604c66d6e1",
	1,
	'one',
	"229dbf55-9967-4a7a-959d-7511cf968bd2");
INSERT INTO ACT_SR
	VALUES ("a4d19ece-ab32-4ff2-9d56-d307e654d5db");
INSERT INTO ACT_LNK
	VALUES ("184cda6a-cf62-4a2a-b8d1-a9bbd9171437",
	'preceeds',
	"a4d19ece-ab32-4ff2-9d56-d307e654d5db",
	"88267812-6798-42ca-aa4c-390b14aba209",
	"00000000-0000-0000-0000-000000000000",
	2,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES ("e7414cd2-0515-4734-9f37-cc458a3e925d",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"472a8a0b-eb71-4bfb-97b0-cae9a17d13f4",
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES ("e7414cd2-0515-4734-9f37-cc458a3e925d",
	"e7b770e9-3600-49a9-afe4-3390c0d76fbb",
	"d3e7b1be-308a-4610-b976-3316b127fe52",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("472a8a0b-eb71-4bfb-97b0-cae9a17d13f4",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"44e2b112-c2a1-447d-aad2-601a3090ac0f",
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES ("472a8a0b-eb71-4bfb-97b0-cae9a17d13f4",
	"ff217cb8-8c82-4420-a0d4-f03c05318848",
	"114e281c-d301-4d46-8823-9cd7cd3702e9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("44e2b112-c2a1-447d-aad2-601a3090ac0f",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"de5b1a29-4a08-46c5-9cd3-723971871dcf",
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES ("44e2b112-c2a1-447d-aad2-601a3090ac0f",
	"1662d313-a93f-4562-9894-4e0ec869565f",
	"f162a95d-a9fb-40f8-9834-1f863b2611ab",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("de5b1a29-4a08-46c5-9cd3-723971871dcf",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"a0d4b114-8461-44ff-a66b-aeebd2b8c31e",
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES ("de5b1a29-4a08-46c5-9cd3-723971871dcf",
	"2b8fc0fc-d3f4-4bde-89f5-7d2fc02d8924",
	"af84b2d7-5972-4270-ba9d-436ac9279161",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("a0d4b114-8461-44ff-a66b-aeebd2b8c31e",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	"00000000-0000-0000-0000-000000000000",
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES ("a0d4b114-8461-44ff-a66b-aeebd2b8c31e",
	"319dab68-0f03-4f2e-a908-d3754a69625d",
	"90d34f42-7ea7-4c39-a877-6a6e0341f716",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("229dbf55-9967-4a7a-959d-7511cf968bd2",
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("229dbf55-9967-4a7a-959d-7511cf968bd2",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("f1694895-ba99-4517-980e-e98c51050050",
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("f1694895-ba99-4517-980e-e98c51050050",
	"26c276d4-5cac-48d3-9774-19604c66d6e1");
INSERT INTO V_VAL
	VALUES ("d3e7b1be-308a-4610-b976-3316b127fe52",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_UNY
	VALUES ("d3e7b1be-308a-4610-b976-3316b127fe52",
	"f1694895-ba99-4517-980e-e98c51050050",
	'empty');
INSERT INTO V_VAL
	VALUES ("114e281c-d301-4d46-8823-9cd7cd3702e9",
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("114e281c-d301-4d46-8823-9cd7cd3702e9",
	"8c0323a4-8b86-4de9-93b5-82b4ca76e3c6");
INSERT INTO V_VAL
	VALUES ("ff217cb8-8c82-4420-a0d4-f03c05318848",
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_MSV
	VALUES ("ff217cb8-8c82-4420-a0d4-f03c05318848",
	"00000000-0000-0000-0000-000000000000",
	"37d3eec0-4bb5-46db-9d0f-072b524d3951",
	1,
	19,
	21,
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("ea5dfee6-1488-4bf3-a68e-90d6754581ac",
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("ea5dfee6-1488-4bf3-a68e-90d6754581ac",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("70ecfd3c-b9fb-4659-8e4d-cd700bb2a16f",
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_AVL
	VALUES ("70ecfd3c-b9fb-4659-8e4d-cd700bb2a16f",
	"ea5dfee6-1488-4bf3-a68e-90d6754581ac",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"b8023c0d-dc60-4a92-adaa-b8adb8718439");
INSERT INTO V_PAR
	VALUES ("70ecfd3c-b9fb-4659-8e4d-cd700bb2a16f",
	"00000000-0000-0000-0000-000000000000",
	"ff217cb8-8c82-4420-a0d4-f03c05318848",
	'fromLat',
	"7cd74937-36c7-46f7-bb79-7578c06cf499",
	19,
	44);
INSERT INTO V_VAL
	VALUES ("2eae8dc7-6609-447a-9b09-bb3fec0b27af",
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("2eae8dc7-6609-447a-9b09-bb3fec0b27af",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("7cd74937-36c7-46f7-bb79-7578c06cf499",
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_AVL
	VALUES ("7cd74937-36c7-46f7-bb79-7578c06cf499",
	"2eae8dc7-6609-447a-9b09-bb3fec0b27af",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34");
INSERT INTO V_PAR
	VALUES ("7cd74937-36c7-46f7-bb79-7578c06cf499",
	"00000000-0000-0000-0000-000000000000",
	"ff217cb8-8c82-4420-a0d4-f03c05318848",
	'fromLong',
	"3b3e1a9a-d8e1-41e6-afa4-332531e385ae",
	19,
	69);
INSERT INTO V_VAL
	VALUES ("678cb910-2fc1-4d7b-ad11-6f3b7bc7b823",
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("678cb910-2fc1-4d7b-ad11-6f3b7bc7b823",
	"26c276d4-5cac-48d3-9774-19604c66d6e1");
INSERT INTO V_VAL
	VALUES ("3b3e1a9a-d8e1-41e6-afa4-332531e385ae",
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_AVL
	VALUES ("3b3e1a9a-d8e1-41e6-afa4-332531e385ae",
	"678cb910-2fc1-4d7b-ad11-6f3b7bc7b823",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"b8023c0d-dc60-4a92-adaa-b8adb8718439");
INSERT INTO V_PAR
	VALUES ("3b3e1a9a-d8e1-41e6-afa4-332531e385ae",
	"00000000-0000-0000-0000-000000000000",
	"ff217cb8-8c82-4420-a0d4-f03c05318848",
	'toLat',
	"63d9a6e3-8e97-4581-87c0-eba5ce178f65",
	20,
	39);
INSERT INTO V_VAL
	VALUES ("45852674-c90c-4a2e-a41a-1f9a1fba8867",
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("45852674-c90c-4a2e-a41a-1f9a1fba8867",
	"26c276d4-5cac-48d3-9774-19604c66d6e1");
INSERT INTO V_VAL
	VALUES ("63d9a6e3-8e97-4581-87c0-eba5ce178f65",
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_AVL
	VALUES ("63d9a6e3-8e97-4581-87c0-eba5ce178f65",
	"45852674-c90c-4a2e-a41a-1f9a1fba8867",
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7",
	"f32f41a7-87b9-4775-9eb1-9820601e7a34");
INSERT INTO V_PAR
	VALUES ("63d9a6e3-8e97-4581-87c0-eba5ce178f65",
	"00000000-0000-0000-0000-000000000000",
	"ff217cb8-8c82-4420-a0d4-f03c05318848",
	'toLong',
	"00000000-0000-0000-0000-000000000000",
	20,
	70);
INSERT INTO V_VAL
	VALUES ("f162a95d-a9fb-40f8-9834-1f863b2611ab",
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("f162a95d-a9fb-40f8-9834-1f863b2611ab",
	"5e742225-3d9c-40ff-8674-880bfdf60826");
INSERT INTO V_VAL
	VALUES ("7568a66f-d532-4b09-94ff-851e27760dd9",
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("7568a66f-d532-4b09-94ff-851e27760dd9",
	"5e742225-3d9c-40ff-8674-880bfdf60826");
INSERT INTO V_VAL
	VALUES ("1662d313-a93f-4562-9894-4e0ec869565f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_BIN
	VALUES ("1662d313-a93f-4562-9894-4e0ec869565f",
	"c1db4af1-8a51-4a61-8eb0-868ecd7492da",
	"7568a66f-d532-4b09-94ff-851e27760dd9",
	'+');
INSERT INTO V_VAL
	VALUES ("c1db4af1-8a51-4a61-8eb0-868ecd7492da",
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("c1db4af1-8a51-4a61-8eb0-868ecd7492da",
	"8c0323a4-8b86-4de9-93b5-82b4ca76e3c6");
INSERT INTO V_VAL
	VALUES ("af84b2d7-5972-4270-ba9d-436ac9279161",
	1,
	0,
	22,
	5,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("af84b2d7-5972-4270-ba9d-436ac9279161",
	"a635a615-955b-470b-90bb-4f108decd63e");
INSERT INTO V_VAL
	VALUES ("0d9a1734-c9ae-4597-bc72-b291db6a9452",
	0,
	0,
	22,
	13,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_TVL
	VALUES ("0d9a1734-c9ae-4597-bc72-b291db6a9452",
	"a635a615-955b-470b-90bb-4f108decd63e");
INSERT INTO V_VAL
	VALUES ("2b8fc0fc-d3f4-4bde-89f5-7d2fc02d8924",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_BIN
	VALUES ("2b8fc0fc-d3f4-4bde-89f5-7d2fc02d8924",
	"e905f476-1bc0-4f20-9595-f9e093293d2e",
	"0d9a1734-c9ae-4597-bc72-b291db6a9452",
	'-');
INSERT INTO V_VAL
	VALUES ("e905f476-1bc0-4f20-9595-f9e093293d2e",
	0,
	0,
	22,
	21,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_LIN
	VALUES ("e905f476-1bc0-4f20-9595-f9e093293d2e",
	'1');
INSERT INTO V_VAL
	VALUES ("90d34f42-7ea7-4c39-a877-6a6e0341f716",
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("90d34f42-7ea7-4c39-a877-6a6e0341f716",
	"83201aaf-364c-4396-8039-f4f1b820b36e");
INSERT INTO V_VAL
	VALUES ("319dab68-0f03-4f2e-a908-d3754a69625d",
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd");
INSERT INTO V_IRF
	VALUES ("319dab68-0f03-4f2e-a908-d3754a69625d",
	"26c276d4-5cac-48d3-9774-19604c66d6e1");
INSERT INTO V_VAR
	VALUES ("26c276d4-5cac-48d3-9774-19604c66d6e1",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	'previousPoint',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("26c276d4-5cac-48d3-9774-19604c66d6e1",
	0,
	"07f1f642-2603-4f8d-9b5e-467e47bbcee7");
INSERT INTO V_VAR
	VALUES ("8c0323a4-8b86-4de9-93b5-82b4ca76e3c6",
	"990313c9-12eb-4053-89b2-f4a0f41cfafd",
	'distance',
	1,
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_TRN
	VALUES ("8c0323a4-8b86-4de9-93b5-82b4ca76e3c6",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("e7b770e9-3600-49a9-afe4-3390c0d76fbb",
	0,
	0,
	0,
	'',
	'',
	'',
	17,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5b842694-a99d-4909-aa1f-04cd3393e92a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bead8f5c-58d3-42c0-a3ae-c01e35040f9f",
	"e7b770e9-3600-49a9-afe4-3390c0d76fbb",
	"00000000-0000-0000-0000-000000000000",
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES ("bead8f5c-58d3-42c0-a3ae-c01e35040f9f");
INSERT INTO O_BATTR
	VALUES ("595893a9-af1f-4ec3-bf8f-7db90a7e1cb3",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("595893a9-af1f-4ec3-bf8f-7db90a7e1cb3",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"83cc3629-9017-4ae5-a885-d52be892663c",
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_DBATTR
	VALUES ("d86a01f7-07b7-46c0-addd-42254be7e9f5",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES ("4b2e9e91-9926-4077-b9e7-6f8d261af724",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5",
	1);
INSERT INTO ACT_ACT
	VALUES ("4b2e9e91-9926-4077-b9e7-6f8d261af724",
	'derived attribute',
	0,
	"7956dca4-9539-481d-ba50-831c7fef09a5",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::currentPace',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7956dca4-9539-481d-ba50-831c7fef09a5",
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4b2e9e91-9926-4077-b9e7-6f8d261af724",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("230fdbf5-2b35-4934-8eef-a0223ac99e14",
	"7956dca4-9539-481d-ba50-831c7fef09a5",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES ("230fdbf5-2b35-4934-8eef-a0223ac99e14",
	"36725d68-995c-4565-923d-0d74e0ae62b8",
	"d99f55a2-8217-4a45-99c2-0ac6e17657d6",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f8da2f42-07b0-4a56-b1ac-d28697928537",
	"7956dca4-9539-481d-ba50-831c7fef09a5",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES ("f8da2f42-07b0-4a56-b1ac-d28697928537",
	"000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7",
	"230fdbf5-2b35-4934-8eef-a0223ac99e14");
INSERT INTO V_VAL
	VALUES ("c1162742-a866-416c-8dc6-d0e4f065d38e",
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7956dca4-9539-481d-ba50-831c7fef09a5");
INSERT INTO V_IRF
	VALUES ("c1162742-a866-416c-8dc6-d0e4f065d38e",
	"0e903d8e-316a-45fa-a8b2-d8cc77490a5f");
INSERT INTO V_VAL
	VALUES ("aca943b0-6c5b-4ab5-be7b-9e2021157ac1",
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"7956dca4-9539-481d-ba50-831c7fef09a5");
INSERT INTO V_AVL
	VALUES ("aca943b0-6c5b-4ab5-be7b-9e2021157ac1",
	"c1162742-a866-416c-8dc6-d0e4f065d38e",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3");
INSERT INTO V_VAL
	VALUES ("d99f55a2-8217-4a45-99c2-0ac6e17657d6",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"7956dca4-9539-481d-ba50-831c7fef09a5");
INSERT INTO V_BIN
	VALUES ("d99f55a2-8217-4a45-99c2-0ac6e17657d6",
	"f6ccd7f1-70a4-425c-8e83-e1166c050862",
	"aca943b0-6c5b-4ab5-be7b-9e2021157ac1",
	'!=');
INSERT INTO V_VAL
	VALUES ("f6ccd7f1-70a4-425c-8e83-e1166c050862",
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"7956dca4-9539-481d-ba50-831c7fef09a5");
INSERT INTO V_LRL
	VALUES ("f6ccd7f1-70a4-425c-8e83-e1166c050862",
	'0.0');
INSERT INTO V_VAR
	VALUES ("0e903d8e-316a-45fa-a8b2-d8cc77490a5f",
	"7956dca4-9539-481d-ba50-831c7fef09a5",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("0e903d8e-316a-45fa-a8b2-d8cc77490a5f",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO ACT_BLK
	VALUES ("36725d68-995c-4565-923d-0d74e0ae62b8",
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4b2e9e91-9926-4077-b9e7-6f8d261af724",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7bbf7d7f-120c-47d8-a644-2d5c9540269b",
	"36725d68-995c-4565-923d-0d74e0ae62b8",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES ("7bbf7d7f-120c-47d8-a644-2d5c9540269b",
	"9c4a9e3e-a6b5-4fdf-b869-e133f5940e1a",
	"67202dd1-273b-4830-951f-dfc8c9443b5a",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("6be02f98-76d4-4d2d-89ea-19b7e67067f1",
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_IRF
	VALUES ("6be02f98-76d4-4d2d-89ea-19b7e67067f1",
	"0e903d8e-316a-45fa-a8b2-d8cc77490a5f");
INSERT INTO V_VAL
	VALUES ("67202dd1-273b-4830-951f-dfc8c9443b5a",
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_AVL
	VALUES ("67202dd1-273b-4830-951f-dfc8c9443b5a",
	"6be02f98-76d4-4d2d-89ea-19b7e67067f1",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5");
INSERT INTO V_VAL
	VALUES ("94b78766-196e-4af8-a890-82eb1b32c61a",
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_LRL
	VALUES ("94b78766-196e-4af8-a890-82eb1b32c61a",
	'60.0');
INSERT INTO V_VAL
	VALUES ("9c4a9e3e-a6b5-4fdf-b869-e133f5940e1a",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_BIN
	VALUES ("9c4a9e3e-a6b5-4fdf-b869-e133f5940e1a",
	"3d6113e9-2253-4557-915f-c6c47841d492",
	"94b78766-196e-4af8-a890-82eb1b32c61a",
	'/');
INSERT INTO V_VAL
	VALUES ("1dc02dff-d235-412b-9e7b-c3e8f29943fa",
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_IRF
	VALUES ("1dc02dff-d235-412b-9e7b-c3e8f29943fa",
	"0e903d8e-316a-45fa-a8b2-d8cc77490a5f");
INSERT INTO V_VAL
	VALUES ("3d6113e9-2253-4557-915f-c6c47841d492",
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"36725d68-995c-4565-923d-0d74e0ae62b8");
INSERT INTO V_AVL
	VALUES ("3d6113e9-2253-4557-915f-c6c47841d492",
	"1dc02dff-d235-412b-9e7b-c3e8f29943fa",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3");
INSERT INTO ACT_BLK
	VALUES ("000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7",
	0,
	0,
	0,
	'',
	'',
	'',
	6,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4b2e9e91-9926-4077-b9e7-6f8d261af724",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("169f2021-bb12-4aed-8b4f-aedeb061f095",
	"000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES ("169f2021-bb12-4aed-8b4f-aedeb061f095",
	"06128591-2712-4d79-af85-48fea7d3d4ef",
	"641e23e1-7a2d-4da5-a46a-41d0d6459b2d",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("d5d4a8aa-88ab-4da2-8af9-e384aea5db2e",
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7");
INSERT INTO V_IRF
	VALUES ("d5d4a8aa-88ab-4da2-8af9-e384aea5db2e",
	"0e903d8e-316a-45fa-a8b2-d8cc77490a5f");
INSERT INTO V_VAL
	VALUES ("641e23e1-7a2d-4da5-a46a-41d0d6459b2d",
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7");
INSERT INTO V_AVL
	VALUES ("641e23e1-7a2d-4da5-a46a-41d0d6459b2d",
	"d5d4a8aa-88ab-4da2-8af9-e384aea5db2e",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5");
INSERT INTO V_VAL
	VALUES ("06128591-2712-4d79-af85-48fea7d3d4ef",
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"000aa76f-025a-4a30-9c0d-9bb3c7d0c9e7");
INSERT INTO V_LRL
	VALUES ("06128591-2712-4d79-af85-48fea7d3d4ef",
	'0.0');
INSERT INTO O_BATTR
	VALUES ("d86a01f7-07b7-46c0-addd-42254be7e9f5",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("d86a01f7-07b7-46c0-addd-42254be7e9f5",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"595893a9-af1f-4ec3-bf8f-7db90a7e1cb3",
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_DBATTR
	VALUES ("ad49f157-3f68-4a0c-b954-34bdfaf10c6a",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	'// Calculate sliding average using the most recent samples.

select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];
select many samples related by self->HeartRateSample[R6.''tracks heart rate over time as'']
  where ( selected.time >= ( workoutTimer.time - (HeartRateSamplingPeriod * HeartRateAveragingWindow) ) );
numberOfSamples = 0;
sum = 0;
for each sample in samples
  numberOfSamples = numberOfSamples + 1;
  sum = sum + sample.heartRate;
end for;
if ( numberOfSamples > 0 )
  self.currentHeartRate = sum / numberOfSamples;
else
  self.currentHeartRate = 0;
end if;
',
	1);
INSERT INTO ACT_DAB
	VALUES ("47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a",
	1);
INSERT INTO ACT_ACT
	VALUES ("47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	'derived attribute',
	0,
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutSession::currentHeartRate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	1,
	0,
	1,
	'',
	'',
	'',
	14,
	1,
	4,
	38,
	0,
	0,
	4,
	54,
	4,
	57,
	0,
	0,
	0,
	"47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("42702703-8033-4437-9994-6fab29bdf0e8",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"b54cfe29-f9e7-40b9-bf5b-29e2521838de",
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES ("42702703-8033-4437-9994-6fab29bdf0e8",
	"65b9a275-f878-4dbc-8e4d-647c139625c3",
	1,
	'one',
	"50cf7931-19fb-49b7-a50a-36841b88a1f5");
INSERT INTO ACT_SR
	VALUES ("42702703-8033-4437-9994-6fab29bdf0e8");
INSERT INTO ACT_LNK
	VALUES ("3cd47c80-ada1-49de-8f80-853406e2dfe7",
	'''is timed by''',
	"42702703-8033-4437-9994-6fab29bdf0e8",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES ("b54cfe29-f9e7-40b9-bf5b-29e2521838de",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"de432f60-3b3a-4d09-9720-f86a03687cc7",
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES ("b54cfe29-f9e7-40b9-bf5b-29e2521838de",
	"f8d4f4b6-dec2-4d87-b3b3-17567a126503",
	1,
	'many',
	"676db761-699b-4962-9948-266e75e00e78");
INSERT INTO ACT_SRW
	VALUES ("b54cfe29-f9e7-40b9-bf5b-29e2521838de",
	"981a363f-3c49-4a20-b9d3-4edf53202dc1");
INSERT INTO ACT_LNK
	VALUES ("97cfa829-59e8-474a-92ab-c05c3c064111",
	'''tracks heart rate over time as''',
	"b54cfe29-f9e7-40b9-bf5b-29e2521838de",
	"2da0e849-e040-4957-99a1-d4634277e94b",
	"00000000-0000-0000-0000-000000000000",
	3,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES ("de432f60-3b3a-4d09-9720-f86a03687cc7",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"20344a34-c680-447c-97f5-d364b97986ac",
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES ("de432f60-3b3a-4d09-9720-f86a03687cc7",
	"87ee6ac0-3d55-43b3-8699-155df4f7451c",
	"6da62b5e-0e37-4281-846f-7ae19aee82c8",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("20344a34-c680-447c-97f5-d364b97986ac",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"6a0d3dae-b3a7-4309-8ab1-a219ad17414f",
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES ("20344a34-c680-447c-97f5-d364b97986ac",
	"447b9a35-43cd-4d8f-88ed-50916a16c293",
	"4b4d208d-3dbc-485d-a494-8e48c3ce4a08",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("6a0d3dae-b3a7-4309-8ab1-a219ad17414f",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"4d520e95-e7ae-48a7-bb66-1e7aa53b9ea7",
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES ("6a0d3dae-b3a7-4309-8ab1-a219ad17414f",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9",
	1,
	"920dd857-28f3-43c6-bedc-9241ca2065da",
	"f8d4f4b6-dec2-4d87-b3b3-17567a126503",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO ACT_SMT
	VALUES ("4d520e95-e7ae-48a7-bb66-1e7aa53b9ea7",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"00000000-0000-0000-0000-000000000000",
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES ("4d520e95-e7ae-48a7-bb66-1e7aa53b9ea7",
	"a7c18e9a-488b-415d-8be4-89a750cc60da",
	"f27ca423-0517-4bca-87ce-b23635511dd2",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8d6f806a-6d35-49dc-9054-fb9db8e3f98f",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES ("8d6f806a-6d35-49dc-9054-fb9db8e3f98f",
	"c7d574ff-90f0-43eb-943b-a27294cbea7b",
	"4d520e95-e7ae-48a7-bb66-1e7aa53b9ea7");
INSERT INTO V_VAL
	VALUES ("50cf7931-19fb-49b7-a50a-36841b88a1f5",
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_IRF
	VALUES ("50cf7931-19fb-49b7-a50a-36841b88a1f5",
	"d29710ba-c885-40ac-8930-fc150a753673");
INSERT INTO V_VAL
	VALUES ("676db761-699b-4962-9948-266e75e00e78",
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_IRF
	VALUES ("676db761-699b-4962-9948-266e75e00e78",
	"d29710ba-c885-40ac-8930-fc150a753673");
INSERT INTO V_VAL
	VALUES ("7063bd5f-80ee-49b5-a2cf-be9b6e3156eb",
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_SLR
	VALUES ("7063bd5f-80ee-49b5-a2cf-be9b6e3156eb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("f2f5fb6d-c3e9-4a3c-985d-6d077cb91d1a",
	0,
	0,
	5,
	20,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_AVL
	VALUES ("f2f5fb6d-c3e9-4a3c-985d-6d077cb91d1a",
	"7063bd5f-80ee-49b5-a2cf-be9b6e3156eb",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"7fb30d45-9969-42f5-a488-a4de89f8cbd2");
INSERT INTO V_VAL
	VALUES ("981a363f-3c49-4a20-b9d3-4edf53202dc1",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_BIN
	VALUES ("981a363f-3c49-4a20-b9d3-4edf53202dc1",
	"b57efb63-ef28-4a83-8bc8-b6e5fa718160",
	"f2f5fb6d-c3e9-4a3c-985d-6d077cb91d1a",
	'>=');
INSERT INTO V_VAL
	VALUES ("63ab1b70-8fe3-476d-b337-04747ad17995",
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_IRF
	VALUES ("63ab1b70-8fe3-476d-b337-04747ad17995",
	"65b9a275-f878-4dbc-8e4d-647c139625c3");
INSERT INTO V_VAL
	VALUES ("be99a6e3-d1f2-4de2-853c-a0877f5d26e1",
	0,
	0,
	5,
	43,
	46,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_AVL
	VALUES ("be99a6e3-d1f2-4de2-853c-a0877f5d26e1",
	"63ab1b70-8fe3-476d-b337-04747ad17995",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("b57efb63-ef28-4a83-8bc8-b6e5fa718160",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_BIN
	VALUES ("b57efb63-ef28-4a83-8bc8-b6e5fa718160",
	"a3084f27-c45c-4407-a63d-94dc36abb361",
	"be99a6e3-d1f2-4de2-853c-a0877f5d26e1",
	'-');
INSERT INTO V_VAL
	VALUES ("4bedb691-89d6-49f2-854c-5432cb758f57",
	0,
	0,
	5,
	51,
	73,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_SCV
	VALUES ("4bedb691-89d6-49f2-854c-5432cb758f57",
	"af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("a3084f27-c45c-4407-a63d-94dc36abb361",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_BIN
	VALUES ("a3084f27-c45c-4407-a63d-94dc36abb361",
	"8d417ddd-d5f0-4d1a-add6-abc8d117b65d",
	"4bedb691-89d6-49f2-854c-5432cb758f57",
	'*');
INSERT INTO V_VAL
	VALUES ("8d417ddd-d5f0-4d1a-add6-abc8d117b65d",
	0,
	0,
	5,
	77,
	100,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_SCV
	VALUES ("8d417ddd-d5f0-4d1a-add6-abc8d117b65d",
	"8d22cc4c-867e-4172-b0dc-15cc17b4a23c",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("6da62b5e-0e37-4281-846f-7ae19aee82c8",
	1,
	1,
	6,
	1,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_TVL
	VALUES ("6da62b5e-0e37-4281-846f-7ae19aee82c8",
	"d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4");
INSERT INTO V_VAL
	VALUES ("87ee6ac0-3d55-43b3-8699-155df4f7451c",
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_LIN
	VALUES ("87ee6ac0-3d55-43b3-8699-155df4f7451c",
	'0');
INSERT INTO V_VAL
	VALUES ("4b4d208d-3dbc-485d-a494-8e48c3ce4a08",
	1,
	1,
	7,
	1,
	3,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_TVL
	VALUES ("4b4d208d-3dbc-485d-a494-8e48c3ce4a08",
	"85350222-1392-4ae1-869a-4b062caffe30");
INSERT INTO V_VAL
	VALUES ("447b9a35-43cd-4d8f-88ed-50916a16c293",
	0,
	0,
	7,
	7,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_LIN
	VALUES ("447b9a35-43cd-4d8f-88ed-50916a16c293",
	'0');
INSERT INTO V_VAL
	VALUES ("be292b2b-9eb8-4951-9df3-09b7b80e0749",
	0,
	0,
	12,
	6,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_TVL
	VALUES ("be292b2b-9eb8-4951-9df3-09b7b80e0749",
	"d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4");
INSERT INTO V_VAL
	VALUES ("f27ca423-0517-4bca-87ce-b23635511dd2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_BIN
	VALUES ("f27ca423-0517-4bca-87ce-b23635511dd2",
	"d43df911-c6f9-4ccb-89cb-f008136e4038",
	"be292b2b-9eb8-4951-9df3-09b7b80e0749",
	'>');
INSERT INTO V_VAL
	VALUES ("d43df911-c6f9-4ccb-89cb-f008136e4038",
	0,
	0,
	12,
	24,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0");
INSERT INTO V_LIN
	VALUES ("d43df911-c6f9-4ccb-89cb-f008136e4038",
	'0');
INSERT INTO V_VAR
	VALUES ("65b9a275-f878-4dbc-8e4d-647c139625c3",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'workoutTimer',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("65b9a275-f878-4dbc-8e4d-647c139625c3",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("d29710ba-c885-40ac-8930-fc150a753673",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("d29710ba-c885-40ac-8930-fc150a753673",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("f8d4f4b6-dec2-4d87-b3b3-17567a126503",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'samples',
	1,
	"ba5eda7a-def5-0000-0000-000000000009");
INSERT INTO V_INS
	VALUES ("f8d4f4b6-dec2-4d87-b3b3-17567a126503",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO V_VAR
	VALUES ("d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'numberOfSamples',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("85350222-1392-4ae1-869a-4b062caffe30",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'sum',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("85350222-1392-4ae1-869a-4b062caffe30",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("920dd857-28f3-43c6-bedc-9241ca2065da",
	"e75646d2-dc65-4d8a-9233-734b65a1d4d0",
	'sample',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("920dd857-28f3-43c6-bedc-9241ca2065da",
	1,
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf");
INSERT INTO ACT_BLK
	VALUES ("4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9",
	0,
	0,
	0,
	'',
	'',
	'',
	10,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("96064c93-8f94-4e38-ba49-766bf3817329",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9",
	"050f1e0a-3064-4c7a-a8df-eeef01eae621",
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES ("96064c93-8f94-4e38-ba49-766bf3817329",
	"bb851525-e198-40d8-80b6-25692a351d77",
	"8e9896db-c5f0-421c-957a-19034798f5d3",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("050f1e0a-3064-4c7a-a8df-eeef01eae621",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9",
	"00000000-0000-0000-0000-000000000000",
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES ("050f1e0a-3064-4c7a-a8df-eeef01eae621",
	"418f1721-001a-4ed1-8d29-11aebe582063",
	"dfef09b6-8229-4950-b326-0d6f6ebc179e",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("8e9896db-c5f0-421c-957a-19034798f5d3",
	1,
	0,
	9,
	3,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_TVL
	VALUES ("8e9896db-c5f0-421c-957a-19034798f5d3",
	"d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4");
INSERT INTO V_VAL
	VALUES ("7f90f25a-af91-428a-99e8-b63377a136c5",
	0,
	0,
	9,
	21,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_TVL
	VALUES ("7f90f25a-af91-428a-99e8-b63377a136c5",
	"d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4");
INSERT INTO V_VAL
	VALUES ("bb851525-e198-40d8-80b6-25692a351d77",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_BIN
	VALUES ("bb851525-e198-40d8-80b6-25692a351d77",
	"e917235e-7fa7-443e-9288-be051d60dc35",
	"7f90f25a-af91-428a-99e8-b63377a136c5",
	'+');
INSERT INTO V_VAL
	VALUES ("e917235e-7fa7-443e-9288-be051d60dc35",
	0,
	0,
	9,
	39,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_LIN
	VALUES ("e917235e-7fa7-443e-9288-be051d60dc35",
	'1');
INSERT INTO V_VAL
	VALUES ("dfef09b6-8229-4950-b326-0d6f6ebc179e",
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_TVL
	VALUES ("dfef09b6-8229-4950-b326-0d6f6ebc179e",
	"85350222-1392-4ae1-869a-4b062caffe30");
INSERT INTO V_VAL
	VALUES ("a4914000-0013-473e-8925-1e26f735f3da",
	0,
	0,
	10,
	9,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_TVL
	VALUES ("a4914000-0013-473e-8925-1e26f735f3da",
	"85350222-1392-4ae1-869a-4b062caffe30");
INSERT INTO V_VAL
	VALUES ("418f1721-001a-4ed1-8d29-11aebe582063",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_BIN
	VALUES ("418f1721-001a-4ed1-8d29-11aebe582063",
	"0cbba5f6-a7f3-427d-96e9-48005d88e3f1",
	"a4914000-0013-473e-8925-1e26f735f3da",
	'+');
INSERT INTO V_VAL
	VALUES ("05671e85-b021-4d77-816b-fcd9a656a61b",
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_IRF
	VALUES ("05671e85-b021-4d77-816b-fcd9a656a61b",
	"920dd857-28f3-43c6-bedc-9241ca2065da");
INSERT INTO V_VAL
	VALUES ("0cbba5f6-a7f3-427d-96e9-48005d88e3f1",
	0,
	0,
	10,
	22,
	30,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4fe4b8d7-5cf5-41c1-8499-eb20d422ecc9");
INSERT INTO V_AVL
	VALUES ("0cbba5f6-a7f3-427d-96e9-48005d88e3f1",
	"05671e85-b021-4d77-816b-fcd9a656a61b",
	"8c3657fb-4500-4c13-adab-4c30d03cdbcf",
	"ee5b3f68-6956-42f6-ba26-7e3176575682");
INSERT INTO ACT_BLK
	VALUES ("a7c18e9a-488b-415d-8be4-89a750cc60da",
	0,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("aa2342d2-21b4-477c-9d10-d65ed92b408c",
	"a7c18e9a-488b-415d-8be4-89a750cc60da",
	"00000000-0000-0000-0000-000000000000",
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES ("aa2342d2-21b4-477c-9d10-d65ed92b408c",
	"8957a5f8-f928-43fe-8412-a64f365931c0",
	"e6f8ab79-aa01-41b4-825a-7f3b2f29c659",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("3acdcdb7-0a1d-43d6-8f77-f9fc777006cf",
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"a7c18e9a-488b-415d-8be4-89a750cc60da");
INSERT INTO V_IRF
	VALUES ("3acdcdb7-0a1d-43d6-8f77-f9fc777006cf",
	"d29710ba-c885-40ac-8930-fc150a753673");
INSERT INTO V_VAL
	VALUES ("e6f8ab79-aa01-41b4-825a-7f3b2f29c659",
	1,
	0,
	13,
	8,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a7c18e9a-488b-415d-8be4-89a750cc60da");
INSERT INTO V_AVL
	VALUES ("e6f8ab79-aa01-41b4-825a-7f3b2f29c659",
	"3acdcdb7-0a1d-43d6-8f77-f9fc777006cf",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a");
INSERT INTO V_VAL
	VALUES ("43b43cf2-3ffa-49f1-b44b-c6f0e93863f6",
	0,
	0,
	13,
	27,
	29,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a7c18e9a-488b-415d-8be4-89a750cc60da");
INSERT INTO V_TVL
	VALUES ("43b43cf2-3ffa-49f1-b44b-c6f0e93863f6",
	"85350222-1392-4ae1-869a-4b062caffe30");
INSERT INTO V_VAL
	VALUES ("8957a5f8-f928-43fe-8412-a64f365931c0",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a7c18e9a-488b-415d-8be4-89a750cc60da");
INSERT INTO V_BIN
	VALUES ("8957a5f8-f928-43fe-8412-a64f365931c0",
	"423c664a-d75c-43b4-a94b-efb8eac08c58",
	"43b43cf2-3ffa-49f1-b44b-c6f0e93863f6",
	'/');
INSERT INTO V_VAL
	VALUES ("423c664a-d75c-43b4-a94b-efb8eac08c58",
	0,
	0,
	13,
	33,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a7c18e9a-488b-415d-8be4-89a750cc60da");
INSERT INTO V_TVL
	VALUES ("423c664a-d75c-43b4-a94b-efb8eac08c58",
	"d529bf2e-52bc-46fd-a1f5-d12fae8ebbc4");
INSERT INTO ACT_BLK
	VALUES ("c7d574ff-90f0-43eb-943b-a27294cbea7b",
	0,
	0,
	0,
	'',
	'',
	'',
	15,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"47c599dd-f42f-4d7a-9c77-344e9e816d1e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3ff55363-584e-4439-ada1-4d2b97454c76",
	"c7d574ff-90f0-43eb-943b-a27294cbea7b",
	"00000000-0000-0000-0000-000000000000",
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES ("3ff55363-584e-4439-ada1-4d2b97454c76",
	"9a595612-e070-4880-8b3e-96f4da037e05",
	"bde9bfab-f1f5-4081-a919-ace2daaadef2",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("ae0d7e14-9504-4733-85ea-d081e9b8f4d8",
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"c7d574ff-90f0-43eb-943b-a27294cbea7b");
INSERT INTO V_IRF
	VALUES ("ae0d7e14-9504-4733-85ea-d081e9b8f4d8",
	"d29710ba-c885-40ac-8930-fc150a753673");
INSERT INTO V_VAL
	VALUES ("bde9bfab-f1f5-4081-a919-ace2daaadef2",
	1,
	0,
	15,
	8,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c7d574ff-90f0-43eb-943b-a27294cbea7b");
INSERT INTO V_AVL
	VALUES ("bde9bfab-f1f5-4081-a919-ace2daaadef2",
	"ae0d7e14-9504-4733-85ea-d081e9b8f4d8",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a");
INSERT INTO V_VAL
	VALUES ("9a595612-e070-4880-8b3e-96f4da037e05",
	0,
	0,
	15,
	27,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c7d574ff-90f0-43eb-943b-a27294cbea7b");
INSERT INTO V_LIN
	VALUES ("9a595612-e070-4880-8b3e-96f4da037e05",
	'0');
INSERT INTO O_BATTR
	VALUES ("ad49f157-3f68-4a0c-b954-34bdfaf10c6a",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("ad49f157-3f68-4a0c-b954-34bdfaf10c6a",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"d86a01f7-07b7-46c0-addd-42254be7e9f5",
	'currentHeartRate',
	'Current heart rate, expressed in beats per minute, averaged over 
a predefined number of the most recent heart-rate samples.',
	'',
	'currentHeartRate',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("d006d565-af3e-4fb7-9008-901e6c517662",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_BATTR
	VALUES ("d006d565-af3e-4fb7-9008-901e6c517662",
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ATTR
	VALUES ("d006d565-af3e-4fb7-9008-901e6c517662",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	"ad49f157-3f68-4a0c-b954-34bdfaf10c6a",
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_OIDA
	VALUES ("8bb3816b-7899-4212-b44a-c5a6fd6f4c7d",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES ("83cc3629-9017-4ae5-a885-d52be892663c",
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO O_ID
	VALUES (2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO PE_PE
	VALUES ("c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	1,
	"d4cc5d93-3a47-43a6-aaa4-59e38a389900",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	'WorkoutTimer',
	1,
	'WorkoutTimer',
	'Represents the stopwatch portion of the device.
This class also knows:
- Track points are stored only when the stopwatch is running.
- If a goal is executing, evaluation of it must be paused when
the timer pauses.
- How to handle the lap/reset signal based on whether the 
stopwatch is currently running.

This is a singleton instance.
',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("b3e00a41-07dd-4f0a-aa47-e0449139c053",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	'activate',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Start the underlying timer that drives the workout timer.
create event instance evt of WorkoutTimer3:tick() to self;
self.timer = TIM::timer_start_recurring( event_inst: evt, microseconds: (timerPeriod * 1000000) );

// Resume evaluation of the currently executing goal, if there is one.
select one executingGoal related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  generate Goal2:Evaluate to executingGoal;
end if;

// Resume listening for updates from the GPS and heart monitor.
send Location::registerListener();
send HeartRateMonitor::registerListener();',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("4d244e48-5e16-4121-b2d2-167ea451b0b4",
	"b3e00a41-07dd-4f0a-aa47-e0449139c053");
INSERT INTO ACT_ACT
	VALUES ("4d244e48-5e16-4121-b2d2-167ea451b0b4",
	'operation',
	0,
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::activate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("322b07fc-1ade-4e48-9247-e87167fda990",
	1,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	14,
	1,
	14,
	6,
	0,
	0,
	7,
	62,
	7,
	66,
	0,
	0,
	0,
	"4d244e48-5e16-4121-b2d2-167ea451b0b4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c792fa05-ca60-426e-9cc7-b829829e21ba",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"8269edfc-777b-4144-8d41-5e585ba3552c",
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES ("c792fa05-ca60-426e-9cc7-b829829e21ba",
	1,
	0,
	2,
	30,
	2,
	44,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("c792fa05-ca60-426e-9cc7-b829829e21ba",
	1,
	"a4ac4e9a-fd20-4cb3-b6a8-563aae041238");
INSERT INTO E_CSME
	VALUES ("c792fa05-ca60-426e-9cc7-b829829e21ba",
	"caee742f-7c3a-45b4-9240-86646f43979e");
INSERT INTO E_CEI
	VALUES ("c792fa05-ca60-426e-9cc7-b829829e21ba",
	"0a7d298e-3c3e-406e-be87-43d9093dd84a");
INSERT INTO ACT_SMT
	VALUES ("8269edfc-777b-4144-8d41-5e585ba3552c",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"39867b02-4cb8-4fab-80b6-d24effa55168",
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES ("8269edfc-777b-4144-8d41-5e585ba3552c",
	"7bbf98a0-7fba-4c1c-b355-45adb75e9f81",
	"18892c2a-41aa-44e0-8f4a-0555774c40b9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("39867b02-4cb8-4fab-80b6-d24effa55168",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"5b931bb5-12ff-4a2a-b087-c42dbd628205",
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES ("39867b02-4cb8-4fab-80b6-d24effa55168",
	"8198f703-6508-47e1-8914-63ce328b5dad",
	1,
	'one',
	"e9b6a502-1773-4c17-a0f2-7ed2cb9694e2");
INSERT INTO ACT_SR
	VALUES ("39867b02-4cb8-4fab-80b6-d24effa55168");
INSERT INTO ACT_LNK
	VALUES ("22ccd35b-23ae-4f8d-ae96-a9f02721a43a",
	'''acts as the stopwatch for''',
	"39867b02-4cb8-4fab-80b6-d24effa55168",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"8074c5ce-f259-4cac-a498-3c2d10a6b9e3",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES ("8074c5ce-f259-4cac-a498-3c2d10a6b9e3",
	'''is currently executing''',
	"00000000-0000-0000-0000-000000000000",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES ("5b931bb5-12ff-4a2a-b087-c42dbd628205",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"5894b3ae-8e16-40c8-a41b-6b65b2f45d33",
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES ("5b931bb5-12ff-4a2a-b087-c42dbd628205",
	"32ebd05d-8c4a-4629-bf78-5af2db066657",
	"ec4ef4cf-a023-4450-8cc8-d566b4bf5e84",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5894b3ae-8e16-40c8-a41b-6b65b2f45d33",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"f37e8af8-61a0-4c94-9813-1c5abf436b84",
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES ("5894b3ae-8e16-40c8-a41b-6b65b2f45d33",
	13,
	16,
	13,
	6,
	"00000000-0000-0000-0000-000000000000",
	"1e83bc1f-63e2-43dc-b3b6-917e3b9f987f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f37e8af8-61a0-4c94-9813-1c5abf436b84",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES ("f37e8af8-61a0-4c94-9813-1c5abf436b84",
	14,
	24,
	14,
	6,
	"00000000-0000-0000-0000-000000000000",
	"a0866934-8be0-4a0b-ae33-2bd1d1cd55b1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("aa9e8055-8a80-4c10-94b7-08c507576355",
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_IRF
	VALUES ("aa9e8055-8a80-4c10-94b7-08c507576355",
	"0a7d298e-3c3e-406e-be87-43d9093dd84a");
INSERT INTO V_VAL
	VALUES ("18892c2a-41aa-44e0-8f4a-0555774c40b9",
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_AVL
	VALUES ("18892c2a-41aa-44e0-8f4a-0555774c40b9",
	"aa9e8055-8a80-4c10-94b7-08c507576355",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"ade46ae9-a417-45e1-b6ea-48f9489c0e4e");
INSERT INTO V_VAL
	VALUES ("7bbf98a0-7fba-4c1c-b355-45adb75e9f81",
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_BRV
	VALUES ("7bbf98a0-7fba-4c1c-b355-45adb75e9f81",
	"5ee8c647-8ef5-4a2c-91b0-97c2986530c7",
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES ("7a837cbf-b946-4729-b66d-09516162f6f1",
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_TVL
	VALUES ("7a837cbf-b946-4729-b66d-09516162f6f1",
	"a4ac4e9a-fd20-4cb3-b6a8-563aae041238");
INSERT INTO V_PAR
	VALUES ("7a837cbf-b946-4729-b66d-09516162f6f1",
	"00000000-0000-0000-0000-000000000000",
	"7bbf98a0-7fba-4c1c-b355-45adb75e9f81",
	'event_inst',
	"dd369ae8-898b-4302-ab36-91249b689e6f",
	3,
	42);
INSERT INTO V_VAL
	VALUES ("f7155a35-1e91-4595-bc3a-e1cda3f81c4d",
	0,
	0,
	3,
	74,
	84,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_SCV
	VALUES ("f7155a35-1e91-4595-bc3a-e1cda3f81c4d",
	"834c1629-e5e5-4d60-b6cd-d5972bb29ec6",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("dd369ae8-898b-4302-ab36-91249b689e6f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_BIN
	VALUES ("dd369ae8-898b-4302-ab36-91249b689e6f",
	"cdbe62c4-236e-4701-984e-c11ff6d0e2c1",
	"f7155a35-1e91-4595-bc3a-e1cda3f81c4d",
	'*');
INSERT INTO V_PAR
	VALUES ("dd369ae8-898b-4302-ab36-91249b689e6f",
	"00000000-0000-0000-0000-000000000000",
	"7bbf98a0-7fba-4c1c-b355-45adb75e9f81",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	3,
	59);
INSERT INTO V_VAL
	VALUES ("cdbe62c4-236e-4701-984e-c11ff6d0e2c1",
	0,
	0,
	3,
	88,
	94,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_LIN
	VALUES ("cdbe62c4-236e-4701-984e-c11ff6d0e2c1",
	'1000000');
INSERT INTO V_VAL
	VALUES ("e9b6a502-1773-4c17-a0f2-7ed2cb9694e2",
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_IRF
	VALUES ("e9b6a502-1773-4c17-a0f2-7ed2cb9694e2",
	"0a7d298e-3c3e-406e-be87-43d9093dd84a");
INSERT INTO V_VAL
	VALUES ("3f0b15e4-c43e-4999-9308-59ed24a72e66",
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_IRF
	VALUES ("3f0b15e4-c43e-4999-9308-59ed24a72e66",
	"8198f703-6508-47e1-8914-63ce328b5dad");
INSERT INTO V_VAL
	VALUES ("6a582646-ca32-4b25-8ea6-746aa5dca491",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_UNY
	VALUES ("6a582646-ca32-4b25-8ea6-746aa5dca491",
	"3f0b15e4-c43e-4999-9308-59ed24a72e66",
	'empty');
INSERT INTO V_VAL
	VALUES ("ec4ef4cf-a023-4450-8cc8-d566b4bf5e84",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"322b07fc-1ade-4e48-9247-e87167fda990");
INSERT INTO V_UNY
	VALUES ("ec4ef4cf-a023-4450-8cc8-d566b4bf5e84",
	"6a582646-ca32-4b25-8ea6-746aa5dca491",
	'not');
INSERT INTO V_VAR
	VALUES ("a4ac4e9a-fd20-4cb3-b6a8-563aae041238",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("a4ac4e9a-fd20-4cb3-b6a8-563aae041238",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("0a7d298e-3c3e-406e-be87-43d9093dd84a",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("0a7d298e-3c3e-406e-be87-43d9093dd84a",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("8198f703-6508-47e1-8914-63ce328b5dad",
	"322b07fc-1ade-4e48-9247-e87167fda990",
	'executingGoal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("8198f703-6508-47e1-8914-63ce328b5dad",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("32ebd05d-8c4a-4629-bf78-5af2db066657",
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	9,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4d244e48-5e16-4121-b2d2-167ea451b0b4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0476e64d-fe7e-4357-8ab8-1a0f2b4538a8",
	"32ebd05d-8c4a-4629-bf78-5af2db066657",
	"00000000-0000-0000-0000-000000000000",
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES ("0476e64d-fe7e-4357-8ab8-1a0f2b4538a8",
	1,
	0,
	9,
	12,
	9,
	18,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("0476e64d-fe7e-4357-8ab8-1a0f2b4538a8");
INSERT INTO E_GSME
	VALUES ("0476e64d-fe7e-4357-8ab8-1a0f2b4538a8",
	"d98ec3cf-963c-4323-a368-63521ffd22d2");
INSERT INTO E_GEN
	VALUES ("0476e64d-fe7e-4357-8ab8-1a0f2b4538a8",
	"8198f703-6508-47e1-8914-63ce328b5dad");
INSERT INTO O_TFR
	VALUES ("d7c24974-84f7-4f6d-b4ca-3199f59841fd",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	'deactivate',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Cancel the timer driving the workout timer, ignoring the return code.
cancelSucceeded = TIM::timer_cancel(timer_inst_ref: self.timer);

// Pause evaluation of the currently executing goal, if there is one.
select one executingGoal related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  generate Goal3:Pause to executingGoal;
end if;

// Stop listening for updates from the GPS and heart monitor.
send Location::unregisterListener();
send HeartRateMonitor::unregisterListener();',
	1,
	'',
	"b3e00a41-07dd-4f0a-aa47-e0449139c053");
INSERT INTO ACT_OPB
	VALUES ("32596f92-0591-48a0-b227-31072f937228",
	"d7c24974-84f7-4f6d-b4ca-3199f59841fd");
INSERT INTO ACT_ACT
	VALUES ("32596f92-0591-48a0-b227-31072f937228",
	'operation',
	0,
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::deactivate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9a28770c-0147-44f3-aa8a-30fe48dd1315",
	1,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	13,
	1,
	13,
	6,
	0,
	0,
	6,
	62,
	6,
	66,
	0,
	0,
	0,
	"32596f92-0591-48a0-b227-31072f937228",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8e8ec56b-0a71-4ca5-a5d9-b81915004102",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"b752048c-9c23-4985-88c7-81a0d706e31c",
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES ("8e8ec56b-0a71-4ca5-a5d9-b81915004102",
	"bccbd9ee-57e1-450c-9009-ea8bdea5d0c4",
	"8edec24f-c7ec-4736-ab71-f3b5266820c1",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b752048c-9c23-4985-88c7-81a0d706e31c",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"e6b23e3f-9930-40ea-8c25-ae8903d2c479",
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES ("b752048c-9c23-4985-88c7-81a0d706e31c",
	"51f0c58b-055d-487f-ac0d-9e36bd565762",
	1,
	'one',
	"8e81b6f7-200f-4e60-9236-dad019f2f9ea");
INSERT INTO ACT_SR
	VALUES ("b752048c-9c23-4985-88c7-81a0d706e31c");
INSERT INTO ACT_LNK
	VALUES ("0c50b99a-fab8-43e7-b7ba-d7735be4c156",
	'''acts as the stopwatch for''',
	"b752048c-9c23-4985-88c7-81a0d706e31c",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"f88fcdb9-9fcf-4260-9f4e-2056e73c457a",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES ("f88fcdb9-9fcf-4260-9f4e-2056e73c457a",
	'''is currently executing''',
	"00000000-0000-0000-0000-000000000000",
	"1818b529-be0c-4e42-88ce-2f157d28abc6",
	"00000000-0000-0000-0000-000000000000",
	2,
	"472a759d-5701-4af4-9f68-7813a11ee4e7",
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES ("e6b23e3f-9930-40ea-8c25-ae8903d2c479",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"60878de9-f704-4e22-9e45-fa70d8fe950c",
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES ("e6b23e3f-9930-40ea-8c25-ae8903d2c479",
	"4169d6d5-4f99-4e6d-a77d-d893ad2d4a68",
	"db7b29f0-008d-4623-8afc-48dcb87b4eeb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("60878de9-f704-4e22-9e45-fa70d8fe950c",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"62951d73-c085-45e0-a556-53efacbb68db",
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES ("60878de9-f704-4e22-9e45-fa70d8fe950c",
	12,
	16,
	12,
	6,
	"00000000-0000-0000-0000-000000000000",
	"afc9f58d-36f6-4b7e-bfc3-2278b1000270",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("62951d73-c085-45e0-a556-53efacbb68db",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	"00000000-0000-0000-0000-000000000000",
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES ("62951d73-c085-45e0-a556-53efacbb68db",
	13,
	24,
	13,
	6,
	"00000000-0000-0000-0000-000000000000",
	"447735aa-6a67-4544-be85-030ec17de316",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("8edec24f-c7ec-4736-ab71-f3b5266820c1",
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_TVL
	VALUES ("8edec24f-c7ec-4736-ab71-f3b5266820c1",
	"9138103e-6e80-46ac-abb6-f2ecebb904bb");
INSERT INTO V_VAL
	VALUES ("bccbd9ee-57e1-450c-9009-ea8bdea5d0c4",
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_BRV
	VALUES ("bccbd9ee-57e1-450c-9009-ea8bdea5d0c4",
	"26d40e8d-6597-4e31-8685-2511abd21e19",
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES ("f5e59b3d-36a8-45b8-a49f-efb1b3c04be2",
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_IRF
	VALUES ("f5e59b3d-36a8-45b8-a49f-efb1b3c04be2",
	"8c461d2f-a803-42ac-a98a-e68b92c3d68b");
INSERT INTO V_VAL
	VALUES ("f3330f3d-899d-4a43-9e81-304283407a30",
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_AVL
	VALUES ("f3330f3d-899d-4a43-9e81-304283407a30",
	"f5e59b3d-36a8-45b8-a49f-efb1b3c04be2",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"ade46ae9-a417-45e1-b6ea-48f9489c0e4e");
INSERT INTO V_PAR
	VALUES ("f3330f3d-899d-4a43-9e81-304283407a30",
	"00000000-0000-0000-0000-000000000000",
	"bccbd9ee-57e1-450c-9009-ea8bdea5d0c4",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	2,
	37);
INSERT INTO V_VAL
	VALUES ("8e81b6f7-200f-4e60-9236-dad019f2f9ea",
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_IRF
	VALUES ("8e81b6f7-200f-4e60-9236-dad019f2f9ea",
	"8c461d2f-a803-42ac-a98a-e68b92c3d68b");
INSERT INTO V_VAL
	VALUES ("8e4ead49-12c8-4140-a0c8-225447fc3f0c",
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_IRF
	VALUES ("8e4ead49-12c8-4140-a0c8-225447fc3f0c",
	"51f0c58b-055d-487f-ac0d-9e36bd565762");
INSERT INTO V_VAL
	VALUES ("52dc1096-a905-4160-8a4b-54230d8f3b42",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_UNY
	VALUES ("52dc1096-a905-4160-8a4b-54230d8f3b42",
	"8e4ead49-12c8-4140-a0c8-225447fc3f0c",
	'empty');
INSERT INTO V_VAL
	VALUES ("db7b29f0-008d-4623-8afc-48dcb87b4eeb",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315");
INSERT INTO V_UNY
	VALUES ("db7b29f0-008d-4623-8afc-48dcb87b4eeb",
	"52dc1096-a905-4160-8a4b-54230d8f3b42",
	'not');
INSERT INTO V_VAR
	VALUES ("9138103e-6e80-46ac-abb6-f2ecebb904bb",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	'cancelSucceeded',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("9138103e-6e80-46ac-abb6-f2ecebb904bb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("8c461d2f-a803-42ac-a98a-e68b92c3d68b",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("8c461d2f-a803-42ac-a98a-e68b92c3d68b",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("51f0c58b-055d-487f-ac0d-9e36bd565762",
	"9a28770c-0147-44f3-aa8a-30fe48dd1315",
	'executingGoal',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("51f0c58b-055d-487f-ac0d-9e36bd565762",
	0,
	"472a759d-5701-4af4-9f68-7813a11ee4e7");
INSERT INTO ACT_BLK
	VALUES ("4169d6d5-4f99-4e6d-a77d-d893ad2d4a68",
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"32596f92-0591-48a0-b227-31072f937228",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("abeec553-d889-4b62-ba01-d350f5b280c2",
	"4169d6d5-4f99-4e6d-a77d-d893ad2d4a68",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES ("abeec553-d889-4b62-ba01-d350f5b280c2",
	1,
	0,
	8,
	12,
	8,
	18,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("abeec553-d889-4b62-ba01-d350f5b280c2");
INSERT INTO E_GSME
	VALUES ("abeec553-d889-4b62-ba01-d350f5b280c2",
	"b0acceb3-82b5-42d7-8455-38432a607ed8");
INSERT INTO E_GEN
	VALUES ("abeec553-d889-4b62-ba01-d350f5b280c2",
	"51f0c58b-055d-487f-ac0d-9e36bd565762");
INSERT INTO O_TFR
	VALUES ("0918165c-7146-4bcd-9308-96dc9f6e5fe3",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	'initialize',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	"d7c24974-84f7-4f6d-b4ca-3199f59841fd");
INSERT INTO ACT_OPB
	VALUES ("65c48f9f-0a83-4166-924d-d70c2d8e5c1a",
	"0918165c-7146-4bcd-9308-96dc9f6e5fe3");
INSERT INTO ACT_ACT
	VALUES ("65c48f9f-0a83-4166-924d-d70c2d8e5c1a",
	'operation',
	0,
	"a6676fb5-3131-428e-b6a8-8a1311b75d97",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::initialize',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a6676fb5-3131-428e-b6a8-8a1311b75d97",
	0,
	0,
	0,
	'',
	'',
	'',
	3,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"65c48f9f-0a83-4166-924d-d70c2d8e5c1a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8970861f-db8f-4a97-a0b3-8016665b03e0",
	"a6676fb5-3131-428e-b6a8-8a1311b75d97",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES ("8970861f-db8f-4a97-a0b3-8016665b03e0",
	"a6b7c9f0-919a-4a9a-b9e7-cd7b70debb3a",
	"c5e98fec-83a4-4ffe-8f8e-506f78d3ae33",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("d3d7e792-7ed6-4671-a260-75ebf500203b",
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"a6676fb5-3131-428e-b6a8-8a1311b75d97");
INSERT INTO V_IRF
	VALUES ("d3d7e792-7ed6-4671-a260-75ebf500203b",
	"d5b7fa84-0ba5-4a42-bb7e-d112551c8009");
INSERT INTO V_VAL
	VALUES ("c5e98fec-83a4-4ffe-8f8e-506f78d3ae33",
	1,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a6676fb5-3131-428e-b6a8-8a1311b75d97");
INSERT INTO V_AVL
	VALUES ("c5e98fec-83a4-4ffe-8f8e-506f78d3ae33",
	"d3d7e792-7ed6-4671-a260-75ebf500203b",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("a6b7c9f0-919a-4a9a-b9e7-cd7b70debb3a",
	0,
	0,
	3,
	13,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a6676fb5-3131-428e-b6a8-8a1311b75d97");
INSERT INTO V_LIN
	VALUES ("a6b7c9f0-919a-4a9a-b9e7-cd7b70debb3a",
	'0');
INSERT INTO V_VAR
	VALUES ("d5b7fa84-0ba5-4a42-bb7e-d112551c8009",
	"a6676fb5-3131-428e-b6a8-8a1311b75d97",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("d5b7fa84-0ba5-4a42-bb7e-d112551c8009",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_NBATTR
	VALUES ("594cdbd6-0657-4a1f-bc6e-c65e4fbc27d5",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_BATTR
	VALUES ("594cdbd6-0657-4a1f-bc6e-c65e4fbc27d5",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_ATTR
	VALUES ("594cdbd6-0657-4a1f-bc6e-c65e4fbc27d5",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"00000000-0000-0000-0000-000000000000",
	'current_state',
	'',
	'',
	'current_state',
	0,
	"ba5eda7a-def5-0000-0000-000000000006",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("555f4932-c865-42b3-aa2d-a8c2ee52f92c",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_BATTR
	VALUES ("555f4932-c865-42b3-aa2d-a8c2ee52f92c",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_ATTR
	VALUES ("555f4932-c865-42b3-aa2d-a8c2ee52f92c",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"594cdbd6-0657-4a1f-bc6e-c65e4fbc27d5",
	'time',
	'Number of seconds elapsed during the associated workout session.
Time elapses only when this timer is running.',
	'',
	'time',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("ade46ae9-a417-45e1-b6ea-48f9489c0e4e",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_BATTR
	VALUES ("ade46ae9-a417-45e1-b6ea-48f9489c0e4e",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_ATTR
	VALUES ("ade46ae9-a417-45e1-b6ea-48f9489c0e4e",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c",
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_ID
	VALUES (1,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO O_ID
	VALUES (2,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SM_ISM
	VALUES ("baab9d24-551e-4156-b973-11c5e573caaa",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SM_SM
	VALUES ("baab9d24-551e-4156-b973-11c5e573caaa",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_LEVT
	VALUES ("3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES ("e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES ("caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EIGN
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EIGN
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("dddb269d-95e7-495e-b665-3ef22bc963b8",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"ace35a6d-ec19-4aeb-82b1-4788e898be9f");
INSERT INTO SM_AH
	VALUES ("dddb269d-95e7-495e-b665-3ef22bc963b8",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("dddb269d-95e7-495e-b665-3ef22bc963b8",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'// Reset the session
select one session related by self->WorkoutSession[R8.''acts as the stopwatch for''];
session.reset();

// Update the UI.
send UI::setTime(time: self.time);
select one display related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->
  Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	'');
INSERT INTO ACT_SAB
	VALUES ("9fb2f4a7-f416-4169-bbca-3a30dfd4ae92",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"dddb269d-95e7-495e-b665-3ef22bc963b8");
INSERT INTO ACT_ACT
	VALUES ("9fb2f4a7-f416-4169-bbca-3a30dfd4ae92",
	'state',
	0,
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::stopped',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5ba5546c-6d65-40c4-8530-a857f686606f",
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	10,
	1,
	9,
	3,
	0,
	0,
	9,
	11,
	9,
	14,
	0,
	0,
	0,
	"9fb2f4a7-f416-4169-bbca-3a30dfd4ae92",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4df39597-4cfc-4bc6-a698-a0422f40ed92",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"c98c6bc5-856a-43d8-828e-cce3b8510706",
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES ("4df39597-4cfc-4bc6-a698-a0422f40ed92",
	"38a3cc24-7672-4a54-9433-76e13eca19dc",
	1,
	'one',
	"77e0ff6f-67f1-43cc-a5ba-05fed9a600ac");
INSERT INTO ACT_SR
	VALUES ("4df39597-4cfc-4bc6-a698-a0422f40ed92");
INSERT INTO ACT_LNK
	VALUES ("99fbb11b-9b9a-4be6-9834-d9b32e93a65a",
	'''acts as the stopwatch for''',
	"4df39597-4cfc-4bc6-a698-a0422f40ed92",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"00000000-0000-0000-0000-000000000000",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES ("c98c6bc5-856a-43d8-828e-cce3b8510706",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"0f16f31e-3d04-4313-8eaa-a9ba2eefca51",
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES ("c98c6bc5-856a-43d8-828e-cce3b8510706",
	"d02a7072-d48a-4b1e-836a-d5372e553f17",
	"38a3cc24-7672-4a54-9433-76e13eca19dc",
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("0f16f31e-3d04-4313-8eaa-a9ba2eefca51",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"615af385-2b9e-464b-90ae-32d9b80122ad",
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES ("0f16f31e-3d04-4313-8eaa-a9ba2eefca51",
	6,
	10,
	6,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0a7e1668-6868-4d4d-bb77-5e5f95f9ba70",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("615af385-2b9e-464b-90ae-32d9b80122ad",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"8777acbb-38d1-4148-aaa2-c65a1afc7938",
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES ("615af385-2b9e-464b-90ae-32d9b80122ad",
	"fc7bf0ee-55eb-4bed-b855-0ae7dc15f5dc",
	1,
	'one',
	"99d47d8b-6137-48c3-b210-f6ec2467a56f");
INSERT INTO ACT_SR
	VALUES ("615af385-2b9e-464b-90ae-32d9b80122ad");
INSERT INTO ACT_LNK
	VALUES ("cbdc2ca5-d147-4f45-bf6c-9977f7ff195b",
	'''acts as the stopwatch for''',
	"615af385-2b9e-464b-90ae-32d9b80122ad",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"c00dbce8-ba39-4f8f-b3a4-fa7cfbd50a51",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES ("c00dbce8-ba39-4f8f-b3a4-fa7cfbd50a51",
	'''current status indicated on''',
	"00000000-0000-0000-0000-000000000000",
	"6c5ddb2e-13fd-4035-a7c9-2589b05cea6d",
	"00000000-0000-0000-0000-000000000000",
	2,
	"ff85d606-fe7f-44c1-9258-266ca776b55e",
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES ("8777acbb-38d1-4148-aaa2-c65a1afc7938",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	"00000000-0000-0000-0000-000000000000",
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES ("8777acbb-38d1-4148-aaa2-c65a1afc7938",
	1,
	0,
	10,
	10,
	10,
	19,
	9,
	3,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("8777acbb-38d1-4148-aaa2-c65a1afc7938");
INSERT INTO E_GSME
	VALUES ("8777acbb-38d1-4148-aaa2-c65a1afc7938",
	"75f74b4f-ac78-4e4c-9f27-558b8cdd62ea");
INSERT INTO E_GEN
	VALUES ("8777acbb-38d1-4148-aaa2-c65a1afc7938",
	"fc7bf0ee-55eb-4bed-b855-0ae7dc15f5dc");
INSERT INTO V_VAL
	VALUES ("77e0ff6f-67f1-43cc-a5ba-05fed9a600ac",
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"5ba5546c-6d65-40c4-8530-a857f686606f");
INSERT INTO V_IRF
	VALUES ("77e0ff6f-67f1-43cc-a5ba-05fed9a600ac",
	"7fc3b59b-9e13-4578-96af-8e41c4c6cd8f");
INSERT INTO V_VAL
	VALUES ("4a46bbcf-2538-4485-b9b2-bdd5cfb80e0e",
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"5ba5546c-6d65-40c4-8530-a857f686606f");
INSERT INTO V_IRF
	VALUES ("4a46bbcf-2538-4485-b9b2-bdd5cfb80e0e",
	"7fc3b59b-9e13-4578-96af-8e41c4c6cd8f");
INSERT INTO V_VAL
	VALUES ("34586b6e-1d93-41bd-9280-a7bbe3e56d31",
	0,
	0,
	6,
	29,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"5ba5546c-6d65-40c4-8530-a857f686606f");
INSERT INTO V_AVL
	VALUES ("34586b6e-1d93-41bd-9280-a7bbe3e56d31",
	"4a46bbcf-2538-4485-b9b2-bdd5cfb80e0e",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_PAR
	VALUES ("34586b6e-1d93-41bd-9280-a7bbe3e56d31",
	"0f16f31e-3d04-4313-8eaa-a9ba2eefca51",
	"00000000-0000-0000-0000-000000000000",
	'time',
	"00000000-0000-0000-0000-000000000000",
	6,
	18);
INSERT INTO V_VAL
	VALUES ("99d47d8b-6137-48c3-b210-f6ec2467a56f",
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"5ba5546c-6d65-40c4-8530-a857f686606f");
INSERT INTO V_IRF
	VALUES ("99d47d8b-6137-48c3-b210-f6ec2467a56f",
	"7fc3b59b-9e13-4578-96af-8e41c4c6cd8f");
INSERT INTO V_VAR
	VALUES ("38a3cc24-7672-4a54-9433-76e13eca19dc",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	'session',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("38a3cc24-7672-4a54-9433-76e13eca19dc",
	0,
	"d132a71c-3fa1-4589-bcec-418a8798e25b");
INSERT INTO V_VAR
	VALUES ("7fc3b59b-9e13-4578-96af-8e41c4c6cd8f",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7fc3b59b-9e13-4578-96af-8e41c4c6cd8f",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("fc7bf0ee-55eb-4bed-b855-0ae7dc15f5dc",
	"5ba5546c-6d65-40c4-8530-a857f686606f",
	'display',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("fc7bf0ee-55eb-4bed-b855-0ae7dc15f5dc",
	0,
	"ff85d606-fe7f-44c1-9258-266ca776b55e");
INSERT INTO SM_STATE
	VALUES ("056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("833ca1cd-d76a-481c-9831-0a3a0be24302",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a");
INSERT INTO SM_AH
	VALUES ("833ca1cd-d76a-481c-9831-0a3a0be24302",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("833ca1cd-d76a-481c-9831-0a3a0be24302",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES ("83c26727-a41b-4f2f-8d60-e0fdca4cb550",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"833ca1cd-d76a-481c-9831-0a3a0be24302");
INSERT INTO ACT_ACT
	VALUES ("83c26727-a41b-4f2f-8d60-e0fdca4cb550",
	'state',
	0,
	"a7b2175a-f1ac-4986-baae-3b015a4bdfd9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::running',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a7b2175a-f1ac-4986-baae-3b015a4bdfd9",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"83c26727-a41b-4f2f-8d60-e0fdca4cb550",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_STATE
	VALUES ("035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES ("035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EIGN
	VALUES ("035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("ddd4b5f5-0332-4206-857f-88689e17d642",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"035a9f72-02fe-4d06-87ee-a0aaedefe227");
INSERT INTO SM_AH
	VALUES ("ddd4b5f5-0332-4206-857f-88689e17d642",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("ddd4b5f5-0332-4206-857f-88689e17d642",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES ("09e52ef1-503e-49b8-9e16-958cb0dc2748",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"ddd4b5f5-0332-4206-857f-88689e17d642");
INSERT INTO ACT_ACT
	VALUES ("09e52ef1-503e-49b8-9e16-958cb0dc2748",
	'state',
	0,
	"b19a4619-a4e2-416b-8098-697487cb46c0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer::paused',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b19a4619-a4e2-416b-8098-697487cb46c0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"09e52ef1-503e-49b8-9e16-958cb0dc2748",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("8a9f6834-cd0a-4b4b-88b1-89f4a8b0b869",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("4584ee13-c7b7-4a04-b652-10d5b6c57385",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"8a9f6834-cd0a-4b4b-88b1-89f4a8b0b869");
INSERT INTO SM_AH
	VALUES ("4584ee13-c7b7-4a04-b652-10d5b6c57385",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("4584ee13-c7b7-4a04-b652-10d5b6c57385",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES ("07d569b7-e2ea-45e1-af85-2be13079670c",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"4584ee13-c7b7-4a04-b652-10d5b6c57385");
INSERT INTO ACT_ACT
	VALUES ("07d569b7-e2ea-45e1-af85-2be13079670c",
	'transition',
	0,
	"bf598a97-bf56-4d0b-9f75-bf81dfbabc08",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer1: startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bf598a97-bf56-4d0b-9f75-bf81dfbabc08",
	0,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"07d569b7-e2ea-45e1-af85-2be13079670c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("660eb01a-cb7c-40fa-847e-cff5a4e5d252",
	"bf598a97-bf56-4d0b-9f75-bf81dfbabc08",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES ("660eb01a-cb7c-40fa-847e-cff5a4e5d252",
	"b3e00a41-07dd-4f0a-aa47-e0449139c053",
	"7d949b0c-6754-427f-8900-94e3e14a1a0f",
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES ("7d949b0c-6754-427f-8900-94e3e14a1a0f",
	"bf598a97-bf56-4d0b-9f75-bf81dfbabc08",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7d949b0c-6754-427f-8900-94e3e14a1a0f",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SM_TXN
	VALUES ("8a9f6834-cd0a-4b4b-88b1-89f4a8b0b869",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("d039e492-cdf1-4fea-8687-bbbe5e111eed",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("0b570652-2026-41c0-a143-f8faa04e4403",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"d039e492-cdf1-4fea-8687-bbbe5e111eed");
INSERT INTO SM_AH
	VALUES ("0b570652-2026-41c0-a143-f8faa04e4403",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("0b570652-2026-41c0-a143-f8faa04e4403",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES ("16fad78e-6ba4-4abf-957f-3be0d0cab462",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"0b570652-2026-41c0-a143-f8faa04e4403");
INSERT INTO ACT_ACT
	VALUES ("16fad78e-6ba4-4abf-957f-3be0d0cab462",
	'transition',
	0,
	"ed65e2c8-cffd-4331-87d3-79ea452d4717",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer2: lapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ed65e2c8-cffd-4331-87d3-79ea452d4717",
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	39,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"16fad78e-6ba4-4abf-957f-3be0d0cab462",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0356cd76-394e-4dcc-9b34-34eaf8f8bb70",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717",
	"8a607366-9b6a-427d-b16f-d9aff05e4f94",
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES ("0356cd76-394e-4dcc-9b34-34eaf8f8bb70",
	"a65c5fa8-b27d-48a9-ae05-1cd653e83fdd",
	1,
	'any',
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	1,
	39);
INSERT INTO ACT_SMT
	VALUES ("8a607366-9b6a-427d-b16f-d9aff05e4f94",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES ("8a607366-9b6a-427d-b16f-d9aff05e4f94",
	"402fc6d8-9108-423f-9bcb-ba7448843f17",
	"f2201a8c-ce14-4467-852f-a416081e274c",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("25254ff5-12ad-44b6-ac45-e85be01ae76f",
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717");
INSERT INTO V_IRF
	VALUES ("25254ff5-12ad-44b6-ac45-e85be01ae76f",
	"a65c5fa8-b27d-48a9-ae05-1cd653e83fdd");
INSERT INTO V_VAL
	VALUES ("11693bcb-39ce-4ac0-a803-05ce22c3b945",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717");
INSERT INTO V_UNY
	VALUES ("11693bcb-39ce-4ac0-a803-05ce22c3b945",
	"25254ff5-12ad-44b6-ac45-e85be01ae76f",
	'empty');
INSERT INTO V_VAL
	VALUES ("f2201a8c-ce14-4467-852f-a416081e274c",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717");
INSERT INTO V_UNY
	VALUES ("f2201a8c-ce14-4467-852f-a416081e274c",
	"11693bcb-39ce-4ac0-a803-05ce22c3b945",
	'not');
INSERT INTO V_VAR
	VALUES ("a65c5fa8-b27d-48a9-ae05-1cd653e83fdd",
	"ed65e2c8-cffd-4331-87d3-79ea452d4717",
	'trackLog',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a65c5fa8-b27d-48a9-ae05-1cd653e83fdd",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO ACT_BLK
	VALUES ("402fc6d8-9108-423f-9bcb-ba7448843f17",
	0,
	0,
	0,
	'',
	'',
	'',
	3,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"16fad78e-6ba4-4abf-957f-3be0d0cab462",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("90c3cbf3-6e6b-4577-b47d-71cd3c7b98ef",
	"402fc6d8-9108-423f-9bcb-ba7448843f17",
	"00000000-0000-0000-0000-000000000000",
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES ("90c3cbf3-6e6b-4577-b47d-71cd3c7b98ef",
	"18b8d880-9cef-4b63-8a9e-cc857e074e5c",
	"a65c5fa8-b27d-48a9-ae05-1cd653e83fdd",
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES ("d039e492-cdf1-4fea-8687-bbbe5e111eed",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("5001cc4e-1ab3-40f4-99b8-0bf40aa0a16f",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"e24ded5b-4980-4747-b48d-227859dc94d6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("bca34710-1f59-445c-ad25-9a5174e988f0",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"5001cc4e-1ab3-40f4-99b8-0bf40aa0a16f");
INSERT INTO SM_AH
	VALUES ("bca34710-1f59-445c-ad25-9a5174e988f0",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("bca34710-1f59-445c-ad25-9a5174e988f0",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("c2d5f1b2-e82c-4524-a193-8ff4d2c9096b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"bca34710-1f59-445c-ad25-9a5174e988f0");
INSERT INTO ACT_ACT
	VALUES ("c2d5f1b2-e82c-4524-a193-8ff4d2c9096b",
	'transition',
	0,
	"18a94ad9-5cd3-4e3c-ad5e-83296f36ceed",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer2: lapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("18a94ad9-5cd3-4e3c-ad5e-83296f36ceed",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c2d5f1b2-e82c-4524-a193-8ff4d2c9096b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("5001cc4e-1ab3-40f4-99b8-0bf40aa0a16f",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"ace35a6d-ec19-4aeb-82b1-4788e898be9f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("2f2ee69b-0fa2-4099-9ad1-48b674993392",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("12952d3e-2454-4600-b6e3-d58a0c18f35c",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"2f2ee69b-0fa2-4099-9ad1-48b674993392");
INSERT INTO SM_AH
	VALUES ("12952d3e-2454-4600-b6e3-d58a0c18f35c",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("12952d3e-2454-4600-b6e3-d58a0c18f35c",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES ("bf71a2c7-bcef-4b5b-8a71-b8d63998d82b",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"12952d3e-2454-4600-b6e3-d58a0c18f35c");
INSERT INTO ACT_ACT
	VALUES ("bf71a2c7-bcef-4b5b-8a71-b8d63998d82b",
	'transition',
	0,
	"3839c07c-f390-4e6d-8e8c-53c4e6daf939",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer1: startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3839c07c-f390-4e6d-8e8c-53c4e6daf939",
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bf71a2c7-bcef-4b5b-8a71-b8d63998d82b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("d77b2ea0-8cf1-4099-a372-25a77f8ac580",
	"3839c07c-f390-4e6d-8e8c-53c4e6daf939",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES ("d77b2ea0-8cf1-4099-a372-25a77f8ac580",
	"b3e00a41-07dd-4f0a-aa47-e0449139c053",
	"5341f1be-7e78-459f-b876-f9591f98a0f0",
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES ("5341f1be-7e78-459f-b876-f9591f98a0f0",
	"3839c07c-f390-4e6d-8e8c-53c4e6daf939",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("5341f1be-7e78-459f-b876-f9591f98a0f0",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SM_TXN
	VALUES ("2f2ee69b-0fa2-4099-9ad1-48b674993392",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("7a4fed6e-bda7-480d-9811-e5a973c3b496",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"3a14e1c5-c9c0-45cc-925a-0ee26c2ed30b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("8d08e6a5-d1ec-4c35-96a5-2fdd165b1e7c",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"7a4fed6e-bda7-480d-9811-e5a973c3b496");
INSERT INTO SM_AH
	VALUES ("8d08e6a5-d1ec-4c35-96a5-2fdd165b1e7c",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("8d08e6a5-d1ec-4c35-96a5-2fdd165b1e7c",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES ("bdc6fdcd-25ba-46fb-b8b0-cea0630cbb9e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"8d08e6a5-d1ec-4c35-96a5-2fdd165b1e7c");
INSERT INTO ACT_ACT
	VALUES ("bdc6fdcd-25ba-46fb-b8b0-cea0630cbb9e",
	'transition',
	0,
	"8524bae1-4a1f-4afa-806f-8ef3db440712",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer1: startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8524bae1-4a1f-4afa-806f-8ef3db440712",
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bdc6fdcd-25ba-46fb-b8b0-cea0630cbb9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bf29e87b-6efc-4a1d-81f8-7980a99fcfd1",
	"8524bae1-4a1f-4afa-806f-8ef3db440712",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES ("bf29e87b-6efc-4a1d-81f8-7980a99fcfd1",
	"d7c24974-84f7-4f6d-b4ca-3199f59841fd",
	"974089b8-c63d-439d-9768-ed555639de7b",
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES ("974089b8-c63d-439d-9768-ed555639de7b",
	"8524bae1-4a1f-4afa-806f-8ef3db440712",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("974089b8-c63d-439d-9768-ed555639de7b",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO SM_TXN
	VALUES ("7a4fed6e-bda7-480d-9811-e5a973c3b496",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"035a9f72-02fe-4d06-87ee-a0aaedefe227",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("31f364e7-8fdd-490e-b4e8-4929011d98c9",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"caee742f-7c3a-45b4-9240-86646f43979e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("adb849f0-d041-475b-91ee-697f885eea8e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"31f364e7-8fdd-490e-b4e8-4929011d98c9");
INSERT INTO SM_AH
	VALUES ("adb849f0-d041-475b-91ee-697f885eea8e",
	"baab9d24-551e-4156-b973-11c5e573caaa");
INSERT INTO SM_ACT
	VALUES ("adb849f0-d041-475b-91ee-697f885eea8e",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	1,
	'// Update the stopwatch time.
self.time = self.time + timerPeriod;

// Store a new track point.
select one trackLog related by 
  self->WorkoutSession[R8.''acts as the stopwatch for'']->TrackLog[R4.''captures path in''];
trackLog.addTrackPoint();

// Refresh the user interface.
send UI::setTime(time: self.time);',
	'');
INSERT INTO ACT_TAB
	VALUES ("a22a7657-9c21-4292-8e78-bf0e933a72a2",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"adb849f0-d041-475b-91ee-697f885eea8e");
INSERT INTO ACT_ACT
	VALUES ("a22a7657-9c21-4292-8e78-bf0e933a72a2",
	'transition',
	0,
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	"00000000-0000-0000-0000-000000000000",
	0,
	'WorkoutTimer3: tick',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("34273909-f1e6-478f-8cd7-1587d2553ccf",
	1,
	0,
	0,
	'UI',
	'',
	'',
	10,
	1,
	10,
	6,
	0,
	0,
	6,
	66,
	6,
	69,
	0,
	0,
	0,
	"a22a7657-9c21-4292-8e78-bf0e933a72a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5b847b82-fb16-4b41-b7b2-88b4d9eca4c1",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	"d1ffbbf1-e305-4309-9986-80bcb3d5223e",
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES ("5b847b82-fb16-4b41-b7b2-88b4d9eca4c1",
	"396171dd-1a38-418a-9f48-63fc07765c56",
	"3e8003a2-d393-4793-a9c7-9d699db49995",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d1ffbbf1-e305-4309-9986-80bcb3d5223e",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	"e7b02847-f044-4e9e-9885-4f7489f56265",
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES ("d1ffbbf1-e305-4309-9986-80bcb3d5223e",
	"65d28d57-80f6-47a0-8c13-3dff162c8b77",
	1,
	'one',
	"cde8891c-53d9-4894-b66f-0a3e02920f81");
INSERT INTO ACT_SR
	VALUES ("d1ffbbf1-e305-4309-9986-80bcb3d5223e");
INSERT INTO ACT_LNK
	VALUES ("edfdd5ad-c06f-48d5-ab3f-fc859463dc0a",
	'''acts as the stopwatch for''',
	"d1ffbbf1-e305-4309-9986-80bcb3d5223e",
	"4cb12cb4-0de2-4a4a-8d33-c5ac6344ce49",
	"d32ed3b4-9714-46e7-bb38-c420c3483f05",
	2,
	"d132a71c-3fa1-4589-bcec-418a8798e25b",
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES ("d32ed3b4-9714-46e7-bb38-c420c3483f05",
	'''captures path in''',
	"00000000-0000-0000-0000-000000000000",
	"99e4a650-f0dc-4a28-ae5b-798074ea2539",
	"00000000-0000-0000-0000-000000000000",
	2,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008",
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES ("e7b02847-f044-4e9e-9885-4f7489f56265",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	"cb0c45fc-d981-4ffa-909b-667da6fc71a4",
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES ("e7b02847-f044-4e9e-9885-4f7489f56265",
	"e0ab45a4-d9d2-4db5-8df2-2016134f83f4",
	"65d28d57-80f6-47a0-8c13-3dff162c8b77",
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("cb0c45fc-d981-4ffa-909b-667da6fc71a4",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	"00000000-0000-0000-0000-000000000000",
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES ("cb0c45fc-d981-4ffa-909b-667da6fc71a4",
	10,
	10,
	10,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0a7e1668-6868-4d4d-bb77-5e5f95f9ba70",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("28a85fbe-4a47-421f-bab0-0e8064381363",
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_IRF
	VALUES ("28a85fbe-4a47-421f-bab0-0e8064381363",
	"c3839af6-b52c-4ce6-b735-9917b9a9baa1");
INSERT INTO V_VAL
	VALUES ("3e8003a2-d393-4793-a9c7-9d699db49995",
	1,
	0,
	2,
	6,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_AVL
	VALUES ("3e8003a2-d393-4793-a9c7-9d699db49995",
	"28a85fbe-4a47-421f-bab0-0e8064381363",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("b1223d19-9d9b-4dd7-ad09-1fa1c262ffc7",
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_IRF
	VALUES ("b1223d19-9d9b-4dd7-ad09-1fa1c262ffc7",
	"c3839af6-b52c-4ce6-b735-9917b9a9baa1");
INSERT INTO V_VAL
	VALUES ("bddcd040-3953-43cf-bc86-dc0f59e5af66",
	0,
	0,
	2,
	18,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_AVL
	VALUES ("bddcd040-3953-43cf-bc86-dc0f59e5af66",
	"b1223d19-9d9b-4dd7-ad09-1fa1c262ffc7",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_VAL
	VALUES ("396171dd-1a38-418a-9f48-63fc07765c56",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_BIN
	VALUES ("396171dd-1a38-418a-9f48-63fc07765c56",
	"04e85a77-9386-4b02-a94c-1592c3c7c4e2",
	"bddcd040-3953-43cf-bc86-dc0f59e5af66",
	'+');
INSERT INTO V_VAL
	VALUES ("04e85a77-9386-4b02-a94c-1592c3c7c4e2",
	0,
	0,
	2,
	25,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_SCV
	VALUES ("04e85a77-9386-4b02-a94c-1592c3c7c4e2",
	"834c1629-e5e5-4d60-b6cd-d5972bb29ec6",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("cde8891c-53d9-4894-b66f-0a3e02920f81",
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_IRF
	VALUES ("cde8891c-53d9-4894-b66f-0a3e02920f81",
	"c3839af6-b52c-4ce6-b735-9917b9a9baa1");
INSERT INTO V_VAL
	VALUES ("e4a6c8a0-3ce8-40df-ae8d-15ab8b9f457a",
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_IRF
	VALUES ("e4a6c8a0-3ce8-40df-ae8d-15ab8b9f457a",
	"c3839af6-b52c-4ce6-b735-9917b9a9baa1");
INSERT INTO V_VAL
	VALUES ("98698d3c-20ec-48cc-b86b-83a70354ee31",
	0,
	0,
	10,
	29,
	32,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"34273909-f1e6-478f-8cd7-1587d2553ccf");
INSERT INTO V_AVL
	VALUES ("98698d3c-20ec-48cc-b86b-83a70354ee31",
	"e4a6c8a0-3ce8-40df-ae8d-15ab8b9f457a",
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb",
	"555f4932-c865-42b3-aa2d-a8c2ee52f92c");
INSERT INTO V_PAR
	VALUES ("98698d3c-20ec-48cc-b86b-83a70354ee31",
	"cb0c45fc-d981-4ffa-909b-667da6fc71a4",
	"00000000-0000-0000-0000-000000000000",
	'time',
	"00000000-0000-0000-0000-000000000000",
	10,
	18);
INSERT INTO V_VAR
	VALUES ("c3839af6-b52c-4ce6-b735-9917b9a9baa1",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("c3839af6-b52c-4ce6-b735-9917b9a9baa1",
	0,
	"c03bf5a0-6a60-40b5-95f8-e0f50f8a8dcb");
INSERT INTO V_VAR
	VALUES ("65d28d57-80f6-47a0-8c13-3dff162c8b77",
	"34273909-f1e6-478f-8cd7-1587d2553ccf",
	'trackLog',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("65d28d57-80f6-47a0-8c13-3dff162c8b77",
	0,
	"6a3d017d-021d-4dd4-8e04-cd97c32cd008");
INSERT INTO SM_TXN
	VALUES ("31f364e7-8fdd-490e-b4e8-4929011d98c9",
	"baab9d24-551e-4156-b973-11c5e573caaa",
	"056f54af-f0ea-4fd7-b7c4-c2503ad84b0a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("091860e5-9d80-4dfb-a035-1f8236be72b4",
	1,
	"59f2bbb3-0b4e-4ffa-95ad-ecb6b17b52a4",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	"27739246-8504-4177-85b8-ca5205d5a450",
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("c3fd0a3f-4139-4a90-9067-60efc88d78de",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"00000000-0000-0000-0000-000000000000",
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES ("c3fd0a3f-4139-4a90-9067-60efc88d78de");
INSERT INTO S_ENUM
	VALUES ("3e48843f-0ea9-4021-97ba-72f059cce838",
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_ENUM
	VALUES ("daeeff4f-a248-407a-bc5e-0ff935283686",
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"3e48843f-0ea9-4021-97ba-72f059cce838");
INSERT INTO PE_PE
	VALUES ("581bce01-aba7-4236-a02f-a3833c4b660c",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("581bce01-aba7-4236-a02f-a3833c4b660c",
	"00000000-0000-0000-0000-000000000000",
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES ("581bce01-aba7-4236-a02f-a3833c4b660c");
INSERT INTO S_ENUM
	VALUES ("32cb2c18-4313-4253-a679-2d06b9b050bc",
	'Achieving',
	'The goal is currently being achieved.',
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_ENUM
	VALUES ("65119beb-591b-4c13-bd4b-5e54fe07e151",
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"32cb2c18-4313-4253-a679-2d06b9b050bc");
INSERT INTO S_ENUM
	VALUES ("0ede2949-8a99-4a0a-8873-c5794ad645c8",
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	"581bce01-aba7-4236-a02f-a3833c4b660c",
	"65119beb-591b-4c13-bd4b-5e54fe07e151");
INSERT INTO PE_PE
	VALUES ("7da35691-ac6f-46a8-bd95-7ccf35018bde",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"00000000-0000-0000-0000-000000000000",
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES ("7da35691-ac6f-46a8-bd95-7ccf35018bde");
INSERT INTO S_ENUM
	VALUES ("551f0f2f-8f74-4e3e-967c-a55240214bfc",
	'Distance',
	'A distance-based span is specified in meters.',
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_ENUM
	VALUES ("7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	'Time',
	'A time-based span is specified in seconds.',
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc");
INSERT INTO PE_PE
	VALUES ("59aab52b-8e05-4021-9ffa-99c9b2e1e290",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("59aab52b-8e05-4021-9ffa-99c9b2e1e290",
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES ("5e795bf3-3982-4be9-890f-9ecdb755eae9",
	'evaluationPeriod',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"59aab52b-8e05-4021-9ffa-99c9b2e1e290",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("5e795bf3-3982-4be9-890f-9ecdb755eae9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("5e795bf3-3982-4be9-890f-9ecdb755eae9",
	"ba5eda7a-def5-0000-0000-000000000002",
	'3000000');
INSERT INTO PE_PE
	VALUES ("ff8d8955-c69a-4283-b01d-4c0093d2fa82",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("ff8d8955-c69a-4283-b01d-4c0093d2fa82",
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES ("0655631d-3463-41c1-852f-18163e7722e5",
	'GoalSpecOrigin',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"ff8d8955-c69a-4283-b01d-4c0093d2fa82",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("0655631d-3463-41c1-852f-18163e7722e5",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("0655631d-3463-41c1-852f-18163e7722e5",
	"ba5eda7a-def5-0000-0000-000000000002",
	'1');
INSERT INTO PE_PE
	VALUES ("49173f30-dc2f-407d-af46-da5a33ffe849",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("49173f30-dc2f-407d-af46-da5a33ffe849",
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES ("834c1629-e5e5-4d60-b6cd-d5972bb29ec6",
	'timerPeriod',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"49173f30-dc2f-407d-af46-da5a33ffe849",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("834c1629-e5e5-4d60-b6cd-d5972bb29ec6",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("834c1629-e5e5-4d60-b6cd-d5972bb29ec6",
	"ba5eda7a-def5-0000-0000-000000000002",
	'1');
INSERT INTO PE_PE
	VALUES ("6ba454b7-f830-4852-90be-c404190d9f79",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("6ba454b7-f830-4852-90be-c404190d9f79",
	"00000000-0000-0000-0000-000000000000",
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES ("ec386882-7d62-4531-9c11-614a6852f323",
	"6ba454b7-f830-4852-90be-c404190d9f79",
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES ("ec386882-7d62-4531-9c11-614a6852f323",
	"ba5eda7a-def5-0000-0000-000000000003",
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("558409be-fcf2-4c06-b545-f1e51b5e860f",
	"ec386882-7d62-4531-9c11-614a6852f323",
	"ba5eda7a-def5-0000-0000-000000000003",
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("f6e7531e-6543-401c-9940-2d616e1f9ebc",
	"ec386882-7d62-4531-9c11-614a6852f323",
	"ba5eda7a-def5-0000-0000-000000000003",
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	"7a00024f-d802-4c84-92b0-05a673b3b96d");
INSERT INTO C_PP
	VALUES ("7a00024f-d802-4c84-92b0-05a673b3b96d",
	"ec386882-7d62-4531-9c11-614a6852f323",
	"ba5eda7a-def5-0000-0000-000000000003",
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	"558409be-fcf2-4c06-b545-f1e51b5e860f");
INSERT INTO C_PP
	VALUES ("d529bae5-549a-4962-84e8-719ffe417bca",
	"ec386882-7d62-4531-9c11-614a6852f323",
	"ba5eda7a-def5-0000-0000-000000000003",
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	"f6e7531e-6543-401c-9940-2d616e1f9ebc");
INSERT INTO C_EP
	VALUES ("04d93862-1203-43eb-8312-7c861d5f5af4",
	"6ba454b7-f830-4852-90be-c404190d9f79",
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES ("04d93862-1203-43eb-8312-7c861d5f5af4",
	"ba5eda7a-def5-0000-0000-000000000000",
	'getLocation',
	'',
	0,
	'',
	"ec386882-7d62-4531-9c11-614a6852f323");
INSERT INTO C_PP
	VALUES ("81290362-9b26-42d6-add1-2ba57104957b",
	"04d93862-1203-43eb-8312-7c861d5f5af4",
	"ba5eda7a-def5-0000-0000-000000000003",
	'latitude',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("9a4ff30e-af17-44a4-8273-54da55cb7c46",
	"04d93862-1203-43eb-8312-7c861d5f5af4",
	"ba5eda7a-def5-0000-0000-000000000003",
	'longitude',
	'',
	0,
	'',
	"81290362-9b26-42d6-add1-2ba57104957b");
INSERT INTO C_EP
	VALUES ("e206e531-2ab1-42be-98f4-959b1e49ee9b",
	"6ba454b7-f830-4852-90be-c404190d9f79",
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES ("e206e531-2ab1-42be-98f4-959b1e49ee9b",
	"ba5eda7a-def5-0000-0000-000000000000",
	'registerListener',
	'',
	0,
	'',
	"04d93862-1203-43eb-8312-7c861d5f5af4");
INSERT INTO C_EP
	VALUES ("a4393a60-9cb2-4c2a-9aa4-1f6f96af5414",
	"6ba454b7-f830-4852-90be-c404190d9f79",
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES ("a4393a60-9cb2-4c2a-9aa4-1f6f96af5414",
	"ba5eda7a-def5-0000-0000-000000000000",
	'unregisterListener',
	'',
	0,
	'',
	"e206e531-2ab1-42be-98f4-959b1e49ee9b");
INSERT INTO PE_PE
	VALUES ("9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	"00000000-0000-0000-0000-000000000000",
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES ("8e4e4828-4bea-4e99-83f8-601c9e724d98",
	"9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES ("8e4e4828-4bea-4e99-83f8-601c9e724d98",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setData',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("c80f71ac-ea75-4b40-be92-0fe5b1acadd1",
	"8e4e4828-4bea-4e99-83f8-601c9e724d98",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("ed818372-6ddc-4271-b787-f555a0c9156a",
	"8e4e4828-4bea-4e99-83f8-601c9e724d98",
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	'unit',
	'',
	0,
	'',
	"c80f71ac-ea75-4b40-be92-0fe5b1acadd1");
INSERT INTO C_EP
	VALUES ("3e707b37-f35a-461b-b372-8980d0d2cdec",
	"9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES ("3e707b37-f35a-461b-b372-8980d0d2cdec",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setIndicator',
	'',
	0,
	'',
	"8e4e4828-4bea-4e99-83f8-601c9e724d98");
INSERT INTO C_PP
	VALUES ("6e00fe85-445f-4f40-802b-80a40000c28f",
	"3e707b37-f35a-461b-b372-8980d0d2cdec",
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	'indicator',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("c731d8ea-9417-45f4-98b5-e842dda27f22",
	"9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES ("c731d8ea-9417-45f4-98b5-e842dda27f22",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setTime',
	'',
	0,
	'',
	"3e707b37-f35a-461b-b372-8980d0d2cdec");
INSERT INTO C_PP
	VALUES ("c945e8fb-60b5-4890-8430-ed348de32445",
	"c731d8ea-9417-45f4-98b5-e842dda27f22",
	"ba5eda7a-def5-0000-0000-000000000002",
	'time',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"9f7a799e-28ef-4490-acfc-ca1e7fccc1dd",
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES ("fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"ba5eda7a-def5-0000-0000-000000000000",
	'newGoalSpec',
	'',
	0,
	'',
	"c731d8ea-9417-45f4-98b5-e842dda27f22");
INSERT INTO C_PP
	VALUES ("9d284001-f3bd-4669-b113-699d5db4f1e7",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"ba5eda7a-def5-0000-0000-000000000002",
	'sequenceNumber',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("9fe82b18-7d04-4315-a70d-77bc34a2f2b3",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"ba5eda7a-def5-0000-0000-000000000003",
	'minimum',
	'',
	0,
	'',
	"9d284001-f3bd-4669-b113-699d5db4f1e7");
INSERT INTO C_PP
	VALUES ("78f208c3-40df-4540-a72f-c29adf345fd6",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"ba5eda7a-def5-0000-0000-000000000003",
	'maximum',
	'',
	0,
	'',
	"9fe82b18-7d04-4315-a70d-77bc34a2f2b3");
INSERT INTO C_PP
	VALUES ("388e7af8-2f1d-4cfd-b0c7-6ccd9813ed80",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"ba5eda7a-def5-0000-0000-000000000003",
	'span',
	'',
	0,
	'',
	"78f208c3-40df-4540-a72f-c29adf345fd6");
INSERT INTO C_PP
	VALUES ("0aa0f144-a939-4aa1-851a-a9ec808afa3a",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	'criteriaType',
	'',
	0,
	'',
	"388e7af8-2f1d-4cfd-b0c7-6ccd9813ed80");
INSERT INTO C_PP
	VALUES ("18620033-3470-4af2-9bb5-7b1c40a5dbc1",
	"fa9a0d6d-b4bf-4339-8757-bcd30e80ed1c",
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	'spanType',
	'',
	0,
	'',
	"0aa0f144-a939-4aa1-851a-a9ec808afa3a");
INSERT INTO PE_PE
	VALUES ("9007738f-12e1-4ce4-8729-0f68999a9f22",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("9007738f-12e1-4ce4-8729-0f68999a9f22",
	"00000000-0000-0000-0000-000000000000",
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES ("9f9453b6-fbe7-4d6d-9247-207edd34771c",
	"9007738f-12e1-4ce4-8729-0f68999a9f22",
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES ("9f9453b6-fbe7-4d6d-9247-207edd34771c",
	"ba5eda7a-def5-0000-0000-000000000000",
	'registerListener',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("82608a0b-a7ff-4329-9f6c-f135f923b841",
	"9007738f-12e1-4ce4-8729-0f68999a9f22",
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES ("82608a0b-a7ff-4329-9f6c-f135f923b841",
	"ba5eda7a-def5-0000-0000-000000000000",
	'unregisterListener',
	'',
	0,
	'',
	"9f9453b6-fbe7-4d6d-9247-207edd34771c");
INSERT INTO PE_PE
	VALUES ("2294d152-3889-434a-a890-e09b800b8bac",
	1,
	"091860e5-9d80-4dfb-a035-1f8236be72b4",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("2294d152-3889-434a-a890-e09b800b8bac",
	"00000000-0000-0000-0000-000000000000",
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES ("747f64d3-2623-4a9c-8af8-072db4199b50",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES ("747f64d3-2623-4a9c-8af8-072db4199b50",
	"ba5eda7a-def5-0000-0000-000000000000",
	'heartRateChanged',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("3230540a-731b-4bbc-ad68-78c9ce2af590",
	"747f64d3-2623-4a9c-8af8-072db4199b50",
	"ba5eda7a-def5-0000-0000-000000000002",
	'heartRate',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("774dbed1-d3b5-4841-892c-f70274f7a9a3",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES ("774dbed1-d3b5-4841-892c-f70274f7a9a3",
	"ba5eda7a-def5-0000-0000-000000000000",
	'lapResetPressed',
	'',
	0,
	'',
	"747f64d3-2623-4a9c-8af8-072db4199b50");
INSERT INTO C_EP
	VALUES ("975a2839-bd48-4510-a5e5-ac460f22a496",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES ("975a2839-bd48-4510-a5e5-ac460f22a496",
	"ba5eda7a-def5-0000-0000-000000000000",
	'modePressed',
	'',
	0,
	'',
	"774dbed1-d3b5-4841-892c-f70274f7a9a3");
INSERT INTO C_EP
	VALUES ("861336e9-59a9-48dc-b922-9b8f8f183fbe",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES ("861336e9-59a9-48dc-b922-9b8f8f183fbe",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setTargetPressed',
	'',
	0,
	'',
	"975a2839-bd48-4510-a5e5-ac460f22a496");
INSERT INTO C_EP
	VALUES ("19be0937-ce82-4188-875b-ed4019c9f605",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES ("19be0937-ce82-4188-875b-ed4019c9f605",
	"ba5eda7a-def5-0000-0000-000000000000",
	'startStopPressed',
	'',
	0,
	'',
	"861336e9-59a9-48dc-b922-9b8f8f183fbe");
INSERT INTO C_EP
	VALUES ("f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES ("f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"ba5eda7a-def5-0000-0000-000000000000",
	'newGoalSpec',
	'',
	0,
	'',
	"19be0937-ce82-4188-875b-ed4019c9f605");
INSERT INTO C_PP
	VALUES ("8ce25a88-adbd-4a6e-b20a-9d3bd84a8200",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"ba5eda7a-def5-0000-0000-000000000002",
	'sequenceNumber',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("2e691a3a-ac79-4cf2-a446-d0a8a9e0bb9c",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"ba5eda7a-def5-0000-0000-000000000003",
	'minimum',
	'',
	0,
	'',
	"8ce25a88-adbd-4a6e-b20a-9d3bd84a8200");
INSERT INTO C_PP
	VALUES ("338883fc-9f24-4ad2-818b-8175843fa670",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"ba5eda7a-def5-0000-0000-000000000003",
	'maximum',
	'',
	0,
	'',
	"2e691a3a-ac79-4cf2-a446-d0a8a9e0bb9c");
INSERT INTO C_PP
	VALUES ("50499ac2-0e10-4f84-9584-cd6f2f6f7468",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"ba5eda7a-def5-0000-0000-000000000003",
	'span',
	'',
	0,
	'',
	"338883fc-9f24-4ad2-818b-8175843fa670");
INSERT INTO C_PP
	VALUES ("93d2a1f4-c1b5-4907-959e-3fee29c8e721",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	'criteriaType',
	'',
	0,
	'',
	"50499ac2-0e10-4f84-9584-cd6f2f6f7468");
INSERT INTO C_PP
	VALUES ("cb3691f6-c597-4280-adcb-2ef198674231",
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e",
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	'spanType',
	'',
	0,
	'',
	"93d2a1f4-c1b5-4907-959e-3fee29c8e721");
INSERT INTO C_EP
	VALUES ("36dabbf3-05b9-429d-84f8-64795de0cd36",
	"2294d152-3889-434a-a890-e09b800b8bac",
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES ("36dabbf3-05b9-429d-84f8-64795de0cd36",
	"ba5eda7a-def5-0000-0000-000000000000",
	'lightPressed',
	'',
	0,
	'',
	"f6724049-f89b-44d7-8cf1-c3d358cb1d0e");
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000000",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000000",
	0);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000001",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000001",
	"00000000-0000-0000-0000-000000000000",
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000001",
	1);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000002",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000002",
	"00000000-0000-0000-0000-000000000000",
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000002",
	2);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000003",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000003",
	"00000000-0000-0000-0000-000000000000",
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000003",
	3);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000004",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000004",
	"00000000-0000-0000-0000-000000000000",
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000004",
	4);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000005",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000005",
	"00000000-0000-0000-0000-000000000000",
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000005",
	5);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000006",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000006",
	"00000000-0000-0000-0000-000000000000",
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000006",
	6);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000007",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000007",
	"00000000-0000-0000-0000-000000000000",
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000007",
	7);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000008",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000008",
	"00000000-0000-0000-0000-000000000000",
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000008",
	8);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000009",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000009",
	"00000000-0000-0000-0000-000000000000",
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000009",
	9);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000a",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000a",
	"00000000-0000-0000-0000-000000000000",
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000a",
	10);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000b",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000b",
	"00000000-0000-0000-0000-000000000000",
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000b",
	11);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000c",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000c",
	"00000000-0000-0000-0000-000000000000",
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000c",
	12);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000d",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000d",
	"00000000-0000-0000-0000-000000000000",
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000d",
	13);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000e",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000e",
	"00000000-0000-0000-0000-000000000000",
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000e",
	"ba5eda7a-def5-0000-0000-00000000000b",
	1);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-00000000000f",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000f",
	"00000000-0000-0000-0000-000000000000",
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("ba5eda7a-def5-0000-0000-00000000000f",
	"ba5eda7a-def5-0000-0000-00000000000c",
	3);
INSERT INTO PE_PE
	VALUES ("ba5eda7a-def5-0000-0000-000000000010",
	1,
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ba5eda7a-def5-0000-0000-000000000010",
	"00000000-0000-0000-0000-000000000000",
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("ba5eda7a-def5-0000-0000-000000000010",
	"ba5eda7a-def5-0000-0000-00000000000b",
	2);
INSERT INTO S_DT_PROXY
	VALUES ("fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"00000000-0000-0000-0000-000000000000",
	'Indicator',
	'',
	'',
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("bfcfb13d-2405-4556-ac08-9dcb68fe93cc",
	'Blank',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"00000000-0000-0000-0000-000000000000",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("23d6047d-33fd-4b4b-b9e9-6115aea3ac0d",
	'Up',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b57f0cef-a243-4175-83e7-77765500e5e3",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("a18b7f18-190a-41a6-8d84-5e395a2c3f1b",
	'Down',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"bfcfb13d-2405-4556-ac08-9dcb68fe93cc",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("b57f0cef-a243-4175-83e7-77765500e5e3",
	'Flat',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"a18b7f18-190a-41a6-8d84-5e395a2c3f1b",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("ca42057e-708e-4242-b608-09a079ac0bf3",
	'km',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"00000000-0000-0000-0000-000000000000",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_DT_PROXY
	VALUES ("c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"00000000-0000-0000-0000-000000000000",
	'Unit',
	'',
	'',
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("2480d904-80f2-4e5c-aeda-315e77ae2d0f",
	'meters',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"ca42057e-708e-4242-b608-09a079ac0bf3",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("ad0dca51-be89-4ba8-9be7-cc30caa6a793",
	'kmPerHour',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"da234bff-2f05-4dd4-9ed2-28529c8c4401",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("da234bff-2f05-4dd4-9ed2-28529c8c4401",
	'minPerKm',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"2480d904-80f2-4e5c-aeda-315e77ae2d0f",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("4d653ad9-fc24-4028-8aee-4eaf58f18fef",
	'bpm',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"870750fc-315e-4086-95d1-51f78dd71173",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("65b05d85-4965-43a9-aab2-ec8bbcbbbac3",
	'laps',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"4d653ad9-fc24-4028-8aee-4eaf58f18fef",
	'../../../UI/models/UI/UI/shared/shared.xtuml');
INSERT INTO CNST_SYC_PROXY
	VALUES ("c609bff5-7dec-4682-a7c8-7710322b7e06",
	'SpeedAveragingWindow',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'../../../Location/models/Location/Location/shared/shared.xtuml');
INSERT INTO CNST_SYC_PROXY
	VALUES ("c96b1640-6102-44ec-b2cb-a24e8ad7e00d",
	'SecondsPerHour',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	"c609bff5-7dec-4682-a7c8-7710322b7e06",
	"ba5eda7a-def5-0000-0000-000000000002",
	'../../../Location/models/Location/Location/shared/shared.xtuml');
INSERT INTO CNST_SYC_PROXY
	VALUES ("af9effb5-e43d-410e-b155-15e1773e05f9",
	'HeartRateSamplingPeriod',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"720bef53-1d45-4062-ab64-2a57afd3504f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'../../../HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/shared/shared.xtuml');
INSERT INTO CNST_SYC_PROXY
	VALUES ("8d22cc4c-867e-4172-b0dc-15cc17b4a23c",
	'HeartRateAveragingWindow',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"720bef53-1d45-4062-ab64-2a57afd3504f",
	"af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002",
	'../../../HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/shared/shared.xtuml');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	'UI',
	1);
INSERT INTO EP_PKG
	VALUES ("963063d8-36dc-4252-9d2f-81cac3ef402a",
	"de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	"de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("357ced98-74dc-47a6-83dd-2c0a2a39a465",
	1,
	"963063d8-36dc-4252-9d2f-81cac3ef402a",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("357ced98-74dc-47a6-83dd-2c0a2a39a465",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'UI',
	'Simulates the user interface and has the ability to connect an external GUI
representing the physical watch.

Uses the BridgePoint Java API to connect to an animated version of the watch
while the models are executing in Verifier.

There is also hand-written C code that implments parts of this component to 
allow generated code to connect to the exact same animated watch.',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("78f91d94-ffdc-4a4e-9a26-52143f0d6dbf",
	"357ced98-74dc-47a6-83dd-2c0a2a39a465",
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES ("3f79b183-c5a6-4522-9ec9-147ba89e4c25",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	"00000000-0000-0000-0000-000000000000",
	"78f91d94-ffdc-4a4e-9a26-52143f0d6dbf");
INSERT INTO C_P
	VALUES ("3f79b183-c5a6-4522-9ec9-147ba89e4c25",
	'UI',
	'Unnamed Interface',
	'',
	'UI::UI::UI');
INSERT INTO SPR_PEP
	VALUES ("5e152642-a24b-4a88-bf61-a4fc06dce67e",
	"abcdffbc-005f-4b6a-afe0-35dd9c09251d",
	"3f79b183-c5a6-4522-9ec9-147ba89e4c25");
INSERT INTO SPR_PO
	VALUES ("5e152642-a24b-4a88-bf61-a4fc06dce67e",
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	1);
INSERT INTO ACT_POB
	VALUES ("87eac176-3013-4b2b-9351-fe9ccbbd3e30",
	"5e152642-a24b-4a88-bf61-a4fc06dce67e");
INSERT INTO ACT_ACT
	VALUES ("87eac176-3013-4b2b-9351-fe9ccbbd3e30",
	'interface operation',
	0,
	"59b0d460-92b6-493e-8150-2ea4663f7556",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::UI::setTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("59b0d460-92b6-493e-8150-2ea4663f7556",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"87eac176-3013-4b2b-9351-fe9ccbbd3e30",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c203e635-b08b-46c7-9124-d117d1a076eb",
	"59b0d460-92b6-493e-8150-2ea4663f7556",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_BRG
	VALUES ("c203e635-b08b-46c7-9124-d117d1a076eb",
	"15e6dc44-1a57-4f07-ace4-ca7a1147e83c",
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES ("bc7a4ced-c0b0-4909-b6da-908bdc885283",
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"59b0d460-92b6-493e-8150-2ea4663f7556");
INSERT INTO V_PVL
	VALUES ("bc7a4ced-c0b0-4909-b6da-908bdc885283",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"09d9e9d1-f95a-4541-b8fa-2479c29a7cb2");
INSERT INTO V_PAR
	VALUES ("bc7a4ced-c0b0-4909-b6da-908bdc885283",
	"c203e635-b08b-46c7-9124-d117d1a076eb",
	"00000000-0000-0000-0000-000000000000",
	'time',
	"00000000-0000-0000-0000-000000000000",
	1,
	20);
INSERT INTO SPR_PEP
	VALUES ("4de34fa9-55b9-4b37-b85b-c4defcc185b6",
	"72f33bcf-c0e7-4d11-a546-8ee8249010ea",
	"3f79b183-c5a6-4522-9ec9-147ba89e4c25");
INSERT INTO SPR_PO
	VALUES ("4de34fa9-55b9-4b37-b85b-c4defcc185b6",
	'setData',
	'',
	'if (param.unit == Unit::km)
  GuiBridge::setData(value: param.value, unit: 0);
elif (param.unit == Unit::meters)
  GuiBridge::setData(value: param.value, unit: 1);
elif (param.unit == Unit::minPerKm)
  GuiBridge::setData(value: param.value, unit: 2);
elif (param.unit == Unit::kmPerHour)
  GuiBridge::setData(value: param.value, unit: 3);
elif (param.unit == Unit::miles)
  GuiBridge::setData(value: param.value, unit: 4);
elif (param.unit == Unit::yards)
  GuiBridge::setData(value: param.value, unit: 5);
elif (param.unit == Unit::feet)
  GuiBridge::setData(value: param.value, unit: 6);
elif (param.unit == Unit::minPerMile)
  GuiBridge::setData(value: param.value, unit: 7);
elif (param.unit == Unit::mph)
  GuiBridge::setData(value: param.value, unit: 8);
elif (param.unit == Unit::bpm)
  GuiBridge::setData(value: param.value, unit: 9);
elif (param.unit == Unit::laps)
  GuiBridge::setData(value: param.value, unit: 10);
end if;
',
	1);
INSERT INTO ACT_POB
	VALUES ("f5258042-1f09-44b5-8140-35dbd959fa73",
	"4de34fa9-55b9-4b37-b85b-c4defcc185b6");
INSERT INTO ACT_ACT
	VALUES ("f5258042-1f09-44b5-8140-35dbd959fa73",
	'interface operation',
	0,
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::UI::setData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	0,
	0,
	0,
	'',
	'',
	'',
	21,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	21,
	21,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4b64ec7b-d117-49d6-9b87-d3b0d7bb1623",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_IF
	VALUES ("4b64ec7b-d117-49d6-9b87-d3b0d7bb1623",
	"55e675b3-9b1e-489f-975b-04343333846e",
	"dff6daa5-d423-4af1-8576-7e87478ab695",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ae45affe-8b54-452f-b3ab-e475e48009b8",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI::UI::setData line: 3');
INSERT INTO ACT_EL
	VALUES ("ae45affe-8b54-452f-b3ab-e475e48009b8",
	"fc64118d-6d49-4f4a-b42b-58353eb750da",
	"337bd7ae-2dfc-42e2-aafd-f4cb01eb55e2",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("412b68e9-5781-4ab4-a913-f3e368ca17b7",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'UI::UI::setData line: 5');
INSERT INTO ACT_EL
	VALUES ("412b68e9-5781-4ab4-a913-f3e368ca17b7",
	"2f0c1fcb-6b13-42a9-93d2-5bb342fd620d",
	"8aee6894-a3fc-4081-bb7e-54fd7cecc2b8",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("b308eb1e-d54e-4561-b741-e005b5a914cd",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'UI::UI::setData line: 7');
INSERT INTO ACT_EL
	VALUES ("b308eb1e-d54e-4561-b741-e005b5a914cd",
	"0f90cc10-5010-4729-a011-a54fc314958a",
	"112bbcc5-8036-48b7-a8c7-2583adf15162",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("3f9074aa-6cb2-42c9-bf41-2ada40cb62bc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	9,
	1,
	'UI::UI::setData line: 9');
INSERT INTO ACT_EL
	VALUES ("3f9074aa-6cb2-42c9-bf41-2ada40cb62bc",
	"15ba0856-afc5-4681-8fa8-12bcd11805fa",
	"78085693-3f33-4e11-b4c2-906cf62088d7",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("c118f827-193c-403f-83e0-350aeb432e61",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	11,
	1,
	'UI::UI::setData line: 11');
INSERT INTO ACT_EL
	VALUES ("c118f827-193c-403f-83e0-350aeb432e61",
	"3b885623-4ee5-47ce-a350-68f9e18c4ae7",
	"61a6ca83-ac17-4465-8a58-93c3a0a9681f",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("f4979b8c-3ce5-4b3b-8cd8-5a04fd46f4d0",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	13,
	1,
	'UI::UI::setData line: 13');
INSERT INTO ACT_EL
	VALUES ("f4979b8c-3ce5-4b3b-8cd8-5a04fd46f4d0",
	"e619de59-47be-4c61-bfc7-8a2dbe4e66e4",
	"b67da96f-2f78-48a2-986e-625aba259aee",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("3d00764c-f533-43ca-9c7c-210b51a1904e",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	15,
	1,
	'UI::UI::setData line: 15');
INSERT INTO ACT_EL
	VALUES ("3d00764c-f533-43ca-9c7c-210b51a1904e",
	"e4c55a22-74f9-4541-8b8d-9509746af635",
	"0fef9a91-a202-4df9-8ec2-6535dcac0516",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("c19314e9-a595-496a-8c36-a2ce62476edd",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	17,
	1,
	'UI::UI::setData line: 17');
INSERT INTO ACT_EL
	VALUES ("c19314e9-a595-496a-8c36-a2ce62476edd",
	"57a2cc9b-bf3d-4771-9c04-83960e0687ee",
	"638905ce-ee80-4f45-a540-5f68b55dc208",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("e0ed8732-259c-48b2-8275-5d3afa0f7666",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	19,
	1,
	'UI::UI::setData line: 19');
INSERT INTO ACT_EL
	VALUES ("e0ed8732-259c-48b2-8275-5d3afa0f7666",
	"21b1f6b8-5e84-4da6-852f-e7c1ba99728b",
	"cc269d15-bb8a-444d-b5d6-cc44913c50c9",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO ACT_SMT
	VALUES ("85780bd3-c784-4fd9-b5e6-1dfe116101de",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe",
	"00000000-0000-0000-0000-000000000000",
	21,
	1,
	'UI::UI::setData line: 21');
INSERT INTO ACT_EL
	VALUES ("85780bd3-c784-4fd9-b5e6-1dfe116101de",
	"c00b5b97-4ba5-48fc-85fe-eb1786afd2b6",
	"00dd24d3-b564-4cd9-bf38-3eb209b5d9b6",
	"4b64ec7b-d117-49d6-9b87-d3b0d7bb1623");
INSERT INTO V_VAL
	VALUES ("795cb7e6-552d-4ad8-8405-a1f48fabb3dc",
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("795cb7e6-552d-4ad8-8405-a1f48fabb3dc",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("dff6daa5-d423-4af1-8576-7e87478ab695",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("dff6daa5-d423-4af1-8576-7e87478ab695",
	"91ac1c12-8acd-437e-bda0-7c3f57d98f86",
	"795cb7e6-552d-4ad8-8405-a1f48fabb3dc",
	'==');
INSERT INTO V_VAL
	VALUES ("91ac1c12-8acd-437e-bda0-7c3f57d98f86",
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("91ac1c12-8acd-437e-bda0-7c3f57d98f86",
	"ca42057e-708e-4242-b608-09a079ac0bf3",
	1,
	19);
INSERT INTO V_VAL
	VALUES ("8016886d-328d-4287-8b04-ec71cf093a25",
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("8016886d-328d-4287-8b04-ec71cf093a25",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("337bd7ae-2dfc-42e2-aafd-f4cb01eb55e2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("337bd7ae-2dfc-42e2-aafd-f4cb01eb55e2",
	"67e1f103-2646-4c03-9ba8-2df7521fa83b",
	"8016886d-328d-4287-8b04-ec71cf093a25",
	'==');
INSERT INTO V_VAL
	VALUES ("67e1f103-2646-4c03-9ba8-2df7521fa83b",
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("67e1f103-2646-4c03-9ba8-2df7521fa83b",
	"2480d904-80f2-4e5c-aeda-315e77ae2d0f",
	3,
	21);
INSERT INTO V_VAL
	VALUES ("18c796a9-a949-4ee1-8c1f-8889aa0bb04e",
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("18c796a9-a949-4ee1-8c1f-8889aa0bb04e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("8aee6894-a3fc-4081-bb7e-54fd7cecc2b8",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("8aee6894-a3fc-4081-bb7e-54fd7cecc2b8",
	"d7b7c350-ce26-4677-b7e0-7609bf69fa43",
	"18c796a9-a949-4ee1-8c1f-8889aa0bb04e",
	'==');
INSERT INTO V_VAL
	VALUES ("d7b7c350-ce26-4677-b7e0-7609bf69fa43",
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("d7b7c350-ce26-4677-b7e0-7609bf69fa43",
	"da234bff-2f05-4dd4-9ed2-28529c8c4401",
	5,
	21);
INSERT INTO V_VAL
	VALUES ("a970950a-7712-44e1-b923-f1210a8f590f",
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("a970950a-7712-44e1-b923-f1210a8f590f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("112bbcc5-8036-48b7-a8c7-2583adf15162",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("112bbcc5-8036-48b7-a8c7-2583adf15162",
	"e66dd10f-a880-4854-a9dd-95e6f2d321e4",
	"a970950a-7712-44e1-b923-f1210a8f590f",
	'==');
INSERT INTO V_VAL
	VALUES ("e66dd10f-a880-4854-a9dd-95e6f2d321e4",
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("e66dd10f-a880-4854-a9dd-95e6f2d321e4",
	"ad0dca51-be89-4ba8-9be7-cc30caa6a793",
	7,
	21);
INSERT INTO V_VAL
	VALUES ("335f6f8a-0ea8-4147-8298-85f2c2ab7a49",
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("335f6f8a-0ea8-4147-8298-85f2c2ab7a49",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("78085693-3f33-4e11-b4c2-906cf62088d7",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("78085693-3f33-4e11-b4c2-906cf62088d7",
	"053e36e9-32a5-472d-b6c3-8f4408baaaf1",
	"335f6f8a-0ea8-4147-8298-85f2c2ab7a49",
	'==');
INSERT INTO V_VAL
	VALUES ("053e36e9-32a5-472d-b6c3-8f4408baaaf1",
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("053e36e9-32a5-472d-b6c3-8f4408baaaf1",
	"cd5d3b7b-63e4-44ce-84fb-b47d34849a78",
	9,
	21);
INSERT INTO V_VAL
	VALUES ("de61b4f3-a839-412f-a598-13bf38b5fd18",
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("de61b4f3-a839-412f-a598-13bf38b5fd18",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("61a6ca83-ac17-4465-8a58-93c3a0a9681f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("61a6ca83-ac17-4465-8a58-93c3a0a9681f",
	"751f6b7c-0fa3-475f-9160-e11c66d884d6",
	"de61b4f3-a839-412f-a598-13bf38b5fd18",
	'==');
INSERT INTO V_VAL
	VALUES ("751f6b7c-0fa3-475f-9160-e11c66d884d6",
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("751f6b7c-0fa3-475f-9160-e11c66d884d6",
	"f8029676-74de-43b8-9b4e-b576c55b5b5d",
	11,
	21);
INSERT INTO V_VAL
	VALUES ("d1f43dc2-4eb0-47d5-ae9f-25ffeb98641e",
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("d1f43dc2-4eb0-47d5-ae9f-25ffeb98641e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("b67da96f-2f78-48a2-986e-625aba259aee",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("b67da96f-2f78-48a2-986e-625aba259aee",
	"3c93e017-127e-4e2a-9cba-4560869a7787",
	"d1f43dc2-4eb0-47d5-ae9f-25ffeb98641e",
	'==');
INSERT INTO V_VAL
	VALUES ("3c93e017-127e-4e2a-9cba-4560869a7787",
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("3c93e017-127e-4e2a-9cba-4560869a7787",
	"6360b570-dfe0-49aa-a103-95dc96b5bf88",
	13,
	21);
INSERT INTO V_VAL
	VALUES ("3b2aa85a-c01a-401c-bedd-9fc90cfeead4",
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("3b2aa85a-c01a-401c-bedd-9fc90cfeead4",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("0fef9a91-a202-4df9-8ec2-6535dcac0516",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("0fef9a91-a202-4df9-8ec2-6535dcac0516",
	"2990bd00-8f0f-4689-8258-f904dc7b510b",
	"3b2aa85a-c01a-401c-bedd-9fc90cfeead4",
	'==');
INSERT INTO V_VAL
	VALUES ("2990bd00-8f0f-4689-8258-f904dc7b510b",
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("2990bd00-8f0f-4689-8258-f904dc7b510b",
	"50e47af0-9509-4eb0-bb2f-821fedb48b1c",
	15,
	21);
INSERT INTO V_VAL
	VALUES ("52a79c6b-4f5e-4553-b245-0693a30a17cf",
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("52a79c6b-4f5e-4553-b245-0693a30a17cf",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("638905ce-ee80-4f45-a540-5f68b55dc208",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("638905ce-ee80-4f45-a540-5f68b55dc208",
	"bf1f47f2-fe4d-423e-93ab-dbc7eaaf32f6",
	"52a79c6b-4f5e-4553-b245-0693a30a17cf",
	'==');
INSERT INTO V_VAL
	VALUES ("bf1f47f2-fe4d-423e-93ab-dbc7eaaf32f6",
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("bf1f47f2-fe4d-423e-93ab-dbc7eaaf32f6",
	"870750fc-315e-4086-95d1-51f78dd71173",
	17,
	21);
INSERT INTO V_VAL
	VALUES ("da2abf2e-23db-47af-813d-f227dabf7a5c",
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("da2abf2e-23db-47af-813d-f227dabf7a5c",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("cc269d15-bb8a-444d-b5d6-cc44913c50c9",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("cc269d15-bb8a-444d-b5d6-cc44913c50c9",
	"93a9ed39-1523-42bb-829e-3d5dcc59d28a",
	"da2abf2e-23db-47af-813d-f227dabf7a5c",
	'==');
INSERT INTO V_VAL
	VALUES ("93a9ed39-1523-42bb-829e-3d5dcc59d28a",
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("93a9ed39-1523-42bb-829e-3d5dcc59d28a",
	"4d653ad9-fc24-4028-8aee-4eaf58f18fef",
	19,
	21);
INSERT INTO V_VAL
	VALUES ("260012a2-f00f-4f26-9083-765e8e0a15fc",
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_PVL
	VALUES ("260012a2-f00f-4f26-9083-765e8e0a15fc",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8af63c58-f23c-47b6-8c12-d8fb79ca02cf");
INSERT INTO V_VAL
	VALUES ("00dd24d3-b564-4cd9-bf38-3eb209b5d9b6",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_BIN
	VALUES ("00dd24d3-b564-4cd9-bf38-3eb209b5d9b6",
	"41af0465-7e23-4997-81a2-c5a28ec867ea",
	"260012a2-f00f-4f26-9083-765e8e0a15fc",
	'==');
INSERT INTO V_VAL
	VALUES ("41af0465-7e23-4997-81a2-c5a28ec867ea",
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"a7f1d632-4bbc-4e94-aae9-ad7b3f791abe");
INSERT INTO V_LEN
	VALUES ("41af0465-7e23-4997-81a2-c5a28ec867ea",
	"65b05d85-4965-43a9-aab2-ec8bbcbbbac3",
	21,
	21);
INSERT INTO ACT_BLK
	VALUES ("55e675b3-9b1e-489f-975b-04343333846e",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	2,
	3,
	2,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f4292309-0cf6-4df5-957c-3dfa23cbd45d",
	"55e675b3-9b1e-489f-975b-04343333846e",
	"00000000-0000-0000-0000-000000000000",
	2,
	3,
	'UI::UI::setData line: 2');
INSERT INTO ACT_BRG
	VALUES ("f4292309-0cf6-4df5-957c-3dfa23cbd45d",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES ("f26d0d2b-894e-4883-a1e1-8d9e16aa5468",
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"55e675b3-9b1e-489f-975b-04343333846e");
INSERT INTO V_PVL
	VALUES ("f26d0d2b-894e-4883-a1e1-8d9e16aa5468",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("f26d0d2b-894e-4883-a1e1-8d9e16aa5468",
	"f4292309-0cf6-4df5-957c-3dfa23cbd45d",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"0c347c68-853e-49af-9f94-bc9852a818fa",
	2,
	22);
INSERT INTO V_VAL
	VALUES ("0c347c68-853e-49af-9f94-bc9852a818fa",
	0,
	0,
	2,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"55e675b3-9b1e-489f-975b-04343333846e");
INSERT INTO V_LIN
	VALUES ("0c347c68-853e-49af-9f94-bc9852a818fa",
	'0');
INSERT INTO V_PAR
	VALUES ("0c347c68-853e-49af-9f94-bc9852a818fa",
	"f4292309-0cf6-4df5-957c-3dfa23cbd45d",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	2,
	42);
INSERT INTO ACT_BLK
	VALUES ("fc64118d-6d49-4f4a-b42b-58353eb750da",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	4,
	3,
	4,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c5a432ce-ca7a-431b-8562-0268ce0ecbcd",
	"fc64118d-6d49-4f4a-b42b-58353eb750da",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'UI::UI::setData line: 4');
INSERT INTO ACT_BRG
	VALUES ("c5a432ce-ca7a-431b-8562-0268ce0ecbcd",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES ("62c96db7-bb87-454e-a3d4-669925acdf65",
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"fc64118d-6d49-4f4a-b42b-58353eb750da");
INSERT INTO V_PVL
	VALUES ("62c96db7-bb87-454e-a3d4-669925acdf65",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("62c96db7-bb87-454e-a3d4-669925acdf65",
	"c5a432ce-ca7a-431b-8562-0268ce0ecbcd",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"79596e69-2b35-4cb5-82ee-e57409d58f08",
	4,
	22);
INSERT INTO V_VAL
	VALUES ("79596e69-2b35-4cb5-82ee-e57409d58f08",
	0,
	0,
	4,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"fc64118d-6d49-4f4a-b42b-58353eb750da");
INSERT INTO V_LIN
	VALUES ("79596e69-2b35-4cb5-82ee-e57409d58f08",
	'1');
INSERT INTO V_PAR
	VALUES ("79596e69-2b35-4cb5-82ee-e57409d58f08",
	"c5a432ce-ca7a-431b-8562-0268ce0ecbcd",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	4,
	42);
INSERT INTO ACT_BLK
	VALUES ("2f0c1fcb-6b13-42a9-93d2-5bb342fd620d",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	6,
	3,
	6,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1d99616d-58f3-4df1-bc32-06487ffdc77f",
	"2f0c1fcb-6b13-42a9-93d2-5bb342fd620d",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'UI::UI::setData line: 6');
INSERT INTO ACT_BRG
	VALUES ("1d99616d-58f3-4df1-bc32-06487ffdc77f",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES ("794f05c0-f5c8-4699-bea2-866ab9784484",
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"2f0c1fcb-6b13-42a9-93d2-5bb342fd620d");
INSERT INTO V_PVL
	VALUES ("794f05c0-f5c8-4699-bea2-866ab9784484",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("794f05c0-f5c8-4699-bea2-866ab9784484",
	"1d99616d-58f3-4df1-bc32-06487ffdc77f",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"65973539-f0c0-4f3f-b8ac-414564e34384",
	6,
	22);
INSERT INTO V_VAL
	VALUES ("65973539-f0c0-4f3f-b8ac-414564e34384",
	0,
	0,
	6,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"2f0c1fcb-6b13-42a9-93d2-5bb342fd620d");
INSERT INTO V_LIN
	VALUES ("65973539-f0c0-4f3f-b8ac-414564e34384",
	'2');
INSERT INTO V_PAR
	VALUES ("65973539-f0c0-4f3f-b8ac-414564e34384",
	"1d99616d-58f3-4df1-bc32-06487ffdc77f",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	6,
	42);
INSERT INTO ACT_BLK
	VALUES ("0f90cc10-5010-4729-a011-a54fc314958a",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	8,
	3,
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("37784cd5-f969-41ec-91e5-f0ecbd57f54d",
	"0f90cc10-5010-4729-a011-a54fc314958a",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'UI::UI::setData line: 8');
INSERT INTO ACT_BRG
	VALUES ("37784cd5-f969-41ec-91e5-f0ecbd57f54d",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES ("ed1d3202-e680-4d3e-b7a4-d1645b98b9e2",
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"0f90cc10-5010-4729-a011-a54fc314958a");
INSERT INTO V_PVL
	VALUES ("ed1d3202-e680-4d3e-b7a4-d1645b98b9e2",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("ed1d3202-e680-4d3e-b7a4-d1645b98b9e2",
	"37784cd5-f969-41ec-91e5-f0ecbd57f54d",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"6499bd94-9b63-4d36-9d64-68cd1cbc6492",
	8,
	22);
INSERT INTO V_VAL
	VALUES ("6499bd94-9b63-4d36-9d64-68cd1cbc6492",
	0,
	0,
	8,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"0f90cc10-5010-4729-a011-a54fc314958a");
INSERT INTO V_LIN
	VALUES ("6499bd94-9b63-4d36-9d64-68cd1cbc6492",
	'3');
INSERT INTO V_PAR
	VALUES ("6499bd94-9b63-4d36-9d64-68cd1cbc6492",
	"37784cd5-f969-41ec-91e5-f0ecbd57f54d",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	8,
	42);
INSERT INTO ACT_BLK
	VALUES ("15ba0856-afc5-4681-8fa8-12bcd11805fa",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	10,
	3,
	10,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ea6c727a-0c74-45f8-a55b-ea59818710cf",
	"15ba0856-afc5-4681-8fa8-12bcd11805fa",
	"00000000-0000-0000-0000-000000000000",
	10,
	3,
	'UI::UI::setData line: 10');
INSERT INTO ACT_BRG
	VALUES ("ea6c727a-0c74-45f8-a55b-ea59818710cf",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES ("5db3b04a-63b8-462f-9668-0d33641d8818",
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"15ba0856-afc5-4681-8fa8-12bcd11805fa");
INSERT INTO V_PVL
	VALUES ("5db3b04a-63b8-462f-9668-0d33641d8818",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("5db3b04a-63b8-462f-9668-0d33641d8818",
	"ea6c727a-0c74-45f8-a55b-ea59818710cf",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"d1291e6c-a6b0-46d4-bc44-aa2d1eb63785",
	10,
	22);
INSERT INTO V_VAL
	VALUES ("d1291e6c-a6b0-46d4-bc44-aa2d1eb63785",
	0,
	0,
	10,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"15ba0856-afc5-4681-8fa8-12bcd11805fa");
INSERT INTO V_LIN
	VALUES ("d1291e6c-a6b0-46d4-bc44-aa2d1eb63785",
	'4');
INSERT INTO V_PAR
	VALUES ("d1291e6c-a6b0-46d4-bc44-aa2d1eb63785",
	"ea6c727a-0c74-45f8-a55b-ea59818710cf",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	10,
	42);
INSERT INTO ACT_BLK
	VALUES ("3b885623-4ee5-47ce-a350-68f9e18c4ae7",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	12,
	3,
	12,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f5b1dd1c-4a15-4b5d-8f6c-a099ed4f2673",
	"3b885623-4ee5-47ce-a350-68f9e18c4ae7",
	"00000000-0000-0000-0000-000000000000",
	12,
	3,
	'UI::UI::setData line: 12');
INSERT INTO ACT_BRG
	VALUES ("f5b1dd1c-4a15-4b5d-8f6c-a099ed4f2673",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES ("208cadda-95f4-47c0-bbcc-b831ad3158fb",
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"3b885623-4ee5-47ce-a350-68f9e18c4ae7");
INSERT INTO V_PVL
	VALUES ("208cadda-95f4-47c0-bbcc-b831ad3158fb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("208cadda-95f4-47c0-bbcc-b831ad3158fb",
	"f5b1dd1c-4a15-4b5d-8f6c-a099ed4f2673",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"561685ca-d12d-41b7-8180-53827bb78809",
	12,
	22);
INSERT INTO V_VAL
	VALUES ("561685ca-d12d-41b7-8180-53827bb78809",
	0,
	0,
	12,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3b885623-4ee5-47ce-a350-68f9e18c4ae7");
INSERT INTO V_LIN
	VALUES ("561685ca-d12d-41b7-8180-53827bb78809",
	'5');
INSERT INTO V_PAR
	VALUES ("561685ca-d12d-41b7-8180-53827bb78809",
	"f5b1dd1c-4a15-4b5d-8f6c-a099ed4f2673",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	12,
	42);
INSERT INTO ACT_BLK
	VALUES ("e619de59-47be-4c61-bfc7-8a2dbe4e66e4",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	14,
	3,
	14,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4231320b-1e08-489e-8263-da9439ca55f3",
	"e619de59-47be-4c61-bfc7-8a2dbe4e66e4",
	"00000000-0000-0000-0000-000000000000",
	14,
	3,
	'UI::UI::setData line: 14');
INSERT INTO ACT_BRG
	VALUES ("4231320b-1e08-489e-8263-da9439ca55f3",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES ("277f5b72-fc2b-435b-b02f-8f5d3ca5188e",
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e619de59-47be-4c61-bfc7-8a2dbe4e66e4");
INSERT INTO V_PVL
	VALUES ("277f5b72-fc2b-435b-b02f-8f5d3ca5188e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("277f5b72-fc2b-435b-b02f-8f5d3ca5188e",
	"4231320b-1e08-489e-8263-da9439ca55f3",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"e72088b4-c262-4e70-a783-b0e32e00a5f8",
	14,
	22);
INSERT INTO V_VAL
	VALUES ("e72088b4-c262-4e70-a783-b0e32e00a5f8",
	0,
	0,
	14,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e619de59-47be-4c61-bfc7-8a2dbe4e66e4");
INSERT INTO V_LIN
	VALUES ("e72088b4-c262-4e70-a783-b0e32e00a5f8",
	'6');
INSERT INTO V_PAR
	VALUES ("e72088b4-c262-4e70-a783-b0e32e00a5f8",
	"4231320b-1e08-489e-8263-da9439ca55f3",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	14,
	42);
INSERT INTO ACT_BLK
	VALUES ("e4c55a22-74f9-4541-8b8d-9509746af635",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	16,
	3,
	16,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c0c76235-86a8-4496-bbe7-bcf7ce5c48d1",
	"e4c55a22-74f9-4541-8b8d-9509746af635",
	"00000000-0000-0000-0000-000000000000",
	16,
	3,
	'UI::UI::setData line: 16');
INSERT INTO ACT_BRG
	VALUES ("c0c76235-86a8-4496-bbe7-bcf7ce5c48d1",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES ("33862e24-e9ec-4043-af45-9dfbb0054cfe",
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e4c55a22-74f9-4541-8b8d-9509746af635");
INSERT INTO V_PVL
	VALUES ("33862e24-e9ec-4043-af45-9dfbb0054cfe",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("33862e24-e9ec-4043-af45-9dfbb0054cfe",
	"c0c76235-86a8-4496-bbe7-bcf7ce5c48d1",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"ec225d5f-f14d-40ff-a2e7-1467beec9df3",
	16,
	22);
INSERT INTO V_VAL
	VALUES ("ec225d5f-f14d-40ff-a2e7-1467beec9df3",
	0,
	0,
	16,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e4c55a22-74f9-4541-8b8d-9509746af635");
INSERT INTO V_LIN
	VALUES ("ec225d5f-f14d-40ff-a2e7-1467beec9df3",
	'7');
INSERT INTO V_PAR
	VALUES ("ec225d5f-f14d-40ff-a2e7-1467beec9df3",
	"c0c76235-86a8-4496-bbe7-bcf7ce5c48d1",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	16,
	42);
INSERT INTO ACT_BLK
	VALUES ("57a2cc9b-bf3d-4771-9c04-83960e0687ee",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	18,
	3,
	18,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("13455fcd-71b4-44f9-b3f7-720a59a7e451",
	"57a2cc9b-bf3d-4771-9c04-83960e0687ee",
	"00000000-0000-0000-0000-000000000000",
	18,
	3,
	'UI::UI::setData line: 18');
INSERT INTO ACT_BRG
	VALUES ("13455fcd-71b4-44f9-b3f7-720a59a7e451",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES ("bb215e72-30e5-4f26-b420-8e3cd4dbd813",
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"57a2cc9b-bf3d-4771-9c04-83960e0687ee");
INSERT INTO V_PVL
	VALUES ("bb215e72-30e5-4f26-b420-8e3cd4dbd813",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("bb215e72-30e5-4f26-b420-8e3cd4dbd813",
	"13455fcd-71b4-44f9-b3f7-720a59a7e451",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"554157e5-b978-43f1-8d94-69d6a3611cf7",
	18,
	22);
INSERT INTO V_VAL
	VALUES ("554157e5-b978-43f1-8d94-69d6a3611cf7",
	0,
	0,
	18,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"57a2cc9b-bf3d-4771-9c04-83960e0687ee");
INSERT INTO V_LIN
	VALUES ("554157e5-b978-43f1-8d94-69d6a3611cf7",
	'8');
INSERT INTO V_PAR
	VALUES ("554157e5-b978-43f1-8d94-69d6a3611cf7",
	"13455fcd-71b4-44f9-b3f7-720a59a7e451",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	18,
	42);
INSERT INTO ACT_BLK
	VALUES ("21b1f6b8-5e84-4da6-852f-e7c1ba99728b",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	20,
	3,
	20,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("36289dcd-ec00-49c1-9bc9-02904dfaeb74",
	"21b1f6b8-5e84-4da6-852f-e7c1ba99728b",
	"00000000-0000-0000-0000-000000000000",
	20,
	3,
	'UI::UI::setData line: 20');
INSERT INTO ACT_BRG
	VALUES ("36289dcd-ec00-49c1-9bc9-02904dfaeb74",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES ("670a30a9-be06-41fb-b4eb-dfc5634d9113",
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"21b1f6b8-5e84-4da6-852f-e7c1ba99728b");
INSERT INTO V_PVL
	VALUES ("670a30a9-be06-41fb-b4eb-dfc5634d9113",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("670a30a9-be06-41fb-b4eb-dfc5634d9113",
	"36289dcd-ec00-49c1-9bc9-02904dfaeb74",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"c786e425-54ed-4970-b23d-5190d6e482d0",
	20,
	22);
INSERT INTO V_VAL
	VALUES ("c786e425-54ed-4970-b23d-5190d6e482d0",
	0,
	0,
	20,
	48,
	48,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"21b1f6b8-5e84-4da6-852f-e7c1ba99728b");
INSERT INTO V_LIN
	VALUES ("c786e425-54ed-4970-b23d-5190d6e482d0",
	'9');
INSERT INTO V_PAR
	VALUES ("c786e425-54ed-4970-b23d-5190d6e482d0",
	"36289dcd-ec00-49c1-9bc9-02904dfaeb74",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	20,
	42);
INSERT INTO ACT_BLK
	VALUES ("c00b5b97-4ba5-48fc-85fe-eb1786afd2b6",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	22,
	3,
	22,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f5258042-1f09-44b5-8140-35dbd959fa73",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5dc1e861-b043-4253-b62b-eb82cc3dc08f",
	"c00b5b97-4ba5-48fc-85fe-eb1786afd2b6",
	"00000000-0000-0000-0000-000000000000",
	22,
	3,
	'UI::UI::setData line: 22');
INSERT INTO ACT_BRG
	VALUES ("5dc1e861-b043-4253-b62b-eb82cc3dc08f",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES ("fff1319d-ce6f-4cd4-bdb8-e71fb7da9c92",
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"c00b5b97-4ba5-48fc-85fe-eb1786afd2b6");
INSERT INTO V_PVL
	VALUES ("fff1319d-ce6f-4cd4-bdb8-e71fb7da9c92",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO V_PAR
	VALUES ("fff1319d-ce6f-4cd4-bdb8-e71fb7da9c92",
	"5dc1e861-b043-4253-b62b-eb82cc3dc08f",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"c41bce6c-2eb8-411f-b1b7-e69844513192",
	22,
	22);
INSERT INTO V_VAL
	VALUES ("c41bce6c-2eb8-411f-b1b7-e69844513192",
	0,
	0,
	22,
	48,
	49,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c00b5b97-4ba5-48fc-85fe-eb1786afd2b6");
INSERT INTO V_LIN
	VALUES ("c41bce6c-2eb8-411f-b1b7-e69844513192",
	'10');
INSERT INTO V_PAR
	VALUES ("c41bce6c-2eb8-411f-b1b7-e69844513192",
	"5dc1e861-b043-4253-b62b-eb82cc3dc08f",
	"00000000-0000-0000-0000-000000000000",
	'unit',
	"00000000-0000-0000-0000-000000000000",
	22,
	42);
INSERT INTO SPR_PEP
	VALUES ("c4babd01-5759-4c4c-b9a0-d5a4c3d04513",
	"56346e44-7226-4c2f-b797-7f288121d196",
	"3f79b183-c5a6-4522-9ec9-147ba89e4c25");
INSERT INTO SPR_PO
	VALUES ("c4babd01-5759-4c4c-b9a0-d5a4c3d04513",
	'startTest',
	'',
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES ("fe6fe432-5c65-41b3-b72d-d7a5fac97855",
	"c4babd01-5759-4c4c-b9a0-d5a4c3d04513");
INSERT INTO ACT_ACT
	VALUES ("fe6fe432-5c65-41b3-b72d-d7a5fac97855",
	'interface operation',
	0,
	"a4ee7175-447f-4803-b3cf-9ec0b4d1c16b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::UI::startTest',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a4ee7175-447f-4803-b3cf-9ec0b4d1c16b",
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"fe6fe432-5c65-41b3-b72d-d7a5fac97855",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7ee67e45-d525-4624-b5c2-261cfb8c9e1e",
	"a4ee7175-447f-4803-b3cf-9ec0b4d1c16b",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES ("7ee67e45-d525-4624-b5c2-261cfb8c9e1e",
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	44,
	1,
	26,
	0,
	0);
INSERT INTO V_PAR
	VALUES ("8cacb892-9160-4fa2-b60f-5c0458ee17de",
	"7ee67e45-d525-4624-b5c2-261cfb8c9e1e",
	"00000000-0000-0000-0000-000000000000",
	'iterations',
	"00000000-0000-0000-0000-000000000000",
	1,
	26);
INSERT INTO E_GES
	VALUES ("7ee67e45-d525-4624-b5c2-261cfb8c9e1e");
INSERT INTO E_GSME
	VALUES ("7ee67e45-d525-4624-b5c2-261cfb8c9e1e",
	"7c19a886-6b60-462f-a2e1-39029457548a");
INSERT INTO E_GEC
	VALUES ("7ee67e45-d525-4624-b5c2-261cfb8c9e1e");
INSERT INTO V_VAL
	VALUES ("8cacb892-9160-4fa2-b60f-5c0458ee17de",
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"a4ee7175-447f-4803-b3cf-9ec0b4d1c16b");
INSERT INTO V_LIN
	VALUES ("8cacb892-9160-4fa2-b60f-5c0458ee17de",
	'2');
INSERT INTO SPR_PEP
	VALUES ("6c06ff05-4611-4f9d-9a46-76de99ef9d00",
	"428ef670-e09d-4432-8b95-d9e7d1ebc6f6",
	"3f79b183-c5a6-4522-9ec9-147ba89e4c25");
INSERT INTO SPR_PO
	VALUES ("6c06ff05-4611-4f9d-9a46-76de99ef9d00",
	'setIndicator',
	'',
	'// Map values of UIDatatypes/Indicator to values defined in WatchGUI.java.
if ( param.indicator == Indicator::Blank  )
  GuiBridge::setIndicator( value: 0 );
elif ( param.indicator == Indicator::Down )
  GuiBridge::setIndicator( value: 1 );
elif ( param.indicator == Indicator::Flat )
  GuiBridge::setIndicator( value: 2 );
elif ( param.indicator == Indicator::Up )
  GuiBridge::setIndicator( value: 3 );
end if;',
	1);
INSERT INTO ACT_POB
	VALUES ("a68e34dc-1025-4c98-a608-0d2cb1765920",
	"6c06ff05-4611-4f9d-9a46-76de99ef9d00");
INSERT INTO ACT_ACT
	VALUES ("a68e34dc-1025-4c98-a608-0d2cb1765920",
	'interface operation',
	0,
	"b43d7592-fa7d-4712-8bba-707a269b4dc0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::UI::setIndicator',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b43d7592-fa7d-4712-8bba-707a269b4dc0",
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	8,
	27,
	0,
	"a68e34dc-1025-4c98-a608-0d2cb1765920",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("53547772-d17d-47f2-a228-0266ea62095f",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'UI::UI::setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES ("53547772-d17d-47f2-a228-0266ea62095f",
	"0df85c8f-e2a8-4fe5-a643-ddcc70865343",
	"5836b14f-e808-4d16-93a4-1f2ef5f52a9d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6aa4ae04-609b-4d6f-8ea0-fafc055e9e17",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'UI::UI::setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES ("6aa4ae04-609b-4d6f-8ea0-fafc055e9e17",
	"e21fe598-dfe1-4c8f-bc37-848c956c60b6",
	"d1c81351-54fd-499e-9fda-7d9aacdf75cb",
	"53547772-d17d-47f2-a228-0266ea62095f");
INSERT INTO ACT_SMT
	VALUES ("f4b6d3fb-ff28-41ab-be33-3b8705d09658",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'UI::UI::setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES ("f4b6d3fb-ff28-41ab-be33-3b8705d09658",
	"c897f2ee-cb5c-4dbd-812b-182423511a3b",
	"9906e56c-02ae-432e-9be4-e30d713415ed",
	"53547772-d17d-47f2-a228-0266ea62095f");
INSERT INTO ACT_SMT
	VALUES ("9c793e7c-f4f8-46c2-b32b-278df068ecac",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0",
	"00000000-0000-0000-0000-000000000000",
	8,
	1,
	'UI::UI::setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES ("9c793e7c-f4f8-46c2-b32b-278df068ecac",
	"b985922a-a8ec-4c9c-8bb7-cf29af6f3c3e",
	"0b1b034f-6378-47d0-b139-2af92ce4c35a",
	"53547772-d17d-47f2-a228-0266ea62095f");
INSERT INTO V_VAL
	VALUES ("35c65f8b-f3b4-4a3d-9b9a-5650cc1e3159",
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_PVL
	VALUES ("35c65f8b-f3b4-4a3d-9b9a-5650cc1e3159",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"9998c92c-5b1a-4f7d-a19d-290f02b88d4e");
INSERT INTO V_VAL
	VALUES ("5836b14f-e808-4d16-93a4-1f2ef5f52a9d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_BIN
	VALUES ("5836b14f-e808-4d16-93a4-1f2ef5f52a9d",
	"a2b6d9e4-3588-406f-88a9-3f773e7831ee",
	"35c65f8b-f3b4-4a3d-9b9a-5650cc1e3159",
	'==');
INSERT INTO V_VAL
	VALUES ("a2b6d9e4-3588-406f-88a9-3f773e7831ee",
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_LEN
	VALUES ("a2b6d9e4-3588-406f-88a9-3f773e7831ee",
	"bfcfb13d-2405-4556-ac08-9dcb68fe93cc",
	2,
	25);
INSERT INTO V_VAL
	VALUES ("cb39c712-826a-4ac5-ac5e-3e99af214541",
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_PVL
	VALUES ("cb39c712-826a-4ac5-ac5e-3e99af214541",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"9998c92c-5b1a-4f7d-a19d-290f02b88d4e");
INSERT INTO V_VAL
	VALUES ("d1c81351-54fd-499e-9fda-7d9aacdf75cb",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_BIN
	VALUES ("d1c81351-54fd-499e-9fda-7d9aacdf75cb",
	"584ba5ba-d52a-42f1-b447-25f78abdda1a",
	"cb39c712-826a-4ac5-ac5e-3e99af214541",
	'==');
INSERT INTO V_VAL
	VALUES ("584ba5ba-d52a-42f1-b447-25f78abdda1a",
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_LEN
	VALUES ("584ba5ba-d52a-42f1-b447-25f78abdda1a",
	"a18b7f18-190a-41a6-8d84-5e395a2c3f1b",
	4,
	27);
INSERT INTO V_VAL
	VALUES ("93107faa-2980-4262-b4ac-51114b0196bd",
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_PVL
	VALUES ("93107faa-2980-4262-b4ac-51114b0196bd",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"9998c92c-5b1a-4f7d-a19d-290f02b88d4e");
INSERT INTO V_VAL
	VALUES ("9906e56c-02ae-432e-9be4-e30d713415ed",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_BIN
	VALUES ("9906e56c-02ae-432e-9be4-e30d713415ed",
	"f6842b9e-f989-454a-af5a-692e77f438c9",
	"93107faa-2980-4262-b4ac-51114b0196bd",
	'==');
INSERT INTO V_VAL
	VALUES ("f6842b9e-f989-454a-af5a-692e77f438c9",
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_LEN
	VALUES ("f6842b9e-f989-454a-af5a-692e77f438c9",
	"b57f0cef-a243-4175-83e7-77765500e5e3",
	6,
	27);
INSERT INTO V_VAL
	VALUES ("e19327bb-a334-44c4-a507-f622457babd0",
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_PVL
	VALUES ("e19327bb-a334-44c4-a507-f622457babd0",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"9998c92c-5b1a-4f7d-a19d-290f02b88d4e");
INSERT INTO V_VAL
	VALUES ("0b1b034f-6378-47d0-b139-2af92ce4c35a",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_BIN
	VALUES ("0b1b034f-6378-47d0-b139-2af92ce4c35a",
	"f8235ffa-31b9-4cf6-8f9f-86b7b06b9760",
	"e19327bb-a334-44c4-a507-f622457babd0",
	'==');
INSERT INTO V_VAL
	VALUES ("f8235ffa-31b9-4cf6-8f9f-86b7b06b9760",
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b43d7592-fa7d-4712-8bba-707a269b4dc0");
INSERT INTO V_LEN
	VALUES ("f8235ffa-31b9-4cf6-8f9f-86b7b06b9760",
	"23d6047d-33fd-4b4b-b9e9-6115aea3ac0d",
	8,
	27);
INSERT INTO ACT_BLK
	VALUES ("0df85c8f-e2a8-4fe5-a643-ddcc70865343",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	3,
	3,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a68e34dc-1025-4c98-a608-0d2cb1765920",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("875ba8d6-bdbb-4068-9761-29af272dd63e",
	"0df85c8f-e2a8-4fe5-a643-ddcc70865343",
	"00000000-0000-0000-0000-000000000000",
	3,
	3,
	'UI::UI::setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES ("875ba8d6-bdbb-4068-9761-29af272dd63e",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES ("a19d538a-7033-4567-8d87-350bc94cd021",
	0,
	0,
	3,
	35,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"0df85c8f-e2a8-4fe5-a643-ddcc70865343");
INSERT INTO V_LIN
	VALUES ("a19d538a-7033-4567-8d87-350bc94cd021",
	'0');
INSERT INTO V_PAR
	VALUES ("a19d538a-7033-4567-8d87-350bc94cd021",
	"875ba8d6-bdbb-4068-9761-29af272dd63e",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"00000000-0000-0000-0000-000000000000",
	3,
	28);
INSERT INTO ACT_BLK
	VALUES ("e21fe598-dfe1-4c8f-bc37-848c956c60b6",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	5,
	3,
	5,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a68e34dc-1025-4c98-a608-0d2cb1765920",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f0544f2d-3e83-4310-b388-c2f08029f4b8",
	"e21fe598-dfe1-4c8f-bc37-848c956c60b6",
	"00000000-0000-0000-0000-000000000000",
	5,
	3,
	'UI::UI::setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES ("f0544f2d-3e83-4310-b388-c2f08029f4b8",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES ("a7f10343-a3e1-4874-b0ef-d5744225a9f9",
	0,
	0,
	5,
	35,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e21fe598-dfe1-4c8f-bc37-848c956c60b6");
INSERT INTO V_LIN
	VALUES ("a7f10343-a3e1-4874-b0ef-d5744225a9f9",
	'1');
INSERT INTO V_PAR
	VALUES ("a7f10343-a3e1-4874-b0ef-d5744225a9f9",
	"f0544f2d-3e83-4310-b388-c2f08029f4b8",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"00000000-0000-0000-0000-000000000000",
	5,
	28);
INSERT INTO ACT_BLK
	VALUES ("c897f2ee-cb5c-4dbd-812b-182423511a3b",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	7,
	3,
	7,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a68e34dc-1025-4c98-a608-0d2cb1765920",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1c57b316-05bb-4db7-a0ed-1064d2c53252",
	"c897f2ee-cb5c-4dbd-812b-182423511a3b",
	"00000000-0000-0000-0000-000000000000",
	7,
	3,
	'UI::UI::setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES ("1c57b316-05bb-4db7-a0ed-1064d2c53252",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES ("d7964db3-fd21-4c68-a1b2-8ebd621117bb",
	0,
	0,
	7,
	35,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"c897f2ee-cb5c-4dbd-812b-182423511a3b");
INSERT INTO V_LIN
	VALUES ("d7964db3-fd21-4c68-a1b2-8ebd621117bb",
	'2');
INSERT INTO V_PAR
	VALUES ("d7964db3-fd21-4c68-a1b2-8ebd621117bb",
	"1c57b316-05bb-4db7-a0ed-1064d2c53252",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"00000000-0000-0000-0000-000000000000",
	7,
	28);
INSERT INTO ACT_BLK
	VALUES ("b985922a-a8ec-4c9c-8bb7-cf29af6f3c3e",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	9,
	3,
	9,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a68e34dc-1025-4c98-a608-0d2cb1765920",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9e909f7e-18e8-4d85-91c7-995cd2a24f73",
	"b985922a-a8ec-4c9c-8bb7-cf29af6f3c3e",
	"00000000-0000-0000-0000-000000000000",
	9,
	3,
	'UI::UI::setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES ("9e909f7e-18e8-4d85-91c7-995cd2a24f73",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES ("cc240c51-4c0c-471c-bd99-7a96e3449574",
	0,
	0,
	9,
	35,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"b985922a-a8ec-4c9c-8bb7-cf29af6f3c3e");
INSERT INTO V_LIN
	VALUES ("cc240c51-4c0c-471c-bd99-7a96e3449574",
	'3');
INSERT INTO V_PAR
	VALUES ("cc240c51-4c0c-471c-bd99-7a96e3449574",
	"9e909f7e-18e8-4d85-91c7-995cd2a24f73",
	"00000000-0000-0000-0000-000000000000",
	'value',
	"00000000-0000-0000-0000-000000000000",
	9,
	28);
INSERT INTO SPR_PEP
	VALUES ("d3693e98-a02a-4e98-8724-4aa03e9e8319",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"3f79b183-c5a6-4522-9ec9-147ba89e4c25");
INSERT INTO SPR_PO
	VALUES ("d3693e98-a02a-4e98-8724-4aa03e9e8319",
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("a38476fd-f16e-4888-981b-7d6c1dc525c1",
	"d3693e98-a02a-4e98-8724-4aa03e9e8319");
INSERT INTO ACT_ACT
	VALUES ("a38476fd-f16e-4888-981b-7d6c1dc525c1",
	'interface operation',
	0,
	"ff1cc36b-99d7-429c-bc6c-37502935ca00",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::UI::newGoalSpec',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ff1cc36b-99d7-429c-bc6c-37502935ca00",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a38476fd-f16e-4888-981b-7d6c1dc525c1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PO
	VALUES ("0ffbeae2-eced-4cf1-a5cc-61943dc2c312",
	"357ced98-74dc-47a6-83dd-2c0a2a39a465",
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES ("9f913f72-1611-412b-8588-1c549b06c704",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	"00000000-0000-0000-0000-000000000000",
	"0ffbeae2-eced-4cf1-a5cc-61943dc2c312");
INSERT INTO C_R
	VALUES ("9f913f72-1611-412b-8588-1c549b06c704",
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES ("542fb898-eb57-4bb7-a673-e389edc62d87",
	"c47d2170-f61f-45be-96c3-5e2e74562b25",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("542fb898-eb57-4bb7-a673-e389edc62d87",
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("ad7683f8-0747-4e1d-bf70-3afd7de03631",
	"542fb898-eb57-4bb7-a673-e389edc62d87");
INSERT INTO ACT_ACT
	VALUES ("ad7683f8-0747-4e1d-bf70-3afd7de03631",
	'interface operation',
	0,
	"1d6fe860-b472-49a4-a766-226a6003976f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::setTargetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1d6fe860-b472-49a4-a766-226a6003976f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ad7683f8-0747-4e1d-bf70-3afd7de03631",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("8ff45dc0-d34e-479c-ad13-5dfe10f1697f",
	"5fd41449-b4df-423a-840f-0b2f035961cd",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("8ff45dc0-d34e-479c-ad13-5dfe10f1697f",
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("2589e5f9-e921-4400-ab02-d792aecf93a5",
	"8ff45dc0-d34e-479c-ad13-5dfe10f1697f");
INSERT INTO ACT_ACT
	VALUES ("2589e5f9-e921-4400-ab02-d792aecf93a5",
	'interface operation',
	0,
	"35456ed0-86fb-43af-82ab-a19435698a16",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("35456ed0-86fb-43af-82ab-a19435698a16",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2589e5f9-e921-4400-ab02-d792aecf93a5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("b5ea5484-4c84-4a6a-aed1-f345ff4ce3ba",
	"eb820fd4-d5da-44e1-8e29-cd49dd14f605",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("b5ea5484-4c84-4a6a-aed1-f345ff4ce3ba",
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("aee4683f-05ea-47ca-ba14-495c84d38e8d",
	"b5ea5484-4c84-4a6a-aed1-f345ff4ce3ba");
INSERT INTO ACT_ACT
	VALUES ("aee4683f-05ea-47ca-ba14-495c84d38e8d",
	'interface operation',
	0,
	"84a2a342-4b1f-4263-80f3-62e99da92aa5",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::lapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("84a2a342-4b1f-4263-80f3-62e99da92aa5",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"aee4683f-05ea-47ca-ba14-495c84d38e8d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("b6d58cc6-2778-4594-82a1-8b3afab29b9f",
	"d537a788-4f30-44cb-b374-26cd0027e3f7",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("b6d58cc6-2778-4594-82a1-8b3afab29b9f",
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("9293613b-7dc8-439f-8080-054570de864f",
	"b6d58cc6-2778-4594-82a1-8b3afab29b9f");
INSERT INTO ACT_ACT
	VALUES ("9293613b-7dc8-439f-8080-054570de864f",
	'interface operation',
	0,
	"39996729-6823-4c46-b2a6-d40f3d35fd7f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::modePressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("39996729-6823-4c46-b2a6-d40f3d35fd7f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9293613b-7dc8-439f-8080-054570de864f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("0599528e-0840-4ba0-8cf8-e97f080d6c78",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("0599528e-0840-4ba0-8cf8-e97f080d6c78",
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("8b5a3a97-642e-4507-9960-d6a739cd26b6",
	"0599528e-0840-4ba0-8cf8-e97f080d6c78");
INSERT INTO ACT_ACT
	VALUES ("8b5a3a97-642e-4507-9960-d6a739cd26b6",
	'interface operation',
	0,
	"427c79c7-6f95-4c8d-9c4d-f9e8a22fbfc8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::newGoalSpec',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("427c79c7-6f95-4c8d-9c4d-f9e8a22fbfc8",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8b5a3a97-642e-4507-9960-d6a739cd26b6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("c58a7c9b-f542-4f3b-b768-b4b17d68348f",
	"4890bac3-9718-4e46-8a17-5623515567f0",
	"9f913f72-1611-412b-8588-1c549b06c704");
INSERT INTO SPR_RO
	VALUES ("c58a7c9b-f542-4f3b-b768-b4b17d68348f",
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("25ae229a-ea04-4b7d-81a4-ed8c2492e626",
	"c58a7c9b-f542-4f3b-b768-b4b17d68348f");
INSERT INTO ACT_ACT
	VALUES ("25ae229a-ea04-4b7d-81a4-ed8c2492e626",
	'interface operation',
	0,
	"59b9dff8-a698-4530-93c6-3b7112636c3f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Tracking::UITracking::lightPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("59b9dff8-a698-4530-93c6-3b7112636c3f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"25ae229a-ea04-4b7d-81a4-ed8c2492e626",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("58b8cfee-4e42-4e07-a600-f20407445350",
	1,
	"00000000-0000-0000-0000-000000000000",
	"357ced98-74dc-47a6-83dd-2c0a2a39a465",
	7);
INSERT INTO EP_PKG
	VALUES ("58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	"de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	'ButtonFunctions',
	'Each function within this package represents one of the buttons
on the watch.  When a function is executed, it sends the 
corresponding interface signal out through the UI port.
This allows a user executing models in Verifier to simulate
the use of the watch by invoking these functions to 
represent button pushes.',
	0);
INSERT INTO PE_PE
	VALUES ("e33ea2a2-e396-4162-b923-cb7c643925ad",
	1,
	"58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("e33ea2a2-e396-4162-b923-cb7c643925ad",
	"00000000-0000-0000-0000-000000000000",
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("5911f513-2602-443c-9c53-66e40c7c38f1",
	"e33ea2a2-e396-4162-b923-cb7c643925ad");
INSERT INTO ACT_ACT
	VALUES ("5911f513-2602-443c-9c53-66e40c7c38f1",
	'function',
	0,
	"3acb6bdf-5b42-4db1-9c70-51f981cc9362",
	"00000000-0000-0000-0000-000000000000",
	0,
	'sendLapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3acb6bdf-5b42-4db1-9c70-51f981cc9362",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5911f513-2602-443c-9c53-66e40c7c38f1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("08e73b70-a981-411f-bdb2-ec6a8f4964c1",
	"3acb6bdf-5b42-4db1-9c70-51f981cc9362",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES ("08e73b70-a981-411f-bdb2-ec6a8f4964c1",
	1,
	16,
	1,
	6,
	"00000000-0000-0000-0000-000000000000",
	"b5ea5484-4c84-4a6a-aed1-f345ff4ce3ba",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("6fba1164-c3de-4276-9036-f3bef1dbb205",
	1,
	"58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("6fba1164-c3de-4276-9036-f3bef1dbb205",
	"00000000-0000-0000-0000-000000000000",
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("925f463b-478e-4199-8db0-50b63fb407c3",
	"6fba1164-c3de-4276-9036-f3bef1dbb205");
INSERT INTO ACT_ACT
	VALUES ("925f463b-478e-4199-8db0-50b63fb407c3",
	'function',
	0,
	"fd91967c-71ed-48da-8b3c-6d5ae58e0e4b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'sendLightPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("fd91967c-71ed-48da-8b3c-6d5ae58e0e4b",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"925f463b-478e-4199-8db0-50b63fb407c3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3daac30a-23ad-4a53-bffa-6cc5702bf16e",
	"fd91967c-71ed-48da-8b3c-6d5ae58e0e4b",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES ("3daac30a-23ad-4a53-bffa-6cc5702bf16e",
	1,
	16,
	1,
	6,
	"00000000-0000-0000-0000-000000000000",
	"c58a7c9b-f542-4f3b-b768-b4b17d68348f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("8e9dcf79-c680-4611-a644-78f7e911469c",
	1,
	"58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("8e9dcf79-c680-4611-a644-78f7e911469c",
	"00000000-0000-0000-0000-000000000000",
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("7d84ccbe-bc2b-41fc-83d8-09a93d4e8c98",
	"8e9dcf79-c680-4611-a644-78f7e911469c");
INSERT INTO ACT_ACT
	VALUES ("7d84ccbe-bc2b-41fc-83d8-09a93d4e8c98",
	'function',
	0,
	"cfe48ce8-8214-4087-ac83-40ba87a9558e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'sendModePressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cfe48ce8-8214-4087-ac83-40ba87a9558e",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"7d84ccbe-bc2b-41fc-83d8-09a93d4e8c98",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f64eb69e-5123-475e-a609-ad2b21293ece",
	"cfe48ce8-8214-4087-ac83-40ba87a9558e",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES ("f64eb69e-5123-475e-a609-ad2b21293ece",
	1,
	16,
	1,
	6,
	"00000000-0000-0000-0000-000000000000",
	"b6d58cc6-2778-4594-82a1-8b3afab29b9f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("a16e92b1-f360-42fc-899e-7128dacfbff5",
	1,
	"58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("a16e92b1-f360-42fc-899e-7128dacfbff5",
	"00000000-0000-0000-0000-000000000000",
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("fc78e256-8644-429a-a3a8-ce36176e722c",
	"a16e92b1-f360-42fc-899e-7128dacfbff5");
INSERT INTO ACT_ACT
	VALUES ("fc78e256-8644-429a-a3a8-ce36176e722c",
	'function',
	0,
	"f81f8bb6-4b74-4674-bab3-f944f1b79386",
	"00000000-0000-0000-0000-000000000000",
	0,
	'sendStartStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f81f8bb6-4b74-4674-bab3-f944f1b79386",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"fc78e256-8644-429a-a3a8-ce36176e722c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("569861cf-4f63-42d3-b724-7ef3abf87e7e",
	"f81f8bb6-4b74-4674-bab3-f944f1b79386",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES ("569861cf-4f63-42d3-b724-7ef3abf87e7e",
	1,
	16,
	1,
	6,
	"00000000-0000-0000-0000-000000000000",
	"8ff45dc0-d34e-479c-ad13-5dfe10f1697f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("70f9e62c-681e-4fb9-a0ca-932637647d1b",
	1,
	"58b8cfee-4e42-4e07-a600-f20407445350",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("70f9e62c-681e-4fb9-a0ca-932637647d1b",
	"00000000-0000-0000-0000-000000000000",
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("35a5d5a2-5c93-4108-b618-3b39f17a0399",
	"70f9e62c-681e-4fb9-a0ca-932637647d1b");
INSERT INTO ACT_ACT
	VALUES ("35a5d5a2-5c93-4108-b618-3b39f17a0399",
	'function',
	0,
	"31ec0898-e387-4a0e-a242-7fcf58d59a2e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'sendTargetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("31ec0898-e387-4a0e-a242-7fcf58d59a2e",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"35a5d5a2-5c93-4108-b618-3b39f17a0399",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3e14acc9-66d4-4060-ae46-fc9cf8e9216b",
	"31ec0898-e387-4a0e-a242-7fcf58d59a2e",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES ("3e14acc9-66d4-4060-ae46-fc9cf8e9216b",
	1,
	16,
	1,
	6,
	"00000000-0000-0000-0000-000000000000",
	"542fb898-eb57-4bb7-a673-e389edc62d87",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("d346ec00-b39b-4066-95dd-84ce54f36104",
	1,
	"00000000-0000-0000-0000-000000000000",
	"357ced98-74dc-47a6-83dd-2c0a2a39a465",
	7);
INSERT INTO EP_PKG
	VALUES ("d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	"de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("f6793b43-b749-4894-8917-84a69746476f",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("f6793b43-b749-4894-8917-84a69746476f",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES ("ba21e97f-dd3d-46be-a269-ae157070714f",
	"f6793b43-b749-4894-8917-84a69746476f",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("4895bffa-083f-4719-8ecf-b638611cd1cb",
	"ba21e97f-dd3d-46be-a269-ae157070714f");
INSERT INTO ACT_ACT
	VALUES ("4895bffa-083f-4719-8ecf-b638611cd1cb",
	'bridge',
	0,
	"dab329cc-48a2-4ce5-9666-c0ec25c5ca83",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("dab329cc-48a2-4ce5-9666-c0ec25c5ca83",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4895bffa-083f-4719-8ecf-b638611cd1cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	"f6793b43-b749-4894-8917-84a69746476f",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("6499d365-24eb-4e1f-bf07-0c83a2d77ccf",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"77e46b51-066c-4bd0-99b0-de37e1e825df",
	'');
INSERT INTO S_BPARM
	VALUES ("d2e9d384-dcc0-465b-870f-c2b73eb55158",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"d7b60b11-2039-43c5-a8eb-3036cdd82e6c",
	'');
INSERT INTO S_BPARM
	VALUES ("d7b60b11-2039-43c5-a8eb-3036cdd82e6c",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"54ed4e31-98e5-49d7-ad4d-ec7c09675b9a",
	'');
INSERT INTO S_BPARM
	VALUES ("54ed4e31-98e5-49d7-ad4d-ec7c09675b9a",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("77e46b51-066c-4bd0-99b0-de37e1e825df",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"d2e9d384-dcc0-465b-870f-c2b73eb55158",
	'');
INSERT INTO S_BPARM
	VALUES ("8638b7ce-26be-49ce-86f6-3fbfd5f619d0",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"6499d365-24eb-4e1f-bf07-0c83a2d77ccf",
	'');
INSERT INTO ACT_BRB
	VALUES ("3a54e920-81de-4b15-9b84-e9d11467aac3",
	"02d5bf20-4eed-4179-bcb9-8b5ae60b91f0");
INSERT INTO ACT_ACT
	VALUES ("3a54e920-81de-4b15-9b84-e9d11467aac3",
	'bridge',
	0,
	"ddd4462e-2788-4d45-ac15-da7b046d4f70",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ddd4462e-2788-4d45-ac15-da7b046d4f70",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3a54e920-81de-4b15-9b84-e9d11467aac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("89db20ea-b44e-484b-83a5-a91268643f1c",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("fa007d48-491c-4e54-a8ad-57a4e6d62a39",
	"89db20ea-b44e-484b-83a5-a91268643f1c",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("9e1ab217-3623-4b46-aacf-632964027fb0",
	"89db20ea-b44e-484b-83a5-a91268643f1c");
INSERT INTO ACT_ACT
	VALUES ("9e1ab217-3623-4b46-aacf-632964027fb0",
	'bridge',
	0,
	"4db72c2b-8f78-4f04-b5f6-40119ba00616",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4db72c2b-8f78-4f04-b5f6-40119ba00616",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9e1ab217-3623-4b46-aacf-632964027fb0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("ee191808-74dd-4db9-b121-29ab6b8900b6",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("73241f96-d717-426e-83aa-a944756b38da",
	"ee191808-74dd-4db9-b121-29ab6b8900b6",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("0fc98eeb-0543-43d2-81d6-b28ce6846624",
	"ee191808-74dd-4db9-b121-29ab6b8900b6");
INSERT INTO ACT_ACT
	VALUES ("0fc98eeb-0543-43d2-81d6-b28ce6846624",
	'bridge',
	0,
	"916e8da0-c3b5-4fe7-9ca9-2b458b1134af",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("916e8da0-c3b5-4fe7-9ca9-2b458b1134af",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"0fc98eeb-0543-43d2-81d6-b28ce6846624",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e5cb4d56-a367-4811-a094-9a22eded6f30",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("fa7c400b-fa39-472d-bcac-bd2c86f17499",
	"e5cb4d56-a367-4811-a094-9a22eded6f30",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("fce59cf9-669c-4c57-8acb-918dcf757111",
	"e5cb4d56-a367-4811-a094-9a22eded6f30");
INSERT INTO ACT_ACT
	VALUES ("fce59cf9-669c-4c57-8acb-918dcf757111",
	'bridge',
	0,
	"48e55125-e00c-4cae-b057-340fb0f95db8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("48e55125-e00c-4cae-b057-340fb0f95db8",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"fce59cf9-669c-4c57-8acb-918dcf757111",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("15dc4014-a044-443b-8d5b-f52d6dd2f726",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("bb2b8ed6-8801-4e1b-aa09-d7b86d080ad8",
	"15dc4014-a044-443b-8d5b-f52d6dd2f726",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("8b04b424-59d3-48f7-b682-fd70e9eefd5a",
	"15dc4014-a044-443b-8d5b-f52d6dd2f726");
INSERT INTO ACT_ACT
	VALUES ("8b04b424-59d3-48f7-b682-fd70e9eefd5a",
	'bridge',
	0,
	"4ca20f4b-3ac5-4399-a688-be7aee42f1e4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4ca20f4b-3ac5-4399-a688-be7aee42f1e4",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8b04b424-59d3-48f7-b682-fd70e9eefd5a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("988e9c25-3f2f-4a3d-875f-107349ea290e",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("6c2689fc-433c-43fd-9181-47ec17b26223",
	"988e9c25-3f2f-4a3d-875f-107349ea290e",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("dd94bc11-5520-4699-9356-692f491fb7d7",
	"988e9c25-3f2f-4a3d-875f-107349ea290e");
INSERT INTO ACT_ACT
	VALUES ("dd94bc11-5520-4699-9356-692f491fb7d7",
	'bridge',
	0,
	"b823a67f-d32d-4d3c-95bb-754542475469",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b823a67f-d32d-4d3c-95bb-754542475469",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"dd94bc11-5520-4699-9356-692f491fb7d7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("3073c858-a843-407b-b2b3-e127d89fcf4a",
	"f6793b43-b749-4894-8917-84a69746476f",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("9e1a0b42-ebe6-4e09-a8ba-d3eaf329f3de",
	"3073c858-a843-407b-b2b3-e127d89fcf4a",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("7803639d-1415-4fc1-9b42-0f54dfec0e38",
	"3073c858-a843-407b-b2b3-e127d89fcf4a");
INSERT INTO ACT_ACT
	VALUES ("7803639d-1415-4fc1-9b42-0f54dfec0e38",
	'bridge',
	0,
	"63df41b4-8a04-4544-84c5-eee1c5f0bdba",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("63df41b4-8a04-4544-84c5-eee1c5f0bdba",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"7803639d-1415-4fc1-9b42-0f54dfec0e38",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("67662bab-dc48-4dc6-be7e-41b6ea8eee88",
	"f6793b43-b749-4894-8917-84a69746476f",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("5256f401-6039-470e-8679-cde63c131aef",
	"67662bab-dc48-4dc6-be7e-41b6ea8eee88");
INSERT INTO ACT_ACT
	VALUES ("5256f401-6039-470e-8679-cde63c131aef",
	'bridge',
	0,
	"ca992204-f8cd-43ce-a3ae-9cef88919845",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ca992204-f8cd-43ce-a3ae-9cef88919845",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5256f401-6039-470e-8679-cde63c131aef",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("030913d2-302d-4552-9ee5-707b138a23dd",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("89438554-4bbc-4a95-96e7-32ccbe689097",
	"030913d2-302d-4552-9ee5-707b138a23dd",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"8f7ed4f6-8d5e-445e-99ef-68219a2d9a26",
	'');
INSERT INTO S_BPARM
	VALUES ("8f7ed4f6-8d5e-445e-99ef-68219a2d9a26",
	"030913d2-302d-4552-9ee5-707b138a23dd",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("da059e15-b65a-4689-8257-f4866d40ead2",
	"030913d2-302d-4552-9ee5-707b138a23dd");
INSERT INTO ACT_ACT
	VALUES ("da059e15-b65a-4689-8257-f4866d40ead2",
	'bridge',
	0,
	"3e7c04ca-3612-4774-b788-f1fa163e6d26",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3e7c04ca-3612-4774-b788-f1fa163e6d26",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"da059e15-b65a-4689-8257-f4866d40ead2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("5faffbf3-9a77-465c-bc6c-220bc164036f",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("5c1b44a6-ca68-41f2-87b3-f015479ef910",
	"5faffbf3-9a77-465c-bc6c-220bc164036f",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"b002b955-675f-4839-b820-5a06eabc204b",
	'');
INSERT INTO S_BPARM
	VALUES ("b002b955-675f-4839-b820-5a06eabc204b",
	"5faffbf3-9a77-465c-bc6c-220bc164036f",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("8a02a646-c470-4d9d-8e10-20f8123546f3",
	"5faffbf3-9a77-465c-bc6c-220bc164036f");
INSERT INTO ACT_ACT
	VALUES ("8a02a646-c470-4d9d-8e10-20f8123546f3",
	'bridge',
	0,
	"becb1f4a-0073-4882-b3a7-b73f42a73acb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("becb1f4a-0073-4882-b3a7-b73f42a73acb",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8a02a646-c470-4d9d-8e10-20f8123546f3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("59236d76-d95c-4a88-a8d7-7122d09bbbe5",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("24718348-7fd9-48c4-930e-fdba981526fd",
	"59236d76-d95c-4a88-a8d7-7122d09bbbe5",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("52f574a5-ae72-4975-b214-07c18921e19d",
	"59236d76-d95c-4a88-a8d7-7122d09bbbe5");
INSERT INTO ACT_ACT
	VALUES ("52f574a5-ae72-4975-b214-07c18921e19d",
	'bridge',
	0,
	"79c9c87b-e9d6-4045-9732-03329ae2db26",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("79c9c87b-e9d6-4045-9732-03329ae2db26",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"52f574a5-ae72-4975-b214-07c18921e19d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("155a082c-f714-48ff-bdc9-989e8716d995",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("5e1b9bed-58be-40e8-84eb-14dd7160f9c8",
	"155a082c-f714-48ff-bdc9-989e8716d995",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"b4b17708-1bc2-44b6-83a8-d28147f6f7a9",
	'');
INSERT INTO S_BPARM
	VALUES ("b4b17708-1bc2-44b6-83a8-d28147f6f7a9",
	"155a082c-f714-48ff-bdc9-989e8716d995",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a5280ff0-bfae-47ee-ad0b-9a35b4ece6a1",
	"155a082c-f714-48ff-bdc9-989e8716d995");
INSERT INTO ACT_ACT
	VALUES ("a5280ff0-bfae-47ee-ad0b-9a35b4ece6a1",
	'bridge',
	0,
	"8e6abfcd-6595-438e-8755-c73ca42b40fc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8e6abfcd-6595-438e-8755-c73ca42b40fc",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a5280ff0-bfae-47ee-ad0b-9a35b4ece6a1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("df57c8e8-7c6e-47a1-8693-386821486e92",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f3312a33-7982-4292-a39b-9e8d4361d035",
	"df57c8e8-7c6e-47a1-8693-386821486e92",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"69b448e2-8d5c-4abb-9135-33de8ecbe411",
	'');
INSERT INTO S_BPARM
	VALUES ("69b448e2-8d5c-4abb-9135-33de8ecbe411",
	"df57c8e8-7c6e-47a1-8693-386821486e92",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d691d43e-59da-4a06-8470-1cc13d604e13",
	"df57c8e8-7c6e-47a1-8693-386821486e92");
INSERT INTO ACT_ACT
	VALUES ("d691d43e-59da-4a06-8470-1cc13d604e13",
	'bridge',
	0,
	"caec9354-d961-4111-9cff-aeb4052fc532",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("caec9354-d961-4111-9cff-aeb4052fc532",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d691d43e-59da-4a06-8470-1cc13d604e13",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0370d35d-b6b8-456a-a33d-e2dd542914a8",
	"f6793b43-b749-4894-8917-84a69746476f",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("7e1efbf1-48f5-410b-8828-7ffafaba0977",
	"0370d35d-b6b8-456a-a33d-e2dd542914a8",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("29200fae-b032-429d-9848-fd98f7b4926c",
	"0370d35d-b6b8-456a-a33d-e2dd542914a8");
INSERT INTO ACT_ACT
	VALUES ("29200fae-b032-429d-9848-fd98f7b4926c",
	'bridge',
	0,
	"796579fc-cb4c-4401-8c30-c73a2eb82837",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("796579fc-cb4c-4401-8c30-c73a2eb82837",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"29200fae-b032-429d-9848-fd98f7b4926c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("f8457108-b22b-49f8-b5fc-a1a786971285",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("f8457108-b22b-49f8-b5fc-a1a786971285",
	'Graphical User Interface',
	'',
	'GuiBridge',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES ("77299708-a3a9-4ece-ae74-0c8e1a1b402d",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'feedSetTargetPressedEvent',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("093d97af-8685-4805-bd8e-4fc79022e7e7",
	"77299708-a3a9-4ece-ae74-0c8e1a1b402d",
	'evt',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("f75d8071-e98e-4e5d-86f8-72959ff00bf4",
	"77299708-a3a9-4ece-ae74-0c8e1a1b402d");
INSERT INTO ACT_ACT
	VALUES ("f75d8071-e98e-4e5d-86f8-72959ff00bf4",
	'bridge',
	0,
	"9db2d546-6ce6-4024-b502-1973b6e147cb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9db2d546-6ce6-4024-b502-1973b6e147cb",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f75d8071-e98e-4e5d-86f8-72959ff00bf4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c29b1084-f6e9-4dc4-a37e-0ed94828d8ad",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'feedModePressedEvent',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("23ff44c7-3a8d-4414-a95d-3021f6064f16",
	"c29b1084-f6e9-4dc4-a37e-0ed94828d8ad",
	'evt',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("dff4fe02-43ca-42be-b6b8-f810dfe70056",
	"c29b1084-f6e9-4dc4-a37e-0ed94828d8ad");
INSERT INTO ACT_ACT
	VALUES ("dff4fe02-43ca-42be-b6b8-f810dfe70056",
	'bridge',
	0,
	"740b038c-70b7-4b8d-b931-da3257f27fc7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::feedModePressedEvent',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("740b038c-70b7-4b8d-b931-da3257f27fc7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"dff4fe02-43ca-42be-b6b8-f810dfe70056",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("7535c82c-2693-4fee-999a-36e401c1d7d6",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'feedLightPressedEvent',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("1a0bccac-233b-4f10-9c4b-c557ab528cc8",
	"7535c82c-2693-4fee-999a-36e401c1d7d6",
	'evt',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("3ac01476-590b-455b-bee2-b11bb4532889",
	"7535c82c-2693-4fee-999a-36e401c1d7d6");
INSERT INTO ACT_ACT
	VALUES ("3ac01476-590b-455b-bee2-b11bb4532889",
	'bridge',
	0,
	"c9b493a3-f760-4b12-8998-1e2ea88a7a8f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::feedLightPressedEvent',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c9b493a3-f760-4b12-8998-1e2ea88a7a8f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3ac01476-590b-455b-bee2-b11bb4532889",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("1feb80c3-ccfd-4caa-b31d-abe2efc39ae8",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'feedLapResetPressedEvent',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a20f40e0-2b1e-446e-846c-28b36d5162c5",
	"1feb80c3-ccfd-4caa-b31d-abe2efc39ae8",
	'evt',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("430e534a-6e07-4ce7-ad51-c59b7e084928",
	"1feb80c3-ccfd-4caa-b31d-abe2efc39ae8");
INSERT INTO ACT_ACT
	VALUES ("430e534a-6e07-4ce7-ad51-c59b7e084928",
	'bridge',
	0,
	"bfc1c662-4c3d-4f2c-bf93-c56e79b59c5d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bfc1c662-4c3d-4f2c-bf93-c56e79b59c5d",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"430e534a-6e07-4ce7-ad51-c59b7e084928",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("445ee713-7c01-4144-9a5d-1fbfd9732c86",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'feedStartStopPressedEvent',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("894b257e-691c-4c17-8b98-7df09ddbaf63",
	"445ee713-7c01-4144-9a5d-1fbfd9732c86",
	'evt',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("158323ca-dc71-48ac-adcf-eebfb8fc4e80",
	"445ee713-7c01-4144-9a5d-1fbfd9732c86");
INSERT INTO ACT_ACT
	VALUES ("158323ca-dc71-48ac-adcf-eebfb8fc4e80",
	'bridge',
	0,
	"cfd32562-8eb0-4044-a9bb-9e4fc291e97a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cfd32562-8eb0-4044-a9bb-9e4fc291e97a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"158323ca-dc71-48ac-adcf-eebfb8fc4e80",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'setData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("d2a510d9-32e0-4cc9-a1c6-29ecbd21a030",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	'value',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("d3e0101c-c9d0-4186-9c76-b6a26d2661e0",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f",
	'unit',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"d2a510d9-32e0-4cc9-a1c6-29ecbd21a030",
	'');
INSERT INTO ACT_BRB
	VALUES ("87a1778e-e48d-4ff0-811b-3f6beff6b7bc",
	"6cbe0b1c-ae45-4e7a-8568-a1e116de014f");
INSERT INTO ACT_ACT
	VALUES ("87a1778e-e48d-4ff0-811b-3f6beff6b7bc",
	'bridge',
	0,
	"bb7dc250-25b7-42c5-aa6d-713eee9b6060",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::setData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bb7dc250-25b7-42c5-aa6d-713eee9b6060",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"87a1778e-e48d-4ff0-811b-3f6beff6b7bc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("15e6dc44-1a57-4f07-ace4-ca7a1147e83c",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'setTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("998bf2bd-7b10-4d78-b118-694ce59c3aa8",
	"15e6dc44-1a57-4f07-ace4-ca7a1147e83c",
	'time',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("2431e793-bc73-4109-9589-86255dc66a7a",
	"15e6dc44-1a57-4f07-ace4-ca7a1147e83c");
INSERT INTO ACT_ACT
	VALUES ("2431e793-bc73-4109-9589-86255dc66a7a",
	'bridge',
	0,
	"81b8dc75-b1ad-4bf2-b3b9-2c9aa406591e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::setTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("81b8dc75-b1ad-4bf2-b3b9-2c9aa406591e",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2431e793-bc73-4109-9589-86255dc66a7a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("72be437f-ee6a-4ac8-9655-aaad64ad38d0",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'connect',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("382f1379-c0ac-4d21-ae85-fba511435dbf",
	"72be437f-ee6a-4ac8-9655-aaad64ad38d0");
INSERT INTO ACT_ACT
	VALUES ("382f1379-c0ac-4d21-ae85-fba511435dbf",
	'bridge',
	0,
	"fc9f9bb9-be93-4ef8-a2da-993f0e2662c0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::connect',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("fc9f9bb9-be93-4ef8-a2da-993f0e2662c0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"382f1379-c0ac-4d21-ae85-fba511435dbf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	"f8457108-b22b-49f8-b5fc-a1a786971285",
	'setIndicator',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("74d76bab-aebe-450f-bf42-030493017bfb",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f",
	'value',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("e7d22158-9741-429b-818f-f5a6c3c089b7",
	"f0b5895a-89e6-4365-bf81-46cbfa2fc13f");
INSERT INTO ACT_ACT
	VALUES ("e7d22158-9741-429b-818f-f5a6c3c089b7",
	'bridge',
	0,
	"c9b995d7-21e0-4dfc-b7a3-a31778d85880",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Graphical User Interface::setIndicator',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c9b995d7-21e0-4dfc-b7a3-a31778d85880",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e7d22158-9741-429b-818f-f5a6c3c089b7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("2126e260-b34e-4c56-9bf7-e83f75ccad00",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES ("5d57729e-e34c-4b8f-94ab-2abe3c9255bb",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f417851f-aa97-4bb8-b47d-3a86acb3e92d",
	"5d57729e-e34c-4b8f-94ab-2abe3c9255bb",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("084a7c97-afb6-4c44-b194-e4e4da801c4f",
	"5d57729e-e34c-4b8f-94ab-2abe3c9255bb");
INSERT INTO ACT_ACT
	VALUES ("084a7c97-afb6-4c44-b194-e4e4da801c4f",
	'bridge',
	0,
	"b7c54ca3-b72b-4aae-a5b2-edb776543936",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b7c54ca3-b72b-4aae-a5b2-edb776543936",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"084a7c97-afb6-4c44-b194-e4e4da801c4f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("23c659ba-ee62-441d-8dd6-b278cb20a418",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("1dc1eb79-2eba-4200-ba39-be93db1aec02",
	"23c659ba-ee62-441d-8dd6-b278cb20a418",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("48cc7bb3-5256-4af5-bc32-ac69b335443b",
	"23c659ba-ee62-441d-8dd6-b278cb20a418");
INSERT INTO ACT_ACT
	VALUES ("48cc7bb3-5256-4af5-bc32-ac69b335443b",
	'bridge',
	0,
	"97535f7b-6746-4942-abcf-2601d739b63c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("97535f7b-6746-4942-abcf-2601d739b63c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"48cc7bb3-5256-4af5-bc32-ac69b335443b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e97b5e05-8ac5-44e1-8308-4b9f52833dcd",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("31d2d6cf-0938-4420-883e-5d6cc223ac74",
	"e97b5e05-8ac5-44e1-8308-4b9f52833dcd",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d1f2c150-216e-4200-bfd0-b8ebeac54a6e",
	"e97b5e05-8ac5-44e1-8308-4b9f52833dcd");
INSERT INTO ACT_ACT
	VALUES ("d1f2c150-216e-4200-bfd0-b8ebeac54a6e",
	'bridge',
	0,
	"7bc28da0-9386-4c8c-b5c3-2ade9d2daef1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7bc28da0-9386-4c8c-b5c3-2ade9d2daef1",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d1f2c150-216e-4200-bfd0-b8ebeac54a6e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("f5bbf8e5-0b13-46bd-866d-4969fb73a5fc",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("e65c09c5-52a3-4ecc-aa58-c6f2ca840aff",
	"f5bbf8e5-0b13-46bd-866d-4969fb73a5fc",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("bd2dc800-dce1-48fe-a55d-aef63dad4633",
	"f5bbf8e5-0b13-46bd-866d-4969fb73a5fc",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"e65c09c5-52a3-4ecc-aa58-c6f2ca840aff",
	'');
INSERT INTO ACT_BRB
	VALUES ("77770b5f-8208-4d2d-a5ac-7eacd6ac749f",
	"f5bbf8e5-0b13-46bd-866d-4969fb73a5fc");
INSERT INTO ACT_ACT
	VALUES ("77770b5f-8208-4d2d-a5ac-7eacd6ac749f",
	'bridge',
	0,
	"49eec433-f9e7-4ff2-a944-d5728e6f66a7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("49eec433-f9e7-4ff2-a944-d5728e6f66a7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"77770b5f-8208-4d2d-a5ac-7eacd6ac749f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("eb7ef5fe-a94f-4327-a6be-17d061eeea17",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("4f6014c8-08e4-4fc8-9031-e3801d241804",
	"eb7ef5fe-a94f-4327-a6be-17d061eeea17",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"88a3ab3b-62d6-4aab-8ef3-ba95759cdd9d",
	'');
INSERT INTO S_BPARM
	VALUES ("88a3ab3b-62d6-4aab-8ef3-ba95759cdd9d",
	"eb7ef5fe-a94f-4327-a6be-17d061eeea17",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a4d3ad36-cebb-444d-8af7-9bd8c2229636",
	"eb7ef5fe-a94f-4327-a6be-17d061eeea17");
INSERT INTO ACT_ACT
	VALUES ("a4d3ad36-cebb-444d-8af7-9bd8c2229636",
	'bridge',
	0,
	"c3724288-c0c2-4825-8851-8fd5c83a2473",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c3724288-c0c2-4825-8851-8fd5c83a2473",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a4d3ad36-cebb-444d-8af7-9bd8c2229636",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("b9c40bbd-c868-4909-8ca6-a53ef6d4fd34",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f61878b6-85bd-46bb-95b9-05031650645b",
	"b9c40bbd-c868-4909-8ca6-a53ef6d4fd34",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"eb0aa675-fa00-49ec-9503-96687008a3e1",
	'');
INSERT INTO S_BPARM
	VALUES ("eb0aa675-fa00-49ec-9503-96687008a3e1",
	"b9c40bbd-c868-4909-8ca6-a53ef6d4fd34",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("c0d8f6bf-9133-49a0-bd16-304c826f334e",
	"b9c40bbd-c868-4909-8ca6-a53ef6d4fd34");
INSERT INTO ACT_ACT
	VALUES ("c0d8f6bf-9133-49a0-bd16-304c826f334e",
	'bridge',
	0,
	"06677e38-4016-489a-90f0-09ecf6b1e1cb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("06677e38-4016-489a-90f0-09ecf6b1e1cb",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c0d8f6bf-9133-49a0-bd16-304c826f334e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("06aa2eeb-1960-42c1-8957-e4f8f833ba28",
	"2126e260-b34e-4c56-9bf7-e83f75ccad00",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("6107d95b-185b-4b4a-be41-464acd96ea1b",
	"06aa2eeb-1960-42c1-8957-e4f8f833ba28",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("b14c829e-2b50-45d2-8ee6-a8949346f9fd",
	"06aa2eeb-1960-42c1-8957-e4f8f833ba28");
INSERT INTO ACT_ACT
	VALUES ("b14c829e-2b50-45d2-8ee6-a8949346f9fd",
	'bridge',
	0,
	"2430b693-1e65-42c1-940e-556b01047555",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2430b693-1e65-42c1-940e-556b01047555",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b14c829e-2b50-45d2-8ee6-a8949346f9fd",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("4e37ea92-5e4c-4742-ba82-f826082a0b01",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("4e37ea92-5e4c-4742-ba82-f826082a0b01",
	"00000000-0000-0000-0000-000000000000",
	'createGoals_1',
	'',
	'// Create some goal specifications.
send Tracking::newGoalSpec( 
  sequenceNumber: 1,
  minimum: 2.0,
  maximum: 8.0,
  span: 150.0,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Distance );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 2,
  minimum: 60.0,
  maximum: 80.0,
  span: 10,
  criteriaType: GoalCriteria::HeartRate,
  spanType: GoalSpan::Time );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 3,
  minimum: 5.0,
  maximum: 6.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 4,
  minimum: 1.0,
  maximum: 2.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  ',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("ec7d29a7-348f-4d40-9c6e-d1cd060ff5c9",
	"4e37ea92-5e4c-4742-ba82-f826082a0b01");
INSERT INTO ACT_ACT
	VALUES ("ec7d29a7-348f-4d40-9c6e-d1cd060ff5c9",
	'function',
	0,
	"4a025fce-2d1a-48fa-bff8-82d514790f84",
	"00000000-0000-0000-0000-000000000000",
	0,
	'createGoals_1',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4a025fce-2d1a-48fa-bff8-82d514790f84",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	26,
	1,
	26,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	32,
	13,
	0,
	"ec7d29a7-348f-4d40-9c6e-d1cd060ff5c9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ead86726-4846-4ce5-9e23-c099085b11b1",
	"4a025fce-2d1a-48fa-bff8-82d514790f84",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES ("ead86726-4846-4ce5-9e23-c099085b11b1",
	2,
	16,
	2,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0599528e-0840-4ba0-8cf8-e97f080d6c78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("62492971-b91b-4c3a-b3ec-f894b37baac4",
	"4a025fce-2d1a-48fa-bff8-82d514790f84",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES ("62492971-b91b-4c3a-b3ec-f894b37baac4",
	10,
	16,
	10,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0599528e-0840-4ba0-8cf8-e97f080d6c78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"4a025fce-2d1a-48fa-bff8-82d514790f84",
	"36831c79-d334-46f4-9279-8021665f6020",
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES ("6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	18,
	16,
	18,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0599528e-0840-4ba0-8cf8-e97f080d6c78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("36831c79-d334-46f4-9279-8021665f6020",
	"4a025fce-2d1a-48fa-bff8-82d514790f84",
	"00000000-0000-0000-0000-000000000000",
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES ("36831c79-d334-46f4-9279-8021665f6020",
	26,
	16,
	26,
	6,
	"00000000-0000-0000-0000-000000000000",
	"0599528e-0840-4ba0-8cf8-e97f080d6c78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("4641fe7a-ce2e-4e2c-84fa-f0ac76d4c029",
	0,
	0,
	3,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("4641fe7a-ce2e-4e2c-84fa-f0ac76d4c029",
	'1');
INSERT INTO V_PAR
	VALUES ("4641fe7a-ce2e-4e2c-84fa-f0ac76d4c029",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"32f5eab0-c38b-4e94-81fc-bbcc5cb9a0b2",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("32f5eab0-c38b-4e94-81fc-bbcc5cb9a0b2",
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("32f5eab0-c38b-4e94-81fc-bbcc5cb9a0b2",
	'2.0');
INSERT INTO V_PAR
	VALUES ("32f5eab0-c38b-4e94-81fc-bbcc5cb9a0b2",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"bbb9de5f-fabe-4d0f-b9bb-0fabcf3d7b13",
	4,
	3);
INSERT INTO V_VAL
	VALUES ("bbb9de5f-fabe-4d0f-b9bb-0fabcf3d7b13",
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("bbb9de5f-fabe-4d0f-b9bb-0fabcf3d7b13",
	'8.0');
INSERT INTO V_PAR
	VALUES ("bbb9de5f-fabe-4d0f-b9bb-0fabcf3d7b13",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"d7e92713-79d7-426f-a7a6-d9cf51d24bed",
	5,
	3);
INSERT INTO V_VAL
	VALUES ("d7e92713-79d7-426f-a7a6-d9cf51d24bed",
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("d7e92713-79d7-426f-a7a6-d9cf51d24bed",
	'150.0');
INSERT INTO V_PAR
	VALUES ("d7e92713-79d7-426f-a7a6-d9cf51d24bed",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"1bce8ff0-e5d0-4e3f-a62e-62af9a425e64",
	6,
	3);
INSERT INTO V_VAL
	VALUES ("1bce8ff0-e5d0-4e3f-a62e-62af9a425e64",
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("1bce8ff0-e5d0-4e3f-a62e-62af9a425e64",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	7,
	17);
INSERT INTO V_PAR
	VALUES ("1bce8ff0-e5d0-4e3f-a62e-62af9a425e64",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"57d92ace-219e-496d-8315-901b4e8ff23e",
	7,
	3);
INSERT INTO V_VAL
	VALUES ("57d92ace-219e-496d-8315-901b4e8ff23e",
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("57d92ace-219e-496d-8315-901b4e8ff23e",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc",
	8,
	13);
INSERT INTO V_PAR
	VALUES ("57d92ace-219e-496d-8315-901b4e8ff23e",
	"ead86726-4846-4ce5-9e23-c099085b11b1",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	8,
	3);
INSERT INTO V_VAL
	VALUES ("d80ed8ae-692c-4264-9ddc-0bd61f8c3003",
	0,
	0,
	11,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("d80ed8ae-692c-4264-9ddc-0bd61f8c3003",
	'2');
INSERT INTO V_PAR
	VALUES ("d80ed8ae-692c-4264-9ddc-0bd61f8c3003",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"f4555ba8-73d2-4125-8ade-94fc306e87e7",
	11,
	3);
INSERT INTO V_VAL
	VALUES ("f4555ba8-73d2-4125-8ade-94fc306e87e7",
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("f4555ba8-73d2-4125-8ade-94fc306e87e7",
	'60.0');
INSERT INTO V_PAR
	VALUES ("f4555ba8-73d2-4125-8ade-94fc306e87e7",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"027798b2-19ed-4c16-85c4-eed11da8e710",
	12,
	3);
INSERT INTO V_VAL
	VALUES ("027798b2-19ed-4c16-85c4-eed11da8e710",
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("027798b2-19ed-4c16-85c4-eed11da8e710",
	'80.0');
INSERT INTO V_PAR
	VALUES ("027798b2-19ed-4c16-85c4-eed11da8e710",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"e53b74fd-5f02-4d4a-a149-ec03d45fdb5a",
	13,
	3);
INSERT INTO V_VAL
	VALUES ("e53b74fd-5f02-4d4a-a149-ec03d45fdb5a",
	0,
	0,
	14,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("e53b74fd-5f02-4d4a-a149-ec03d45fdb5a",
	'10');
INSERT INTO V_PAR
	VALUES ("e53b74fd-5f02-4d4a-a149-ec03d45fdb5a",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"86a5a6b9-41eb-4bc8-b38b-014bce64a298",
	14,
	3);
INSERT INTO V_VAL
	VALUES ("86a5a6b9-41eb-4bc8-b38b-014bce64a298",
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("86a5a6b9-41eb-4bc8-b38b-014bce64a298",
	"3e48843f-0ea9-4021-97ba-72f059cce838",
	15,
	17);
INSERT INTO V_PAR
	VALUES ("86a5a6b9-41eb-4bc8-b38b-014bce64a298",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"21a5c8d8-c529-4848-9955-c2d9cc010090",
	15,
	3);
INSERT INTO V_VAL
	VALUES ("21a5c8d8-c529-4848-9955-c2d9cc010090",
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("21a5c8d8-c529-4848-9955-c2d9cc010090",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	16,
	13);
INSERT INTO V_PAR
	VALUES ("21a5c8d8-c529-4848-9955-c2d9cc010090",
	"62492971-b91b-4c3a-b3ec-f894b37baac4",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	16,
	3);
INSERT INTO V_VAL
	VALUES ("6ea67110-facb-4b93-b8b2-4c03af8da6f7",
	0,
	0,
	19,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("6ea67110-facb-4b93-b8b2-4c03af8da6f7",
	'3');
INSERT INTO V_PAR
	VALUES ("6ea67110-facb-4b93-b8b2-4c03af8da6f7",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"86f4c4b0-095e-473a-819f-f68b46583c33",
	19,
	3);
INSERT INTO V_VAL
	VALUES ("86f4c4b0-095e-473a-819f-f68b46583c33",
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("86f4c4b0-095e-473a-819f-f68b46583c33",
	'5.0');
INSERT INTO V_PAR
	VALUES ("86f4c4b0-095e-473a-819f-f68b46583c33",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"53ce3430-120e-4623-984c-9374fe897475",
	20,
	3);
INSERT INTO V_VAL
	VALUES ("53ce3430-120e-4623-984c-9374fe897475",
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("53ce3430-120e-4623-984c-9374fe897475",
	'6.0');
INSERT INTO V_PAR
	VALUES ("53ce3430-120e-4623-984c-9374fe897475",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"ea210b45-6a26-4bf5-a6fe-15f940e2e323",
	21,
	3);
INSERT INTO V_VAL
	VALUES ("ea210b45-6a26-4bf5-a6fe-15f940e2e323",
	0,
	0,
	22,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("ea210b45-6a26-4bf5-a6fe-15f940e2e323",
	'15');
INSERT INTO V_PAR
	VALUES ("ea210b45-6a26-4bf5-a6fe-15f940e2e323",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"1cb6391a-7c23-434a-b193-f4ea3f5907e4",
	22,
	3);
INSERT INTO V_VAL
	VALUES ("1cb6391a-7c23-434a-b193-f4ea3f5907e4",
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("1cb6391a-7c23-434a-b193-f4ea3f5907e4",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	23,
	17);
INSERT INTO V_PAR
	VALUES ("1cb6391a-7c23-434a-b193-f4ea3f5907e4",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"3308e49a-7559-4188-9b56-0b27889f061f",
	23,
	3);
INSERT INTO V_VAL
	VALUES ("3308e49a-7559-4188-9b56-0b27889f061f",
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("3308e49a-7559-4188-9b56-0b27889f061f",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	24,
	13);
INSERT INTO V_PAR
	VALUES ("3308e49a-7559-4188-9b56-0b27889f061f",
	"6aa9f225-1e8e-4f07-95eb-0e6db66c6865",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	24,
	3);
INSERT INTO V_VAL
	VALUES ("9ad7de66-b64b-4dab-8db7-fb36ae0aab30",
	0,
	0,
	27,
	19,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("9ad7de66-b64b-4dab-8db7-fb36ae0aab30",
	'4');
INSERT INTO V_PAR
	VALUES ("9ad7de66-b64b-4dab-8db7-fb36ae0aab30",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'sequenceNumber',
	"ec553b44-8f71-4deb-836c-5706a12ae48c",
	27,
	3);
INSERT INTO V_VAL
	VALUES ("ec553b44-8f71-4deb-836c-5706a12ae48c",
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("ec553b44-8f71-4deb-836c-5706a12ae48c",
	'1.0');
INSERT INTO V_PAR
	VALUES ("ec553b44-8f71-4deb-836c-5706a12ae48c",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'minimum',
	"b0e2f3b4-b2a2-47af-a0e4-2c1c7b451eb7",
	28,
	3);
INSERT INTO V_VAL
	VALUES ("b0e2f3b4-b2a2-47af-a0e4-2c1c7b451eb7",
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LRL
	VALUES ("b0e2f3b4-b2a2-47af-a0e4-2c1c7b451eb7",
	'2.0');
INSERT INTO V_PAR
	VALUES ("b0e2f3b4-b2a2-47af-a0e4-2c1c7b451eb7",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'maximum',
	"af82ae4a-fcdb-4ce2-9200-80b79af34bd1",
	29,
	3);
INSERT INTO V_VAL
	VALUES ("af82ae4a-fcdb-4ce2-9200-80b79af34bd1",
	0,
	0,
	30,
	9,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LIN
	VALUES ("af82ae4a-fcdb-4ce2-9200-80b79af34bd1",
	'15');
INSERT INTO V_PAR
	VALUES ("af82ae4a-fcdb-4ce2-9200-80b79af34bd1",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'span',
	"bf89dddc-b750-46bf-850c-2f5f3d3df0b7",
	30,
	3);
INSERT INTO V_VAL
	VALUES ("bf89dddc-b750-46bf-850c-2f5f3d3df0b7",
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("bf89dddc-b750-46bf-850c-2f5f3d3df0b7",
	"daeeff4f-a248-407a-bc5e-0ff935283686",
	31,
	17);
INSERT INTO V_PAR
	VALUES ("bf89dddc-b750-46bf-850c-2f5f3d3df0b7",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'criteriaType',
	"4be41dec-d6c8-4a11-94ed-c81b490cdaa4",
	31,
	3);
INSERT INTO V_VAL
	VALUES ("4be41dec-d6c8-4a11-94ed-c81b490cdaa4",
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"4a025fce-2d1a-48fa-bff8-82d514790f84");
INSERT INTO V_LEN
	VALUES ("4be41dec-d6c8-4a11-94ed-c81b490cdaa4",
	"7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	32,
	13);
INSERT INTO V_PAR
	VALUES ("4be41dec-d6c8-4a11-94ed-c81b490cdaa4",
	"36831c79-d334-46f4-9279-8021665f6020",
	"00000000-0000-0000-0000-000000000000",
	'spanType',
	"00000000-0000-0000-0000-000000000000",
	32,
	3);
INSERT INTO PE_PE
	VALUES ("b41f41b6-d6a5-4ab1-9a42-e3a2069d6d99",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("b41f41b6-d6a5-4ab1-9a42-e3a2069d6d99",
	"00000000-0000-0000-0000-000000000000",
	'init',
	'',
	'GuiBridge::connect();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("c564cf04-4fab-41c4-bcac-de446ff11265",
	"b41f41b6-d6a5-4ab1-9a42-e3a2069d6d99");
INSERT INTO ACT_ACT
	VALUES ("c564cf04-4fab-41c4-bcac-de446ff11265",
	'function',
	0,
	"f36c205d-8e3e-46c8-bf5c-5cc398927579",
	"00000000-0000-0000-0000-000000000000",
	0,
	'init',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f36c205d-8e3e-46c8-bf5c-5cc398927579",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c564cf04-4fab-41c4-bcac-de446ff11265",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3684f34e-a687-4725-83e5-70eea41835e1",
	"f36c205d-8e3e-46c8-bf5c-5cc398927579",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES ("3684f34e-a687-4725-83e5-70eea41835e1",
	"72be437f-ee6a-4ac8-9655-aaad64ad38d0",
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES ("9deb9689-5797-4496-8582-4bbaa960552a",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("9deb9689-5797-4496-8582-4bbaa960552a",
	"00000000-0000-0000-0000-000000000000",
	'RunTestCase',
	'',
	'TestCase::execute();',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("be22d4b2-1d16-4885-8a5d-973babfe0355",
	"9deb9689-5797-4496-8582-4bbaa960552a");
INSERT INTO ACT_ACT
	VALUES ("be22d4b2-1d16-4885-8a5d-973babfe0355",
	'function',
	0,
	"00785251-4e07-491d-aa61-3b4270175b2f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'RunTestCase',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("00785251-4e07-491d-aa61-3b4270175b2f",
	0,
	0,
	0,
	'TestCase',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"be22d4b2-1d16-4885-8a5d-973babfe0355",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("77615e1b-791b-4aee-a88c-8e3cc4a23867",
	"00785251-4e07-491d-aa61-3b4270175b2f",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES ("77615e1b-791b-4aee-a88c-8e3cc4a23867",
	"0bcb7702-e590-4daa-883b-ea8e4e061857",
	"00000000-0000-0000-0000-000000000000",
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES ("06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("0bcb7702-e590-4daa-883b-ea8e4e061857",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	'execute',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("f31b1877-104a-4191-8ad0-c23d96aa2747",
	"0bcb7702-e590-4daa-883b-ea8e4e061857");
INSERT INTO ACT_ACT
	VALUES ("f31b1877-104a-4191-8ad0-c23d96aa2747",
	'class operation',
	0,
	"0863183d-fe4f-4640-a255-8b7ea4e64ab0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase::execute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0863183d-fe4f-4640-a255-8b7ea4e64ab0",
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f31b1877-104a-4191-8ad0-c23d96aa2747",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ab18b73b-ac27-4996-96d5-2b32c1ed3e2f",
	"0863183d-fe4f-4640-a255-8b7ea4e64ab0",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES ("ab18b73b-ac27-4996-96d5-2b32c1ed3e2f",
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	44,
	1,
	26,
	0,
	0);
INSERT INTO V_PAR
	VALUES ("5b5d2e39-1fab-4f55-b5d5-2ffeda536994",
	"ab18b73b-ac27-4996-96d5-2b32c1ed3e2f",
	"00000000-0000-0000-0000-000000000000",
	'iterations',
	"00000000-0000-0000-0000-000000000000",
	1,
	26);
INSERT INTO E_GES
	VALUES ("ab18b73b-ac27-4996-96d5-2b32c1ed3e2f");
INSERT INTO E_GSME
	VALUES ("ab18b73b-ac27-4996-96d5-2b32c1ed3e2f",
	"7c19a886-6b60-462f-a2e1-39029457548a");
INSERT INTO E_GEC
	VALUES ("ab18b73b-ac27-4996-96d5-2b32c1ed3e2f");
INSERT INTO V_VAL
	VALUES ("5b5d2e39-1fab-4f55-b5d5-2ffeda536994",
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"0863183d-fe4f-4640-a255-8b7ea4e64ab0");
INSERT INTO V_LIN
	VALUES ("5b5d2e39-1fab-4f55-b5d5-2ffeda536994",
	'2');
INSERT INTO O_NBATTR
	VALUES ("30cc8104-8766-4df2-bcaa-b521e942ec1b",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_BATTR
	VALUES ("30cc8104-8766-4df2-bcaa-b521e942ec1b",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_ATTR
	VALUES ("30cc8104-8766-4df2-bcaa-b521e942ec1b",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"00000000-0000-0000-0000-000000000000",
	'current_state',
	'',
	'',
	'current_state',
	0,
	"ba5eda7a-def5-0000-0000-000000000006",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("ac497fc1-dd1b-416d-87db-c012e73b5dfd",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_BATTR
	VALUES ("ac497fc1-dd1b-416d-87db-c012e73b5dfd",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_ATTR
	VALUES ("ac497fc1-dd1b-416d-87db-c012e73b5dfd",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"30cc8104-8766-4df2-bcaa-b521e942ec1b",
	'iterations',
	'',
	'',
	'iterations',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_ID
	VALUES (1,
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO O_ID
	VALUES (2,
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO SM_ISM
	VALUES ("6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO SM_SM
	VALUES ("6f7c2739-9516-4398-8f4c-a8b864360ac3",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_EVTDI
	VALUES ("ac33a574-47b4-43f4-9395-c65b5bb1a615",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	'iterations',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_LEVT
	VALUES ("8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	1,
	'delay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES ("7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	2,
	'start',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES ("610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	3,
	'finish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES ("17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("a362bc4b-1c7c-4198-b564-e6e1b241b001",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"17e6c841-2a9e-4dd7-b31f-a52f0a837728");
INSERT INTO SM_AH
	VALUES ("a362bc4b-1c7c-4198-b564-e6e1b241b001",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_ACT
	VALUES ("a362bc4b-1c7c-4198-b564-e6e1b241b001",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	1,
	'if (self.iterations > 0)
  self.iterations = self.iterations - 1;
  create event instance evt of TestCase1 to self;
  handle = TIM::timer_start(event_inst: evt, microseconds: 4000000);
  send Tracking::startStopPressed();
else
  generate TestCase3:finish to self;
  send Tracking::lapResetPressed();
end if;',
	'');
INSERT INTO ACT_SAB
	VALUES ("b0c5acd0-ae83-4607-9d1b-88fb5ab68230",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"a362bc4b-1c7c-4198-b564-e6e1b241b001");
INSERT INTO ACT_ACT
	VALUES ("b0c5acd0-ae83-4607-9d1b-88fb5ab68230",
	'state',
	0,
	"fad9cbad-128f-4d77-b860-517588b471e0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase::pressStartStop',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("fad9cbad-128f-4d77-b860-517588b471e0",
	0,
	0,
	0,
	'',
	'',
	'',
	6,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b0c5acd0-ae83-4607-9d1b-88fb5ab68230",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2ce6df9f-4d68-49ab-8cc7-059a4847a8ee",
	"fad9cbad-128f-4d77-b860-517588b471e0",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES ("2ce6df9f-4d68-49ab-8cc7-059a4847a8ee",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	"a9814d67-bb2f-49ea-be38-5ad5f9c650b8",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("4e10599b-c714-494e-8dd4-33a51b281883",
	"fad9cbad-128f-4d77-b860-517588b471e0",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES ("4e10599b-c714-494e-8dd4-33a51b281883",
	"24d474a5-cc5a-4ca7-b59f-76adee825d8b",
	"2ce6df9f-4d68-49ab-8cc7-059a4847a8ee");
INSERT INTO V_VAL
	VALUES ("159144dc-6196-4137-9dff-b7e7ff1e8c0e",
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"fad9cbad-128f-4d77-b860-517588b471e0");
INSERT INTO V_IRF
	VALUES ("159144dc-6196-4137-9dff-b7e7ff1e8c0e",
	"6e8104de-1e51-440a-9df5-313b0bc481d2");
INSERT INTO V_VAL
	VALUES ("80713b8e-8148-461c-8c87-f951cd192f56",
	0,
	0,
	1,
	10,
	19,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"fad9cbad-128f-4d77-b860-517588b471e0");
INSERT INTO V_AVL
	VALUES ("80713b8e-8148-461c-8c87-f951cd192f56",
	"159144dc-6196-4137-9dff-b7e7ff1e8c0e",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"ac497fc1-dd1b-416d-87db-c012e73b5dfd");
INSERT INTO V_VAL
	VALUES ("a9814d67-bb2f-49ea-be38-5ad5f9c650b8",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"fad9cbad-128f-4d77-b860-517588b471e0");
INSERT INTO V_BIN
	VALUES ("a9814d67-bb2f-49ea-be38-5ad5f9c650b8",
	"425e1786-06ae-496c-9cb6-26e463727978",
	"80713b8e-8148-461c-8c87-f951cd192f56",
	'>');
INSERT INTO V_VAL
	VALUES ("425e1786-06ae-496c-9cb6-26e463727978",
	0,
	0,
	1,
	23,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"fad9cbad-128f-4d77-b860-517588b471e0");
INSERT INTO V_LIN
	VALUES ("425e1786-06ae-496c-9cb6-26e463727978",
	'0');
INSERT INTO V_VAR
	VALUES ("6e8104de-1e51-440a-9df5-313b0bc481d2",
	"fad9cbad-128f-4d77-b860-517588b471e0",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("6e8104de-1e51-440a-9df5-313b0bc481d2",
	0,
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO ACT_BLK
	VALUES ("7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	5,
	3,
	5,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b0c5acd0-ae83-4607-9d1b-88fb5ab68230",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("6d013d71-55bb-4f49-b155-7b7362d4b935",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	"f60b7db9-33d7-4182-8219-6721bb22ffc6",
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES ("6d013d71-55bb-4f49-b155-7b7362d4b935",
	"f8c6c44b-150e-4a85-a0cf-15574e0c5e86",
	"9f211a2a-6cb9-44ea-92f5-39e97ad188fb",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("f60b7db9-33d7-4182-8219-6721bb22ffc6",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	"c7494e7a-ec78-4bea-93bc-8757b487515e",
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES ("f60b7db9-33d7-4182-8219-6721bb22ffc6",
	1,
	0,
	3,
	32,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("f60b7db9-33d7-4182-8219-6721bb22ffc6",
	1,
	"d76be183-43d0-4200-bf56-c22666e95253");
INSERT INTO E_CSME
	VALUES ("f60b7db9-33d7-4182-8219-6721bb22ffc6",
	"8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8");
INSERT INTO E_CEI
	VALUES ("f60b7db9-33d7-4182-8219-6721bb22ffc6",
	"6e8104de-1e51-440a-9df5-313b0bc481d2");
INSERT INTO ACT_SMT
	VALUES ("c7494e7a-ec78-4bea-93bc-8757b487515e",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	"f1a0b8f9-130e-406c-9711-59c82f0cd3d9",
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES ("c7494e7a-ec78-4bea-93bc-8757b487515e",
	"a68b11ba-15ed-4457-a492-93910eb5fde7",
	"44cffc65-addc-4fcb-9d5e-f61ed0d302de",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("f1a0b8f9-130e-406c-9711-59c82f0cd3d9",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	"00000000-0000-0000-0000-000000000000",
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES ("f1a0b8f9-130e-406c-9711-59c82f0cd3d9",
	5,
	18,
	5,
	8,
	"00000000-0000-0000-0000-000000000000",
	"8ff45dc0-d34e-479c-ad13-5dfe10f1697f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("9ddf5156-f04d-4781-b785-8f4303cc954a",
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_IRF
	VALUES ("9ddf5156-f04d-4781-b785-8f4303cc954a",
	"6e8104de-1e51-440a-9df5-313b0bc481d2");
INSERT INTO V_VAL
	VALUES ("9f211a2a-6cb9-44ea-92f5-39e97ad188fb",
	1,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_AVL
	VALUES ("9f211a2a-6cb9-44ea-92f5-39e97ad188fb",
	"9ddf5156-f04d-4781-b785-8f4303cc954a",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"ac497fc1-dd1b-416d-87db-c012e73b5dfd");
INSERT INTO V_VAL
	VALUES ("0fe23e76-08ce-4d77-8bd3-2bfe215f9422",
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_IRF
	VALUES ("0fe23e76-08ce-4d77-8bd3-2bfe215f9422",
	"6e8104de-1e51-440a-9df5-313b0bc481d2");
INSERT INTO V_VAL
	VALUES ("417658c0-2673-464b-a807-485c2c062253",
	0,
	0,
	2,
	26,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_AVL
	VALUES ("417658c0-2673-464b-a807-485c2c062253",
	"0fe23e76-08ce-4d77-8bd3-2bfe215f9422",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"ac497fc1-dd1b-416d-87db-c012e73b5dfd");
INSERT INTO V_VAL
	VALUES ("f8c6c44b-150e-4a85-a0cf-15574e0c5e86",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_BIN
	VALUES ("f8c6c44b-150e-4a85-a0cf-15574e0c5e86",
	"8037caaa-04cc-4fd8-b25d-f4969dc902a2",
	"417658c0-2673-464b-a807-485c2c062253",
	'-');
INSERT INTO V_VAL
	VALUES ("8037caaa-04cc-4fd8-b25d-f4969dc902a2",
	0,
	0,
	2,
	39,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_LIN
	VALUES ("8037caaa-04cc-4fd8-b25d-f4969dc902a2",
	'1');
INSERT INTO V_VAL
	VALUES ("44cffc65-addc-4fcb-9d5e-f61ed0d302de",
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_TVL
	VALUES ("44cffc65-addc-4fcb-9d5e-f61ed0d302de",
	"e860fd2e-83b5-48ce-a457-8073699c6fae");
INSERT INTO V_VAL
	VALUES ("a68b11ba-15ed-4457-a492-93910eb5fde7",
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_BRV
	VALUES ("a68b11ba-15ed-4457-a492-93910eb5fde7",
	"030913d2-302d-4552-9ee5-707b138a23dd",
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES ("32b6c836-9140-42b3-96b1-9022cb1d8b7a",
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_TVL
	VALUES ("32b6c836-9140-42b3-96b1-9022cb1d8b7a",
	"d76be183-43d0-4200-bf56-c22666e95253");
INSERT INTO V_PAR
	VALUES ("32b6c836-9140-42b3-96b1-9022cb1d8b7a",
	"00000000-0000-0000-0000-000000000000",
	"a68b11ba-15ed-4457-a492-93910eb5fde7",
	'event_inst',
	"6cd6cc18-8839-4a50-ba31-4c397e24ffce",
	4,
	29);
INSERT INTO V_VAL
	VALUES ("6cd6cc18-8839-4a50-ba31-4c397e24ffce",
	0,
	0,
	4,
	60,
	66,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8");
INSERT INTO V_LIN
	VALUES ("6cd6cc18-8839-4a50-ba31-4c397e24ffce",
	'4000000');
INSERT INTO V_PAR
	VALUES ("6cd6cc18-8839-4a50-ba31-4c397e24ffce",
	"00000000-0000-0000-0000-000000000000",
	"a68b11ba-15ed-4457-a492-93910eb5fde7",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	4,
	46);
INSERT INTO V_VAR
	VALUES ("d76be183-43d0-4200-bf56-c22666e95253",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("d76be183-43d0-4200-bf56-c22666e95253",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("e860fd2e-83b5-48ce-a457-8073699c6fae",
	"7ca2e831-69fe-46f0-a015-e6939e14eeb8",
	'handle',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f");
INSERT INTO V_TRN
	VALUES ("e860fd2e-83b5-48ce-a457-8073699c6fae",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("24d474a5-cc5a-4ca7-b59f-76adee825d8b",
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	8,
	3,
	8,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"b0c5acd0-ae83-4607-9d1b-88fb5ab68230",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5f7b9eb2-0601-4208-9608-9b61d9ad74cc",
	"24d474a5-cc5a-4ca7-b59f-76adee825d8b",
	"9a823a11-5f7b-4af8-814f-3c288d2b58b9",
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES ("5f7b9eb2-0601-4208-9608-9b61d9ad74cc",
	1,
	0,
	7,
	12,
	7,
	22,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("5f7b9eb2-0601-4208-9608-9b61d9ad74cc");
INSERT INTO E_GSME
	VALUES ("5f7b9eb2-0601-4208-9608-9b61d9ad74cc",
	"610915dc-3917-48cc-b5b4-57d7d21e04a0");
INSERT INTO E_GEN
	VALUES ("5f7b9eb2-0601-4208-9608-9b61d9ad74cc",
	"6e8104de-1e51-440a-9df5-313b0bc481d2");
INSERT INTO ACT_SMT
	VALUES ("9a823a11-5f7b-4af8-814f-3c288d2b58b9",
	"24d474a5-cc5a-4ca7-b59f-76adee825d8b",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES ("9a823a11-5f7b-4af8-814f-3c288d2b58b9",
	8,
	18,
	8,
	8,
	"00000000-0000-0000-0000-000000000000",
	"b5ea5484-4c84-4a6a-aed1-f345ff4ce3ba",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_STATE
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b5329559-616b-4e2f-bae1-131c75a73d3f",
	"610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("2a7737c5-239c-4ca4-9add-40cb424f1384",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"b5329559-616b-4e2f-bae1-131c75a73d3f");
INSERT INTO SM_AH
	VALUES ("2a7737c5-239c-4ca4-9add-40cb424f1384",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_ACT
	VALUES ("2a7737c5-239c-4ca4-9add-40cb424f1384",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES ("28e57501-eb26-4e58-8961-0617106e6b76",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"2a7737c5-239c-4ca4-9add-40cb424f1384");
INSERT INTO ACT_ACT
	VALUES ("28e57501-eb26-4e58-8961-0617106e6b76",
	'state',
	0,
	"e632b929-66ba-4f1a-8840-8d97d7483bca",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase::testCaseFinished',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e632b929-66ba-4f1a-8840-8d97d7483bca",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"28e57501-eb26-4e58-8961-0617106e6b76",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9674e600-b829-456f-af05-097d1bfa8542",
	"e632b929-66ba-4f1a-8840-8d97d7483bca",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES ("9674e600-b829-456f-af05-097d1bfa8542",
	"e97b5e05-8ac5-44e1-8308-4b9f52833dcd",
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES ("d26836c8-5cea-445c-853c-e0de22be6946",
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"e632b929-66ba-4f1a-8840-8d97d7483bca");
INSERT INTO V_LST
	VALUES ("d26836c8-5cea-445c-853c-e0de22be6946",
	'End of test case');
INSERT INTO V_PAR
	VALUES ("d26836c8-5cea-445c-853c-e0de22be6946",
	"9674e600-b829-456f-af05-097d1bfa8542",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES ("e5b19c59-f109-4b28-a4eb-9955eb7cb61d",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"8d6b7121-0f2f-46cc-8aa0-d8200a5e96e8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a6c0f5fa-f61c-494d-b200-7d3870e8b0e0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"e5b19c59-f109-4b28-a4eb-9955eb7cb61d");
INSERT INTO SM_AH
	VALUES ("a6c0f5fa-f61c-494d-b200-7d3870e8b0e0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_ACT
	VALUES ("a6c0f5fa-f61c-494d-b200-7d3870e8b0e0",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("e321097b-bab0-47c5-9e5c-b1f16a84504a",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"a6c0f5fa-f61c-494d-b200-7d3870e8b0e0");
INSERT INTO ACT_ACT
	VALUES ("e321097b-bab0-47c5-9e5c-b1f16a84504a",
	'transition',
	0,
	"120eb096-f416-483d-b8d9-3c63acbbeab1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase1: delay',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("120eb096-f416-483d-b8d9-3c63acbbeab1",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e321097b-bab0-47c5-9e5c-b1f16a84504a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("e5b19c59-f109-4b28-a4eb-9955eb7cb61d",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CRTXN
	VALUES ("44a49b25-6fa5-4cac-bed5-21cd2241406e",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"7c19a886-6b60-462f-a2e1-39029457548a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("d4166c64-9596-420d-b9bd-176acb290b34",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"44a49b25-6fa5-4cac-bed5-21cd2241406e");
INSERT INTO SM_AH
	VALUES ("d4166c64-9596-420d-b9bd-176acb290b34",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_ACT
	VALUES ("d4166c64-9596-420d-b9bd-176acb290b34",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES ("6d3fa7f9-36ff-46b4-a198-e1b6f82c42e9",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"d4166c64-9596-420d-b9bd-176acb290b34");
INSERT INTO ACT_ACT
	VALUES ("6d3fa7f9-36ff-46b4-a198-e1b6f82c42e9",
	'transition',
	0,
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase2: start(iterations)',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	2,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"6d3fa7f9-36ff-46b4-a198-e1b6f82c42e9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("01cfd04f-2b36-4ab2-96f9-4c0419cb72a5",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4",
	"8badeb29-b551-4c3a-8b4d-0d28dd168d92",
	1,
	1,
	'TestCase2: start(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES ("01cfd04f-2b36-4ab2-96f9-4c0419cb72a5",
	"e97b5e05-8ac5-44e1-8308-4b9f52833dcd",
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES ("8badeb29-b551-4c3a-8b4d-0d28dd168d92",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4",
	"00000000-0000-0000-0000-000000000000",
	2,
	1,
	'TestCase2: start(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES ("8badeb29-b551-4c3a-8b4d-0d28dd168d92",
	"bcbe7d1b-56df-486d-a8b0-443aeb9d7596",
	"6692966c-be19-4080-a900-39ef762a0185",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("0fa4331b-c783-420c-8d85-2e5063aa7b03",
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_LST
	VALUES ("0fa4331b-c783-420c-8d85-2e5063aa7b03",
	'Start of test case');
INSERT INTO V_PAR
	VALUES ("0fa4331b-c783-420c-8d85-2e5063aa7b03",
	"01cfd04f-2b36-4ab2-96f9-4c0419cb72a5",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	1,
	14);
INSERT INTO V_VAL
	VALUES ("fad9ea90-1d85-4456-93d5-c2c43a19ba19",
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_IRF
	VALUES ("fad9ea90-1d85-4456-93d5-c2c43a19ba19",
	"c1aa43db-f36a-45c7-afd1-7e6695f3c5d0");
INSERT INTO V_VAL
	VALUES ("6692966c-be19-4080-a900-39ef762a0185",
	1,
	0,
	2,
	6,
	15,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_AVL
	VALUES ("6692966c-be19-4080-a900-39ef762a0185",
	"fad9ea90-1d85-4456-93d5-c2c43a19ba19",
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960",
	"ac497fc1-dd1b-416d-87db-c012e73b5dfd");
INSERT INTO V_VAL
	VALUES ("2e1262c8-2602-4d25-8261-ebfbc7411f4c",
	0,
	0,
	2,
	28,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_EDV
	VALUES ("2e1262c8-2602-4d25-8261-ebfbc7411f4c");
INSERT INTO V_EPR
	VALUES ("2e1262c8-2602-4d25-8261-ebfbc7411f4c",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"ac33a574-47b4-43f4-9395-c65b5bb1a615",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("bcbe7d1b-56df-486d-a8b0-443aeb9d7596",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_BIN
	VALUES ("bcbe7d1b-56df-486d-a8b0-443aeb9d7596",
	"a5764e25-db6d-4471-b739-74a4ffa05af5",
	"2e1262c8-2602-4d25-8261-ebfbc7411f4c",
	'*');
INSERT INTO V_VAL
	VALUES ("a5764e25-db6d-4471-b739-74a4ffa05af5",
	0,
	0,
	2,
	41,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4");
INSERT INTO V_LIN
	VALUES ("a5764e25-db6d-4471-b739-74a4ffa05af5",
	'2');
INSERT INTO V_VAR
	VALUES ("c1aa43db-f36a-45c7-afd1-7e6695f3c5d0",
	"ff5b80dc-801a-40e3-9a27-b6bd0d00c7d4",
	'self',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("c1aa43db-f36a-45c7-afd1-7e6695f3c5d0",
	0,
	"06e3945b-b0d3-4ae6-8d5a-c0b9a48c8960");
INSERT INTO SM_TXN
	VALUES ("44a49b25-6fa5-4cac-bed5-21cd2241406e",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("ff6425d5-323d-464d-abd9-84dae797d74e",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"17e6c841-2a9e-4dd7-b31f-a52f0a837728",
	"610915dc-3917-48cc-b5b4-57d7d21e04a0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("651eb5cd-f895-4677-91aa-ca864cc120d2",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"ff6425d5-323d-464d-abd9-84dae797d74e");
INSERT INTO SM_AH
	VALUES ("651eb5cd-f895-4677-91aa-ca864cc120d2",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3");
INSERT INTO SM_ACT
	VALUES ("651eb5cd-f895-4677-91aa-ca864cc120d2",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("f05cc4d8-48b1-49cf-8028-13359f0321f6",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"651eb5cd-f895-4677-91aa-ca864cc120d2");
INSERT INTO ACT_ACT
	VALUES ("f05cc4d8-48b1-49cf-8028-13359f0321f6",
	'transition',
	0,
	"3817e626-5023-4783-9007-19401542a4ec",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase3: finish',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3817e626-5023-4783-9007-19401542a4ec",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f05cc4d8-48b1-49cf-8028-13359f0321f6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("ff6425d5-323d-464d-abd9-84dae797d74e",
	"6f7c2739-9516-4398-8f4c-a8b864360ac3",
	"b5329559-616b-4e2f-bae1-131c75a73d3f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("81dde48b-d06a-4161-b0c5-de3a04e3a1f6",
	1,
	"d346ec00-b39b-4066-95dd-84ce54f36104",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("81dde48b-d06a-4161-b0c5-de3a04e3a1f6",
	'UI',
	1,
	'UI',
	'Provides an interface between Verifier and an external user interface representing 
the watch, in this case an animated rendition of the watch containing virtual
buttons that can be "pushed" by clicking on them with a mouse.

The system is first primed by creating, within the Verifier execution engine, an 
instance of each event that can be received by this class-based state machine.
This priming is done through execution of the feed*() bridge operations within 
the GuiBridge external entity.  Each of these operations is bound to a realized
Java function that queues the appropriate event within the Verifier execution 
engine.

Whenever a button on the animated watch is pushed, it causes the associated
event to be generated.  The activity on the transition then queues another instance
of the same event within the Verifier execution engine before sending the 
corresponding interface signal out through the UI port.  That interface signal 
can then be received by an application, such as the Tracking component, that is 
controlled by the animated watch.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("8d3be21a-0460-49dc-918d-2502db9c8afe",
	"81dde48b-d06a-4161-b0c5-de3a04e3a1f6",
	'connect',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'GuiBridge::connect();

create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);

create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);

create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);

create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);

create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("9d30d747-f628-4f4c-8e81-28cf73c5199d",
	"8d3be21a-0460-49dc-918d-2502db9c8afe");
INSERT INTO ACT_ACT
	VALUES ("9d30d747-f628-4f4c-8e81-28cf73c5199d",
	'class operation',
	0,
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::connect',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3da5fb46-2f4d-4d6c-a078-82138603792a",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	16,
	1,
	16,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9d30d747-f628-4f4c-8e81-28cf73c5199d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("36cd95ed-283b-4c5e-aa77-8af3c2f1e794",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"177f11f5-d9ef-401f-b023-2252d76d2259",
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES ("36cd95ed-283b-4c5e-aa77-8af3c2f1e794",
	"72be437f-ee6a-4ac8-9655-aaad64ad38d0",
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES ("177f11f5-d9ef-401f-b023-2252d76d2259",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"dc9f0f44-0dcd-4aca-80af-9c951a1f92fa",
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES ("177f11f5-d9ef-401f-b023-2252d76d2259",
	1,
	0,
	3,
	30,
	3,
	36,
	3,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("177f11f5-d9ef-401f-b023-2252d76d2259",
	1,
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO E_CSME
	VALUES ("177f11f5-d9ef-401f-b023-2252d76d2259",
	"6c528ef2-d605-449a-bc03-b302849e4f61");
INSERT INTO E_CEA
	VALUES ("177f11f5-d9ef-401f-b023-2252d76d2259");
INSERT INTO ACT_SMT
	VALUES ("dc9f0f44-0dcd-4aca-80af-9c951a1f92fa",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"29ff1b77-10d6-4df0-aa90-e71b7dc3b99d",
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES ("dc9f0f44-0dcd-4aca-80af-9c951a1f92fa",
	"77299708-a3a9-4ece-ae74-0c8e1a1b402d",
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES ("29ff1b77-10d6-4df0-aa90-e71b7dc3b99d",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"56ee86f3-63a9-4d2a-9ec7-a77ce6f55a04",
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES ("29ff1b77-10d6-4df0-aa90-e71b7dc3b99d",
	1,
	0,
	6,
	30,
	6,
	36,
	6,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("29ff1b77-10d6-4df0-aa90-e71b7dc3b99d",
	0,
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO E_CSME
	VALUES ("29ff1b77-10d6-4df0-aa90-e71b7dc3b99d",
	"c7557236-3c4f-419b-ac90-6eb0d02c450a");
INSERT INTO E_CEA
	VALUES ("29ff1b77-10d6-4df0-aa90-e71b7dc3b99d");
INSERT INTO ACT_SMT
	VALUES ("56ee86f3-63a9-4d2a-9ec7-a77ce6f55a04",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"69bb690e-bdb7-46d5-8d8d-1f3fd55304af",
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES ("56ee86f3-63a9-4d2a-9ec7-a77ce6f55a04",
	"445ee713-7c01-4144-9a5d-1fbfd9732c86",
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES ("69bb690e-bdb7-46d5-8d8d-1f3fd55304af",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"d819e11b-8238-4cf3-bfa3-d2739be44042",
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES ("69bb690e-bdb7-46d5-8d8d-1f3fd55304af",
	1,
	0,
	9,
	30,
	9,
	36,
	9,
	57,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("69bb690e-bdb7-46d5-8d8d-1f3fd55304af",
	0,
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO E_CSME
	VALUES ("69bb690e-bdb7-46d5-8d8d-1f3fd55304af",
	"14762d34-0c10-450d-a1a6-85c3b594f962");
INSERT INTO E_CEA
	VALUES ("69bb690e-bdb7-46d5-8d8d-1f3fd55304af");
INSERT INTO ACT_SMT
	VALUES ("d819e11b-8238-4cf3-bfa3-d2739be44042",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"d65963fa-5287-4e01-beba-d2301d1441b6",
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES ("d819e11b-8238-4cf3-bfa3-d2739be44042",
	"1feb80c3-ccfd-4caa-b31d-abe2efc39ae8",
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES ("d65963fa-5287-4e01-beba-d2301d1441b6",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"35b48b18-4ced-4ef6-b1c8-f4a3ea1c0a97",
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES ("d65963fa-5287-4e01-beba-d2301d1441b6",
	1,
	0,
	12,
	30,
	12,
	36,
	12,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("d65963fa-5287-4e01-beba-d2301d1441b6",
	0,
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO E_CSME
	VALUES ("d65963fa-5287-4e01-beba-d2301d1441b6",
	"a66a940e-8ded-482f-a925-944009c675f9");
INSERT INTO E_CEA
	VALUES ("d65963fa-5287-4e01-beba-d2301d1441b6");
INSERT INTO ACT_SMT
	VALUES ("35b48b18-4ced-4ef6-b1c8-f4a3ea1c0a97",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"b949a264-a8a0-4a92-9090-de95e99fad54",
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES ("35b48b18-4ced-4ef6-b1c8-f4a3ea1c0a97",
	"7535c82c-2693-4fee-999a-36e401c1d7d6",
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES ("b949a264-a8a0-4a92-9090-de95e99fad54",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"ec3e3abf-a740-4941-a99b-399514fb84c7",
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES ("b949a264-a8a0-4a92-9090-de95e99fad54",
	1,
	0,
	15,
	30,
	15,
	36,
	15,
	53,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("b949a264-a8a0-4a92-9090-de95e99fad54",
	0,
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO E_CSME
	VALUES ("b949a264-a8a0-4a92-9090-de95e99fad54",
	"79984006-6621-42bc-9b2b-b2bf31248b0c");
INSERT INTO E_CEA
	VALUES ("b949a264-a8a0-4a92-9090-de95e99fad54");
INSERT INTO ACT_SMT
	VALUES ("ec3e3abf-a740-4941-a99b-399514fb84c7",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	"00000000-0000-0000-0000-000000000000",
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES ("ec3e3abf-a740-4941-a99b-399514fb84c7",
	"c29b1084-f6e9-4dc4-a37e-0ed94828d8ad",
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES ("dc2e241d-5d0c-4cd3-a440-0202ad8d3959",
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3da5fb46-2f4d-4d6c-a078-82138603792a");
INSERT INTO V_TVL
	VALUES ("dc2e241d-5d0c-4cd3-a440-0202ad8d3959",
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO V_PAR
	VALUES ("dc2e241d-5d0c-4cd3-a440-0202ad8d3959",
	"dc9f0f44-0dcd-4aca-80af-9c951a1f92fa",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	4,
	38);
INSERT INTO V_VAL
	VALUES ("a2e13bdc-139f-4ca1-a747-4beb7fe9bae7",
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3da5fb46-2f4d-4d6c-a078-82138603792a");
INSERT INTO V_TVL
	VALUES ("a2e13bdc-139f-4ca1-a747-4beb7fe9bae7",
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO V_PAR
	VALUES ("a2e13bdc-139f-4ca1-a747-4beb7fe9bae7",
	"56ee86f3-63a9-4d2a-9ec7-a77ce6f55a04",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	7,
	38);
INSERT INTO V_VAL
	VALUES ("8090835a-8b3d-481a-9666-6c72e871f55c",
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3da5fb46-2f4d-4d6c-a078-82138603792a");
INSERT INTO V_TVL
	VALUES ("8090835a-8b3d-481a-9666-6c72e871f55c",
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO V_PAR
	VALUES ("8090835a-8b3d-481a-9666-6c72e871f55c",
	"d819e11b-8238-4cf3-bfa3-d2739be44042",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	10,
	37);
INSERT INTO V_VAL
	VALUES ("04743a20-5101-4fe2-84ce-292c91b17849",
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3da5fb46-2f4d-4d6c-a078-82138603792a");
INSERT INTO V_TVL
	VALUES ("04743a20-5101-4fe2-84ce-292c91b17849",
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO V_PAR
	VALUES ("04743a20-5101-4fe2-84ce-292c91b17849",
	"35b48b18-4ced-4ef6-b1c8-f4a3ea1c0a97",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	13,
	34);
INSERT INTO V_VAL
	VALUES ("39f1f884-f26f-46ac-9f9f-c75f02cb312d",
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3da5fb46-2f4d-4d6c-a078-82138603792a");
INSERT INTO V_TVL
	VALUES ("39f1f884-f26f-46ac-9f9f-c75f02cb312d",
	"513028ee-18f4-4c25-be15-8726e2e8c1d1");
INSERT INTO V_PAR
	VALUES ("39f1f884-f26f-46ac-9f9f-c75f02cb312d",
	"ec3e3abf-a740-4941-a99b-399514fb84c7",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	16,
	33);
INSERT INTO V_VAR
	VALUES ("513028ee-18f4-4c25-be15-8726e2e8c1d1",
	"3da5fb46-2f4d-4d6c-a078-82138603792a",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("513028ee-18f4-4c25-be15-8726e2e8c1d1",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO O_ID
	VALUES (0,
	"81dde48b-d06a-4161-b0c5-de3a04e3a1f6");
INSERT INTO O_ID
	VALUES (1,
	"81dde48b-d06a-4161-b0c5-de3a04e3a1f6");
INSERT INTO O_ID
	VALUES (2,
	"81dde48b-d06a-4161-b0c5-de3a04e3a1f6");
INSERT INTO SM_ASM
	VALUES ("11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"81dde48b-d06a-4161-b0c5-de3a04e3a1f6");
INSERT INTO SM_SM
	VALUES ("11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_LEVT
	VALUES ("6c528ef2-d605-449a-bc03-b302849e4f61",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("6c528ef2-d605-449a-bc03-b302849e4f61",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("6c528ef2-d605-449a-bc03-b302849e4f61",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES ("c7557236-3c4f-419b-ac90-6eb0d02c450a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("c7557236-3c4f-419b-ac90-6eb0d02c450a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("c7557236-3c4f-419b-ac90-6eb0d02c450a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES ("14762d34-0c10-450d-a1a6-85c3b594f962",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("14762d34-0c10-450d-a1a6-85c3b594f962",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("14762d34-0c10-450d-a1a6-85c3b594f962",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES ("a66a940e-8ded-482f-a925-944009c675f9",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("a66a940e-8ded-482f-a925-944009c675f9",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("a66a940e-8ded-482f-a925-944009c675f9",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES ("79984006-6621-42bc-9b2b-b2bf31248b0c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("79984006-6621-42bc-9b2b-b2bf31248b0c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("79984006-6621-42bc-9b2b-b2bf31248b0c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000",
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"6c528ef2-d605-449a-bc03-b302849e4f61",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"c7557236-3c4f-419b-ac90-6eb0d02c450a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"14762d34-0c10-450d-a1a6-85c3b594f962",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"a66a940e-8ded-482f-a925-944009c675f9",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("39f5a5f2-9c14-49da-9473-ff8119601f00",
	"79984006-6621-42bc-9b2b-b2bf31248b0c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("082dc797-7e74-47d0-b031-78bae45368bc",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00");
INSERT INTO SM_AH
	VALUES ("082dc797-7e74-47d0-b031-78bae45368bc",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("082dc797-7e74-47d0-b031-78bae45368bc",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES ("f4d42549-731e-43f8-a710-36e6d15bc403",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"082dc797-7e74-47d0-b031-78bae45368bc");
INSERT INTO ACT_ACT
	VALUES ("f4d42549-731e-43f8-a710-36e6d15bc403",
	'class state',
	0,
	"09fbbca0-fd0b-465d-bc1b-5368e566c225",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI::running',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("09fbbca0-fd0b-465d-bc1b-5368e566c225",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"f4d42549-731e-43f8-a710-36e6d15bc403",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("33817a39-1f93-4349-b819-a0212da749b3",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"6c528ef2-d605-449a-bc03-b302849e4f61",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("2a1ba4a5-6808-4a64-bbf4-3edcaafcf63f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"33817a39-1f93-4349-b819-a0212da749b3");
INSERT INTO SM_AH
	VALUES ("2a1ba4a5-6808-4a64-bbf4-3edcaafcf63f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("2a1ba4a5-6808-4a64-bbf4-3edcaafcf63f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES ("1cda8465-677d-4067-8219-5736d0baab06",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"2a1ba4a5-6808-4a64-bbf4-3edcaafcf63f");
INSERT INTO ACT_ACT
	VALUES ("1cda8465-677d-4067-8219-5736d0baab06",
	'class transition',
	0,
	"2df22170-4754-4538-99e9-15a7bfc50a4c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI_A3: setTargetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2df22170-4754-4538-99e9-15a7bfc50a4c",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"1cda8465-677d-4067-8219-5736d0baab06",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("649c62d9-cefb-4031-a779-42acf81ecca4",
	"2df22170-4754-4538-99e9-15a7bfc50a4c",
	"9e449252-29d5-4904-bb83-17879d28fc50",
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES ("649c62d9-cefb-4031-a779-42acf81ecca4",
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("649c62d9-cefb-4031-a779-42acf81ecca4",
	1,
	"acc59965-9860-469d-b1a9-b666a7d0f616");
INSERT INTO E_CSME
	VALUES ("649c62d9-cefb-4031-a779-42acf81ecca4",
	"6c528ef2-d605-449a-bc03-b302849e4f61");
INSERT INTO E_CEA
	VALUES ("649c62d9-cefb-4031-a779-42acf81ecca4");
INSERT INTO ACT_SMT
	VALUES ("9e449252-29d5-4904-bb83-17879d28fc50",
	"2df22170-4754-4538-99e9-15a7bfc50a4c",
	"6e9ab372-e750-45ea-baae-ac26235d54ad",
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES ("9e449252-29d5-4904-bb83-17879d28fc50",
	"77299708-a3a9-4ece-ae74-0c8e1a1b402d",
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("6e9ab372-e750-45ea-baae-ac26235d54ad",
	"2df22170-4754-4538-99e9-15a7bfc50a4c",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES ("6e9ab372-e750-45ea-baae-ac26235d54ad",
	"70f9e62c-681e-4fb9-a0ca-932637647d1b",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("62d9d2ab-6d16-4b76-9df9-2f0005f6d7c5",
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"2df22170-4754-4538-99e9-15a7bfc50a4c");
INSERT INTO V_TVL
	VALUES ("62d9d2ab-6d16-4b76-9df9-2f0005f6d7c5",
	"acc59965-9860-469d-b1a9-b666a7d0f616");
INSERT INTO V_PAR
	VALUES ("62d9d2ab-6d16-4b76-9df9-2f0005f6d7c5",
	"9e449252-29d5-4904-bb83-17879d28fc50",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	2,
	38);
INSERT INTO V_VAR
	VALUES ("acc59965-9860-469d-b1a9-b666a7d0f616",
	"2df22170-4754-4538-99e9-15a7bfc50a4c",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("acc59965-9860-469d-b1a9-b666a7d0f616",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_TXN
	VALUES ("33817a39-1f93-4349-b819-a0212da749b3",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("204841a2-8b18-479a-bf5b-b81300f7dd7c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"c7557236-3c4f-419b-ac90-6eb0d02c450a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a8f5d178-a642-4c73-9d7b-7e2f0dac301f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"204841a2-8b18-479a-bf5b-b81300f7dd7c");
INSERT INTO SM_AH
	VALUES ("a8f5d178-a642-4c73-9d7b-7e2f0dac301f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("a8f5d178-a642-4c73-9d7b-7e2f0dac301f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES ("2cecfd10-6585-4c54-b6c7-58b0ecc1061d",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"a8f5d178-a642-4c73-9d7b-7e2f0dac301f");
INSERT INTO ACT_ACT
	VALUES ("2cecfd10-6585-4c54-b6c7-58b0ecc1061d",
	'class transition',
	0,
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI_A4: startStopPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2cecfd10-6585-4c54-b6c7-58b0ecc1061d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9e7361e2-843e-4e33-8c2d-0d3680cc6592",
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	"3e8d4ef4-8917-4b41-bcbf-0d4f8b44490f",
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES ("9e7361e2-843e-4e33-8c2d-0d3680cc6592",
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("9e7361e2-843e-4e33-8c2d-0d3680cc6592",
	1,
	"2991de89-0fc2-435c-8544-02b6c83fcd78");
INSERT INTO E_CSME
	VALUES ("9e7361e2-843e-4e33-8c2d-0d3680cc6592",
	"c7557236-3c4f-419b-ac90-6eb0d02c450a");
INSERT INTO E_CEA
	VALUES ("9e7361e2-843e-4e33-8c2d-0d3680cc6592");
INSERT INTO ACT_SMT
	VALUES ("3e8d4ef4-8917-4b41-bcbf-0d4f8b44490f",
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	"73de055c-8018-46e0-b856-8147c1f6cfe7",
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES ("3e8d4ef4-8917-4b41-bcbf-0d4f8b44490f",
	"445ee713-7c01-4144-9a5d-1fbfd9732c86",
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("73de055c-8018-46e0-b856-8147c1f6cfe7",
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES ("73de055c-8018-46e0-b856-8147c1f6cfe7",
	"a16e92b1-f360-42fc-899e-7128dacfbff5",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("d3c0d13e-69b2-4173-8e98-a4884c6546f8",
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4");
INSERT INTO V_TVL
	VALUES ("d3c0d13e-69b2-4173-8e98-a4884c6546f8",
	"2991de89-0fc2-435c-8544-02b6c83fcd78");
INSERT INTO V_PAR
	VALUES ("d3c0d13e-69b2-4173-8e98-a4884c6546f8",
	"3e8d4ef4-8917-4b41-bcbf-0d4f8b44490f",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	2,
	38);
INSERT INTO V_VAR
	VALUES ("2991de89-0fc2-435c-8544-02b6c83fcd78",
	"1a7e1e47-2ae8-4593-a3d8-233904c057f4",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("2991de89-0fc2-435c-8544-02b6c83fcd78",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_TXN
	VALUES ("204841a2-8b18-479a-bf5b-b81300f7dd7c",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("de96de19-5051-424c-91e8-bea88d215c95",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"14762d34-0c10-450d-a1a6-85c3b594f962",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("d29ab6b9-a22e-49f2-9de3-98b41d1c3f6a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"de96de19-5051-424c-91e8-bea88d215c95");
INSERT INTO SM_AH
	VALUES ("d29ab6b9-a22e-49f2-9de3-98b41d1c3f6a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("d29ab6b9-a22e-49f2-9de3-98b41d1c3f6a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES ("ff4587ad-b9c2-4a4d-a62d-53d3758e623f",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"d29ab6b9-a22e-49f2-9de3-98b41d1c3f6a");
INSERT INTO ACT_ACT
	VALUES ("ff4587ad-b9c2-4a4d-a62d-53d3758e623f",
	'class transition',
	0,
	"1f835817-1e0e-4178-be3b-8da637b32d9b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI_A5: lapResetPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1f835817-1e0e-4178-be3b-8da637b32d9b",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ff4587ad-b9c2-4a4d-a62d-53d3758e623f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8078cdb1-9628-4420-a1bd-bb03662fb0a6",
	"1f835817-1e0e-4178-be3b-8da637b32d9b",
	"4d88dcb4-4132-4f85-ad52-22175927ae41",
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES ("8078cdb1-9628-4420-a1bd-bb03662fb0a6",
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	57,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("8078cdb1-9628-4420-a1bd-bb03662fb0a6",
	1,
	"60549d5c-9898-46e2-b531-35e9c4977a51");
INSERT INTO E_CSME
	VALUES ("8078cdb1-9628-4420-a1bd-bb03662fb0a6",
	"14762d34-0c10-450d-a1a6-85c3b594f962");
INSERT INTO E_CEA
	VALUES ("8078cdb1-9628-4420-a1bd-bb03662fb0a6");
INSERT INTO ACT_SMT
	VALUES ("4d88dcb4-4132-4f85-ad52-22175927ae41",
	"1f835817-1e0e-4178-be3b-8da637b32d9b",
	"54c216ca-2af1-4925-a7ff-5e27e82b97b4",
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES ("4d88dcb4-4132-4f85-ad52-22175927ae41",
	"1feb80c3-ccfd-4caa-b31d-abe2efc39ae8",
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("54c216ca-2af1-4925-a7ff-5e27e82b97b4",
	"1f835817-1e0e-4178-be3b-8da637b32d9b",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES ("54c216ca-2af1-4925-a7ff-5e27e82b97b4",
	"e33ea2a2-e396-4162-b923-cb7c643925ad",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("9278bd61-24be-4cc2-9580-8e092b521ac1",
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"1f835817-1e0e-4178-be3b-8da637b32d9b");
INSERT INTO V_TVL
	VALUES ("9278bd61-24be-4cc2-9580-8e092b521ac1",
	"60549d5c-9898-46e2-b531-35e9c4977a51");
INSERT INTO V_PAR
	VALUES ("9278bd61-24be-4cc2-9580-8e092b521ac1",
	"4d88dcb4-4132-4f85-ad52-22175927ae41",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	2,
	37);
INSERT INTO V_VAR
	VALUES ("60549d5c-9898-46e2-b531-35e9c4977a51",
	"1f835817-1e0e-4178-be3b-8da637b32d9b",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("60549d5c-9898-46e2-b531-35e9c4977a51",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_TXN
	VALUES ("de96de19-5051-424c-91e8-bea88d215c95",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("36cb1aba-dcca-405e-8475-3b32261436bd",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"a66a940e-8ded-482f-a925-944009c675f9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("cc79c56e-d870-42c8-9d89-c3fadc5d19ea",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"36cb1aba-dcca-405e-8475-3b32261436bd");
INSERT INTO SM_AH
	VALUES ("cc79c56e-d870-42c8-9d89-c3fadc5d19ea",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("cc79c56e-d870-42c8-9d89-c3fadc5d19ea",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES ("54f730fe-5462-43b0-b1fa-e009034e7d98",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"cc79c56e-d870-42c8-9d89-c3fadc5d19ea");
INSERT INTO ACT_ACT
	VALUES ("54f730fe-5462-43b0-b1fa-e009034e7d98",
	'class transition',
	0,
	"930281de-149f-4911-9eb3-edfec80c8210",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI_A6: lightPressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("930281de-149f-4911-9eb3-edfec80c8210",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"54f730fe-5462-43b0-b1fa-e009034e7d98",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8e3c3051-cee5-4dd0-95f8-ce8a1011e6a7",
	"930281de-149f-4911-9eb3-edfec80c8210",
	"e7a745c4-b35f-4739-9966-b49e7d3a20ca",
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES ("8e3c3051-cee5-4dd0-95f8-ce8a1011e6a7",
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("8e3c3051-cee5-4dd0-95f8-ce8a1011e6a7",
	1,
	"fd420bac-f969-4706-9e26-721abdbc322f");
INSERT INTO E_CSME
	VALUES ("8e3c3051-cee5-4dd0-95f8-ce8a1011e6a7",
	"a66a940e-8ded-482f-a925-944009c675f9");
INSERT INTO E_CEA
	VALUES ("8e3c3051-cee5-4dd0-95f8-ce8a1011e6a7");
INSERT INTO ACT_SMT
	VALUES ("e7a745c4-b35f-4739-9966-b49e7d3a20ca",
	"930281de-149f-4911-9eb3-edfec80c8210",
	"b81a0463-bbf9-45b3-89cf-858d67a61a1f",
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES ("e7a745c4-b35f-4739-9966-b49e7d3a20ca",
	"7535c82c-2693-4fee-999a-36e401c1d7d6",
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("b81a0463-bbf9-45b3-89cf-858d67a61a1f",
	"930281de-149f-4911-9eb3-edfec80c8210",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES ("b81a0463-bbf9-45b3-89cf-858d67a61a1f",
	"6fba1164-c3de-4276-9036-f3bef1dbb205",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("fdbb9e96-b96d-4f0c-a52c-925230321fa2",
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"930281de-149f-4911-9eb3-edfec80c8210");
INSERT INTO V_TVL
	VALUES ("fdbb9e96-b96d-4f0c-a52c-925230321fa2",
	"fd420bac-f969-4706-9e26-721abdbc322f");
INSERT INTO V_PAR
	VALUES ("fdbb9e96-b96d-4f0c-a52c-925230321fa2",
	"e7a745c4-b35f-4739-9966-b49e7d3a20ca",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	2,
	34);
INSERT INTO V_VAR
	VALUES ("fd420bac-f969-4706-9e26-721abdbc322f",
	"930281de-149f-4911-9eb3-edfec80c8210",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("fd420bac-f969-4706-9e26-721abdbc322f",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_TXN
	VALUES ("36cb1aba-dcca-405e-8475-3b32261436bd",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("91d4f1f3-b1ea-4c9b-a9c0-b08a287dab1a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"79984006-6621-42bc-9b2b-b2bf31248b0c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("dbaff6b7-c97a-44f3-8b82-4e4dca7ae3a7",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"91d4f1f3-b1ea-4c9b-a9c0-b08a287dab1a");
INSERT INTO SM_AH
	VALUES ("dbaff6b7-c97a-44f3-8b82-4e4dca7ae3a7",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3");
INSERT INTO SM_ACT
	VALUES ("dbaff6b7-c97a-44f3-8b82-4e4dca7ae3a7",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES ("9bd94bee-8633-4956-a75a-fdb88c437427",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"dbaff6b7-c97a-44f3-8b82-4e4dca7ae3a7");
INSERT INTO ACT_ACT
	VALUES ("9bd94bee-8633-4956-a75a-fdb88c437427",
	'class transition',
	0,
	"f60c9347-3dca-459f-b89d-10043aab2fbc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'UI_A7: modePressed',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f60c9347-3dca-459f-b89d-10043aab2fbc",
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9bd94bee-8633-4956-a75a-fdb88c437427",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("bd1a94e6-cc02-4dba-832a-509ce23e418a",
	"f60c9347-3dca-459f-b89d-10043aab2fbc",
	"4542e24b-ef12-4650-a612-2214f1c86e34",
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES ("bd1a94e6-cc02-4dba-832a-509ce23e418a",
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	53,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("bd1a94e6-cc02-4dba-832a-509ce23e418a",
	1,
	"dcc6599e-2c1a-4ecc-bd84-29b40d013afa");
INSERT INTO E_CSME
	VALUES ("bd1a94e6-cc02-4dba-832a-509ce23e418a",
	"79984006-6621-42bc-9b2b-b2bf31248b0c");
INSERT INTO E_CEA
	VALUES ("bd1a94e6-cc02-4dba-832a-509ce23e418a");
INSERT INTO ACT_SMT
	VALUES ("4542e24b-ef12-4650-a612-2214f1c86e34",
	"f60c9347-3dca-459f-b89d-10043aab2fbc",
	"42e1410e-1dcb-4227-ac52-b5280002ed8e",
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES ("4542e24b-ef12-4650-a612-2214f1c86e34",
	"c29b1084-f6e9-4dc4-a37e-0ed94828d8ad",
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("42e1410e-1dcb-4227-ac52-b5280002ed8e",
	"f60c9347-3dca-459f-b89d-10043aab2fbc",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES ("42e1410e-1dcb-4227-ac52-b5280002ed8e",
	"8e9dcf79-c680-4611-a644-78f7e911469c",
	3,
	3);
INSERT INTO V_VAL
	VALUES ("170921a4-7a66-4846-872a-a370e3d13e25",
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"f60c9347-3dca-459f-b89d-10043aab2fbc");
INSERT INTO V_TVL
	VALUES ("170921a4-7a66-4846-872a-a370e3d13e25",
	"dcc6599e-2c1a-4ecc-bd84-29b40d013afa");
INSERT INTO V_PAR
	VALUES ("170921a4-7a66-4846-872a-a370e3d13e25",
	"4542e24b-ef12-4650-a612-2214f1c86e34",
	"00000000-0000-0000-0000-000000000000",
	'evt',
	"00000000-0000-0000-0000-000000000000",
	2,
	33);
INSERT INTO V_VAR
	VALUES ("dcc6599e-2c1a-4ecc-bd84-29b40d013afa",
	"f60c9347-3dca-459f-b89d-10043aab2fbc",
	'evt',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("dcc6599e-2c1a-4ecc-bd84-29b40d013afa",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_TXN
	VALUES ("91d4f1f3-b1ea-4c9b-a9c0-b08a287dab1a",
	"11c7fb3f-318f-42c6-b2c7-a536ff71b5e3",
	"39f5a5f2-9c14-49da-9473-ff8119601f00",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	1,
	"963063d8-36dc-4252-9d2f-81cac3ef402a",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	"00000000-0000-0000-0000-000000000000",
	"de67a47f-ebe1-4130-8a1c-1ba9d58f6cfb",
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	1,
	"3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"00000000-0000-0000-0000-000000000000",
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES ("c4d38d38-e8ca-46dc-a564-6a72625c87fc");
INSERT INTO S_ENUM
	VALUES ("ca42057e-708e-4242-b608-09a079ac0bf3",
	'km',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_ENUM
	VALUES ("2480d904-80f2-4e5c-aeda-315e77ae2d0f",
	'meters',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"ca42057e-708e-4242-b608-09a079ac0bf3");
INSERT INTO S_ENUM
	VALUES ("da234bff-2f05-4dd4-9ed2-28529c8c4401",
	'minPerKm',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"2480d904-80f2-4e5c-aeda-315e77ae2d0f");
INSERT INTO S_ENUM
	VALUES ("ad0dca51-be89-4ba8-9be7-cc30caa6a793",
	'kmPerHour',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"da234bff-2f05-4dd4-9ed2-28529c8c4401");
INSERT INTO S_ENUM
	VALUES ("cd5d3b7b-63e4-44ce-84fb-b47d34849a78",
	'miles',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"ad0dca51-be89-4ba8-9be7-cc30caa6a793");
INSERT INTO S_ENUM
	VALUES ("f8029676-74de-43b8-9b4e-b576c55b5b5d",
	'yards',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"cd5d3b7b-63e4-44ce-84fb-b47d34849a78");
INSERT INTO S_ENUM
	VALUES ("6360b570-dfe0-49aa-a103-95dc96b5bf88",
	'feet',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"f8029676-74de-43b8-9b4e-b576c55b5b5d");
INSERT INTO S_ENUM
	VALUES ("50e47af0-9509-4eb0-bb2f-821fedb48b1c",
	'minPerMile',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"6360b570-dfe0-49aa-a103-95dc96b5bf88");
INSERT INTO S_ENUM
	VALUES ("870750fc-315e-4086-95d1-51f78dd71173",
	'mph',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"50e47af0-9509-4eb0-bb2f-821fedb48b1c");
INSERT INTO S_ENUM
	VALUES ("4d653ad9-fc24-4028-8aee-4eaf58f18fef",
	'bpm',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"870750fc-315e-4086-95d1-51f78dd71173");
INSERT INTO S_ENUM
	VALUES ("65b05d85-4965-43a9-aab2-ec8bbcbbbac3",
	'laps',
	'',
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	"4d653ad9-fc24-4028-8aee-4eaf58f18fef");
INSERT INTO PE_PE
	VALUES ("fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	1,
	"3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"00000000-0000-0000-0000-000000000000",
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES ("fb481f8e-1e2a-43f7-8ae4-0d46167c8407");
INSERT INTO S_ENUM
	VALUES ("bfcfb13d-2405-4556-ac08-9dcb68fe93cc",
	'Blank',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_ENUM
	VALUES ("a18b7f18-190a-41a6-8d84-5e395a2c3f1b",
	'Down',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"bfcfb13d-2405-4556-ac08-9dcb68fe93cc");
INSERT INTO S_ENUM
	VALUES ("b57f0cef-a243-4175-83e7-77765500e5e3",
	'Flat',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"a18b7f18-190a-41a6-8d84-5e395a2c3f1b");
INSERT INTO S_ENUM
	VALUES ("23d6047d-33fd-4b4b-b9e9-6115aea3ac0d",
	'Up',
	'',
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	"b57f0cef-a243-4175-83e7-77765500e5e3");
INSERT INTO PE_PE
	VALUES ("5933c727-4174-4903-ac7e-68fc171bedbc",
	1,
	"3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("5933c727-4174-4903-ac7e-68fc171bedbc",
	"00000000-0000-0000-0000-000000000000",
	'UI',
	'');
INSERT INTO C_EP
	VALUES ("abcdffbc-005f-4b6a-afe0-35dd9c09251d",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES ("abcdffbc-005f-4b6a-afe0-35dd9c09251d",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setTime',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("09d9e9d1-f95a-4541-b8fa-2479c29a7cb2",
	"abcdffbc-005f-4b6a-afe0-35dd9c09251d",
	"ba5eda7a-def5-0000-0000-000000000002",
	'time',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("72f33bcf-c0e7-4d11-a546-8ee8249010ea",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES ("72f33bcf-c0e7-4d11-a546-8ee8249010ea",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setData',
	'',
	0,
	'',
	"abcdffbc-005f-4b6a-afe0-35dd9c09251d");
INSERT INTO C_PP
	VALUES ("e527bf1b-a134-43b9-a72e-8000505b060b",
	"72f33bcf-c0e7-4d11-a546-8ee8249010ea",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("8af63c58-f23c-47b6-8c12-d8fb79ca02cf",
	"72f33bcf-c0e7-4d11-a546-8ee8249010ea",
	"c4d38d38-e8ca-46dc-a564-6a72625c87fc",
	'unit',
	'',
	0,
	'',
	"e527bf1b-a134-43b9-a72e-8000505b060b");
INSERT INTO C_EP
	VALUES ("56346e44-7226-4c2f-b797-7f288121d196",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES ("56346e44-7226-4c2f-b797-7f288121d196",
	"ba5eda7a-def5-0000-0000-000000000000",
	'startTest',
	'',
	0,
	'',
	"72f33bcf-c0e7-4d11-a546-8ee8249010ea");
INSERT INTO C_EP
	VALUES ("428ef670-e09d-4432-8b95-d9e7d1ebc6f6",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES ("428ef670-e09d-4432-8b95-d9e7d1ebc6f6",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setIndicator',
	'',
	0,
	'',
	"56346e44-7226-4c2f-b797-7f288121d196");
INSERT INTO C_PP
	VALUES ("9998c92c-5b1a-4f7d-a19d-290f02b88d4e",
	"428ef670-e09d-4432-8b95-d9e7d1ebc6f6",
	"fb481f8e-1e2a-43f7-8ae4-0d46167c8407",
	'indicator',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"5933c727-4174-4903-ac7e-68fc171bedbc",
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES ("f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"ba5eda7a-def5-0000-0000-000000000000",
	'newGoalSpec',
	'',
	0,
	'',
	"428ef670-e09d-4432-8b95-d9e7d1ebc6f6");
INSERT INTO C_PP
	VALUES ("dab7bd86-7dd5-4c08-a2b6-5b3070354bf1",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"ba5eda7a-def5-0000-0000-000000000002",
	'sequenceNumber',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("b3e6f528-2bac-4b7e-b790-adc9e5ea7fba",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"ba5eda7a-def5-0000-0000-000000000003",
	'minimum',
	'',
	0,
	'',
	"dab7bd86-7dd5-4c08-a2b6-5b3070354bf1");
INSERT INTO C_PP
	VALUES ("bde5dc7b-25ed-4615-b109-f8e3941ea806",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"ba5eda7a-def5-0000-0000-000000000003",
	'maximum',
	'',
	0,
	'',
	"b3e6f528-2bac-4b7e-b790-adc9e5ea7fba");
INSERT INTO C_PP
	VALUES ("992fdd9f-ccaa-405b-b8d1-a910ed6112d3",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"ba5eda7a-def5-0000-0000-000000000003",
	'span',
	'',
	0,
	'',
	"bde5dc7b-25ed-4615-b109-f8e3941ea806");
INSERT INTO C_PP
	VALUES ("aeef98ad-b7c6-441e-b812-afffdb1864ec",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	'criteriaType',
	'',
	0,
	'',
	"992fdd9f-ccaa-405b-b8d1-a910ed6112d3");
INSERT INTO C_PP
	VALUES ("ae5dc5ad-4590-4dd2-b2cf-03413171a209",
	"f4cedc97-d0ec-4eb5-83ce-76596b2a89f7",
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	'spanType',
	'',
	0,
	'',
	"aeef98ad-b7c6-441e-b812-afffdb1864ec");
INSERT INTO PE_PE
	VALUES ("db6dbc0b-1793-471c-9b02-85eb09984804",
	1,
	"3b755a1b-445a-4e69-8b8d-8f0eda33187a",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("db6dbc0b-1793-471c-9b02-85eb09984804",
	"00000000-0000-0000-0000-000000000000",
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES ("c47d2170-f61f-45be-96c3-5e2e74562b25",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES ("c47d2170-f61f-45be-96c3-5e2e74562b25",
	"ba5eda7a-def5-0000-0000-000000000000",
	'setTargetPressed',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("5fd41449-b4df-423a-840f-0b2f035961cd",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES ("5fd41449-b4df-423a-840f-0b2f035961cd",
	"ba5eda7a-def5-0000-0000-000000000000",
	'startStopPressed',
	'',
	0,
	'',
	"c47d2170-f61f-45be-96c3-5e2e74562b25");
INSERT INTO C_EP
	VALUES ("eb820fd4-d5da-44e1-8e29-cd49dd14f605",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES ("eb820fd4-d5da-44e1-8e29-cd49dd14f605",
	"ba5eda7a-def5-0000-0000-000000000000",
	'lapResetPressed',
	'',
	0,
	'',
	"5fd41449-b4df-423a-840f-0b2f035961cd");
INSERT INTO C_EP
	VALUES ("d537a788-4f30-44cb-b374-26cd0027e3f7",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES ("d537a788-4f30-44cb-b374-26cd0027e3f7",
	"ba5eda7a-def5-0000-0000-000000000000",
	'modePressed',
	'',
	0,
	'',
	"eb820fd4-d5da-44e1-8e29-cd49dd14f605");
INSERT INTO C_EP
	VALUES ("340aeb62-4318-41e9-a8fb-b76200969765",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES ("340aeb62-4318-41e9-a8fb-b76200969765",
	"ba5eda7a-def5-0000-0000-000000000000",
	'newGoalSpec',
	'',
	0,
	'',
	"d537a788-4f30-44cb-b374-26cd0027e3f7");
INSERT INTO C_PP
	VALUES ("b9ae7101-7a59-4654-84ab-a589ef3df6bd",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"ba5eda7a-def5-0000-0000-000000000002",
	'sequenceNumber',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("918ad660-bfa5-4a6d-bcb9-5a2558fb11ad",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"ba5eda7a-def5-0000-0000-000000000003",
	'minimum',
	'',
	0,
	'',
	"b9ae7101-7a59-4654-84ab-a589ef3df6bd");
INSERT INTO C_PP
	VALUES ("8150db67-8851-4fd8-bf81-6cf1e8056b1d",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"ba5eda7a-def5-0000-0000-000000000003",
	'maximum',
	'',
	0,
	'',
	"918ad660-bfa5-4a6d-bcb9-5a2558fb11ad");
INSERT INTO C_PP
	VALUES ("827155b0-07b3-4a88-a64e-0869493ed797",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"ba5eda7a-def5-0000-0000-000000000003",
	'span',
	'',
	0,
	'',
	"8150db67-8851-4fd8-bf81-6cf1e8056b1d");
INSERT INTO C_PP
	VALUES ("dfc653e0-b971-4c5b-96ac-359fbb111ddf",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	'criteriaType',
	'',
	0,
	'',
	"827155b0-07b3-4a88-a64e-0869493ed797");
INSERT INTO C_PP
	VALUES ("2abf2ca1-08db-47f1-9a68-60c9b8a1e3d2",
	"340aeb62-4318-41e9-a8fb-b76200969765",
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	'spanType',
	'',
	0,
	'',
	"dfc653e0-b971-4c5b-96ac-359fbb111ddf");
INSERT INTO C_EP
	VALUES ("4890bac3-9718-4e46-8a17-5623515567f0",
	"db6dbc0b-1793-471c-9b02-85eb09984804",
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES ("4890bac3-9718-4e46-8a17-5623515567f0",
	"ba5eda7a-def5-0000-0000-000000000000",
	'lightPressed',
	'',
	0,
	'',
	"340aeb62-4318-41e9-a8fb-b76200969765");
INSERT INTO S_ENUM_PROXY
	VALUES ("daeeff4f-a248-407a-bc5e-0ff935283686",
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"3e48843f-0ea9-4021-97ba-72f059cce838",
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
INSERT INTO S_DT_PROXY
	VALUES ("c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"00000000-0000-0000-0000-000000000000",
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'',
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("551f0f2f-8f74-4e3e-967c-a55240214bfc",
	'Distance',
	'A distance-based span is specified in meters.',
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"00000000-0000-0000-0000-000000000000",
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
INSERT INTO S_DT_PROXY
	VALUES ("7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"00000000-0000-0000-0000-000000000000",
	'GoalSpan',
	'',
	'',
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("3e48843f-0ea9-4021-97ba-72f059cce838",
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	"c3fd0a3f-4139-4a90-9067-60efc88d78de",
	"00000000-0000-0000-0000-000000000000",
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
INSERT INTO S_ENUM_PROXY
	VALUES ("7e91dc9f-7811-40fe-92f9-a95b38dc245a",
	'Time',
	'A time-based span is specified in seconds.',
	"7da35691-ac6f-46a8-bd95-7ccf35018bde",
	"551f0f2f-8f74-4e3e-967c-a55240214bfc",
	'../../../Tracking/models/Tracking/Tracking/shared/shared.xtuml');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("0c9c0840-b1dd-474b-8379-2afe01d8d36a",
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES ("9f4f2d2e-88b6-4c90-97ba-3ea885e845bf",
	"0c9c0840-b1dd-474b-8379-2afe01d8d36a",
	"0c9c0840-b1dd-474b-8379-2afe01d8d36a",
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("1a982793-0bde-465c-8cbe-cdefa9efd095",
	1,
	"9f4f2d2e-88b6-4c90-97ba-3ea885e845bf",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("1a982793-0bde-465c-8cbe-cdefa9efd095",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'HeartRateMonitor',
	'Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("c21c0c08-1d69-420a-91d4-dbd8274716cc",
	"1a982793-0bde-465c-8cbe-cdefa9efd095",
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES ("9ed7385b-34ce-439d-905f-5ad468613649",
	"5c507480-cb44-41f2-911f-4b6271cc9722",
	"00000000-0000-0000-0000-000000000000",
	"c21c0c08-1d69-420a-91d4-dbd8274716cc");
INSERT INTO C_P
	VALUES ("9ed7385b-34ce-439d-905f-5ad468613649",
	'HeartRateMonitor',
	'Unnamed Interface',
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES ("02e6a56e-5938-45c0-a21f-d4469cb3a2d2",
	"aa6c48b1-e316-4aff-b3d0-f47517f83f98",
	"9ed7385b-34ce-439d-905f-5ad468613649");
INSERT INTO SPR_PO
	VALUES ("02e6a56e-5938-45c0-a21f-d4469cb3a2d2",
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES ("9f29b5fe-6440-4e7b-8b57-5285265aeff7",
	"02e6a56e-5938-45c0-a21f-d4469cb3a2d2");
INSERT INTO ACT_ACT
	VALUES ("9f29b5fe-6440-4e7b-8b57-5285265aeff7",
	'interface operation',
	0,
	"71ccfcbd-ef12-4e51-aba9-377e65159455",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("71ccfcbd-ef12-4e51-aba9-377e65159455",
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	52,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9f29b5fe-6440-4e7b-8b57-5285265aeff7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("70b022f9-1551-47d2-a296-ac2dbce1937a",
	"71ccfcbd-ef12-4e51-aba9-377e65159455",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES ("70b022f9-1551-47d2-a296-ac2dbce1937a",
	1,
	0,
	1,
	10,
	1,
	30,
	1,
	52,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("70b022f9-1551-47d2-a296-ac2dbce1937a");
INSERT INTO E_GSME
	VALUES ("70b022f9-1551-47d2-a296-ac2dbce1937a",
	"93680015-70ab-442d-b19d-47dc14796d43");
INSERT INTO E_GAR
	VALUES ("70b022f9-1551-47d2-a296-ac2dbce1937a");
INSERT INTO SPR_PEP
	VALUES ("cf1ae4ab-a165-4b5b-a91e-5f52b55219a3",
	"eb5b167c-30b2-4ec6-9291-b2c56aee7a72",
	"9ed7385b-34ce-439d-905f-5ad468613649");
INSERT INTO SPR_PO
	VALUES ("cf1ae4ab-a165-4b5b-a91e-5f52b55219a3",
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES ("4a8ebfae-11b3-49f6-be45-f3d851c72a39",
	"cf1ae4ab-a165-4b5b-a91e-5f52b55219a3");
INSERT INTO ACT_ACT
	VALUES ("4a8ebfae-11b3-49f6-be45-f3d851c72a39",
	'interface operation',
	0,
	"e4823ece-87cc-40d8-bf8e-cfa4544605cf",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e4823ece-87cc-40d8-bf8e-cfa4544605cf",
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	54,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4a8ebfae-11b3-49f6-be45-f3d851c72a39",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("a2eed06a-d3c7-4de5-95a4-bbc1c7914ab4",
	"e4823ece-87cc-40d8-bf8e-cfa4544605cf",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES ("a2eed06a-d3c7-4de5-95a4-bbc1c7914ab4",
	1,
	0,
	1,
	10,
	1,
	30,
	1,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES ("a2eed06a-d3c7-4de5-95a4-bbc1c7914ab4");
INSERT INTO E_GSME
	VALUES ("a2eed06a-d3c7-4de5-95a4-bbc1c7914ab4",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba");
INSERT INTO E_GAR
	VALUES ("a2eed06a-d3c7-4de5-95a4-bbc1c7914ab4");
INSERT INTO C_PO
	VALUES ("84ba7312-3233-4338-8783-5e804458c6ce",
	"1a982793-0bde-465c-8cbe-cdefa9efd095",
	'Unspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES ("5c514414-f2c1-4850-a439-e7ce61c43fa5",
	"8bdc4a13-4fbe-4b36-8323-217b1e7d24e1",
	"00000000-0000-0000-0000-000000000000",
	"84ba7312-3233-4338-8783-5e804458c6ce");
INSERT INTO C_R
	VALUES ("5c514414-f2c1-4850-a439-e7ce61c43fa5",
	'HeartRateMonitorUnspecified',
	'',
	'Unnamed Interface',
	'HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_REP
	VALUES ("90b4dd12-6df6-45c1-9064-5060f7b19fd6",
	"814897b8-f470-4747-83a0-a21abf1ead33",
	"5c514414-f2c1-4850-a439-e7ce61c43fa5");
INSERT INTO SPR_RO
	VALUES ("90b4dd12-6df6-45c1-9064-5060f7b19fd6",
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("37c6f64a-06eb-4765-b385-f8c164bd11c0",
	"90b4dd12-6df6-45c1-9064-5060f7b19fd6");
INSERT INTO ACT_ACT
	VALUES ("37c6f64a-06eb-4765-b385-f8c164bd11c0",
	'interface operation',
	0,
	"6d1c5896-821b-4540-911e-1a56f8965404",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6d1c5896-821b-4540-911e-1a56f8965404",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"37c6f64a-06eb-4765-b385-f8c164bd11c0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("cbaf2ad0-5b38-472c-95f7-244c4353f86a",
	1,
	"00000000-0000-0000-0000-000000000000",
	"1a982793-0bde-465c-8cbe-cdefa9efd095",
	7);
INSERT INTO EP_PKG
	VALUES ("cbaf2ad0-5b38-472c-95f7-244c4353f86a",
	"00000000-0000-0000-0000-000000000000",
	"0c9c0840-b1dd-474b-8379-2afe01d8d36a",
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("1e348064-a86c-4312-8ab7-4a2e28ef494b",
	1,
	"cbaf2ad0-5b38-472c-95f7-244c4353f86a",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES ("d29b5e8f-621e-4982-8e5b-5e249d288eaf",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a0ec45e3-8ea8-4185-83cb-c9b4b714d56f",
	"d29b5e8f-621e-4982-8e5b-5e249d288eaf",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d2ab0d06-df31-457c-9171-4e6dd8ca3b7e",
	"d29b5e8f-621e-4982-8e5b-5e249d288eaf");
INSERT INTO ACT_ACT
	VALUES ("d2ab0d06-df31-457c-9171-4e6dd8ca3b7e",
	'bridge',
	0,
	"a6675782-5adf-4d40-896a-5155b545e312",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a6675782-5adf-4d40-896a-5155b545e312",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d2ab0d06-df31-457c-9171-4e6dd8ca3b7e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("542a0c00-80bf-401b-aa5b-d7e6a5b545b5",
	"b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("0eb1891a-cf2d-4830-8fda-2faf7e5a9593",
	"b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49");
INSERT INTO ACT_ACT
	VALUES ("0eb1891a-cf2d-4830-8fda-2faf7e5a9593",
	'bridge',
	0,
	"aed3c335-9efd-4508-81a8-11ee9d88c765",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("aed3c335-9efd-4508-81a8-11ee9d88c765",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"0eb1891a-cf2d-4830-8fda-2faf7e5a9593",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0ba99cf9-9e2f-4c19-95cc-25abdb7139c7",
	"ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a3f10d60-8df7-40e0-8737-499557e6dc80",
	"ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb");
INSERT INTO ACT_ACT
	VALUES ("a3f10d60-8df7-40e0-8737-499557e6dc80",
	'bridge',
	0,
	"226a2bd4-8faa-4e81-830f-04ade8c43687",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("226a2bd4-8faa-4e81-830f-04ade8c43687",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a3f10d60-8df7-40e0-8737-499557e6dc80",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("481ce4bd-4486-4baa-b38d-497587669ef5",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("2a03b6de-e297-4e77-9b0b-b395d7842446",
	"481ce4bd-4486-4baa-b38d-497587669ef5",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("68c15187-9d04-4517-b732-5c82ed11d71b",
	"481ce4bd-4486-4baa-b38d-497587669ef5",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"2a03b6de-e297-4e77-9b0b-b395d7842446",
	'');
INSERT INTO ACT_BRB
	VALUES ("1dd84573-2bb7-4d17-9fd6-72bff9cc5f14",
	"481ce4bd-4486-4baa-b38d-497587669ef5");
INSERT INTO ACT_ACT
	VALUES ("1dd84573-2bb7-4d17-9fd6-72bff9cc5f14",
	'bridge',
	0,
	"348adb82-ceb1-4819-88b3-337c7cad08e6",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("348adb82-ceb1-4819-88b3-337c7cad08e6",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"1dd84573-2bb7-4d17-9fd6-72bff9cc5f14",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c093f590-6a61-4aa6-8033-f772c168b45f",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("c5c083af-1427-4eca-9304-ef4769385892",
	"c093f590-6a61-4aa6-8033-f772c168b45f",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"7bee1ca9-90e0-4d81-bef6-527e8b8c0f66",
	'');
INSERT INTO S_BPARM
	VALUES ("7bee1ca9-90e0-4d81-bef6-527e8b8c0f66",
	"c093f590-6a61-4aa6-8033-f772c168b45f",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("57e7133a-6126-4b4a-ad76-680885bf66a1",
	"c093f590-6a61-4aa6-8033-f772c168b45f");
INSERT INTO ACT_ACT
	VALUES ("57e7133a-6126-4b4a-ad76-680885bf66a1",
	'bridge',
	0,
	"e60ce693-d415-4747-a76a-7a616988304e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e60ce693-d415-4747-a76a-7a616988304e",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"57e7133a-6126-4b4a-ad76-680885bf66a1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("61e88cde-7892-450b-a745-cd5dea3808e3",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("4ec22874-136d-4e89-b94e-5d8311421414",
	"61e88cde-7892-450b-a745-cd5dea3808e3",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"63acd6a2-7200-4945-886e-0c67849a647e",
	'');
INSERT INTO S_BPARM
	VALUES ("63acd6a2-7200-4945-886e-0c67849a647e",
	"61e88cde-7892-450b-a745-cd5dea3808e3",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("accc66aa-0f3c-4b52-ba84-a314151c4c07",
	"61e88cde-7892-450b-a745-cd5dea3808e3");
INSERT INTO ACT_ACT
	VALUES ("accc66aa-0f3c-4b52-ba84-a314151c4c07",
	'bridge',
	0,
	"6b590cb5-f692-4e4a-b392-a025092f596a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6b590cb5-f692-4e4a-b392-a025092f596a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"accc66aa-0f3c-4b52-ba84-a314151c4c07",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("914cdc20-05ca-49de-8573-06c257001f4e",
	"1e348064-a86c-4312-8ab7-4a2e28ef494b",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("991bc75d-6e93-47a6-a19a-68d13ea19aac",
	"914cdc20-05ca-49de-8573-06c257001f4e",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("c02436b7-78d2-4d7f-b275-4de043db361d",
	"914cdc20-05ca-49de-8573-06c257001f4e");
INSERT INTO ACT_ACT
	VALUES ("c02436b7-78d2-4d7f-b275-4de043db361d",
	'bridge',
	0,
	"cef9b1d7-e1ab-450f-bcc8-118b94156708",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cef9b1d7-e1ab-450f-bcc8-118b94156708",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c02436b7-78d2-4d7f-b275-4de043db361d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	1,
	"cbaf2ad0-5b38-472c-95f7-244c4353f86a",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES ("914e22fe-94d1-410c-b8f7-8b6e556853fc",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("51e88c5a-8588-4e62-9a8c-5e20bf48fd20",
	"914e22fe-94d1-410c-b8f7-8b6e556853fc");
INSERT INTO ACT_ACT
	VALUES ("51e88c5a-8588-4e62-9a8c-5e20bf48fd20",
	'bridge',
	0,
	"4aba2e5e-5c1f-4879-9557-daf1a7660006",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4aba2e5e-5c1f-4879-9557-daf1a7660006",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"51e88c5a-8588-4e62-9a8c-5e20bf48fd20",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("669d3389-2fb0-44ed-a331-dfc9d525fc87",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("104f604d-0fdc-4bc6-8696-e5e05e99c184",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"b69011ec-0945-45e7-9029-9132a648d0b0",
	'');
INSERT INTO S_BPARM
	VALUES ("10417948-5d11-4a9a-97a4-e308868e479c",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"948ecdeb-e234-46cf-8f3e-4b5e1e5787b9",
	'');
INSERT INTO S_BPARM
	VALUES ("948ecdeb-e234-46cf-8f3e-4b5e1e5787b9",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"ea6b3ba7-1a42-4d10-9da2-edbb802d654f",
	'');
INSERT INTO S_BPARM
	VALUES ("ea6b3ba7-1a42-4d10-9da2-edbb802d654f",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("b69011ec-0945-45e7-9029-9132a648d0b0",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"10417948-5d11-4a9a-97a4-e308868e479c",
	'');
INSERT INTO S_BPARM
	VALUES ("2cc027a3-af63-4fbd-9d0e-49f53c08a5ec",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"104f604d-0fdc-4bc6-8696-e5e05e99c184",
	'');
INSERT INTO ACT_BRB
	VALUES ("9ceb846c-ecfb-4abd-8b72-cab629db5657",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87");
INSERT INTO ACT_ACT
	VALUES ("9ceb846c-ecfb-4abd-8b72-cab629db5657",
	'bridge',
	0,
	"d80bb804-fdda-4fda-b79b-4c6c445fd102",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d80bb804-fdda-4fda-b79b-4c6c445fd102",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"9ceb846c-ecfb-4abd-8b72-cab629db5657",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c632cd72-e232-4265-aec8-bab78e41b1f6",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("653adcbf-f1a1-4e20-8a2e-8a0211be0ecf",
	"c632cd72-e232-4265-aec8-bab78e41b1f6",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("8c37dbe4-a0e9-4937-b185-e852294e133b",
	"c632cd72-e232-4265-aec8-bab78e41b1f6");
INSERT INTO ACT_ACT
	VALUES ("8c37dbe4-a0e9-4937-b185-e852294e133b",
	'bridge',
	0,
	"a418e8a6-7f88-41e5-afc5-21a8d316f20b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a418e8a6-7f88-41e5-afc5-21a8d316f20b",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8c37dbe4-a0e9-4937-b185-e852294e133b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e4807cac-9de4-43a0-b0ea-ea5ef1f52b12",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("aec20657-8354-473b-80d8-b5766b0f9856",
	"e4807cac-9de4-43a0-b0ea-ea5ef1f52b12",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("282726f8-7fa0-4c8a-8581-410459c7b5a6",
	"e4807cac-9de4-43a0-b0ea-ea5ef1f52b12");
INSERT INTO ACT_ACT
	VALUES ("282726f8-7fa0-4c8a-8581-410459c7b5a6",
	'bridge',
	0,
	"f478f3bc-7677-4a2d-98d9-888a3e368fb8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f478f3bc-7677-4a2d-98d9-888a3e368fb8",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"282726f8-7fa0-4c8a-8581-410459c7b5a6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0c84dc08-503f-4674-aef8-86e0dfada4d4",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("2df0862d-a7e7-4206-b510-3d90af32497d",
	"0c84dc08-503f-4674-aef8-86e0dfada4d4",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("2d0d51f5-8338-4ab5-97f7-8b71c4b13952",
	"0c84dc08-503f-4674-aef8-86e0dfada4d4");
INSERT INTO ACT_ACT
	VALUES ("2d0d51f5-8338-4ab5-97f7-8b71c4b13952",
	'bridge',
	0,
	"ffcafa43-b5c3-4a0b-81b7-e64184e22b57",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ffcafa43-b5c3-4a0b-81b7-e64184e22b57",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"2d0d51f5-8338-4ab5-97f7-8b71c4b13952",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("263f3b28-80d8-45e8-a3a4-ef3c4b5252ca",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("1ed99f8f-2909-417a-8f76-36d23468ed24",
	"263f3b28-80d8-45e8-a3a4-ef3c4b5252ca",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("5413159d-ae66-4321-828b-7040fe65821b",
	"263f3b28-80d8-45e8-a3a4-ef3c4b5252ca");
INSERT INTO ACT_ACT
	VALUES ("5413159d-ae66-4321-828b-7040fe65821b",
	'bridge',
	0,
	"d89ee674-7c0c-4eb5-84de-7ad87e5a3b50",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d89ee674-7c0c-4eb5-84de-7ad87e5a3b50",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"5413159d-ae66-4321-828b-7040fe65821b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("1e6403c9-1cb6-455b-ac8d-4884320840f5",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("55d26326-4490-4fbc-b217-c7f132f36b94",
	"1e6403c9-1cb6-455b-ac8d-4884320840f5",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d49a5ce0-a304-45d6-97ad-2d1128290863",
	"1e6403c9-1cb6-455b-ac8d-4884320840f5");
INSERT INTO ACT_ACT
	VALUES ("d49a5ce0-a304-45d6-97ad-2d1128290863",
	'bridge',
	0,
	"41bee513-e48d-4725-ab90-a03ad35a0268",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("41bee513-e48d-4725-ab90-a03ad35a0268",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d49a5ce0-a304-45d6-97ad-2d1128290863",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("ade3b718-620b-45ea-8c2f-dae8e0e6379c",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a775e055-6162-4dc4-bb32-9162e059e7c8",
	"ade3b718-620b-45ea-8c2f-dae8e0e6379c",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("c64c4db8-738e-4e71-8140-679e189ccefb",
	"ade3b718-620b-45ea-8c2f-dae8e0e6379c");
INSERT INTO ACT_ACT
	VALUES ("c64c4db8-738e-4e71-8140-679e189ccefb",
	'bridge',
	0,
	"1c10ad9c-ebf6-4a17-8b77-efc69824eff2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1c10ad9c-ebf6-4a17-8b77-efc69824eff2",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c64c4db8-738e-4e71-8140-679e189ccefb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("312385c6-b733-48c1-9818-da78a8aa6976",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("291d9309-46f1-4904-992f-d8767f6888f3",
	"312385c6-b733-48c1-9818-da78a8aa6976");
INSERT INTO ACT_ACT
	VALUES ("291d9309-46f1-4904-992f-d8767f6888f3",
	'bridge',
	0,
	"babba032-d49a-46a8-955e-9ef2b35b209b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("babba032-d49a-46a8-955e-9ef2b35b209b",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"291d9309-46f1-4904-992f-d8767f6888f3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("fa4d6963-53c5-49f7-807c-4bc37ea3b224",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("e8271d3b-9cf8-4939-a450-4a889089dd25",
	"fa4d6963-53c5-49f7-807c-4bc37ea3b224",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"0f566dfa-dec4-4b28-89d6-669a273751fa",
	'');
INSERT INTO S_BPARM
	VALUES ("0f566dfa-dec4-4b28-89d6-669a273751fa",
	"fa4d6963-53c5-49f7-807c-4bc37ea3b224",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("36bc8247-2a52-438d-b213-047700fc9af3",
	"fa4d6963-53c5-49f7-807c-4bc37ea3b224");
INSERT INTO ACT_ACT
	VALUES ("36bc8247-2a52-438d-b213-047700fc9af3",
	'bridge',
	0,
	"39ca4ad0-048d-411b-869a-63873ae65730",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("39ca4ad0-048d-411b-869a-63873ae65730",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"36bc8247-2a52-438d-b213-047700fc9af3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("2fbaaa17-36e2-4001-a2c7-420c24340f03",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0de4aa9a-dda7-4f40-8e62-0c65c72854ee",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"298ebe93-d128-4d3e-9bd1-2718156d314d",
	'');
INSERT INTO S_BPARM
	VALUES ("298ebe93-d128-4d3e-9bd1-2718156d314d",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("8b4366f5-59ae-4253-9dcf-f896ab2864a9",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03");
INSERT INTO ACT_ACT
	VALUES ("8b4366f5-59ae-4253-9dcf-f896ab2864a9",
	'bridge',
	0,
	"15f42b7a-8a21-48e5-add3-24e8bcd53857",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("15f42b7a-8a21-48e5-add3-24e8bcd53857",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8b4366f5-59ae-4253-9dcf-f896ab2864a9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("8a6a0939-defe-471a-aae0-80fcdd901260",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("8214c481-50b1-4f77-8564-e2954582b0c9",
	"8a6a0939-defe-471a-aae0-80fcdd901260",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("73ec8c61-09ef-4fab-950c-28c45f2effc5",
	"8a6a0939-defe-471a-aae0-80fcdd901260");
INSERT INTO ACT_ACT
	VALUES ("73ec8c61-09ef-4fab-950c-28c45f2effc5",
	'bridge',
	0,
	"5a3e88ac-7e4f-47a0-a602-f9b8dc4b8c60",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5a3e88ac-7e4f-47a0-a602-f9b8dc4b8c60",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"73ec8c61-09ef-4fab-950c-28c45f2effc5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("9a02c6c8-594d-4bab-8046-d37ad2b9b896",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("7d7cdd6f-43d6-4fe7-aa91-9f29185dfdd3",
	"9a02c6c8-594d-4bab-8046-d37ad2b9b896",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"f8d586a0-a0be-458a-a956-419fc3127aac",
	'');
INSERT INTO S_BPARM
	VALUES ("f8d586a0-a0be-458a-a956-419fc3127aac",
	"9a02c6c8-594d-4bab-8046-d37ad2b9b896",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("1a22cbcc-b962-4c3a-ae24-ff715bdfaf80",
	"9a02c6c8-594d-4bab-8046-d37ad2b9b896");
INSERT INTO ACT_ACT
	VALUES ("1a22cbcc-b962-4c3a-ae24-ff715bdfaf80",
	'bridge',
	0,
	"53496e94-922c-4c79-bdc9-e2ca04601240",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("53496e94-922c-4c79-bdc9-e2ca04601240",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"1a22cbcc-b962-4c3a-ae24-ff715bdfaf80",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("bd226056-4f54-422c-ac28-c41acc2e5e4d",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("bd79fb96-b843-4817-a8ea-0a30699a782f",
	"bd226056-4f54-422c-ac28-c41acc2e5e4d",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"9165de7d-bedc-4250-a7ec-f5535c0b84ba",
	'');
INSERT INTO S_BPARM
	VALUES ("9165de7d-bedc-4250-a7ec-f5535c0b84ba",
	"bd226056-4f54-422c-ac28-c41acc2e5e4d",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("20110bdb-439a-436b-ba8d-a9c2722e9a76",
	"bd226056-4f54-422c-ac28-c41acc2e5e4d");
INSERT INTO ACT_ACT
	VALUES ("20110bdb-439a-436b-ba8d-a9c2722e9a76",
	'bridge',
	0,
	"e746a7a2-801f-4f40-b478-56e9ed2f44d5",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e746a7a2-801f-4f40-b478-56e9ed2f44d5",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"20110bdb-439a-436b-ba8d-a9c2722e9a76",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("8569d687-8192-4f46-a549-a1f6d8b4640b",
	"13593b9d-05e1-4033-b7f0-436c3bca4bd4",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("d874d906-c756-43fa-bb4b-38792bba30e7",
	"8569d687-8192-4f46-a549-a1f6d8b4640b",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("567ca676-d29c-4d66-b33a-510b31625ebc",
	"8569d687-8192-4f46-a549-a1f6d8b4640b");
INSERT INTO ACT_ACT
	VALUES ("567ca676-d29c-4d66-b33a-510b31625ebc",
	'bridge',
	0,
	"ca948f94-974f-4492-8a11-353ad3de06be",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ca948f94-974f-4492-8a11-353ad3de06be",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"567ca676-d29c-4d66-b33a-510b31625ebc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	1,
	"cbaf2ad0-5b38-472c-95f7-244c4353f86a",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_NBATTR
	VALUES ("9ea7282f-db77-4f8b-a2b8-c2745d9fd128",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_BATTR
	VALUES ("9ea7282f-db77-4f8b-a2b8-c2745d9fd128",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_ATTR
	VALUES ("9ea7282f-db77-4f8b-a2b8-c2745d9fd128",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"00000000-0000-0000-0000-000000000000",
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("60873069-ba53-4271-b45b-1f499d8b97e9",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_BATTR
	VALUES ("60873069-ba53-4271-b45b-1f499d8b97e9",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_ATTR
	VALUES ("60873069-ba53-4271-b45b-1f499d8b97e9",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128",
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_ID
	VALUES (1,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO O_ID
	VALUES (2,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO SM_ASM
	VALUES ("210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO SM_SM
	VALUES ("210c16d9-08db-41d4-91c2-35b116fa8c0f",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_LEVT
	VALUES ("0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES ("93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES ("0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("871c20d0-4bd3-4168-be90-5e9092220e2c",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0");
INSERT INTO SM_AH
	VALUES ("871c20d0-4bd3-4168-be90-5e9092220e2c",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_ACT
	VALUES ("871c20d0-4bd3-4168-be90-5e9092220e2c",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES ("ae3db8c4-8b73-435c-8dc2-fa330f6856b2",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"871c20d0-4bd3-4168-be90-5e9092220e2c");
INSERT INTO ACT_ACT
	VALUES ("ae3db8c4-8b73-435c-8dc2-fa330f6856b2",
	'class state',
	0,
	"f184637e-c172-4686-ab9b-0fff72c244e8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::idle',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f184637e-c172-4686-ab9b-0fff72c244e8",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ae3db8c4-8b73-435c-8dc2-fa330f6856b2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_STATE
	VALUES ("c7548789-5484-4310-8362-cbe332766cd2",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("c7548789-5484-4310-8362-cbe332766cd2",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("c7548789-5484-4310-8362-cbe332766cd2",
	"93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("c7548789-5484-4310-8362-cbe332766cd2",
	"93680015-70ab-442d-b19d-47dc14796d43",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("c7548789-5484-4310-8362-cbe332766cd2",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("85caa7f0-4965-4763-9dd6-9cc8a784a3a8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"c7548789-5484-4310-8362-cbe332766cd2");
INSERT INTO SM_AH
	VALUES ("85caa7f0-4965-4763-9dd6-9cc8a784a3a8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_ACT
	VALUES ("85caa7f0-4965-4763-9dd6-9cc8a784a3a8",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES ("c3bf53e4-cc10-4d26-b538-519b34cf0ce3",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"85caa7f0-4965-4763-9dd6-9cc8a784a3a8");
INSERT INTO ACT_ACT
	VALUES ("c3bf53e4-cc10-4d26-b538-519b34cf0ce3",
	'class state',
	0,
	"85424e44-02d0-4a97-b535-7625b0ce5424",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::monitoring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("85424e44-02d0-4a97-b535-7625b0ce5424",
	1,
	0,
	0,
	'Unspecified',
	'',
	'',
	3,
	1,
	2,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c3bf53e4-cc10-4d26-b538-519b34cf0ce3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("38c3d817-b926-4581-adf1-97aec17462a0",
	"85424e44-02d0-4a97-b535-7625b0ce5424",
	"7a8d07fa-0714-45b7-9d98-33c0d1c754e7",
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES ("38c3d817-b926-4581-adf1-97aec17462a0",
	"a8216382-849e-473a-8372-3dce1c789b73",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	1,
	38);
INSERT INTO ACT_SMT
	VALUES ("7a8d07fa-0714-45b7-9d98-33c0d1c754e7",
	"85424e44-02d0-4a97-b535-7625b0ce5424",
	"8087abd3-3a9a-4ea2-a5af-0a869ed7dc76",
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES ("7a8d07fa-0714-45b7-9d98-33c0d1c754e7",
	2,
	19,
	2,
	6,
	"00000000-0000-0000-0000-000000000000",
	"90b4dd12-6df6-45c1-9064-5060f7b19fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8087abd3-3a9a-4ea2-a5af-0a869ed7dc76",
	"85424e44-02d0-4a97-b535-7625b0ce5424",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES ("8087abd3-3a9a-4ea2-a5af-0a869ed7dc76",
	"2e625453-36b5-4e92-95b5-c5071690a74b",
	"3c2e39e1-2a6f-4096-88b8-1aea877e5254",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("fb4a0b3c-1329-4b8c-992e-5944fe5a05b7",
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_IRF
	VALUES ("fb4a0b3c-1329-4b8c-992e-5944fe5a05b7",
	"a8216382-849e-473a-8372-3dce1c789b73");
INSERT INTO V_VAL
	VALUES ("99209388-cd4a-400c-ae36-ee8d12a8041d",
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_AVL
	VALUES ("99209388-cd4a-400c-ae36-ee8d12a8041d",
	"fb4a0b3c-1329-4b8c-992e-5944fe5a05b7",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_PAR
	VALUES ("99209388-cd4a-400c-ae36-ee8d12a8041d",
	"7a8d07fa-0714-45b7-9d98-33c0d1c754e7",
	"00000000-0000-0000-0000-000000000000",
	'heartRate',
	"00000000-0000-0000-0000-000000000000",
	2,
	36);
INSERT INTO V_VAL
	VALUES ("ca809b76-9dcf-434f-b990-07a28b7186ef",
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_IRF
	VALUES ("ca809b76-9dcf-434f-b990-07a28b7186ef",
	"a8216382-849e-473a-8372-3dce1c789b73");
INSERT INTO V_VAL
	VALUES ("3c2e39e1-2a6f-4096-88b8-1aea877e5254",
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_AVL
	VALUES ("3c2e39e1-2a6f-4096-88b8-1aea877e5254",
	"ca809b76-9dcf-434f-b990-07a28b7186ef",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("71e31213-6df4-4cbe-8111-ccfe48206687",
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_IRF
	VALUES ("71e31213-6df4-4cbe-8111-ccfe48206687",
	"a8216382-849e-473a-8372-3dce1c789b73");
INSERT INTO V_VAL
	VALUES ("9e05569f-5ff2-4d9b-b8f3-39c18603d431",
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_AVL
	VALUES ("9e05569f-5ff2-4d9b-b8f3-39c18603d431",
	"71e31213-6df4-4cbe-8111-ccfe48206687",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("2e625453-36b5-4e92-95b5-c5071690a74b",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_BIN
	VALUES ("2e625453-36b5-4e92-95b5-c5071690a74b",
	"71f3cbfe-fb6a-410b-8547-cb7d51975100",
	"9e05569f-5ff2-4d9b-b8f3-39c18603d431",
	'+');
INSERT INTO V_VAL
	VALUES ("71f3cbfe-fb6a-410b-8547-cb7d51975100",
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"85424e44-02d0-4a97-b535-7625b0ce5424");
INSERT INTO V_LIN
	VALUES ("71f3cbfe-fb6a-410b-8547-cb7d51975100",
	'1');
INSERT INTO V_VAR
	VALUES ("a8216382-849e-473a-8372-3dce1c789b73",
	"85424e44-02d0-4a97-b535-7625b0ce5424",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("a8216382-849e-473a-8372-3dce1c789b73",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO SM_NSTXN
	VALUES ("f9bbe3af-66b2-45b8-bc85-3b4ade570d4f",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"93680015-70ab-442d-b19d-47dc14796d43",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("5d2a2e11-8d65-4aa9-831d-bef5287eb570",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"f9bbe3af-66b2-45b8-bc85-3b4ade570d4f");
INSERT INTO SM_AH
	VALUES ("5d2a2e11-8d65-4aa9-831d-bef5287eb570",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_ACT
	VALUES ("5d2a2e11-8d65-4aa9-831d-bef5287eb570",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	1,
	'
select any monitor from instances of HeartRateMonitor;
if (empty monitor)
  create object instance monitor of HeartRateMonitor;
end if;
monitor.recentHeartRate = 50;

LOG::LogInfo(message: "listener registered");

// start timer
create event instance timeout of HeartRateMonitor_A3:timeout() to HeartRateMonitor class;
monitor.timer = TIM::timer_start_recurring( event_inst: timeout, microseconds: (HeartRateSamplingPeriod * 1000000) ); ',
	'');
INSERT INTO ACT_TAB
	VALUES ("aeed5774-faa9-40fe-b610-36415d358947",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"5d2a2e11-8d65-4aa9-831d-bef5287eb570");
INSERT INTO ACT_ACT
	VALUES ("aeed5774-faa9-40fe-b610-36415d358947",
	'class transition',
	0,
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A1: registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	1,
	0,
	0,
	'TIM',
	'',
	'',
	12,
	1,
	12,
	17,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"aeed5774-faa9-40fe-b610-36415d358947",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7f541e90-36fe-4957-9d5c-dd45c6595985",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"2dd68743-9d25-4d45-8292-c0d7ee993a07",
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES ("7f541e90-36fe-4957-9d5c-dd45c6595985",
	"484e3933-0191-4873-a209-f8aa7c804175",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	2,
	38);
INSERT INTO ACT_SMT
	VALUES ("2dd68743-9d25-4d45-8292-c0d7ee993a07",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"19988194-58e2-4b85-984f-9b805280cee4",
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES ("2dd68743-9d25-4d45-8292-c0d7ee993a07",
	"eff4daad-146d-43d2-9376-c306f4414185",
	"f7479c92-e5c8-44ed-96d9-e0ed10428b36",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("19988194-58e2-4b85-984f-9b805280cee4",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"1e42cc27-f900-4275-a5fb-52eeb4f25e44",
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES ("19988194-58e2-4b85-984f-9b805280cee4",
	"4a3197e6-09bc-4136-9991-918af699f22e",
	"b4bd6c50-1e35-4984-8460-cad1df031935",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("1e42cc27-f900-4275-a5fb-52eeb4f25e44",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"d4e4cd99-5671-4e04-9197-08d594e7e0c1",
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES ("1e42cc27-f900-4275-a5fb-52eeb4f25e44",
	"ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb",
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES ("d4e4cd99-5671-4e04-9197-08d594e7e0c1",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"4e7f67ad-fdf7-4b82-a03d-fc8678910238",
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES ("d4e4cd99-5671-4e04-9197-08d594e7e0c1",
	1,
	0,
	11,
	34,
	11,
	54,
	11,
	67,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("d4e4cd99-5671-4e04-9197-08d594e7e0c1",
	1,
	"ce3ba291-22b5-44ef-9cc3-9ad17c3449d5");
INSERT INTO E_CSME
	VALUES ("d4e4cd99-5671-4e04-9197-08d594e7e0c1",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8");
INSERT INTO E_CEA
	VALUES ("d4e4cd99-5671-4e04-9197-08d594e7e0c1");
INSERT INTO ACT_SMT
	VALUES ("4e7f67ad-fdf7-4b82-a03d-fc8678910238",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	"00000000-0000-0000-0000-000000000000",
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES ("4e7f67ad-fdf7-4b82-a03d-fc8678910238",
	"ef0104f8-3901-433d-8463-831e2270e253",
	"1094efa8-ea42-49fb-8269-638e3a9d50cd",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("e7527720-6c50-410e-914a-e1f7174f5469",
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_IRF
	VALUES ("e7527720-6c50-410e-914a-e1f7174f5469",
	"484e3933-0191-4873-a209-f8aa7c804175");
INSERT INTO V_VAL
	VALUES ("f7479c92-e5c8-44ed-96d9-e0ed10428b36",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_UNY
	VALUES ("f7479c92-e5c8-44ed-96d9-e0ed10428b36",
	"e7527720-6c50-410e-914a-e1f7174f5469",
	'empty');
INSERT INTO V_VAL
	VALUES ("b6aa4b76-0324-442e-bc3c-2e63fd2b7c1d",
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_IRF
	VALUES ("b6aa4b76-0324-442e-bc3c-2e63fd2b7c1d",
	"484e3933-0191-4873-a209-f8aa7c804175");
INSERT INTO V_VAL
	VALUES ("b4bd6c50-1e35-4984-8460-cad1df031935",
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_AVL
	VALUES ("b4bd6c50-1e35-4984-8460-cad1df031935",
	"b6aa4b76-0324-442e-bc3c-2e63fd2b7c1d",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("4a3197e6-09bc-4136-9991-918af699f22e",
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_LIN
	VALUES ("4a3197e6-09bc-4136-9991-918af699f22e",
	'50');
INSERT INTO V_VAL
	VALUES ("f6f539aa-5125-49cd-870c-e52bb5c14e7c",
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_LST
	VALUES ("f6f539aa-5125-49cd-870c-e52bb5c14e7c",
	'listener registered');
INSERT INTO V_PAR
	VALUES ("f6f539aa-5125-49cd-870c-e52bb5c14e7c",
	"1e42cc27-f900-4275-a5fb-52eeb4f25e44",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	8,
	14);
INSERT INTO V_VAL
	VALUES ("490375e5-4c28-47d7-a509-e9bb5acd4a0e",
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_IRF
	VALUES ("490375e5-4c28-47d7-a509-e9bb5acd4a0e",
	"484e3933-0191-4873-a209-f8aa7c804175");
INSERT INTO V_VAL
	VALUES ("1094efa8-ea42-49fb-8269-638e3a9d50cd",
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_AVL
	VALUES ("1094efa8-ea42-49fb-8269-638e3a9d50cd",
	"490375e5-4c28-47d7-a509-e9bb5acd4a0e",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"60873069-ba53-4271-b45b-1f499d8b97e9");
INSERT INTO V_VAL
	VALUES ("ef0104f8-3901-433d-8463-831e2270e253",
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_BRV
	VALUES ("ef0104f8-3901-433d-8463-831e2270e253",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03",
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES ("82907888-4d1e-4c97-8523-36647072609b",
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_TVL
	VALUES ("82907888-4d1e-4c97-8523-36647072609b",
	"ce3ba291-22b5-44ef-9cc3-9ad17c3449d5");
INSERT INTO V_PAR
	VALUES ("82907888-4d1e-4c97-8523-36647072609b",
	"00000000-0000-0000-0000-000000000000",
	"ef0104f8-3901-433d-8463-831e2270e253",
	'event_inst',
	"87dcf718-0508-44d8-882b-edf75f7dba45",
	12,
	45);
INSERT INTO V_VAL
	VALUES ("3027e6ad-b0cd-4fad-ab9b-1c1ef9f16b3f",
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_SCV
	VALUES ("3027e6ad-b0cd-4fad-ab9b-1c1ef9f16b3f",
	"af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("87dcf718-0508-44d8-882b-edf75f7dba45",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_BIN
	VALUES ("87dcf718-0508-44d8-882b-edf75f7dba45",
	"78f5878b-daf7-4d43-a728-88efb6a7f0c3",
	"3027e6ad-b0cd-4fad-ab9b-1c1ef9f16b3f",
	'*');
INSERT INTO V_PAR
	VALUES ("87dcf718-0508-44d8-882b-edf75f7dba45",
	"00000000-0000-0000-0000-000000000000",
	"ef0104f8-3901-433d-8463-831e2270e253",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	12,
	66);
INSERT INTO V_VAL
	VALUES ("78f5878b-daf7-4d43-a728-88efb6a7f0c3",
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864");
INSERT INTO V_LIN
	VALUES ("78f5878b-daf7-4d43-a728-88efb6a7f0c3",
	'1000000');
INSERT INTO V_VAR
	VALUES ("484e3933-0191-4873-a209-f8aa7c804175",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("484e3933-0191-4873-a209-f8aa7c804175",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO V_VAR
	VALUES ("ce3ba291-22b5-44ef-9cc3-9ad17c3449d5",
	"3672fe1d-9f3b-476e-a18b-0dc9ef6bb864",
	'timeout',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("ce3ba291-22b5-44ef-9cc3-9ad17c3449d5",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("eff4daad-146d-43d2-9376-c306f4414185",
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	4,
	37,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"aeed5774-faa9-40fe-b610-36415d358947",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3f7c9107-c189-43c5-9751-01117746707d",
	"eff4daad-146d-43d2-9376-c306f4414185",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES ("3f7c9107-c189-43c5-9751-01117746707d",
	"484e3933-0191-4873-a209-f8aa7c804175",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	4,
	37);
INSERT INTO SM_TXN
	VALUES ("f9bbe3af-66b2-45b8-bc85-3b4ade570d4f",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"c7548789-5484-4310-8362-cbe332766cd2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("59a4063b-700c-49a0-ab4e-c5a9d76e3949",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"c7548789-5484-4310-8362-cbe332766cd2",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("e0fd33e0-61a3-4c92-9185-b7650089615e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"59a4063b-700c-49a0-ab4e-c5a9d76e3949");
INSERT INTO SM_AH
	VALUES ("e0fd33e0-61a3-4c92-9185-b7650089615e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_ACT
	VALUES ("e0fd33e0-61a3-4c92-9185-b7650089615e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	1,
	'select any monitor from instances of HeartRateMonitor;
res = TIM::timer_cancel(timer_inst_ref: monitor.timer);
if ( res )
  LOG::LogSuccess( message: "Heart Rate Monitor: timer_cancel() succeeded." );
else
  LOG::LogFailure( message: "Heart Rate Monitor: timer_cancel() failed." );
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES ("63855ae4-daa3-4470-85df-56d67c28b892",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"e0fd33e0-61a3-4c92-9185-b7650089615e");
INSERT INTO ACT_ACT
	VALUES ("63855ae4-daa3-4470-85df-56d67c28b892",
	'class transition',
	0,
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A2: unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	1,
	0,
	0,
	'TIM',
	'',
	'',
	5,
	1,
	2,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"63855ae4-daa3-4470-85df-56d67c28b892",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b14c8f63-f5f9-4c3d-b6c6-9b989720dfaa",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	"f24d63c0-7346-4ff9-931b-597e6a8c14fd",
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES ("b14c8f63-f5f9-4c3d-b6c6-9b989720dfaa",
	"6e0b6134-e1b1-4cc5-9863-ad7761d5dde2",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	1,
	38);
INSERT INTO ACT_SMT
	VALUES ("f24d63c0-7346-4ff9-931b-597e6a8c14fd",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	"93e90c6b-dd86-4207-a4df-12e25f64043d",
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES ("f24d63c0-7346-4ff9-931b-597e6a8c14fd",
	"da9d3535-a38c-45da-9afc-ed2e846e78a4",
	"e3616023-d6b3-434d-813f-1926589b2960",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("93e90c6b-dd86-4207-a4df-12e25f64043d",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES ("93e90c6b-dd86-4207-a4df-12e25f64043d",
	"6254f8f4-8d4d-4742-9442-dd0985e02685",
	"4a8d99f7-2b09-43b5-bc92-7d482fcaa46c",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("8e628520-c0f8-4324-a345-fffd6f5ad595",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES ("8e628520-c0f8-4324-a345-fffd6f5ad595",
	"b04ce167-a1ad-4ec5-a9e2-b8fe40a9fffe",
	"93e90c6b-dd86-4207-a4df-12e25f64043d");
INSERT INTO V_VAL
	VALUES ("e3616023-d6b3-434d-813f-1926589b2960",
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472");
INSERT INTO V_TVL
	VALUES ("e3616023-d6b3-434d-813f-1926589b2960",
	"f46b45b3-af10-4a33-921a-1ae69798b2b3");
INSERT INTO V_VAL
	VALUES ("da9d3535-a38c-45da-9afc-ed2e846e78a4",
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472");
INSERT INTO V_BRV
	VALUES ("da9d3535-a38c-45da-9afc-ed2e846e78a4",
	"8569d687-8192-4f46-a549-a1f6d8b4640b",
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES ("fdc09f26-0077-4b43-87a6-e4d432cf6f91",
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472");
INSERT INTO V_IRF
	VALUES ("fdc09f26-0077-4b43-87a6-e4d432cf6f91",
	"6e0b6134-e1b1-4cc5-9863-ad7761d5dde2");
INSERT INTO V_VAL
	VALUES ("0b1a9d6e-3010-4d58-8dd7-54a0fa80fdbc",
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472");
INSERT INTO V_AVL
	VALUES ("0b1a9d6e-3010-4d58-8dd7-54a0fa80fdbc",
	"fdc09f26-0077-4b43-87a6-e4d432cf6f91",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"60873069-ba53-4271-b45b-1f499d8b97e9");
INSERT INTO V_PAR
	VALUES ("0b1a9d6e-3010-4d58-8dd7-54a0fa80fdbc",
	"00000000-0000-0000-0000-000000000000",
	"da9d3535-a38c-45da-9afc-ed2e846e78a4",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	2,
	25);
INSERT INTO V_VAL
	VALUES ("4a8d99f7-2b09-43b5-bc92-7d482fcaa46c",
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472");
INSERT INTO V_TVL
	VALUES ("4a8d99f7-2b09-43b5-bc92-7d482fcaa46c",
	"f46b45b3-af10-4a33-921a-1ae69798b2b3");
INSERT INTO V_VAR
	VALUES ("6e0b6134-e1b1-4cc5-9863-ad7761d5dde2",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("6e0b6134-e1b1-4cc5-9863-ad7761d5dde2",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO V_VAR
	VALUES ("f46b45b3-af10-4a33-921a-1ae69798b2b3",
	"b159a78d-f2e5-4c1c-80b4-5bb7e0662472",
	'res',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("f46b45b3-af10-4a33-921a-1ae69798b2b3",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("6254f8f4-8d4d-4742-9442-dd0985e02685",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	4,
	3,
	4,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"63855ae4-daa3-4470-85df-56d67c28b892",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("85c8573b-8ee4-4089-8b4d-b70fdc08fe7c",
	"6254f8f4-8d4d-4742-9442-dd0985e02685",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES ("85c8573b-8ee4-4089-8b4d-b70fdc08fe7c",
	"d29b5e8f-621e-4982-8e5b-5e249d288eaf",
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES ("3c2a3313-b96a-4c86-991d-cf5230f20756",
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"6254f8f4-8d4d-4742-9442-dd0985e02685");
INSERT INTO V_LST
	VALUES ("3c2a3313-b96a-4c86-991d-cf5230f20756",
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES ("3c2a3313-b96a-4c86-991d-cf5230f20756",
	"85c8573b-8ee4-4089-8b4d-b70fdc08fe7c",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	4,
	20);
INSERT INTO ACT_BLK
	VALUES ("b04ce167-a1ad-4ec5-a9e2-b8fe40a9fffe",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	6,
	3,
	6,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"63855ae4-daa3-4470-85df-56d67c28b892",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b424a0d3-c8c4-46c4-b788-7da3e352f7f4",
	"b04ce167-a1ad-4ec5-a9e2-b8fe40a9fffe",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES ("b424a0d3-c8c4-46c4-b788-7da3e352f7f4",
	"b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49",
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES ("62f1243e-8f10-4a64-a441-0a50fa819e17",
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"b04ce167-a1ad-4ec5-a9e2-b8fe40a9fffe");
INSERT INTO V_LST
	VALUES ("62f1243e-8f10-4a64-a441-0a50fa819e17",
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES ("62f1243e-8f10-4a64-a441-0a50fa819e17",
	"b424a0d3-c8c4-46c4-b788-7da3e352f7f4",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	6,
	20);
INSERT INTO SM_TXN
	VALUES ("59a4063b-700c-49a0-ab4e-c5a9d76e3949",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"6bfa7ea6-e404-4d20-8c1f-bc238e7b85f0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("361ddf22-9813-4951-8550-5629f7dcb1a1",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"c7548789-5484-4310-8362-cbe332766cd2",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a4f3f218-3199-40ea-8951-e4173b9a0e3e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"361ddf22-9813-4951-8550-5629f7dcb1a1");
INSERT INTO SM_AH
	VALUES ("a4f3f218-3199-40ea-8951-e4173b9a0e3e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f");
INSERT INTO SM_ACT
	VALUES ("a4f3f218-3199-40ea-8951-e4173b9a0e3e",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("bd28f3ef-ba25-4cd8-a6af-1eac0da83d65",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"a4f3f218-3199-40ea-8951-e4173b9a0e3e");
INSERT INTO ACT_ACT
	VALUES ("bd28f3ef-ba25-4cd8-a6af-1eac0da83d65",
	'class transition',
	0,
	"1e204fb9-d76f-4cba-8568-c30fb317df1f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A3: timeout',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1e204fb9-d76f-4cba-8568-c30fb317df1f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bd28f3ef-ba25-4cd8-a6af-1eac0da83d65",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("361ddf22-9813-4951-8550-5629f7dcb1a1",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"c7548789-5484-4310-8362-cbe332766cd2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("b73d3ed1-4515-4bb2-a65a-7da8b49728c0",
	1,
	"9f4f2d2e-88b6-4c90-97ba-3ea885e845bf",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("b73d3ed1-4515-4bb2-a65a-7da8b49728c0",
	"00000000-0000-0000-0000-000000000000",
	"0c9c0840-b1dd-474b-8379-2afe01d8d36a",
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("720bef53-1d45-4062-ab64-2a57afd3504f",
	1,
	"b73d3ed1-4515-4bb2-a65a-7da8b49728c0",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("720bef53-1d45-4062-ab64-2a57afd3504f",
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES ("8d22cc4c-867e-4172-b0dc-15cc17b4a23c",
	'HeartRateAveragingWindow',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"720bef53-1d45-4062-ab64-2a57afd3504f",
	"af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LFSC
	VALUES ("8d22cc4c-867e-4172-b0dc-15cc17b4a23c",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("8d22cc4c-867e-4172-b0dc-15cc17b4a23c",
	"ba5eda7a-def5-0000-0000-000000000002",
	'5');
INSERT INTO CNST_SYC
	VALUES ("af9effb5-e43d-410e-b155-15e1773e05f9",
	'HeartRateSamplingPeriod',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"720bef53-1d45-4062-ab64-2a57afd3504f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002",
	'3');
INSERT INTO PE_PE
	VALUES ("5c507480-cb44-41f2-911f-4b6271cc9722",
	1,
	"b73d3ed1-4515-4bb2-a65a-7da8b49728c0",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("5c507480-cb44-41f2-911f-4b6271cc9722",
	"00000000-0000-0000-0000-000000000000",
	'HeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES ("aa6c48b1-e316-4aff-b3d0-f47517f83f98",
	"5c507480-cb44-41f2-911f-4b6271cc9722",
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES ("aa6c48b1-e316-4aff-b3d0-f47517f83f98",
	"ba5eda7a-def5-0000-0000-000000000000",
	'registerListener',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("eb5b167c-30b2-4ec6-9291-b2c56aee7a72",
	"5c507480-cb44-41f2-911f-4b6271cc9722",
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES ("eb5b167c-30b2-4ec6-9291-b2c56aee7a72",
	"ba5eda7a-def5-0000-0000-000000000000",
	'unregisterListener',
	'',
	0,
	'',
	"aa6c48b1-e316-4aff-b3d0-f47517f83f98");
INSERT INTO PE_PE
	VALUES ("8bdc4a13-4fbe-4b36-8323-217b1e7d24e1",
	1,
	"b73d3ed1-4515-4bb2-a65a-7da8b49728c0",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("8bdc4a13-4fbe-4b36-8323-217b1e7d24e1",
	"00000000-0000-0000-0000-000000000000",
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO C_EP
	VALUES ("814897b8-f470-4747-83a0-a21abf1ead33",
	"8bdc4a13-4fbe-4b36-8323-217b1e7d24e1",
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES ("814897b8-f470-4747-83a0-a21abf1ead33",
	"ba5eda7a-def5-0000-0000-000000000000",
	'heartRateChanged',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("e4255353-9524-41ef-bb19-2cee72a0ad76",
	"814897b8-f470-4747-83a0-a21abf1ead33",
	"ba5eda7a-def5-0000-0000-000000000002",
	'heartRate',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("b9bacf03-7cac-42b6-b488-57a5221c7bb6",
	'Location',
	1);
INSERT INTO EP_PKG
	VALUES ("a734b9af-9b33-4d95-975a-d7abb5f454ab",
	"b9bacf03-7cac-42b6-b488-57a5221c7bb6",
	"b9bacf03-7cac-42b6-b488-57a5221c7bb6",
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("6bcd2311-c8ae-4085-b4d8-05c94b9f468e",
	1,
	"a734b9af-9b33-4d95-975a-d7abb5f454ab",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("6bcd2311-c8ae-4085-b4d8-05c94b9f468e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'Location',
	'Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("7d9319e1-f8a2-4a04-a8d6-13902efaf2fb",
	"6bcd2311-c8ae-4085-b4d8-05c94b9f468e",
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES ("3370e02d-5042-4c1e-964b-a935badc2f11",
	"e7bc5670-3b4b-4919-9970-5f6469632a0c",
	"00000000-0000-0000-0000-000000000000",
	"7d9319e1-f8a2-4a04-a8d6-13902efaf2fb");
INSERT INTO C_P
	VALUES ("3370e02d-5042-4c1e-964b-a935badc2f11",
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES ("d3e85166-d4ac-4b90-b854-d05bd73a3f1b",
	"60c5e908-e287-4a9e-8221-962659bc84b1",
	"3370e02d-5042-4c1e-964b-a935badc2f11");
INSERT INTO SPR_PO
	VALUES ("d3e85166-d4ac-4b90-b854-d05bd73a3f1b",
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("e792010b-4043-481d-affa-ef8350f4e62b",
	"d3e85166-d4ac-4b90-b854-d05bd73a3f1b");
INSERT INTO ACT_ACT
	VALUES ("e792010b-4043-481d-affa-ef8350f4e62b",
	'interface operation',
	0,
	"04c29aad-5bc8-4f22-adc4-cac931237ec7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::getLocation',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("04c29aad-5bc8-4f22-adc4-cac931237ec7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e792010b-4043-481d-affa-ef8350f4e62b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_PEP
	VALUES ("542cae30-1dd9-48c0-98af-314b9a0a770b",
	"51edbbee-b095-4930-a424-6f9af391cf8f",
	"3370e02d-5042-4c1e-964b-a935badc2f11");
INSERT INTO SPR_PO
	VALUES ("542cae30-1dd9-48c0-98af-314b9a0a770b",
	'getDistance',
	'',
	'// Return the straight-line distance, expressed in meters, between the
// two points passed as parameters, expressed in decimal degrees.

deltaLat = param.toLat - param.fromLat;
deltaLong = param.toLong - param.fromLong;
sumSquares = (deltaLat * deltaLat) + (deltaLong * deltaLong);
return ( (MATH::sqrt( x: sumSquares ) * kmPerDegree * 1000 ) );',
	1);
INSERT INTO ACT_POB
	VALUES ("20713ee3-54e5-4b30-86c1-ddb9dd3eae95",
	"542cae30-1dd9-48c0-98af-314b9a0a770b");
INSERT INTO ACT_ACT
	VALUES ("20713ee3-54e5-4b30-86c1-ddb9dd3eae95",
	'interface operation',
	0,
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::getDistance',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9c889304-a616-4f8b-a839-a9e0994964b2",
	0,
	0,
	0,
	'MATH',
	'',
	'',
	7,
	1,
	7,
	11,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"20713ee3-54e5-4b30-86c1-ddb9dd3eae95",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("aaf58ac0-7f60-4b55-a3f0-1d7a497bc578",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	"f5543669-221e-49a8-92d7-deee0a343b1c",
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES ("aaf58ac0-7f60-4b55-a3f0-1d7a497bc578",
	"50b19a04-734f-47a2-b142-75ed161684f4",
	"8854ab26-42b8-4a03-92ea-029f53c3f54d",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("f5543669-221e-49a8-92d7-deee0a343b1c",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	"17a0eeb3-e498-42d4-9768-d1f1094e1f3f",
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES ("f5543669-221e-49a8-92d7-deee0a343b1c",
	"7a2d41ce-7d83-4179-bde3-f7117ba1be52",
	"fee656e9-04e0-47ae-8300-9b4b19daa1b7",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("17a0eeb3-e498-42d4-9768-d1f1094e1f3f",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	"b19e09b5-38de-4711-9f28-a58624e9f3fb",
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES ("17a0eeb3-e498-42d4-9768-d1f1094e1f3f",
	"b28ef333-8607-4d55-bf13-f31014643f59",
	"3c967b85-2119-4db0-a870-b9c4787a191c",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b19e09b5-38de-4711-9f28-a58624e9f3fb",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES ("b19e09b5-38de-4711-9f28-a58624e9f3fb",
	"6c777758-dd5a-4c0f-9e77-7e9b2f609ea7");
INSERT INTO V_VAL
	VALUES ("8854ab26-42b8-4a03-92ea-029f53c3f54d",
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("8854ab26-42b8-4a03-92ea-029f53c3f54d",
	"d5b605aa-7e98-4588-b696-d563053b1a87");
INSERT INTO V_VAL
	VALUES ("35e9f809-af45-4e4b-9325-a44840cab4fb",
	0,
	0,
	4,
	18,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_PVL
	VALUES ("35e9f809-af45-4e4b-9325-a44840cab4fb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"02e02c6b-07cb-4001-8d4c-a9f0e6b4fa42");
INSERT INTO V_VAL
	VALUES ("50b19a04-734f-47a2-b142-75ed161684f4",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("50b19a04-734f-47a2-b142-75ed161684f4",
	"9bb99e5d-a24a-42c3-ad48-aee6287600da",
	"35e9f809-af45-4e4b-9325-a44840cab4fb",
	'-');
INSERT INTO V_VAL
	VALUES ("9bb99e5d-a24a-42c3-ad48-aee6287600da",
	0,
	0,
	4,
	32,
	38,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_PVL
	VALUES ("9bb99e5d-a24a-42c3-ad48-aee6287600da",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"b33e6942-0da2-4439-a833-f336db25ee48");
INSERT INTO V_VAL
	VALUES ("fee656e9-04e0-47ae-8300-9b4b19daa1b7",
	1,
	1,
	5,
	1,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("fee656e9-04e0-47ae-8300-9b4b19daa1b7",
	"7e7d57b4-8d60-4367-a79c-9c2c1363da46");
INSERT INTO V_VAL
	VALUES ("cb8782cf-6d41-4826-bfec-5cb4098447a7",
	0,
	0,
	5,
	19,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_PVL
	VALUES ("cb8782cf-6d41-4826-bfec-5cb4098447a7",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8942d77f-c285-45eb-b14c-538fd52d1c2e");
INSERT INTO V_VAL
	VALUES ("7a2d41ce-7d83-4179-bde3-f7117ba1be52",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("7a2d41ce-7d83-4179-bde3-f7117ba1be52",
	"e10c6ece-2daf-452f-9677-3215cad739f0",
	"cb8782cf-6d41-4826-bfec-5cb4098447a7",
	'-');
INSERT INTO V_VAL
	VALUES ("e10c6ece-2daf-452f-9677-3215cad739f0",
	0,
	0,
	5,
	34,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_PVL
	VALUES ("e10c6ece-2daf-452f-9677-3215cad739f0",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"a0e5b226-4670-4129-83e4-c4f0c6afb32f");
INSERT INTO V_VAL
	VALUES ("3c967b85-2119-4db0-a870-b9c4787a191c",
	1,
	1,
	6,
	1,
	10,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("3c967b85-2119-4db0-a870-b9c4787a191c",
	"9c20f135-b870-498a-897e-09170e03dd14");
INSERT INTO V_VAL
	VALUES ("161c6caf-4b7b-4b37-b013-98472de48adb",
	0,
	0,
	6,
	15,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("161c6caf-4b7b-4b37-b013-98472de48adb",
	"d5b605aa-7e98-4588-b696-d563053b1a87");
INSERT INTO V_VAL
	VALUES ("ee8001b3-efdf-424b-8c35-73bbd25a49b1",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("ee8001b3-efdf-424b-8c35-73bbd25a49b1",
	"4e943731-987f-4b56-b6d5-da61b1b1bd31",
	"161c6caf-4b7b-4b37-b013-98472de48adb",
	'*');
INSERT INTO V_VAL
	VALUES ("4e943731-987f-4b56-b6d5-da61b1b1bd31",
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("4e943731-987f-4b56-b6d5-da61b1b1bd31",
	"d5b605aa-7e98-4588-b696-d563053b1a87");
INSERT INTO V_VAL
	VALUES ("b28ef333-8607-4d55-bf13-f31014643f59",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("b28ef333-8607-4d55-bf13-f31014643f59",
	"43c06ffc-439a-4f4e-b92b-4cf2b75c7a3a",
	"ee8001b3-efdf-424b-8c35-73bbd25a49b1",
	'+');
INSERT INTO V_VAL
	VALUES ("4621938f-94b3-4221-b122-d6e354e41536",
	0,
	0,
	6,
	39,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("4621938f-94b3-4221-b122-d6e354e41536",
	"7e7d57b4-8d60-4367-a79c-9c2c1363da46");
INSERT INTO V_VAL
	VALUES ("43c06ffc-439a-4f4e-b92b-4cf2b75c7a3a",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("43c06ffc-439a-4f4e-b92b-4cf2b75c7a3a",
	"5f03dc85-3336-42eb-8905-d0c58b3dc0d5",
	"4621938f-94b3-4221-b122-d6e354e41536",
	'*');
INSERT INTO V_VAL
	VALUES ("5f03dc85-3336-42eb-8905-d0c58b3dc0d5",
	0,
	0,
	6,
	51,
	59,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("5f03dc85-3336-42eb-8905-d0c58b3dc0d5",
	"7e7d57b4-8d60-4367-a79c-9c2c1363da46");
INSERT INTO V_VAL
	VALUES ("9c704503-f81e-44af-8464-94b113ed6a31",
	0,
	0,
	7,
	17,
	-1,
	7,
	23,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BRV
	VALUES ("9c704503-f81e-44af-8464-94b113ed6a31",
	"d9535451-525d-4227-ba92-d27c86a78649",
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES ("ec6886af-2448-415f-b92e-3ef4c3dcc578",
	0,
	0,
	7,
	26,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_TVL
	VALUES ("ec6886af-2448-415f-b92e-3ef4c3dcc578",
	"9c20f135-b870-498a-897e-09170e03dd14");
INSERT INTO V_PAR
	VALUES ("ec6886af-2448-415f-b92e-3ef4c3dcc578",
	"00000000-0000-0000-0000-000000000000",
	"9c704503-f81e-44af-8464-94b113ed6a31",
	'x',
	"00000000-0000-0000-0000-000000000000",
	7,
	23);
INSERT INTO V_VAL
	VALUES ("e1cb1285-65f8-46f5-9e95-3b93e8e15b18",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("e1cb1285-65f8-46f5-9e95-3b93e8e15b18",
	"35c1948f-777b-4181-b354-37e36aae3007",
	"9c704503-f81e-44af-8464-94b113ed6a31",
	'*');
INSERT INTO V_VAL
	VALUES ("35c1948f-777b-4181-b354-37e36aae3007",
	0,
	0,
	7,
	41,
	51,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_SCV
	VALUES ("35c1948f-777b-4181-b354-37e36aae3007",
	"8b470401-daf6-4c3f-a65a-15c75f4e3c4d",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("6c777758-dd5a-4c0f-9e77-7e9b2f609ea7",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_BIN
	VALUES ("6c777758-dd5a-4c0f-9e77-7e9b2f609ea7",
	"7ec927e4-499b-4a54-a864-12fe15a1b83a",
	"e1cb1285-65f8-46f5-9e95-3b93e8e15b18",
	'*');
INSERT INTO V_VAL
	VALUES ("7ec927e4-499b-4a54-a864-12fe15a1b83a",
	0,
	0,
	7,
	55,
	58,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9c889304-a616-4f8b-a839-a9e0994964b2");
INSERT INTO V_LIN
	VALUES ("7ec927e4-499b-4a54-a864-12fe15a1b83a",
	'1000');
INSERT INTO V_VAR
	VALUES ("d5b605aa-7e98-4588-b696-d563053b1a87",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	'deltaLat',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("d5b605aa-7e98-4588-b696-d563053b1a87",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("7e7d57b4-8d60-4367-a79c-9c2c1363da46",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	'deltaLong',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("7e7d57b4-8d60-4367-a79c-9c2c1363da46",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("9c20f135-b870-498a-897e-09170e03dd14",
	"9c889304-a616-4f8b-a839-a9e0994964b2",
	'sumSquares',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("9c20f135-b870-498a-897e-09170e03dd14",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SPR_PEP
	VALUES ("cc39c820-780d-470f-bee7-3597645af293",
	"d71e1ada-30de-4819-8e98-ac0fb6495bc5",
	"3370e02d-5042-4c1e-964b-a935badc2f11");
INSERT INTO SPR_PO
	VALUES ("cc39c820-780d-470f-bee7-3597645af293",
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("270cf3f6-069a-4c46-a6cf-911c58cc8954",
	"cc39c820-780d-470f-bee7-3597645af293");
INSERT INTO ACT_ACT
	VALUES ("270cf3f6-069a-4c46-a6cf-911c58cc8954",
	'interface operation',
	0,
	"ea6c9246-91a3-4d0d-9d91-90735adc8111",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ea6c9246-91a3-4d0d-9d91-90735adc8111",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"270cf3f6-069a-4c46-a6cf-911c58cc8954",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_PEP
	VALUES ("ff79e44e-221f-48dc-a50c-fb3247c64321",
	"dbbc7c42-b626-4a38-8b63-06b6f87fb255",
	"3370e02d-5042-4c1e-964b-a935badc2f11");
INSERT INTO SPR_PO
	VALUES ("ff79e44e-221f-48dc-a50c-fb3247c64321",
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("ab7861d7-9b42-4ef3-b5b4-c1e838bb2f8a",
	"ff79e44e-221f-48dc-a50c-fb3247c64321");
INSERT INTO ACT_ACT
	VALUES ("ab7861d7-9b42-4ef3-b5b4-c1e838bb2f8a",
	'interface operation',
	0,
	"3ef897bb-83d0-4d19-9e2a-ff137a844dfc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3ef897bb-83d0-4d19-9e2a-ff137a844dfc",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ab7861d7-9b42-4ef3-b5b4-c1e838bb2f8a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("37a3f838-e195-4f73-99b6-16f4d03fc321",
	1,
	"00000000-0000-0000-0000-000000000000",
	"6bcd2311-c8ae-4085-b4d8-05c94b9f468e",
	7);
INSERT INTO EP_PKG
	VALUES ("37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	"b9bacf03-7cac-42b6-b488-57a5221c7bb6",
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	1,
	"37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	'simulatedGPS',
	'Constants specifying the behavior of the simulated GPS.

initialLatitude and initialLongitude specify, as decimal degrees, 
the initial location of the simulated GPS.

latitudeIncrement and longitudeIncrement specify, as decimal degrees, 
the distance the simulated GPS moves during each update period.

updatePeriod specifies, in microseconds, the update period for the
simulated GPS.  In other words, the simulated GPS updates its location
once per updatePeriod.');
INSERT INTO CNST_SYC
	VALUES ("3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	'longitudeIncrement',
	'',
	"ba5eda7a-def5-0000-0000-000000000003",
	"ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LSC
	VALUES ("3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003",
	'0.00002');
INSERT INTO CNST_SYC
	VALUES ("dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	'latitudeIncrement',
	'',
	"ba5eda7a-def5-0000-0000-000000000003",
	"ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LFSC
	VALUES ("dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LSC
	VALUES ("dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003",
	'0.00001');
INSERT INTO CNST_SYC
	VALUES ("dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	'initialLatitude',
	'',
	"ba5eda7a-def5-0000-0000-000000000003",
	"ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LFSC
	VALUES ("dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LSC
	VALUES ("dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	"ba5eda7a-def5-0000-0000-000000000003",
	'32.432237');
INSERT INTO CNST_SYC
	VALUES ("5c7b037e-3376-43c6-946b-3a4aac12a71c",
	'initialLongitude',
	'',
	"ba5eda7a-def5-0000-0000-000000000003",
	"ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	"dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LFSC
	VALUES ("5c7b037e-3376-43c6-946b-3a4aac12a71c",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LSC
	VALUES ("5c7b037e-3376-43c6-946b-3a4aac12a71c",
	"ba5eda7a-def5-0000-0000-000000000003",
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES ("e29cc0f2-a1ab-47d5-a575-89abaac935cf",
	'updatePeriod',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"ab3e2737-dcd3-4dd1-958e-4f7cf5d42cdc",
	"5c7b037e-3376-43c6-946b-3a4aac12a71c",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LFSC
	VALUES ("e29cc0f2-a1ab-47d5-a575-89abaac935cf",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("e29cc0f2-a1ab-47d5-a575-89abaac935cf",
	"ba5eda7a-def5-0000-0000-000000000002",
	'1000000');
INSERT INTO PE_PE
	VALUES ("00b2c93b-3892-4ec0-a7fd-e224156efc64",
	1,
	"37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("00b2c93b-3892-4ec0-a7fd-e224156efc64",
	'Math',
	'',
	'MATH',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES ("d9535451-525d-4227-ba92-d27c86a78649",
	"00b2c93b-3892-4ec0-a7fd-e224156efc64",
	'sqrt',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("486b66fa-82da-431b-8dc8-14d298328090",
	"d9535451-525d-4227-ba92-d27c86a78649",
	'x',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a01d5448-2502-4d87-aae8-e36b2df00bc8",
	"d9535451-525d-4227-ba92-d27c86a78649");
INSERT INTO ACT_ACT
	VALUES ("a01d5448-2502-4d87-aae8-e36b2df00bc8",
	'bridge',
	0,
	"14b14adf-0c11-4e9c-9478-b9c9a44156d1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Math::sqrt',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("14b14adf-0c11-4e9c-9478-b9c9a44156d1",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a01d5448-2502-4d87-aae8-e36b2df00bc8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("270fef32-cbfb-4cb8-b487-f59233eb4932",
	1,
	"37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("270fef32-cbfb-4cb8-b487-f59233eb4932",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES ("0285858d-e1d1-4dc7-8d17-d97f2ac3106c",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("446da1a1-d383-40f5-9506-077583c1e377",
	"0285858d-e1d1-4dc7-8d17-d97f2ac3106c",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("40552a17-6a09-4526-9208-8ec688d025f9",
	"0285858d-e1d1-4dc7-8d17-d97f2ac3106c");
INSERT INTO ACT_ACT
	VALUES ("40552a17-6a09-4526-9208-8ec688d025f9",
	'bridge',
	0,
	"2c968681-000f-48e5-b4fc-8f40e365bdfc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2c968681-000f-48e5-b4fc-8f40e365bdfc",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"40552a17-6a09-4526-9208-8ec688d025f9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("5072982b-8c43-49b3-a290-5eff68b97094",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0b4daa5b-bd26-44f3-a55a-75ee69634c4d",
	"5072982b-8c43-49b3-a290-5eff68b97094",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("296cf8a8-7b44-4566-b50c-781e779ea7ab",
	"5072982b-8c43-49b3-a290-5eff68b97094");
INSERT INTO ACT_ACT
	VALUES ("296cf8a8-7b44-4566-b50c-781e779ea7ab",
	'bridge',
	0,
	"ba9fd786-e6f2-4864-92f8-ae0d8f68a21f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ba9fd786-e6f2-4864-92f8-ae0d8f68a21f",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"296cf8a8-7b44-4566-b50c-781e779ea7ab",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f5346b17-611d-41c1-8190-aadd8c2a0a6f",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("3dc4f8d7-f9f6-4835-992e-ebe7adaf2dc5",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56");
INSERT INTO ACT_ACT
	VALUES ("3dc4f8d7-f9f6-4835-992e-ebe7adaf2dc5",
	'bridge',
	0,
	"ba2a34ac-7d73-4785-a1e4-88c7c889a46a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ba2a34ac-7d73-4785-a1e4-88c7c889a46a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"3dc4f8d7-f9f6-4835-992e-ebe7adaf2dc5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("1f23bfea-5bee-4cc0-bd4a-501e8f2d79e0",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f3a1547a-5570-4bcf-adb6-abdd86f16d27",
	"1f23bfea-5bee-4cc0-bd4a-501e8f2d79e0",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("2e5e31f4-f4fb-4c6f-9c0e-d940aa3fbe17",
	"1f23bfea-5bee-4cc0-bd4a-501e8f2d79e0",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"f3a1547a-5570-4bcf-adb6-abdd86f16d27",
	'');
INSERT INTO ACT_BRB
	VALUES ("61acf520-1b2f-42ea-85d0-469db9cdfbb8",
	"1f23bfea-5bee-4cc0-bd4a-501e8f2d79e0");
INSERT INTO ACT_ACT
	VALUES ("61acf520-1b2f-42ea-85d0-469db9cdfbb8",
	'bridge',
	0,
	"057c87fa-9483-4cff-82fa-68e12fb9ae43",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("057c87fa-9483-4cff-82fa-68e12fb9ae43",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"61acf520-1b2f-42ea-85d0-469db9cdfbb8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("777f161b-80a2-46c8-8fe9-f9f056ed2d83",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a31bff74-311b-4826-a23b-1b5aa6134285",
	"777f161b-80a2-46c8-8fe9-f9f056ed2d83",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"144fad5e-faf4-4b74-8451-62145a4f7fd2",
	'');
INSERT INTO S_BPARM
	VALUES ("144fad5e-faf4-4b74-8451-62145a4f7fd2",
	"777f161b-80a2-46c8-8fe9-f9f056ed2d83",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a2b447db-1ce7-4903-8905-57ff365ccfa3",
	"777f161b-80a2-46c8-8fe9-f9f056ed2d83");
INSERT INTO ACT_ACT
	VALUES ("a2b447db-1ce7-4903-8905-57ff365ccfa3",
	'bridge',
	0,
	"29fda3cc-9774-4ce6-8781-651085ab0ce7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("29fda3cc-9774-4ce6-8781-651085ab0ce7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"a2b447db-1ce7-4903-8905-57ff365ccfa3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("369729b8-fc8f-4c1c-a052-4f8655356620",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("47ae65ca-1d44-4fc3-8c2d-e86829f8776c",
	"369729b8-fc8f-4c1c-a052-4f8655356620",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"276795d2-0192-43b3-b235-1919e40ef19e",
	'');
INSERT INTO S_BPARM
	VALUES ("276795d2-0192-43b3-b235-1919e40ef19e",
	"369729b8-fc8f-4c1c-a052-4f8655356620",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("305964b6-c3fb-453a-8eaf-02921ac996dd",
	"369729b8-fc8f-4c1c-a052-4f8655356620");
INSERT INTO ACT_ACT
	VALUES ("305964b6-c3fb-453a-8eaf-02921ac996dd",
	'bridge',
	0,
	"cc9f6500-6550-4518-bf3a-9c1ebf638bf1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("cc9f6500-6550-4518-bf3a-9c1ebf638bf1",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"305964b6-c3fb-453a-8eaf-02921ac996dd",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("8f3b07d5-6887-46e4-a7c1-d7d527514451",
	"270fef32-cbfb-4cb8-b487-f59233eb4932",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("745dcf9b-3213-48ed-827d-c1e468da3356",
	"8f3b07d5-6887-46e4-a7c1-d7d527514451",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("eb136603-a7ea-4990-8a38-e1d2e084010e",
	"8f3b07d5-6887-46e4-a7c1-d7d527514451");
INSERT INTO ACT_ACT
	VALUES ("eb136603-a7ea-4990-8a38-e1d2e084010e",
	'bridge',
	0,
	"52d93d08-7109-4789-9cb6-b62bd7708db4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("52d93d08-7109-4789-9cb6-b62bd7708db4",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"eb136603-a7ea-4990-8a38-e1d2e084010e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("08307d7a-b7a0-4b40-aa08-673b2202397f",
	1,
	"37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("08307d7a-b7a0-4b40-aa08-673b2202397f",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000",
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES ("95221f6c-de10-4c67-90e5-e798fe63e80d",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("8f0fccf3-d183-4c0a-9a6b-cc62bac03cbf",
	"95221f6c-de10-4c67-90e5-e798fe63e80d");
INSERT INTO ACT_ACT
	VALUES ("8f0fccf3-d183-4c0a-9a6b-cc62bac03cbf",
	'bridge',
	0,
	"c6b3b7d8-3694-4c89-aa37-10ca3d7373d3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c6b3b7d8-3694-4c89-aa37-10ca3d7373d3",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8f0fccf3-d183-4c0a-9a6b-cc62bac03cbf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("b3f25544-3f09-4d3e-8b61-d5e13f84b78b",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"d5aab360-040f-4328-b491-860760cd59aa",
	'');
INSERT INTO S_BPARM
	VALUES ("189eb1ed-b4c1-4363-8116-b24a202afabd",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"7c2f4bb4-ed39-46af-adb3-58a56c16a59a",
	'');
INSERT INTO S_BPARM
	VALUES ("7c2f4bb4-ed39-46af-adb3-58a56c16a59a",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"f40d77c2-a02a-4793-b17c-39236d35d36e",
	'');
INSERT INTO S_BPARM
	VALUES ("f40d77c2-a02a-4793-b17c-39236d35d36e",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("d5aab360-040f-4328-b491-860760cd59aa",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"189eb1ed-b4c1-4363-8116-b24a202afabd",
	'');
INSERT INTO S_BPARM
	VALUES ("d6d5675e-b7e9-4c47-9b46-342592eaff37",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"b3f25544-3f09-4d3e-8b61-d5e13f84b78b",
	'');
INSERT INTO ACT_BRB
	VALUES ("4fa85816-3e1e-4a14-bf18-f942899d304b",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde");
INSERT INTO ACT_ACT
	VALUES ("4fa85816-3e1e-4a14-bf18-f942899d304b",
	'bridge',
	0,
	"c56ec4f3-cdef-4689-9f7b-9741c4e438a9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c56ec4f3-cdef-4689-9f7b-9741c4e438a9",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4fa85816-3e1e-4a14-bf18-f942899d304b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("843583a8-33e3-442b-b01f-a02c8ee5118f",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("69ba3580-cdb6-4e6d-a2cd-228509a44280",
	"843583a8-33e3-442b-b01f-a02c8ee5118f",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("bdee6130-f45b-466a-aecb-9b371d0852d7",
	"843583a8-33e3-442b-b01f-a02c8ee5118f");
INSERT INTO ACT_ACT
	VALUES ("bdee6130-f45b-466a-aecb-9b371d0852d7",
	'bridge',
	0,
	"336c0575-6581-4419-bfbc-caf1b149e9e1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("336c0575-6581-4419-bfbc-caf1b149e9e1",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bdee6130-f45b-466a-aecb-9b371d0852d7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("d93450b2-3a11-4c34-b3d7-f7aefb6d70de",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("a98b55b5-d652-4b6e-bc42-5b719c8017a5",
	"d93450b2-3a11-4c34-b3d7-f7aefb6d70de",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("0121dd4f-aa61-4aeb-a803-846b937163e3",
	"d93450b2-3a11-4c34-b3d7-f7aefb6d70de");
INSERT INTO ACT_ACT
	VALUES ("0121dd4f-aa61-4aeb-a803-846b937163e3",
	'bridge',
	0,
	"0e69e0a8-f970-416b-b782-0772eae461d0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0e69e0a8-f970-416b-b782-0772eae461d0",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"0121dd4f-aa61-4aeb-a803-846b937163e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e0db9e53-bf87-4d36-be73-257397a0d365",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("61f3bbb7-5ad6-4615-ab85-8cea0f2129e9",
	"e0db9e53-bf87-4d36-be73-257397a0d365",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("c445c16c-ab5e-4996-91f1-f420a2a2c085",
	"e0db9e53-bf87-4d36-be73-257397a0d365");
INSERT INTO ACT_ACT
	VALUES ("c445c16c-ab5e-4996-91f1-f420a2a2c085",
	'bridge',
	0,
	"74659594-bf45-4032-a2ea-2e3cdc76d001",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("74659594-bf45-4032-a2ea-2e3cdc76d001",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"c445c16c-ab5e-4996-91f1-f420a2a2c085",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("58cbb23e-3454-48cc-9e74-5646a0d0f278",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("ec6c22d1-aa6a-4070-843f-2075725383a8",
	"58cbb23e-3454-48cc-9e74-5646a0d0f278",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d29ed6ab-5a45-41f4-8391-1f57220d1c3c",
	"58cbb23e-3454-48cc-9e74-5646a0d0f278");
INSERT INTO ACT_ACT
	VALUES ("d29ed6ab-5a45-41f4-8391-1f57220d1c3c",
	'bridge',
	0,
	"ff3d8ef4-fc95-4c0f-9184-0787c3319511",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ff3d8ef4-fc95-4c0f-9184-0787c3319511",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d29ed6ab-5a45-41f4-8391-1f57220d1c3c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("6ddf5cc2-e281-450c-b8ed-cfe96dad5dba",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("37265f86-bdde-490f-8c5d-00819ced7265",
	"6ddf5cc2-e281-450c-b8ed-cfe96dad5dba",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("bef0ac02-8663-4a1f-b443-1090f21aeaa6",
	"6ddf5cc2-e281-450c-b8ed-cfe96dad5dba");
INSERT INTO ACT_ACT
	VALUES ("bef0ac02-8663-4a1f-b443-1090f21aeaa6",
	'bridge',
	0,
	"2140cb8a-8e64-4974-9728-fbad9be36535",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2140cb8a-8e64-4974-9728-fbad9be36535",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"bef0ac02-8663-4a1f-b443-1090f21aeaa6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e3925957-565e-4d54-b51e-de756b38436b",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("091d2243-dd66-470b-ab5d-78df29b74f13",
	"e3925957-565e-4d54-b51e-de756b38436b",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("55ee15b2-93d5-433b-9d6d-2941f8407eb9",
	"e3925957-565e-4d54-b51e-de756b38436b");
INSERT INTO ACT_ACT
	VALUES ("55ee15b2-93d5-433b-9d6d-2941f8407eb9",
	'bridge',
	0,
	"01a7ebc4-b0a0-4ab2-b023-be4d216c3517",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("01a7ebc4-b0a0-4ab2-b023-be4d216c3517",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"55ee15b2-93d5-433b-9d6d-2941f8407eb9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c4b15688-a8b6-4413-a5dc-745884449002",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("66d85d1b-ceeb-4e09-b830-456d204329ed",
	"c4b15688-a8b6-4413-a5dc-745884449002");
INSERT INTO ACT_ACT
	VALUES ("66d85d1b-ceeb-4e09-b830-456d204329ed",
	'bridge',
	0,
	"54559a4d-40a9-4188-8dae-98481cc600d7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("54559a4d-40a9-4188-8dae-98481cc600d7",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"66d85d1b-ceeb-4e09-b830-456d204329ed",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("46b59376-c853-4d33-846c-27169f3a0095",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0bff32d5-a1a3-4360-952b-9d6d819d0420",
	"46b59376-c853-4d33-846c-27169f3a0095",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"a8fdb69d-7e93-4e7f-85b9-2b4b31014d45",
	'');
INSERT INTO S_BPARM
	VALUES ("a8fdb69d-7e93-4e7f-85b9-2b4b31014d45",
	"46b59376-c853-4d33-846c-27169f3a0095",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("ee9f69d6-dc46-4c2f-a8e8-25351016223e",
	"46b59376-c853-4d33-846c-27169f3a0095");
INSERT INTO ACT_ACT
	VALUES ("ee9f69d6-dc46-4c2f-a8e8-25351016223e",
	'bridge',
	0,
	"0c7df636-dd0c-4e49-994d-de9f62a6217c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("0c7df636-dd0c-4e49-994d-de9f62a6217c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"ee9f69d6-dc46-4c2f-a8e8-25351016223e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("42b1952e-cd2b-4631-9167-6812a0f94c8d",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("4cfe6b63-e617-405e-b828-c6083e4caf52",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"1e64041a-7310-4366-a2b8-aa0fbc2c72c7",
	'');
INSERT INTO S_BPARM
	VALUES ("1e64041a-7310-4366-a2b8-aa0fbc2c72c7",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("081e8392-55f4-4b63-beaf-6afcc0ec9601",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d");
INSERT INTO ACT_ACT
	VALUES ("081e8392-55f4-4b63-beaf-6afcc0ec9601",
	'bridge',
	0,
	"e497d6fb-1b31-4296-96dc-804759c302b9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e497d6fb-1b31-4296-96dc-804759c302b9",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"081e8392-55f4-4b63-beaf-6afcc0ec9601",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("d2dcf1f7-3bd3-4723-bb82-f0eb4e6dcaa4",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("9de6552b-c768-46f3-b7bf-332e6579b5a7",
	"d2dcf1f7-3bd3-4723-bb82-f0eb4e6dcaa4",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d2efae98-fedc-45ee-ac1f-e2354b12843a",
	"d2dcf1f7-3bd3-4723-bb82-f0eb4e6dcaa4");
INSERT INTO ACT_ACT
	VALUES ("d2efae98-fedc-45ee-ac1f-e2354b12843a",
	'bridge',
	0,
	"bbf05c63-7c90-43f4-af70-3eb76c6eac8c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bbf05c63-7c90-43f4-af70-3eb76c6eac8c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"d2efae98-fedc-45ee-ac1f-e2354b12843a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("f5c2064f-2bf3-483a-8f6f-1592bdb0f621",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("2bf4c9d1-b2d9-4987-8e00-53986107354d",
	"f5c2064f-2bf3-483a-8f6f-1592bdb0f621",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"8482f9dc-a1f6-4b1e-ad41-601313dc2652",
	'');
INSERT INTO S_BPARM
	VALUES ("8482f9dc-a1f6-4b1e-ad41-601313dc2652",
	"f5c2064f-2bf3-483a-8f6f-1592bdb0f621",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("e499b973-eba8-4877-904d-d3659928390b",
	"f5c2064f-2bf3-483a-8f6f-1592bdb0f621");
INSERT INTO ACT_ACT
	VALUES ("e499b973-eba8-4877-904d-d3659928390b",
	'bridge',
	0,
	"bbe73594-a97c-4b22-9602-4ac467a3a55a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bbe73594-a97c-4b22-9602-4ac467a3a55a",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"e499b973-eba8-4877-904d-d3659928390b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("50ae1e2b-bb34-42d8-bd2a-ecd0ac9e4817",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f198310a-f8cd-47f5-8f4d-2c81af8b1a31",
	"50ae1e2b-bb34-42d8-bd2a-ecd0ac9e4817",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"6b9bf035-37d0-41ea-92a3-230ebb98c3d8",
	'');
INSERT INTO S_BPARM
	VALUES ("6b9bf035-37d0-41ea-92a3-230ebb98c3d8",
	"50ae1e2b-bb34-42d8-bd2a-ecd0ac9e4817",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("4aedd0f0-4f2a-4c8a-95d2-7c2aeb9469d1",
	"50ae1e2b-bb34-42d8-bd2a-ecd0ac9e4817");
INSERT INTO ACT_ACT
	VALUES ("4aedd0f0-4f2a-4c8a-95d2-7c2aeb9469d1",
	'bridge',
	0,
	"2affcabe-eb93-41f9-b68e-b5744e17023d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2affcabe-eb93-41f9-b68e-b5744e17023d",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"4aedd0f0-4f2a-4c8a-95d2-7c2aeb9469d1",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("922755eb-0a34-4c1e-91bb-5e2173030872",
	"08307d7a-b7a0-4b40-aa08-673b2202397f",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0a0a5124-1f36-4710-996c-11eada068ee2",
	"922755eb-0a34-4c1e-91bb-5e2173030872",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("275a7a82-7a7f-4a0e-a397-a877561f3720",
	"922755eb-0a34-4c1e-91bb-5e2173030872");
INSERT INTO ACT_ACT
	VALUES ("275a7a82-7a7f-4a0e-a397-a877561f3720",
	'bridge',
	0,
	"6544dd35-975f-4377-bf8c-331a7292a67c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6544dd35-975f-4377-bf8c-331a7292a67c",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"275a7a82-7a7f-4a0e-a397-a877561f3720",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("a11d0283-3557-43c5-9573-7b7c025dd098",
	1,
	"37a3f838-e195-4f73-99b6-16f4d03fc321",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("a11d0283-3557-43c5-9573-7b7c025dd098",
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("74cd30e4-7a10-41f2-a19e-8dea5f160808",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	'activate',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'// The GPS is a singleton instance, so create it if it does not exist.

select any gps from instances of GPS;
if ( empty gps )
  // Create and initialize the singleton instance of the GPS.
  create object instance gps of GPS;
  gps.motionSegments = 0;
  gps.currentLatitude  = initialLatitude;
  gps.currentLongitude = initialLongitude;
end if;

// Establish recurring timer for periodic position updates.
create event instance tick of GPS_A1:tick() to GPS class;
gps.timer = TIM::timer_start_recurring( event_inst: tick, microseconds: updatePeriod );',
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_OPB
	VALUES ("352efa78-4c28-4aa6-976b-5801daf4517a",
	"74cd30e4-7a10-41f2-a19e-8dea5f160808");
INSERT INTO ACT_ACT
	VALUES ("352efa78-4c28-4aa6-976b-5801daf4517a",
	'class operation',
	0,
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::activate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	1,
	0,
	0,
	'TIM',
	'',
	'',
	14,
	1,
	14,
	13,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"352efa78-4c28-4aa6-976b-5801daf4517a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("cb641204-989e-41a6-861c-573fb0994a94",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	"a2fbcdec-8947-40f7-a97f-ea8feec9e0a6",
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES ("cb641204-989e-41a6-861c-573fb0994a94",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	3,
	34);
INSERT INTO ACT_SMT
	VALUES ("a2fbcdec-8947-40f7-a97f-ea8feec9e0a6",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	"2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1",
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES ("a2fbcdec-8947-40f7-a97f-ea8feec9e0a6",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	"fdde1181-de3b-421d-9b8f-66b6e5017ffb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	"b98f98cd-9f5d-411f-8afd-6d1db4dfc367",
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES ("2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1",
	1,
	0,
	13,
	31,
	13,
	38,
	13,
	48,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES ("2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1",
	1,
	"a02c958f-7cb7-4e2a-9ed5-4f25102e9876");
INSERT INTO E_CSME
	VALUES ("2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932");
INSERT INTO E_CEA
	VALUES ("2b58f57c-1fdf-43a5-8df3-d45e2d7ea8f1");
INSERT INTO ACT_SMT
	VALUES ("b98f98cd-9f5d-411f-8afd-6d1db4dfc367",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES ("b98f98cd-9f5d-411f-8afd-6d1db4dfc367",
	"d52b3e62-5927-43ee-bc93-dcf716a44307",
	"078fadc3-d426-4fe3-81f3-71281d9c05ce",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("97b7c08e-e873-4128-bdd5-89f8b06ad7dc",
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_IRF
	VALUES ("97b7c08e-e873-4128-bdd5-89f8b06ad7dc",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a");
INSERT INTO V_VAL
	VALUES ("fdde1181-de3b-421d-9b8f-66b6e5017ffb",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_UNY
	VALUES ("fdde1181-de3b-421d-9b8f-66b6e5017ffb",
	"97b7c08e-e873-4128-bdd5-89f8b06ad7dc",
	'empty');
INSERT INTO V_VAL
	VALUES ("77d928e6-fa5a-47d7-9d3a-03a4576ecee8",
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_IRF
	VALUES ("77d928e6-fa5a-47d7-9d3a-03a4576ecee8",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a");
INSERT INTO V_VAL
	VALUES ("078fadc3-d426-4fe3-81f3-71281d9c05ce",
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_AVL
	VALUES ("078fadc3-d426-4fe3-81f3-71281d9c05ce",
	"77d928e6-fa5a-47d7-9d3a-03a4576ecee8",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"04d11236-f87a-4a85-a144-14749ff088d9");
INSERT INTO V_VAL
	VALUES ("d52b3e62-5927-43ee-bc93-dcf716a44307",
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_BRV
	VALUES ("d52b3e62-5927-43ee-bc93-dcf716a44307",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d",
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES ("6a5c8dcb-1487-4890-b213-ec83184d3378",
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000a",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_TVL
	VALUES ("6a5c8dcb-1487-4890-b213-ec83184d3378",
	"a02c958f-7cb7-4e2a-9ed5-4f25102e9876");
INSERT INTO V_PAR
	VALUES ("6a5c8dcb-1487-4890-b213-ec83184d3378",
	"00000000-0000-0000-0000-000000000000",
	"d52b3e62-5927-43ee-bc93-dcf716a44307",
	'event_inst',
	"f1eec81f-0804-4f1f-8091-b25e3fb7c362",
	14,
	41);
INSERT INTO V_VAL
	VALUES ("f1eec81f-0804-4f1f-8091-b25e3fb7c362",
	0,
	0,
	14,
	73,
	84,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe");
INSERT INTO V_SCV
	VALUES ("f1eec81f-0804-4f1f-8091-b25e3fb7c362",
	"e29cc0f2-a1ab-47d5-a575-89abaac935cf",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_PAR
	VALUES ("f1eec81f-0804-4f1f-8091-b25e3fb7c362",
	"00000000-0000-0000-0000-000000000000",
	"d52b3e62-5927-43ee-bc93-dcf716a44307",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	14,
	59);
INSERT INTO V_VAR
	VALUES ("7180700e-7d2f-4288-bcf9-6ff1441aca6a",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7180700e-7d2f-4288-bcf9-6ff1441aca6a",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO V_VAR
	VALUES ("a02c958f-7cb7-4e2a-9ed5-4f25102e9876",
	"442b4a43-9956-4efe-ae82-fedbf5d5bffe",
	'tick',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("a02c958f-7cb7-4e2a-9ed5-4f25102e9876",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	3,
	6,
	33,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"352efa78-4c28-4aa6-976b-5801daf4517a",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b1e13180-a064-491c-8520-a6f7dad215d0",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	"60c772b3-b6e5-4fca-bfa9-343b835d3bb6",
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES ("b1e13180-a064-491c-8520-a6f7dad215d0",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	6,
	33);
INSERT INTO ACT_SMT
	VALUES ("60c772b3-b6e5-4fca-bfa9-343b835d3bb6",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	"49448dfe-21a0-4f13-abb6-9fdd248bd2eb",
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES ("60c772b3-b6e5-4fca-bfa9-343b835d3bb6",
	"6917df45-f4af-4690-83f4-ae2b54f65a9b",
	"b67a1715-6fe0-4836-b653-c8ac7f99fc1b",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("49448dfe-21a0-4f13-abb6-9fdd248bd2eb",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	"bb5bcfc4-7abe-4fac-94fa-f7d16ae8ddad",
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES ("49448dfe-21a0-4f13-abb6-9fdd248bd2eb",
	"b8bc26fd-3a38-40f3-b83f-562b86de3bfb",
	"b4988c3a-0cde-4bad-a267-6ab3ea6bf652",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("bb5bcfc4-7abe-4fac-94fa-f7d16ae8ddad",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9",
	"00000000-0000-0000-0000-000000000000",
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES ("bb5bcfc4-7abe-4fac-94fa-f7d16ae8ddad",
	"7f9eaa4d-a876-4733-8645-59255703d1b2",
	"47f1936c-3ebf-4b36-90a4-266c4b43d552",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("736f6a18-e442-4243-b5a6-5cf5d66d1298",
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_IRF
	VALUES ("736f6a18-e442-4243-b5a6-5cf5d66d1298",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a");
INSERT INTO V_VAL
	VALUES ("b67a1715-6fe0-4836-b653-c8ac7f99fc1b",
	1,
	0,
	7,
	7,
	20,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_AVL
	VALUES ("b67a1715-6fe0-4836-b653-c8ac7f99fc1b",
	"736f6a18-e442-4243-b5a6-5cf5d66d1298",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("6917df45-f4af-4690-83f4-ae2b54f65a9b",
	0,
	0,
	7,
	24,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_LIN
	VALUES ("6917df45-f4af-4690-83f4-ae2b54f65a9b",
	'0');
INSERT INTO V_VAL
	VALUES ("f94c943f-4f18-4ddd-8f74-57edc40af8b4",
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_IRF
	VALUES ("f94c943f-4f18-4ddd-8f74-57edc40af8b4",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a");
INSERT INTO V_VAL
	VALUES ("b4988c3a-0cde-4bad-a267-6ab3ea6bf652",
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_AVL
	VALUES ("b4988c3a-0cde-4bad-a267-6ab3ea6bf652",
	"f94c943f-4f18-4ddd-8f74-57edc40af8b4",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("b8bc26fd-3a38-40f3-b83f-562b86de3bfb",
	0,
	0,
	8,
	26,
	40,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_SCV
	VALUES ("b8bc26fd-3a38-40f3-b83f-562b86de3bfb",
	"dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("a2709ab1-88c8-4a30-bbbc-c965c64b5721",
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_IRF
	VALUES ("a2709ab1-88c8-4a30-bbbc-c965c64b5721",
	"7180700e-7d2f-4288-bcf9-6ff1441aca6a");
INSERT INTO V_VAL
	VALUES ("47f1936c-3ebf-4b36-90a4-266c4b43d552",
	1,
	0,
	9,
	7,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_AVL
	VALUES ("47f1936c-3ebf-4b36-90a4-266c4b43d552",
	"a2709ab1-88c8-4a30-bbbc-c965c64b5721",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("7f9eaa4d-a876-4733-8645-59255703d1b2",
	0,
	0,
	9,
	26,
	41,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"e0b5686a-72b4-4d2b-8334-8e051f58b5a9");
INSERT INTO V_SCV
	VALUES ("7f9eaa4d-a876-4733-8645-59255703d1b2",
	"5c7b037e-3376-43c6-946b-3a4aac12a71c",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO O_NBATTR
	VALUES ("04d11236-f87a-4a85-a144-14749ff088d9",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_BATTR
	VALUES ("04d11236-f87a-4a85-a144-14749ff088d9",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ATTR
	VALUES ("04d11236-f87a-4a85-a144-14749ff088d9",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4",
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("d2bba660-6b8e-432f-9040-bf791d85b1fb",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_BATTR
	VALUES ("d2bba660-6b8e-432f-9040-bf791d85b1fb",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ATTR
	VALUES ("d2bba660-6b8e-432f-9040-bf791d85b1fb",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"00000000-0000-0000-0000-000000000000",
	'currentLatitude',
	'Current latitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLatitude',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("09473724-2761-4447-8c19-d815032f1b3f",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_BATTR
	VALUES ("09473724-2761-4447-8c19-d815032f1b3f",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ATTR
	VALUES ("09473724-2761-4447-8c19-d815032f1b3f",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb",
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("eb31747b-a19e-4e30-852c-b256db51b7b4",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_BATTR
	VALUES ("eb31747b-a19e-4e30-852c-b256db51b7b4",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ATTR
	VALUES ("eb31747b-a19e-4e30-852c-b256db51b7b4",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f",
	'motionSegments',
	'The number of motion segments simulated by the GPS.',
	'',
	'motionSegments',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ID
	VALUES (1,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO O_ID
	VALUES (2,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO SM_ASM
	VALUES ("22c1a22f-b999-4406-9b43-da67b9331ef7",
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO SM_SM
	VALUES ("22c1a22f-b999-4406-9b43-da67b9331ef7",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_LEVT
	VALUES ("cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES ("4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES ("548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("20e06feb-ae20-4644-acde-43e5d86c7025",
	"548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("b2ff34dd-68b1-448a-af84-ca3788a84eb8",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"20e06feb-ae20-4644-acde-43e5d86c7025");
INSERT INTO SM_AH
	VALUES ("b2ff34dd-68b1-448a-af84-ca3788a84eb8",
	"22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_ACT
	VALUES ("b2ff34dd-68b1-448a-af84-ca3788a84eb8",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	1,
	'// Deactivate the timer.
select any gps from instances of GPS;
res = TIM::timer_cancel(timer_inst_ref: gps.timer);
LOG::LogInfo(message: "Location listener unregistered.");

if ( not res )
  LOG::LogFailure( message: "Location listener: timer_cancel() failed." );
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES ("89b25973-d276-4080-8438-16bc10f27327",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"b2ff34dd-68b1-448a-af84-ca3788a84eb8");
INSERT INTO ACT_ACT
	VALUES ("89b25973-d276-4080-8438-16bc10f27327",
	'class state',
	0,
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::idle',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4ebfcea5-2237-463f-93e9-672f68e48194",
	1,
	0,
	0,
	'LOG',
	'',
	'',
	6,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"89b25973-d276-4080-8438-16bc10f27327",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3222ffa6-8fd9-4986-b271-ae72bd4f6b68",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	"38124336-c6bd-415d-b309-70f80cd4b0c5",
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES ("3222ffa6-8fd9-4986-b271-ae72bd4f6b68",
	"cdc8d9d7-9266-4d62-8172-5cc383cb7e92",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("38124336-c6bd-415d-b309-70f80cd4b0c5",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	"96f7f059-7a0d-45a0-8fba-e56ff00a5a36",
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES ("38124336-c6bd-415d-b309-70f80cd4b0c5",
	"64a2f636-b79b-4c05-94c6-fdff3da1912d",
	"29d13e31-21c6-4524-ad43-8cb2c51c4119",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("96f7f059-7a0d-45a0-8fba-e56ff00a5a36",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	"5c1f18aa-91a7-485c-8f9e-a3d69a62248b",
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES ("96f7f059-7a0d-45a0-8fba-e56ff00a5a36",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES ("5c1f18aa-91a7-485c-8f9e-a3d69a62248b",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES ("5c1f18aa-91a7-485c-8f9e-a3d69a62248b",
	"f816bba4-4c0d-461b-b9b0-a9e81824072a",
	"b152a574-df28-447c-ba78-dec5ba3081b0",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("29d13e31-21c6-4524-ad43-8cb2c51c4119",
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_TVL
	VALUES ("29d13e31-21c6-4524-ad43-8cb2c51c4119",
	"522ea917-e1e1-4cec-9926-9a6713e55025");
INSERT INTO V_VAL
	VALUES ("64a2f636-b79b-4c05-94c6-fdff3da1912d",
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_BRV
	VALUES ("64a2f636-b79b-4c05-94c6-fdff3da1912d",
	"922755eb-0a34-4c1e-91bb-5e2173030872",
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES ("98a7a68d-db29-4adb-865c-6d8301f5fdfa",
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_IRF
	VALUES ("98a7a68d-db29-4adb-865c-6d8301f5fdfa",
	"cdc8d9d7-9266-4d62-8172-5cc383cb7e92");
INSERT INTO V_VAL
	VALUES ("556b3f08-e9c6-414d-be93-b70d1ad8e428",
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-00000000000f",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_AVL
	VALUES ("556b3f08-e9c6-414d-be93-b70d1ad8e428",
	"98a7a68d-db29-4adb-865c-6d8301f5fdfa",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"04d11236-f87a-4a85-a144-14749ff088d9");
INSERT INTO V_PAR
	VALUES ("556b3f08-e9c6-414d-be93-b70d1ad8e428",
	"00000000-0000-0000-0000-000000000000",
	"64a2f636-b79b-4c05-94c6-fdff3da1912d",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	3,
	25);
INSERT INTO V_VAL
	VALUES ("da49baf9-f722-45dc-970a-0cefacff2e5e",
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_LST
	VALUES ("da49baf9-f722-45dc-970a-0cefacff2e5e",
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES ("da49baf9-f722-45dc-970a-0cefacff2e5e",
	"96f7f059-7a0d-45a0-8fba-e56ff00a5a36",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	4,
	14);
INSERT INTO V_VAL
	VALUES ("5d47acb5-b2ff-493a-9b23-a59b497b09d2",
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_TVL
	VALUES ("5d47acb5-b2ff-493a-9b23-a59b497b09d2",
	"522ea917-e1e1-4cec-9926-9a6713e55025");
INSERT INTO V_VAL
	VALUES ("b152a574-df28-447c-ba78-dec5ba3081b0",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"4ebfcea5-2237-463f-93e9-672f68e48194");
INSERT INTO V_UNY
	VALUES ("b152a574-df28-447c-ba78-dec5ba3081b0",
	"5d47acb5-b2ff-493a-9b23-a59b497b09d2",
	'not');
INSERT INTO V_VAR
	VALUES ("cdc8d9d7-9266-4d62-8172-5cc383cb7e92",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("cdc8d9d7-9266-4d62-8172-5cc383cb7e92",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO V_VAR
	VALUES ("522ea917-e1e1-4cec-9926-9a6713e55025",
	"4ebfcea5-2237-463f-93e9-672f68e48194",
	'res',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("522ea917-e1e1-4cec-9926-9a6713e55025",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("f816bba4-4c0d-461b-b9b0-a9e81824072a",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	7,
	3,
	7,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"89b25973-d276-4080-8438-16bc10f27327",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("15131806-d622-41be-aecc-db7479e8b473",
	"f816bba4-4c0d-461b-b9b0-a9e81824072a",
	"00000000-0000-0000-0000-000000000000",
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES ("15131806-d622-41be-aecc-db7479e8b473",
	"5072982b-8c43-49b3-a290-5eff68b97094",
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES ("487e3631-9f24-472c-aa56-1db8bc3e8f6c",
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"f816bba4-4c0d-461b-b9b0-a9e81824072a");
INSERT INTO V_LST
	VALUES ("487e3631-9f24-472c-aa56-1db8bc3e8f6c",
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES ("487e3631-9f24-472c-aa56-1db8bc3e8f6c",
	"15131806-d622-41be-aecc-db7479e8b473",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	7,
	20);
INSERT INTO SM_STATE
	VALUES ("08540811-e9b8-4a3a-ab7a-a746f96de522",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("08540811-e9b8-4a3a-ab7a-a746f96de522",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("08540811-e9b8-4a3a-ab7a-a746f96de522",
	"4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("08540811-e9b8-4a3a-ab7a-a746f96de522",
	"4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("08540811-e9b8-4a3a-ab7a-a746f96de522",
	"548407e7-29e7-49fa-b0f5-8105481c580f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("cc5b5d48-8abb-4b41-9a6c-d3999c3ed49e",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"08540811-e9b8-4a3a-ab7a-a746f96de522");
INSERT INTO SM_AH
	VALUES ("cc5b5d48-8abb-4b41-9a6c-d3999c3ed49e",
	"22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_ACT
	VALUES ("cc5b5d48-8abb-4b41-9a6c-d3999c3ed49e",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	1,
	'// Simulate movement.
select any gps from instances of GPS;
if ( (gps.motionSegments % 3) == 0 )
  gps.currentLongitude = gps.currentLongitude + (longitudeIncrement * 2);
  gps.currentLatitude = gps.currentLatitude + latitudeIncrement;
elif ( (gps.motionSegments %5) == 0 )
  gps.currentLongitude = gps.currentLongitude + longitudeIncrement;
  gps.currentLatitude = gps.currentLatitude + (latitudeIncrement * 3);
else
  gps.currentLongitude = gps.currentLongitude + longitudeIncrement;
  gps.currentLatitude = gps.currentLatitude + latitudeIncrement;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES ("57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"cc5b5d48-8abb-4b41-9a6c-d3999c3ed49e");
INSERT INTO ACT_ACT
	VALUES ("57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	'class state',
	0,
	"27838b86-34be-4101-bec6-f72062966eb2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::locating',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("27838b86-34be-4101-bec6-f72062966eb2",
	1,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	2,
	34,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("fbe707af-0f92-4563-ab6d-e41f2df87932",
	"27838b86-34be-4101-bec6-f72062966eb2",
	"c1faafb1-49ff-4ff3-993a-5c29b67eb694",
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES ("fbe707af-0f92-4563-ab6d-e41f2df87932",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("c1faafb1-49ff-4ff3-993a-5c29b67eb694",
	"27838b86-34be-4101-bec6-f72062966eb2",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES ("c1faafb1-49ff-4ff3-993a-5c29b67eb694",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e",
	"8647d55b-a73a-4cb1-b68d-655843e505f6",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("c1963d14-a92c-492d-afe5-c1eb058eefe0",
	"27838b86-34be-4101-bec6-f72062966eb2",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES ("c1963d14-a92c-492d-afe5-c1eb058eefe0",
	"d1364117-cab1-4141-a277-bf63816a7d0d",
	"12879541-30d6-4795-b34e-545a7644b216",
	"c1faafb1-49ff-4ff3-993a-5c29b67eb694");
INSERT INTO ACT_SMT
	VALUES ("b9b99b1f-d02a-4d4c-8434-84fa5467235a",
	"27838b86-34be-4101-bec6-f72062966eb2",
	"00000000-0000-0000-0000-000000000000",
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES ("b9b99b1f-d02a-4d4c-8434-84fa5467235a",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968",
	"c1faafb1-49ff-4ff3-993a-5c29b67eb694");
INSERT INTO V_VAL
	VALUES ("cf82687b-d412-48b2-a10d-8fe8814441e8",
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_IRF
	VALUES ("cf82687b-d412-48b2-a10d-8fe8814441e8",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("07255340-3531-4249-8e22-bbd2d61c5761",
	0,
	0,
	3,
	11,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_AVL
	VALUES ("07255340-3531-4249-8e22-bbd2d61c5761",
	"cf82687b-d412-48b2-a10d-8fe8814441e8",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("525691fb-2182-4055-8f7f-a47eb295c779",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_BIN
	VALUES ("525691fb-2182-4055-8f7f-a47eb295c779",
	"a7198fe3-a92f-43da-9d1f-35075d03f13c",
	"07255340-3531-4249-8e22-bbd2d61c5761",
	'%');
INSERT INTO V_VAL
	VALUES ("a7198fe3-a92f-43da-9d1f-35075d03f13c",
	0,
	0,
	3,
	28,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_LIN
	VALUES ("a7198fe3-a92f-43da-9d1f-35075d03f13c",
	'3');
INSERT INTO V_VAL
	VALUES ("8647d55b-a73a-4cb1-b68d-655843e505f6",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_BIN
	VALUES ("8647d55b-a73a-4cb1-b68d-655843e505f6",
	"0b52e9c7-8c4a-4d99-9329-ff3522344262",
	"525691fb-2182-4055-8f7f-a47eb295c779",
	'==');
INSERT INTO V_VAL
	VALUES ("0b52e9c7-8c4a-4d99-9329-ff3522344262",
	0,
	0,
	3,
	34,
	34,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_LIN
	VALUES ("0b52e9c7-8c4a-4d99-9329-ff3522344262",
	'0');
INSERT INTO V_VAL
	VALUES ("9bcac3ef-f7da-4b46-8d2f-1e08ff9ed267",
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_IRF
	VALUES ("9bcac3ef-f7da-4b46-8d2f-1e08ff9ed267",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("fd8b5105-1468-41b3-84ca-f0a8f2163873",
	0,
	0,
	6,
	13,
	26,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_AVL
	VALUES ("fd8b5105-1468-41b3-84ca-f0a8f2163873",
	"9bcac3ef-f7da-4b46-8d2f-1e08ff9ed267",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("a4d4c88c-baa9-47c8-b06b-278f8bee100c",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_BIN
	VALUES ("a4d4c88c-baa9-47c8-b06b-278f8bee100c",
	"3f0fbb0b-28f2-4715-8668-88bec57b17fa",
	"fd8b5105-1468-41b3-84ca-f0a8f2163873",
	'%');
INSERT INTO V_VAL
	VALUES ("3f0fbb0b-28f2-4715-8668-88bec57b17fa",
	0,
	0,
	6,
	29,
	29,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_LIN
	VALUES ("3f0fbb0b-28f2-4715-8668-88bec57b17fa",
	'5');
INSERT INTO V_VAL
	VALUES ("12879541-30d6-4795-b34e-545a7644b216",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000001",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_BIN
	VALUES ("12879541-30d6-4795-b34e-545a7644b216",
	"56d8d9e7-02bb-4e3e-98ff-4ad93de6a36c",
	"a4d4c88c-baa9-47c8-b06b-278f8bee100c",
	'==');
INSERT INTO V_VAL
	VALUES ("56d8d9e7-02bb-4e3e-98ff-4ad93de6a36c",
	0,
	0,
	6,
	35,
	35,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"27838b86-34be-4101-bec6-f72062966eb2");
INSERT INTO V_LIN
	VALUES ("56d8d9e7-02bb-4e3e-98ff-4ad93de6a36c",
	'0');
INSERT INTO V_VAR
	VALUES ("b2a28388-dea1-4ca7-b901-f525e523ee3d",
	"27838b86-34be-4101-bec6-f72062966eb2",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("b2a28388-dea1-4ca7-b901-f525e523ee3d",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO ACT_BLK
	VALUES ("ec2bc2dc-8202-4d31-abec-c82646fe125e",
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b500fc80-b249-4f40-9757-516ee67193b7",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e",
	"d1bac0b6-f71c-4772-a481-782122c796a5",
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES ("b500fc80-b249-4f40-9757-516ee67193b7",
	"22de4019-4365-413b-81e8-312d9ea69504",
	"562c1417-745b-4d0e-9e3c-aea39610805c",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("d1bac0b6-f71c-4772-a481-782122c796a5",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e",
	"00000000-0000-0000-0000-000000000000",
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES ("d1bac0b6-f71c-4772-a481-782122c796a5",
	"5ddfa60a-32b8-45bd-a816-505872fef4c1",
	"1f83472d-db9a-41a3-b88b-7d5da3dc0b40",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("75cd3eaf-5fb9-4e0c-8fe4-b41861f4b82a",
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_IRF
	VALUES ("75cd3eaf-5fb9-4e0c-8fe4-b41861f4b82a",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("562c1417-745b-4d0e-9e3c-aea39610805c",
	1,
	0,
	4,
	7,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_AVL
	VALUES ("562c1417-745b-4d0e-9e3c-aea39610805c",
	"75cd3eaf-5fb9-4e0c-8fe4-b41861f4b82a",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("9444e958-00b8-441e-86e7-f14511b410d3",
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_IRF
	VALUES ("9444e958-00b8-441e-86e7-f14511b410d3",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("866bc356-f0b9-482b-b337-ed414eee29e1",
	0,
	0,
	4,
	30,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_AVL
	VALUES ("866bc356-f0b9-482b-b337-ed414eee29e1",
	"9444e958-00b8-441e-86e7-f14511b410d3",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("22de4019-4365-413b-81e8-312d9ea69504",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_BIN
	VALUES ("22de4019-4365-413b-81e8-312d9ea69504",
	"3bf2315b-aa54-4994-a1b3-95d8f3f96d48",
	"866bc356-f0b9-482b-b337-ed414eee29e1",
	'+');
INSERT INTO V_VAL
	VALUES ("1733156d-25b0-4e1c-8df9-4cd82b9a9b69",
	0,
	0,
	4,
	50,
	67,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_SCV
	VALUES ("1733156d-25b0-4e1c-8df9-4cd82b9a9b69",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("3bf2315b-aa54-4994-a1b3-95d8f3f96d48",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_BIN
	VALUES ("3bf2315b-aa54-4994-a1b3-95d8f3f96d48",
	"b21c5d5a-cd26-482a-a281-7f7ba0b10062",
	"1733156d-25b0-4e1c-8df9-4cd82b9a9b69",
	'*');
INSERT INTO V_VAL
	VALUES ("b21c5d5a-cd26-482a-a281-7f7ba0b10062",
	0,
	0,
	4,
	71,
	71,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_LIN
	VALUES ("b21c5d5a-cd26-482a-a281-7f7ba0b10062",
	'2');
INSERT INTO V_VAL
	VALUES ("6854bbea-88d9-44f9-b2a6-fdce46f0ace2",
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_IRF
	VALUES ("6854bbea-88d9-44f9-b2a6-fdce46f0ace2",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("1f83472d-db9a-41a3-b88b-7d5da3dc0b40",
	1,
	0,
	5,
	7,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_AVL
	VALUES ("1f83472d-db9a-41a3-b88b-7d5da3dc0b40",
	"6854bbea-88d9-44f9-b2a6-fdce46f0ace2",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("b7d88c24-7b20-47da-be8e-523774fb7fc7",
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_IRF
	VALUES ("b7d88c24-7b20-47da-be8e-523774fb7fc7",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("ada8d970-aac0-41f5-b4c8-c1c99774c77e",
	0,
	0,
	5,
	29,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_AVL
	VALUES ("ada8d970-aac0-41f5-b4c8-c1c99774c77e",
	"b7d88c24-7b20-47da-be8e-523774fb7fc7",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("5ddfa60a-32b8-45bd-a816-505872fef4c1",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_BIN
	VALUES ("5ddfa60a-32b8-45bd-a816-505872fef4c1",
	"d3ace38f-8da0-487a-a09e-a92a57ff6d26",
	"ada8d970-aac0-41f5-b4c8-c1c99774c77e",
	'+');
INSERT INTO V_VAL
	VALUES ("d3ace38f-8da0-487a-a09e-a92a57ff6d26",
	0,
	0,
	5,
	47,
	63,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"ec2bc2dc-8202-4d31-abec-c82646fe125e");
INSERT INTO V_SCV
	VALUES ("d3ace38f-8da0-487a-a09e-a92a57ff6d26",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO ACT_BLK
	VALUES ("d1364117-cab1-4141-a277-bf63816a7d0d",
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("020f5278-7480-4947-a3c8-3bfd135d8b70",
	"d1364117-cab1-4141-a277-bf63816a7d0d",
	"19a8e01d-aab8-4d49-a38d-baceeb98508c",
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES ("020f5278-7480-4947-a3c8-3bfd135d8b70",
	"44b6f61d-d16c-4066-af45-3c7d59f5fe56",
	"313f8c98-f8c2-4acf-a1d6-11921c65438a",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("19a8e01d-aab8-4d49-a38d-baceeb98508c",
	"d1364117-cab1-4141-a277-bf63816a7d0d",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES ("19a8e01d-aab8-4d49-a38d-baceeb98508c",
	"ecdc3ea2-503a-4774-81f7-fb051df81395",
	"32534ce6-b667-4e9f-81b5-214c768f6a3b",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("917944b3-6756-4d85-a096-cbd24077fa7b",
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_IRF
	VALUES ("917944b3-6756-4d85-a096-cbd24077fa7b",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("313f8c98-f8c2-4acf-a1d6-11921c65438a",
	1,
	0,
	7,
	7,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_AVL
	VALUES ("313f8c98-f8c2-4acf-a1d6-11921c65438a",
	"917944b3-6756-4d85-a096-cbd24077fa7b",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("a7a5b1a3-a9dc-44e3-aad2-5bf6c6ea30c9",
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_IRF
	VALUES ("a7a5b1a3-a9dc-44e3-aad2-5bf6c6ea30c9",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("bbe728b6-051a-4d8a-a092-6b295589e1c7",
	0,
	0,
	7,
	30,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_AVL
	VALUES ("bbe728b6-051a-4d8a-a092-6b295589e1c7",
	"a7a5b1a3-a9dc-44e3-aad2-5bf6c6ea30c9",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("44b6f61d-d16c-4066-af45-3c7d59f5fe56",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_BIN
	VALUES ("44b6f61d-d16c-4066-af45-3c7d59f5fe56",
	"6bfa06af-1689-4569-8a01-e88cb46e0aa4",
	"bbe728b6-051a-4d8a-a092-6b295589e1c7",
	'+');
INSERT INTO V_VAL
	VALUES ("6bfa06af-1689-4569-8a01-e88cb46e0aa4",
	0,
	0,
	7,
	49,
	66,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_SCV
	VALUES ("6bfa06af-1689-4569-8a01-e88cb46e0aa4",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("00fc9092-2fe9-473c-a93e-f88b47b5ee0f",
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_IRF
	VALUES ("00fc9092-2fe9-473c-a93e-f88b47b5ee0f",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("32534ce6-b667-4e9f-81b5-214c768f6a3b",
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_AVL
	VALUES ("32534ce6-b667-4e9f-81b5-214c768f6a3b",
	"00fc9092-2fe9-473c-a93e-f88b47b5ee0f",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("79dd1bf7-f220-4d09-aa7c-3e913bfe770c",
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_IRF
	VALUES ("79dd1bf7-f220-4d09-aa7c-3e913bfe770c",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("61a96fe8-f03d-4256-8968-9ceb3e3d31cf",
	0,
	0,
	8,
	29,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_AVL
	VALUES ("61a96fe8-f03d-4256-8968-9ceb3e3d31cf",
	"79dd1bf7-f220-4d09-aa7c-3e913bfe770c",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("ecdc3ea2-503a-4774-81f7-fb051df81395",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_BIN
	VALUES ("ecdc3ea2-503a-4774-81f7-fb051df81395",
	"16a482fa-c99a-4b91-85a8-9ed1288fed5c",
	"61a96fe8-f03d-4256-8968-9ceb3e3d31cf",
	'+');
INSERT INTO V_VAL
	VALUES ("069a50fe-e928-428c-9abf-e861fd634de7",
	0,
	0,
	8,
	48,
	64,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_SCV
	VALUES ("069a50fe-e928-428c-9abf-e861fd634de7",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("16a482fa-c99a-4b91-85a8-9ed1288fed5c",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_BIN
	VALUES ("16a482fa-c99a-4b91-85a8-9ed1288fed5c",
	"3f4c3732-b8e7-4b3f-9ee7-31833990cc96",
	"069a50fe-e928-428c-9abf-e861fd634de7",
	'*');
INSERT INTO V_VAL
	VALUES ("3f4c3732-b8e7-4b3f-9ee7-31833990cc96",
	0,
	0,
	8,
	68,
	68,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"d1364117-cab1-4141-a277-bf63816a7d0d");
INSERT INTO V_LIN
	VALUES ("3f4c3732-b8e7-4b3f-9ee7-31833990cc96",
	'3');
INSERT INTO ACT_BLK
	VALUES ("6a6291ca-3fd3-4782-80ff-7cf168f32968",
	0,
	0,
	0,
	'',
	'',
	'',
	11,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"57c58e9c-640c-4aa4-827f-61ecba82f8c7",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7fad632d-8e2e-42a4-80d0-20572b81ea95",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968",
	"97d03927-78c3-44db-bfd2-620eae374b7d",
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES ("7fad632d-8e2e-42a4-80d0-20572b81ea95",
	"3f2e6e62-c876-4e12-b5cb-f9e75a458043",
	"850925eb-ab77-4772-98af-ba4f97ae2036",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("97d03927-78c3-44db-bfd2-620eae374b7d",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968",
	"00000000-0000-0000-0000-000000000000",
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES ("97d03927-78c3-44db-bfd2-620eae374b7d",
	"fcc4bca0-c41d-4b31-9867-64716bcf3268",
	"8133cd03-5678-4fee-b549-51d59d8d51b9",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("11aa01ce-0323-45ee-8d97-c3fc1316fe70",
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_IRF
	VALUES ("11aa01ce-0323-45ee-8d97-c3fc1316fe70",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("850925eb-ab77-4772-98af-ba4f97ae2036",
	1,
	0,
	10,
	7,
	22,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_AVL
	VALUES ("850925eb-ab77-4772-98af-ba4f97ae2036",
	"11aa01ce-0323-45ee-8d97-c3fc1316fe70",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("3560db62-6b59-40de-901f-2ebb4c18919c",
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_IRF
	VALUES ("3560db62-6b59-40de-901f-2ebb4c18919c",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("5c3c0b30-6061-4068-b88d-1fd2fa40f0cb",
	0,
	0,
	10,
	30,
	45,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_AVL
	VALUES ("5c3c0b30-6061-4068-b88d-1fd2fa40f0cb",
	"3560db62-6b59-40de-901f-2ebb4c18919c",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("3f2e6e62-c876-4e12-b5cb-f9e75a458043",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_BIN
	VALUES ("3f2e6e62-c876-4e12-b5cb-f9e75a458043",
	"f37efe11-003e-445b-ab59-900a09e4877a",
	"5c3c0b30-6061-4068-b88d-1fd2fa40f0cb",
	'+');
INSERT INTO V_VAL
	VALUES ("f37efe11-003e-445b-ab59-900a09e4877a",
	0,
	0,
	10,
	49,
	66,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_SCV
	VALUES ("f37efe11-003e-445b-ab59-900a09e4877a",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("14616189-1b66-4c35-9eed-f6f16e83cc93",
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_IRF
	VALUES ("14616189-1b66-4c35-9eed-f6f16e83cc93",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("8133cd03-5678-4fee-b549-51d59d8d51b9",
	1,
	0,
	11,
	7,
	21,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_AVL
	VALUES ("8133cd03-5678-4fee-b549-51d59d8d51b9",
	"14616189-1b66-4c35-9eed-f6f16e83cc93",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("8a0b4a0e-6afd-4c80-bf9a-4d2eb70fb849",
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_IRF
	VALUES ("8a0b4a0e-6afd-4c80-bf9a-4d2eb70fb849",
	"b2a28388-dea1-4ca7-b901-f525e523ee3d");
INSERT INTO V_VAL
	VALUES ("58d50802-39e6-4eda-961c-2df8f490cb7e",
	0,
	0,
	11,
	29,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_AVL
	VALUES ("58d50802-39e6-4eda-961c-2df8f490cb7e",
	"8a0b4a0e-6afd-4c80-bf9a-4d2eb70fb849",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("fcc4bca0-c41d-4b31-9867-64716bcf3268",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_BIN
	VALUES ("fcc4bca0-c41d-4b31-9867-64716bcf3268",
	"22cfdf83-cd01-4b7b-9b78-e45e0f8ba6d8",
	"58d50802-39e6-4eda-961c-2df8f490cb7e",
	'+');
INSERT INTO V_VAL
	VALUES ("22cfdf83-cd01-4b7b-9b78-e45e0f8ba6d8",
	0,
	0,
	11,
	47,
	63,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	"6a6291ca-3fd3-4782-80ff-7cf168f32968");
INSERT INTO V_SCV
	VALUES ("22cfdf83-cd01-4b7b-9b78-e45e0f8ba6d8",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO SM_NSTXN
	VALUES ("ed05c9fb-73b3-4b3a-b5d4-ac240a779e68",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"20e06feb-ae20-4644-acde-43e5d86c7025",
	"4da12d25-2cb8-4d77-8b1c-9fed6daa6e9f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("11cccd6a-1ca6-4f1f-b5e4-f42573b7f02b",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"ed05c9fb-73b3-4b3a-b5d4-ac240a779e68");
INSERT INTO SM_AH
	VALUES ("11cccd6a-1ca6-4f1f-b5e4-f42573b7f02b",
	"22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_ACT
	VALUES ("11cccd6a-1ca6-4f1f-b5e4-f42573b7f02b",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES ("78efd22f-8ef4-426f-bc7a-5b6d41f0da49",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"11cccd6a-1ca6-4f1f-b5e4-f42573b7f02b");
INSERT INTO ACT_ACT
	VALUES ("78efd22f-8ef4-426f-bc7a-5b6d41f0da49",
	'class transition',
	0,
	"a15c865a-c71f-4836-961b-78ced0b6cadb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A2: registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a15c865a-c71f-4836-961b-78ced0b6cadb",
	0,
	0,
	0,
	'LOG',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"78efd22f-8ef4-426f-bc7a-5b6d41f0da49",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("eac09beb-58eb-4a5d-b426-91dfb1ba76a2",
	"a15c865a-c71f-4836-961b-78ced0b6cadb",
	"3b8acca4-77ff-435f-9f73-7b63c0cf25c9",
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES ("eac09beb-58eb-4a5d-b426-91dfb1ba76a2",
	"74cd30e4-7a10-41f2-a19e-8dea5f160808",
	"00000000-0000-0000-0000-000000000000",
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("3b8acca4-77ff-435f-9f73-7b63c0cf25c9",
	"a15c865a-c71f-4836-961b-78ced0b6cadb",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES ("3b8acca4-77ff-435f-9f73-7b63c0cf25c9",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES ("56067f59-0d85-4675-b750-c41fe74b43c0",
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"a15c865a-c71f-4836-961b-78ced0b6cadb");
INSERT INTO V_LST
	VALUES ("56067f59-0d85-4675-b750-c41fe74b43c0",
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES ("56067f59-0d85-4675-b750-c41fe74b43c0",
	"3b8acca4-77ff-435f-9f73-7b63c0cf25c9",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	4,
	14);
INSERT INTO SM_TXN
	VALUES ("ed05c9fb-73b3-4b3a-b5d4-ac240a779e68",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"08540811-e9b8-4a3a-ab7a-a746f96de522",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("269e9dfd-c828-4fea-a03e-49c75a4bb9b0",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"08540811-e9b8-4a3a-ab7a-a746f96de522",
	"548407e7-29e7-49fa-b0f5-8105481c580f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("fcbcb3dd-3aad-4a8d-8da0-bfffb549314f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"269e9dfd-c828-4fea-a03e-49c75a4bb9b0");
INSERT INTO SM_AH
	VALUES ("fcbcb3dd-3aad-4a8d-8da0-bfffb549314f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_ACT
	VALUES ("fcbcb3dd-3aad-4a8d-8da0-bfffb549314f",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES ("13407fb3-dff7-425f-a5ae-fb842f259487",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"fcbcb3dd-3aad-4a8d-8da0-bfffb549314f");
INSERT INTO ACT_ACT
	VALUES ("13407fb3-dff7-425f-a5ae-fb842f259487",
	'class transition',
	0,
	"7c805cee-6a24-4fa2-885b-df9f7292f8c4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A3: unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7c805cee-6a24-4fa2-885b-df9f7292f8c4",
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"13407fb3-dff7-425f-a5ae-fb842f259487",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TXN
	VALUES ("269e9dfd-c828-4fea-a03e-49c75a4bb9b0",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"20e06feb-ae20-4644-acde-43e5d86c7025",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("cc9e782c-ac7e-4e7a-8f29-6a7f3cab0fdb",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"08540811-e9b8-4a3a-ab7a-a746f96de522",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("3ecd1eab-8c84-417a-991a-48008b1f4abc",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"cc9e782c-ac7e-4e7a-8f29-6a7f3cab0fdb");
INSERT INTO SM_AH
	VALUES ("3ecd1eab-8c84-417a-991a-48008b1f4abc",
	"22c1a22f-b999-4406-9b43-da67b9331ef7");
INSERT INTO SM_ACT
	VALUES ("3ecd1eab-8c84-417a-991a-48008b1f4abc",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES ("8a19ba57-d33f-41d0-a157-354509feb2f6",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"3ecd1eab-8c84-417a-991a-48008b1f4abc");
INSERT INTO ACT_ACT
	VALUES ("8a19ba57-d33f-41d0-a157-354509feb2f6",
	'class transition',
	0,
	"9a5fcd8c-f368-4973-946b-2954634dde57",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A1: tick',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9a5fcd8c-f368-4973-946b-2954634dde57",
	1,
	0,
	0,
	'',
	'',
	'',
	3,
	1,
	2,
	34,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	"8a19ba57-d33f-41d0-a157-354509feb2f6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("79fae712-0dbd-472e-85c1-d6dafeccad88",
	"9a5fcd8c-f368-4973-946b-2954634dde57",
	"39624e97-d1e6-40d6-9276-284f466ebf7a",
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES ("79fae712-0dbd-472e-85c1-d6dafeccad88",
	"7c369451-e6f2-4ac3-976b-5bf43ce1b496",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("39624e97-d1e6-40d6-9276-284f466ebf7a",
	"9a5fcd8c-f368-4973-946b-2954634dde57",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES ("39624e97-d1e6-40d6-9276-284f466ebf7a",
	"15dd7839-c392-4d8e-beb6-9d56fc34a795",
	"f4b11375-8265-4d06-b447-a39b5803a814",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("632505f4-0f5a-453d-b6e0-63fd427cf1ea",
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_IRF
	VALUES ("632505f4-0f5a-453d-b6e0-63fd427cf1ea",
	"7c369451-e6f2-4ac3-976b-5bf43ce1b496");
INSERT INTO V_VAL
	VALUES ("f4b11375-8265-4d06-b447-a39b5803a814",
	1,
	0,
	3,
	5,
	18,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_AVL
	VALUES ("f4b11375-8265-4d06-b447-a39b5803a814",
	"632505f4-0f5a-453d-b6e0-63fd427cf1ea",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("6c4c539d-b814-49f5-b321-9aa293ffb849",
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000008",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_IRF
	VALUES ("6c4c539d-b814-49f5-b321-9aa293ffb849",
	"7c369451-e6f2-4ac3-976b-5bf43ce1b496");
INSERT INTO V_VAL
	VALUES ("358bedbb-e72a-4ebf-b9ed-2538f82126b3",
	0,
	0,
	3,
	26,
	39,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_AVL
	VALUES ("358bedbb-e72a-4ebf-b9ed-2538f82126b3",
	"6c4c539d-b814-49f5-b321-9aa293ffb849",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("15dd7839-c392-4d8e-beb6-9d56fc34a795",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_BIN
	VALUES ("15dd7839-c392-4d8e-beb6-9d56fc34a795",
	"84136f0a-dd86-4610-84e4-a572ac52bea0",
	"358bedbb-e72a-4ebf-b9ed-2538f82126b3",
	'+');
INSERT INTO V_VAL
	VALUES ("84136f0a-dd86-4610-84e4-a572ac52bea0",
	0,
	0,
	3,
	43,
	43,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	"9a5fcd8c-f368-4973-946b-2954634dde57");
INSERT INTO V_LIN
	VALUES ("84136f0a-dd86-4610-84e4-a572ac52bea0",
	'1');
INSERT INTO V_VAR
	VALUES ("7c369451-e6f2-4ac3-976b-5bf43ce1b496",
	"9a5fcd8c-f368-4973-946b-2954634dde57",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("7c369451-e6f2-4ac3-976b-5bf43ce1b496",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO SM_TXN
	VALUES ("cc9e782c-ac7e-4e7a-8f29-6a7f3cab0fdb",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"08540811-e9b8-4a3a-ab7a-a746f96de522",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("eafcdd37-dbef-4a41-a855-8251c2ed0827",
	1,
	"a734b9af-9b33-4d95-975a-d7abb5f454ab",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("eafcdd37-dbef-4a41-a855-8251c2ed0827",
	"00000000-0000-0000-0000-000000000000",
	"b9bacf03-7cac-42b6-b488-57a5221c7bb6",
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("f46de14b-1d2d-4365-99dc-a9604add8342",
	1,
	"eafcdd37-dbef-4a41-a855-8251c2ed0827",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("f46de14b-1d2d-4365-99dc-a9604add8342",
	'Distance',
	'kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
the irregular shape of the earth perturbs the value) and for longitude figures
away from the poles (where the distance between longitude lines decreases to zero).

latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
GPS during each interval.');
INSERT INTO CNST_SYC
	VALUES ("8b470401-daf6-4c3f-a65a-15c75f4e3c4d",
	'kmPerDegree',
	'',
	"ba5eda7a-def5-0000-0000-000000000003",
	"f46de14b-1d2d-4365-99dc-a9604add8342",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("8b470401-daf6-4c3f-a65a-15c75f4e3c4d",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO CNST_LSC
	VALUES ("8b470401-daf6-4c3f-a65a-15c75f4e3c4d",
	"ba5eda7a-def5-0000-0000-000000000003",
	'111.32');
INSERT INTO PE_PE
	VALUES ("fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	1,
	"eafcdd37-dbef-4a41-a855-8251c2ed0827",
	"00000000-0000-0000-0000-000000000000",
	10);
INSERT INTO CNST_CSP
	VALUES ("fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES ("c96b1640-6102-44ec-b2cb-a24e8ad7e00d",
	'SecondsPerHour',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	"c609bff5-7dec-4682-a7c8-7710322b7e06",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LFSC
	VALUES ("c96b1640-6102-44ec-b2cb-a24e8ad7e00d",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("c96b1640-6102-44ec-b2cb-a24e8ad7e00d",
	"ba5eda7a-def5-0000-0000-000000000002",
	'3600');
INSERT INTO CNST_SYC
	VALUES ("c609bff5-7dec-4682-a7c8-7710322b7e06",
	'SpeedAveragingWindow',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	"fbe23dc7-0eee-471f-9a59-1fe966bde4a7",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO CNST_LFSC
	VALUES ("c609bff5-7dec-4682-a7c8-7710322b7e06",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO CNST_LSC
	VALUES ("c609bff5-7dec-4682-a7c8-7710322b7e06",
	"ba5eda7a-def5-0000-0000-000000000002",
	'5');
INSERT INTO PE_PE
	VALUES ("e7bc5670-3b4b-4919-9970-5f6469632a0c",
	1,
	"eafcdd37-dbef-4a41-a855-8251c2ed0827",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("e7bc5670-3b4b-4919-9970-5f6469632a0c",
	"00000000-0000-0000-0000-000000000000",
	'Location',
	'');
INSERT INTO C_EP
	VALUES ("60c5e908-e287-4a9e-8221-962659bc84b1",
	"e7bc5670-3b4b-4919-9970-5f6469632a0c",
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES ("60c5e908-e287-4a9e-8221-962659bc84b1",
	"ba5eda7a-def5-0000-0000-000000000000",
	'getLocation',
	'',
	0,
	'',
	"51edbbee-b095-4930-a424-6f9af391cf8f");
INSERT INTO C_PP
	VALUES ("01c71076-86e9-42eb-8f23-8e8145dc34cb",
	"60c5e908-e287-4a9e-8221-962659bc84b1",
	"ba5eda7a-def5-0000-0000-000000000002",
	'latitude',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("686a0414-3118-45b4-8f70-8a91ca84f8dd",
	"60c5e908-e287-4a9e-8221-962659bc84b1",
	"ba5eda7a-def5-0000-0000-000000000002",
	'longitude',
	'',
	0,
	'',
	"01c71076-86e9-42eb-8f23-8e8145dc34cb");
INSERT INTO C_EP
	VALUES ("51edbbee-b095-4930-a424-6f9af391cf8f",
	"e7bc5670-3b4b-4919-9970-5f6469632a0c",
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES ("51edbbee-b095-4930-a424-6f9af391cf8f",
	"ba5eda7a-def5-0000-0000-000000000003",
	'getDistance',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("02e02c6b-07cb-4001-8d4c-a9f0e6b4fa42",
	"51edbbee-b095-4930-a424-6f9af391cf8f",
	"ba5eda7a-def5-0000-0000-000000000002",
	'toLat',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("b33e6942-0da2-4439-a833-f336db25ee48",
	"51edbbee-b095-4930-a424-6f9af391cf8f",
	"ba5eda7a-def5-0000-0000-000000000002",
	'fromLat',
	'',
	0,
	'',
	"02e02c6b-07cb-4001-8d4c-a9f0e6b4fa42");
INSERT INTO C_PP
	VALUES ("8942d77f-c285-45eb-b14c-538fd52d1c2e",
	"51edbbee-b095-4930-a424-6f9af391cf8f",
	"ba5eda7a-def5-0000-0000-000000000002",
	'toLong',
	'',
	0,
	'',
	"b33e6942-0da2-4439-a833-f336db25ee48");
INSERT INTO C_PP
	VALUES ("a0e5b226-4670-4129-83e4-c4f0c6afb32f",
	"51edbbee-b095-4930-a424-6f9af391cf8f",
	"ba5eda7a-def5-0000-0000-000000000002",
	'fromLong',
	'',
	0,
	'',
	"8942d77f-c285-45eb-b14c-538fd52d1c2e");
INSERT INTO C_EP
	VALUES ("d71e1ada-30de-4819-8e98-ac0fb6495bc5",
	"e7bc5670-3b4b-4919-9970-5f6469632a0c",
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES ("d71e1ada-30de-4819-8e98-ac0fb6495bc5",
	"ba5eda7a-def5-0000-0000-000000000000",
	'registerListener',
	'',
	0,
	'',
	"60c5e908-e287-4a9e-8221-962659bc84b1");
INSERT INTO C_EP
	VALUES ("dbbc7c42-b626-4a38-8b63-06b6f87fb255",
	"e7bc5670-3b4b-4919-9970-5f6469632a0c",
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES ("dbbc7c42-b626-4a38-8b63-06b6f87fb255",
	"ba5eda7a-def5-0000-0000-000000000000",
	'unregisterListener',
	'',
	0,
	'',
	"d71e1ada-30de-4819-8e98-ac0fb6495bc5");
