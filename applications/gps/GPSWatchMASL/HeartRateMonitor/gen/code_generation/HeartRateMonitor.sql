-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
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
	VALUES ("ca6800eb-d140-416e-b33d-969ef78a36b8",
	"02e6a56e-5938-45c0-a21f-d4469cb3a2d2");
INSERT INTO ACT_ACT
	VALUES ("ca6800eb-d140-416e-b33d-969ef78a36b8",
	'interface operation',
	0,
	"f49d1ffb-b4b8-42d8-9e6f-dccf236e7f5b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f49d1ffb-b4b8-42d8-9e6f-dccf236e7f5b",
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
	"ca6800eb-d140-416e-b33d-969ef78a36b8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("acbb4d32-73c2-4ea0-ba7d-b847e6842db6",
	"f49d1ffb-b4b8-42d8-9e6f-dccf236e7f5b",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES ("acbb4d32-73c2-4ea0-ba7d-b847e6842db6",
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
	VALUES ("acbb4d32-73c2-4ea0-ba7d-b847e6842db6");
INSERT INTO E_GSME
	VALUES ("acbb4d32-73c2-4ea0-ba7d-b847e6842db6",
	"93680015-70ab-442d-b19d-47dc14796d43");
INSERT INTO E_GAR
	VALUES ("acbb4d32-73c2-4ea0-ba7d-b847e6842db6");
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
	VALUES ("77b21b8c-4470-43b1-a354-9f58c692f397",
	"cf1ae4ab-a165-4b5b-a91e-5f52b55219a3");
INSERT INTO ACT_ACT
	VALUES ("77b21b8c-4470-43b1-a354-9f58c692f397",
	'interface operation',
	0,
	"2862b97e-77d3-44e9-a068-b38fd81bf769",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2862b97e-77d3-44e9-a068-b38fd81bf769",
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
	"77b21b8c-4470-43b1-a354-9f58c692f397",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0d4002ce-f6c4-4d69-8dd3-a512f77049fb",
	"2862b97e-77d3-44e9-a068-b38fd81bf769",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES ("0d4002ce-f6c4-4d69-8dd3-a512f77049fb",
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
	VALUES ("0d4002ce-f6c4-4d69-8dd3-a512f77049fb");
INSERT INTO E_GSME
	VALUES ("0d4002ce-f6c4-4d69-8dd3-a512f77049fb",
	"0c900c3b-260e-4191-a57c-1a8e7c55bfba");
INSERT INTO E_GAR
	VALUES ("0d4002ce-f6c4-4d69-8dd3-a512f77049fb");
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
	VALUES ("a0fcda50-25a3-4ea4-a0f4-93cbed52dc04",
	"90b4dd12-6df6-45c1-9064-5060f7b19fd6");
INSERT INTO ACT_ACT
	VALUES ("a0fcda50-25a3-4ea4-a0f4-93cbed52dc04",
	'interface operation',
	0,
	"dadfee72-28ea-4194-983a-14cb16b7be72",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("dadfee72-28ea-4194-983a-14cb16b7be72",
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
	"a0fcda50-25a3-4ea4-a0f4-93cbed52dc04",
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
	VALUES ("c82513f6-988a-4974-90d2-1b97bffe8309",
	"d29b5e8f-621e-4982-8e5b-5e249d288eaf");
INSERT INTO ACT_ACT
	VALUES ("c82513f6-988a-4974-90d2-1b97bffe8309",
	'bridge',
	0,
	"e671cb0c-693b-4997-a3dd-d6ba82a47fe8",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e671cb0c-693b-4997-a3dd-d6ba82a47fe8",
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
	"c82513f6-988a-4974-90d2-1b97bffe8309",
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
	VALUES ("c48f6d98-f78c-4ae9-bab9-2f55829468d1",
	"b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49");
INSERT INTO ACT_ACT
	VALUES ("c48f6d98-f78c-4ae9-bab9-2f55829468d1",
	'bridge',
	0,
	"11d22083-9e07-46eb-9032-26bef4d73384",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("11d22083-9e07-46eb-9032-26bef4d73384",
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
	"c48f6d98-f78c-4ae9-bab9-2f55829468d1",
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
	VALUES ("29bd6922-2174-48b1-aeb1-8167ce7c2015",
	"ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb");
INSERT INTO ACT_ACT
	VALUES ("29bd6922-2174-48b1-aeb1-8167ce7c2015",
	'bridge',
	0,
	"1047365d-6164-49cb-87ab-69515fa724a3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1047365d-6164-49cb-87ab-69515fa724a3",
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
	"29bd6922-2174-48b1-aeb1-8167ce7c2015",
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
	VALUES ("926f51e2-2453-4a29-8325-51c44c0674f4",
	"481ce4bd-4486-4baa-b38d-497587669ef5");
INSERT INTO ACT_ACT
	VALUES ("926f51e2-2453-4a29-8325-51c44c0674f4",
	'bridge',
	0,
	"eb7a4004-c47d-40d9-9fcd-51eab68916d7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("eb7a4004-c47d-40d9-9fcd-51eab68916d7",
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
	"926f51e2-2453-4a29-8325-51c44c0674f4",
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
	VALUES ("752afce2-19a4-4332-b5f6-ce96acd3dd20",
	"c093f590-6a61-4aa6-8033-f772c168b45f");
INSERT INTO ACT_ACT
	VALUES ("752afce2-19a4-4332-b5f6-ce96acd3dd20",
	'bridge',
	0,
	"127e992d-e5ae-4953-b511-5afe32e27e49",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("127e992d-e5ae-4953-b511-5afe32e27e49",
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
	"752afce2-19a4-4332-b5f6-ce96acd3dd20",
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
	VALUES ("dd0fdb5a-67ff-4a34-9fe9-d287f32114ee",
	"61e88cde-7892-450b-a745-cd5dea3808e3");
INSERT INTO ACT_ACT
	VALUES ("dd0fdb5a-67ff-4a34-9fe9-d287f32114ee",
	'bridge',
	0,
	"6dd25d15-1c92-4f3e-b832-a369db154d18",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6dd25d15-1c92-4f3e-b832-a369db154d18",
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
	"dd0fdb5a-67ff-4a34-9fe9-d287f32114ee",
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
	VALUES ("20710ca9-cad8-4e96-9820-cd638d52b096",
	"914cdc20-05ca-49de-8573-06c257001f4e");
INSERT INTO ACT_ACT
	VALUES ("20710ca9-cad8-4e96-9820-cd638d52b096",
	'bridge',
	0,
	"7cb0716c-0ed1-46f1-a44b-b12d532ace8d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7cb0716c-0ed1-46f1-a44b-b12d532ace8d",
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
	"20710ca9-cad8-4e96-9820-cd638d52b096",
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
	VALUES ("6391dbd8-5468-4877-820d-00939b9d4153",
	"914e22fe-94d1-410c-b8f7-8b6e556853fc");
INSERT INTO ACT_ACT
	VALUES ("6391dbd8-5468-4877-820d-00939b9d4153",
	'bridge',
	0,
	"8054d3da-2c38-412a-b381-c394a8bb231e",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8054d3da-2c38-412a-b381-c394a8bb231e",
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
	"6391dbd8-5468-4877-820d-00939b9d4153",
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
	VALUES ("37a02bdc-f780-4c1c-8f78-86a2abfbce57",
	"669d3389-2fb0-44ed-a331-dfc9d525fc87");
INSERT INTO ACT_ACT
	VALUES ("37a02bdc-f780-4c1c-8f78-86a2abfbce57",
	'bridge',
	0,
	"6d9638e9-e8cf-4b1e-a1bb-d3d37c8b543b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6d9638e9-e8cf-4b1e-a1bb-d3d37c8b543b",
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
	"37a02bdc-f780-4c1c-8f78-86a2abfbce57",
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
	VALUES ("8e67b0cf-ec85-4903-929e-9992eee0da3b",
	"c632cd72-e232-4265-aec8-bab78e41b1f6");
INSERT INTO ACT_ACT
	VALUES ("8e67b0cf-ec85-4903-929e-9992eee0da3b",
	'bridge',
	0,
	"a50c0116-4524-446b-a98e-dad9ac86e430",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a50c0116-4524-446b-a98e-dad9ac86e430",
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
	"8e67b0cf-ec85-4903-929e-9992eee0da3b",
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
	VALUES ("c03d4b7d-00ef-403b-9a24-dd8098e8916e",
	"e4807cac-9de4-43a0-b0ea-ea5ef1f52b12");
INSERT INTO ACT_ACT
	VALUES ("c03d4b7d-00ef-403b-9a24-dd8098e8916e",
	'bridge',
	0,
	"8504a802-c800-4e0a-9f17-ea3f39b17e91",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8504a802-c800-4e0a-9f17-ea3f39b17e91",
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
	"c03d4b7d-00ef-403b-9a24-dd8098e8916e",
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
	VALUES ("be774153-f5a8-494e-b990-f0fd46d9162e",
	"0c84dc08-503f-4674-aef8-86e0dfada4d4");
INSERT INTO ACT_ACT
	VALUES ("be774153-f5a8-494e-b990-f0fd46d9162e",
	'bridge',
	0,
	"6208c06c-c78c-4e81-a0df-0166e4142599",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6208c06c-c78c-4e81-a0df-0166e4142599",
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
	"be774153-f5a8-494e-b990-f0fd46d9162e",
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
	VALUES ("6af694e9-5056-4217-b21b-c0aab7238833",
	"263f3b28-80d8-45e8-a3a4-ef3c4b5252ca");
INSERT INTO ACT_ACT
	VALUES ("6af694e9-5056-4217-b21b-c0aab7238833",
	'bridge',
	0,
	"ac0dd023-dcf1-4ced-b5da-7eb31be5aa24",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ac0dd023-dcf1-4ced-b5da-7eb31be5aa24",
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
	"6af694e9-5056-4217-b21b-c0aab7238833",
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
	VALUES ("6bd9785a-2a99-49b1-99e4-f7b387bee714",
	"1e6403c9-1cb6-455b-ac8d-4884320840f5");
INSERT INTO ACT_ACT
	VALUES ("6bd9785a-2a99-49b1-99e4-f7b387bee714",
	'bridge',
	0,
	"b2eaffd2-3abe-4a02-b7bc-14b4abc99652",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b2eaffd2-3abe-4a02-b7bc-14b4abc99652",
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
	"6bd9785a-2a99-49b1-99e4-f7b387bee714",
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
	VALUES ("e6fc67a0-ac4c-4a89-83d6-93e47527de73",
	"ade3b718-620b-45ea-8c2f-dae8e0e6379c");
INSERT INTO ACT_ACT
	VALUES ("e6fc67a0-ac4c-4a89-83d6-93e47527de73",
	'bridge',
	0,
	"effe667e-1539-4b2b-8247-e401c62c1340",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("effe667e-1539-4b2b-8247-e401c62c1340",
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
	"e6fc67a0-ac4c-4a89-83d6-93e47527de73",
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
	VALUES ("864b0662-614f-4f98-b548-7da56f23f245",
	"312385c6-b733-48c1-9818-da78a8aa6976");
INSERT INTO ACT_ACT
	VALUES ("864b0662-614f-4f98-b548-7da56f23f245",
	'bridge',
	0,
	"ada92fb4-bab2-49b4-83a9-a78b776012fc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ada92fb4-bab2-49b4-83a9-a78b776012fc",
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
	"864b0662-614f-4f98-b548-7da56f23f245",
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
	VALUES ("ffca6188-d15e-4d11-b96f-002e34fc0de9",
	"fa4d6963-53c5-49f7-807c-4bc37ea3b224");
INSERT INTO ACT_ACT
	VALUES ("ffca6188-d15e-4d11-b96f-002e34fc0de9",
	'bridge',
	0,
	"4e9fccde-0b44-4257-a26d-2d690e46fd20",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4e9fccde-0b44-4257-a26d-2d690e46fd20",
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
	"ffca6188-d15e-4d11-b96f-002e34fc0de9",
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
	VALUES ("8b6acf6e-82d6-4934-9e2f-5bef4d86f7d8",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03");
INSERT INTO ACT_ACT
	VALUES ("8b6acf6e-82d6-4934-9e2f-5bef4d86f7d8",
	'bridge',
	0,
	"1b15baa8-b800-4a0c-a2ce-8512256bc88b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1b15baa8-b800-4a0c-a2ce-8512256bc88b",
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
	"8b6acf6e-82d6-4934-9e2f-5bef4d86f7d8",
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
	VALUES ("c1595448-2fd6-403c-bbdc-64db53c9dce3",
	"8a6a0939-defe-471a-aae0-80fcdd901260");
INSERT INTO ACT_ACT
	VALUES ("c1595448-2fd6-403c-bbdc-64db53c9dce3",
	'bridge',
	0,
	"670ab368-b2b3-4bba-9507-2073ffa5af32",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("670ab368-b2b3-4bba-9507-2073ffa5af32",
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
	"c1595448-2fd6-403c-bbdc-64db53c9dce3",
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
	VALUES ("a18c0ee0-6299-453b-b012-5d22dc4655db",
	"9a02c6c8-594d-4bab-8046-d37ad2b9b896");
INSERT INTO ACT_ACT
	VALUES ("a18c0ee0-6299-453b-b012-5d22dc4655db",
	'bridge',
	0,
	"7016f149-a6c6-426f-a328-5f4a93394d36",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7016f149-a6c6-426f-a328-5f4a93394d36",
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
	"a18c0ee0-6299-453b-b012-5d22dc4655db",
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
	VALUES ("28c45866-fa9c-4865-a82c-b0130cccf075",
	"bd226056-4f54-422c-ac28-c41acc2e5e4d");
INSERT INTO ACT_ACT
	VALUES ("28c45866-fa9c-4865-a82c-b0130cccf075",
	'bridge',
	0,
	"735f913d-1928-4e15-b6c7-58f855385bce",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("735f913d-1928-4e15-b6c7-58f855385bce",
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
	"28c45866-fa9c-4865-a82c-b0130cccf075",
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
	VALUES ("6123d7ee-4a1e-47ef-b095-35a8bca5b0ef",
	"8569d687-8192-4f46-a549-a1f6d8b4640b");
INSERT INTO ACT_ACT
	VALUES ("6123d7ee-4a1e-47ef-b095-35a8bca5b0ef",
	'bridge',
	0,
	"9fda4661-4d68-4701-a3dc-576773f53921",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9fda4661-4d68-4701-a3dc-576773f53921",
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
	"6123d7ee-4a1e-47ef-b095-35a8bca5b0ef",
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
	VALUES ("6a1aae02-2c3b-42a2-b6d0-6bb55fbb2ea9",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"871c20d0-4bd3-4168-be90-5e9092220e2c");
INSERT INTO ACT_ACT
	VALUES ("6a1aae02-2c3b-42a2-b6d0-6bb55fbb2ea9",
	'class state',
	0,
	"af98900d-3319-4b88-94b0-7e6492f88261",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::idle',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("af98900d-3319-4b88-94b0-7e6492f88261",
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
	"6a1aae02-2c3b-42a2-b6d0-6bb55fbb2ea9",
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
	VALUES ("f6ed772a-586e-4ecd-9c32-9fc482a59af6",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"85caa7f0-4965-4763-9dd6-9cc8a784a3a8");
INSERT INTO ACT_ACT
	VALUES ("f6ed772a-586e-4ecd-9c32-9fc482a59af6",
	'class state',
	0,
	"c22a506c-551e-4781-b41a-55fa23443c25",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor::monitoring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c22a506c-551e-4781-b41a-55fa23443c25",
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
	"f6ed772a-586e-4ecd-9c32-9fc482a59af6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("cc29b4ce-a446-44fa-bb99-40f3a1d4f549",
	"c22a506c-551e-4781-b41a-55fa23443c25",
	"4d197d05-c282-42b1-8660-9afb48d24d6b",
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES ("cc29b4ce-a446-44fa-bb99-40f3a1d4f549",
	"08293fac-4dc5-4788-b413-a7dfa3bf6f29",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	1,
	38);
INSERT INTO ACT_SMT
	VALUES ("4d197d05-c282-42b1-8660-9afb48d24d6b",
	"c22a506c-551e-4781-b41a-55fa23443c25",
	"489991e3-d1f0-467b-82a3-f3325d94846c",
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES ("4d197d05-c282-42b1-8660-9afb48d24d6b",
	2,
	19,
	2,
	6,
	"00000000-0000-0000-0000-000000000000",
	"90b4dd12-6df6-45c1-9064-5060f7b19fd6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("489991e3-d1f0-467b-82a3-f3325d94846c",
	"c22a506c-551e-4781-b41a-55fa23443c25",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES ("489991e3-d1f0-467b-82a3-f3325d94846c",
	"dcc87cad-be00-4266-84b5-cb681132e46a",
	"1c59d0c1-7cf2-4b74-a7fc-7b409ec232b1",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("82674fbe-7859-4c23-b819-dcb251b7cdd4",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_IRF
	VALUES ("82674fbe-7859-4c23-b819-dcb251b7cdd4",
	"08293fac-4dc5-4788-b413-a7dfa3bf6f29");
INSERT INTO V_VAL
	VALUES ("2926b3e8-47f6-4cc1-b7e5-f09162828626",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_AVL
	VALUES ("2926b3e8-47f6-4cc1-b7e5-f09162828626",
	"82674fbe-7859-4c23-b819-dcb251b7cdd4",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_PAR
	VALUES ("2926b3e8-47f6-4cc1-b7e5-f09162828626",
	"4d197d05-c282-42b1-8660-9afb48d24d6b",
	"00000000-0000-0000-0000-000000000000",
	'heartRate',
	"00000000-0000-0000-0000-000000000000",
	2,
	36);
INSERT INTO V_VAL
	VALUES ("1f6d2ae1-a9d0-4274-b7d7-07ba52cc0ed2",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_IRF
	VALUES ("1f6d2ae1-a9d0-4274-b7d7-07ba52cc0ed2",
	"08293fac-4dc5-4788-b413-a7dfa3bf6f29");
INSERT INTO V_VAL
	VALUES ("1c59d0c1-7cf2-4b74-a7fc-7b409ec232b1",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_AVL
	VALUES ("1c59d0c1-7cf2-4b74-a7fc-7b409ec232b1",
	"1f6d2ae1-a9d0-4274-b7d7-07ba52cc0ed2",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("2e7b7b7e-1dd3-4e6a-9f02-9cc5dc035df0",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_IRF
	VALUES ("2e7b7b7e-1dd3-4e6a-9f02-9cc5dc035df0",
	"08293fac-4dc5-4788-b413-a7dfa3bf6f29");
INSERT INTO V_VAL
	VALUES ("4c807b5f-6274-477b-9998-52e548ecea49",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_AVL
	VALUES ("4c807b5f-6274-477b-9998-52e548ecea49",
	"2e7b7b7e-1dd3-4e6a-9f02-9cc5dc035df0",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("dcc87cad-be00-4266-84b5-cb681132e46a",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_BIN
	VALUES ("dcc87cad-be00-4266-84b5-cb681132e46a",
	"15a8fc12-4a68-444f-9454-31ee167671cf",
	"4c807b5f-6274-477b-9998-52e548ecea49",
	'+');
INSERT INTO V_VAL
	VALUES ("15a8fc12-4a68-444f-9454-31ee167671cf",
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
	"c22a506c-551e-4781-b41a-55fa23443c25");
INSERT INTO V_LIN
	VALUES ("15a8fc12-4a68-444f-9454-31ee167671cf",
	'1');
INSERT INTO V_VAR
	VALUES ("08293fac-4dc5-4788-b413-a7dfa3bf6f29",
	"c22a506c-551e-4781-b41a-55fa23443c25",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("08293fac-4dc5-4788-b413-a7dfa3bf6f29",
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
	VALUES ("2f4a93bf-76f6-44c8-bb24-05370fae2da9",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"5d2a2e11-8d65-4aa9-831d-bef5287eb570");
INSERT INTO ACT_ACT
	VALUES ("2f4a93bf-76f6-44c8-bb24-05370fae2da9",
	'class transition',
	0,
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A1: registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
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
	"2f4a93bf-76f6-44c8-bb24-05370fae2da9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("edc753c5-3dcb-43f1-b393-1dedb103508c",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"aab34a46-7a34-4055-9336-427ddac3219b",
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES ("edc753c5-3dcb-43f1-b393-1dedb103508c",
	"46cadf4d-341c-4b6d-8529-ecfdb5ccb04e",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	2,
	38);
INSERT INTO ACT_SMT
	VALUES ("aab34a46-7a34-4055-9336-427ddac3219b",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"943a9704-b0f3-4c45-a7ef-9be1524d6d71",
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES ("aab34a46-7a34-4055-9336-427ddac3219b",
	"8a3463a5-bfa1-4367-b3a1-c6ab0a8afa2e",
	"4eec76f3-b7a2-4968-abd8-536b9e5038cb",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("943a9704-b0f3-4c45-a7ef-9be1524d6d71",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"11214887-eb9f-47fe-85c0-70ab79b77bd0",
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES ("943a9704-b0f3-4c45-a7ef-9be1524d6d71",
	"415fabf5-154c-4697-913c-74494bb1d51a",
	"d8c5272b-2852-49db-bd8c-6eb36f3ab597",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("11214887-eb9f-47fe-85c0-70ab79b77bd0",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e",
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES ("11214887-eb9f-47fe-85c0-70ab79b77bd0",
	"ffe1d425-14d9-4ccf-8ef2-f5b9a72f50cb",
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES ("d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"967bf9e5-7964-4ab7-9c9e-a31844299bee",
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES ("d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e",
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
	VALUES ("d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e",
	1,
	"b7793955-cd2b-4453-8ae2-fa7b3b838a4b");
INSERT INTO E_CSME
	VALUES ("d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e",
	"0dd634b8-2147-447f-b43b-e4af85fcb0b8");
INSERT INTO E_CEA
	VALUES ("d0a34f5c-f6c8-4a0e-a9cb-a183e98a658e");
INSERT INTO ACT_SMT
	VALUES ("967bf9e5-7964-4ab7-9c9e-a31844299bee",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	"00000000-0000-0000-0000-000000000000",
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES ("967bf9e5-7964-4ab7-9c9e-a31844299bee",
	"99275b64-317b-40db-992b-c6a46b4739d6",
	"2bfe2bf3-d005-4279-83e5-e890cc4f0412",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("86cbd742-5e7e-45df-8f98-dde31220d5ba",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_IRF
	VALUES ("86cbd742-5e7e-45df-8f98-dde31220d5ba",
	"46cadf4d-341c-4b6d-8529-ecfdb5ccb04e");
INSERT INTO V_VAL
	VALUES ("4eec76f3-b7a2-4968-abd8-536b9e5038cb",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_UNY
	VALUES ("4eec76f3-b7a2-4968-abd8-536b9e5038cb",
	"86cbd742-5e7e-45df-8f98-dde31220d5ba",
	'empty');
INSERT INTO V_VAL
	VALUES ("6aa61728-2eea-4cd4-8877-83f7cddd3541",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_IRF
	VALUES ("6aa61728-2eea-4cd4-8877-83f7cddd3541",
	"46cadf4d-341c-4b6d-8529-ecfdb5ccb04e");
INSERT INTO V_VAL
	VALUES ("d8c5272b-2852-49db-bd8c-6eb36f3ab597",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_AVL
	VALUES ("d8c5272b-2852-49db-bd8c-6eb36f3ab597",
	"6aa61728-2eea-4cd4-8877-83f7cddd3541",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"9ea7282f-db77-4f8b-a2b8-c2745d9fd128");
INSERT INTO V_VAL
	VALUES ("415fabf5-154c-4697-913c-74494bb1d51a",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_LIN
	VALUES ("415fabf5-154c-4697-913c-74494bb1d51a",
	'50');
INSERT INTO V_VAL
	VALUES ("77b13258-908a-4ac3-a5b7-30c930a908bc",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_LST
	VALUES ("77b13258-908a-4ac3-a5b7-30c930a908bc",
	'listener registered');
INSERT INTO V_PAR
	VALUES ("77b13258-908a-4ac3-a5b7-30c930a908bc",
	"11214887-eb9f-47fe-85c0-70ab79b77bd0",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	8,
	14);
INSERT INTO V_VAL
	VALUES ("f830f254-780c-481b-bbdb-8cfecc15984b",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_IRF
	VALUES ("f830f254-780c-481b-bbdb-8cfecc15984b",
	"46cadf4d-341c-4b6d-8529-ecfdb5ccb04e");
INSERT INTO V_VAL
	VALUES ("2bfe2bf3-d005-4279-83e5-e890cc4f0412",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_AVL
	VALUES ("2bfe2bf3-d005-4279-83e5-e890cc4f0412",
	"f830f254-780c-481b-bbdb-8cfecc15984b",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"60873069-ba53-4271-b45b-1f499d8b97e9");
INSERT INTO V_VAL
	VALUES ("99275b64-317b-40db-992b-c6a46b4739d6",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_BRV
	VALUES ("99275b64-317b-40db-992b-c6a46b4739d6",
	"2fbaaa17-36e2-4001-a2c7-420c24340f03",
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES ("9b227d72-c756-4a99-9270-60f105975ae2",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_TVL
	VALUES ("9b227d72-c756-4a99-9270-60f105975ae2",
	"b7793955-cd2b-4453-8ae2-fa7b3b838a4b");
INSERT INTO V_PAR
	VALUES ("9b227d72-c756-4a99-9270-60f105975ae2",
	"00000000-0000-0000-0000-000000000000",
	"99275b64-317b-40db-992b-c6a46b4739d6",
	'event_inst',
	"087a850c-fcf5-4120-9d39-147e195a930d",
	12,
	45);
INSERT INTO V_VAL
	VALUES ("b672def9-e3f1-48a6-af37-a2ee81f931a8",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_SCV
	VALUES ("b672def9-e3f1-48a6-af37-a2ee81f931a8",
	"af9effb5-e43d-410e-b155-15e1773e05f9",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_VAL
	VALUES ("087a850c-fcf5-4120-9d39-147e195a930d",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_BIN
	VALUES ("087a850c-fcf5-4120-9d39-147e195a930d",
	"71f8a0cf-d1aa-4a18-b12a-720088276f28",
	"b672def9-e3f1-48a6-af37-a2ee81f931a8",
	'*');
INSERT INTO V_PAR
	VALUES ("087a850c-fcf5-4120-9d39-147e195a930d",
	"00000000-0000-0000-0000-000000000000",
	"99275b64-317b-40db-992b-c6a46b4739d6",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	12,
	66);
INSERT INTO V_VAL
	VALUES ("71f8a0cf-d1aa-4a18-b12a-720088276f28",
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
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3");
INSERT INTO V_LIN
	VALUES ("71f8a0cf-d1aa-4a18-b12a-720088276f28",
	'1000000');
INSERT INTO V_VAR
	VALUES ("46cadf4d-341c-4b6d-8529-ecfdb5ccb04e",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("46cadf4d-341c-4b6d-8529-ecfdb5ccb04e",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO V_VAR
	VALUES ("b7793955-cd2b-4453-8ae2-fa7b3b838a4b",
	"7c58f14b-562e-49bf-8f77-dbc573a7d0d3",
	'timeout',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("b7793955-cd2b-4453-8ae2-fa7b3b838a4b",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("8a3463a5-bfa1-4367-b3a1-c6ab0a8afa2e",
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
	"2f4a93bf-76f6-44c8-bb24-05370fae2da9",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("49e10bca-4d8e-4f35-864e-3b748c555716",
	"8a3463a5-bfa1-4367-b3a1-c6ab0a8afa2e",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES ("49e10bca-4d8e-4f35-864e-3b748c555716",
	"46cadf4d-341c-4b6d-8529-ecfdb5ccb04e",
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
	VALUES ("8c9c4283-5ba6-400e-b82e-53d2881eef88",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"e0fd33e0-61a3-4c92-9185-b7650089615e");
INSERT INTO ACT_ACT
	VALUES ("8c9c4283-5ba6-400e-b82e-53d2881eef88",
	'class transition',
	0,
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A2: unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e074d014-96fc-4771-9c4e-661cb618dfca",
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
	"8c9c4283-5ba6-400e-b82e-53d2881eef88",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3d0f2d8f-ffd3-4b19-a037-ad4d4f20c59d",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	"ad9a3947-0b7e-4db9-9e8e-ce8da6ca67cc",
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES ("3d0f2d8f-ffd3-4b19-a037-ad4d4f20c59d",
	"04649b55-a949-4b70-8c48-a4fcd5e0f41c",
	1,
	'any',
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	1,
	38);
INSERT INTO ACT_SMT
	VALUES ("ad9a3947-0b7e-4db9-9e8e-ce8da6ca67cc",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	"260920e1-e802-4a7e-85e4-26c0f5c2dba2",
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES ("ad9a3947-0b7e-4db9-9e8e-ce8da6ca67cc",
	"62b5327e-7392-4819-af55-fe5fd70fe83f",
	"648166be-ecf6-4bea-9a9d-443a2d41e1d8",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("260920e1-e802-4a7e-85e4-26c0f5c2dba2",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES ("260920e1-e802-4a7e-85e4-26c0f5c2dba2",
	"5316b7df-25a7-43cb-b558-fc9707a109fb",
	"30247fcc-e187-4889-a024-83ca91b1417d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("5083a345-5561-40fe-b139-ddcb852c5d79",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	"00000000-0000-0000-0000-000000000000",
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES ("5083a345-5561-40fe-b139-ddcb852c5d79",
	"0a848cb5-d210-4995-938f-830e33463c02",
	"260920e1-e802-4a7e-85e4-26c0f5c2dba2");
INSERT INTO V_VAL
	VALUES ("648166be-ecf6-4bea-9a9d-443a2d41e1d8",
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
	"e074d014-96fc-4771-9c4e-661cb618dfca");
INSERT INTO V_TVL
	VALUES ("648166be-ecf6-4bea-9a9d-443a2d41e1d8",
	"832bec52-8934-4719-832d-5e0dc94c14d7");
INSERT INTO V_VAL
	VALUES ("62b5327e-7392-4819-af55-fe5fd70fe83f",
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
	"e074d014-96fc-4771-9c4e-661cb618dfca");
INSERT INTO V_BRV
	VALUES ("62b5327e-7392-4819-af55-fe5fd70fe83f",
	"8569d687-8192-4f46-a549-a1f6d8b4640b",
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES ("e79306cb-ef00-426c-9846-610fc834f18a",
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
	"e074d014-96fc-4771-9c4e-661cb618dfca");
INSERT INTO V_IRF
	VALUES ("e79306cb-ef00-426c-9846-610fc834f18a",
	"04649b55-a949-4b70-8c48-a4fcd5e0f41c");
INSERT INTO V_VAL
	VALUES ("7dc23047-5c8a-4426-a143-84bfd03069d9",
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
	"e074d014-96fc-4771-9c4e-661cb618dfca");
INSERT INTO V_AVL
	VALUES ("7dc23047-5c8a-4426-a143-84bfd03069d9",
	"e79306cb-ef00-426c-9846-610fc834f18a",
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6",
	"60873069-ba53-4271-b45b-1f499d8b97e9");
INSERT INTO V_PAR
	VALUES ("7dc23047-5c8a-4426-a143-84bfd03069d9",
	"00000000-0000-0000-0000-000000000000",
	"62b5327e-7392-4819-af55-fe5fd70fe83f",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	2,
	25);
INSERT INTO V_VAL
	VALUES ("30247fcc-e187-4889-a024-83ca91b1417d",
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
	"e074d014-96fc-4771-9c4e-661cb618dfca");
INSERT INTO V_TVL
	VALUES ("30247fcc-e187-4889-a024-83ca91b1417d",
	"832bec52-8934-4719-832d-5e0dc94c14d7");
INSERT INTO V_VAR
	VALUES ("04649b55-a949-4b70-8c48-a4fcd5e0f41c",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	'monitor',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("04649b55-a949-4b70-8c48-a4fcd5e0f41c",
	0,
	"d44c305e-8b68-40df-b5bc-d201dbfcb7b6");
INSERT INTO V_VAR
	VALUES ("832bec52-8934-4719-832d-5e0dc94c14d7",
	"e074d014-96fc-4771-9c4e-661cb618dfca",
	'res',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("832bec52-8934-4719-832d-5e0dc94c14d7",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("5316b7df-25a7-43cb-b558-fc9707a109fb",
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
	"8c9c4283-5ba6-400e-b82e-53d2881eef88",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("70a6f5c2-d8bb-4c9f-87c3-ff6639937eb5",
	"5316b7df-25a7-43cb-b558-fc9707a109fb",
	"00000000-0000-0000-0000-000000000000",
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES ("70a6f5c2-d8bb-4c9f-87c3-ff6639937eb5",
	"d29b5e8f-621e-4982-8e5b-5e249d288eaf",
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES ("fbf9efee-226f-45ba-86e7-d74363b6164a",
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
	"5316b7df-25a7-43cb-b558-fc9707a109fb");
INSERT INTO V_LST
	VALUES ("fbf9efee-226f-45ba-86e7-d74363b6164a",
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES ("fbf9efee-226f-45ba-86e7-d74363b6164a",
	"70a6f5c2-d8bb-4c9f-87c3-ff6639937eb5",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	4,
	20);
INSERT INTO ACT_BLK
	VALUES ("0a848cb5-d210-4995-938f-830e33463c02",
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
	"8c9c4283-5ba6-400e-b82e-53d2881eef88",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("1e143f5f-98a7-45a9-8743-c7e8104d853c",
	"0a848cb5-d210-4995-938f-830e33463c02",
	"00000000-0000-0000-0000-000000000000",
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES ("1e143f5f-98a7-45a9-8743-c7e8104d853c",
	"b5ca921c-0bf5-4c3a-8204-fc1dc69b8d49",
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES ("a6149ade-1049-4e50-99d4-f72c88c74f47",
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
	"0a848cb5-d210-4995-938f-830e33463c02");
INSERT INTO V_LST
	VALUES ("a6149ade-1049-4e50-99d4-f72c88c74f47",
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES ("a6149ade-1049-4e50-99d4-f72c88c74f47",
	"1e143f5f-98a7-45a9-8743-c7e8104d853c",
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
	VALUES ("a917cf34-5551-449f-8896-f2bf14bbc78a",
	"210c16d9-08db-41d4-91c2-35b116fa8c0f",
	"a4f3f218-3199-40ea-8951-e4173b9a0e3e");
INSERT INTO ACT_ACT
	VALUES ("a917cf34-5551-449f-8896-f2bf14bbc78a",
	'class transition',
	0,
	"c9bf3c05-8c2a-4524-ae90-cb79aeb02586",
	"00000000-0000-0000-0000-000000000000",
	0,
	'HeartRateMonitor_A3: timeout',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c9bf3c05-8c2a-4524-ae90-cb79aeb02586",
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
	"a917cf34-5551-449f-8896-f2bf14bbc78a",
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
