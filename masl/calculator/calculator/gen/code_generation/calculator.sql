-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("a3bfbd63-d3d9-420c-8d30-2ed289a3dca4",
	'calculator',
	1);
INSERT INTO EP_PKG
	VALUES ("9b5ecde5-669f-4632-86fb-908de77e4e29",
	"a3bfbd63-d3d9-420c-8d30-2ed289a3dca4",
	"a3bfbd63-d3d9-420c-8d30-2ed289a3dca4",
	'types',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("d6029f38-7619-4c86-9c4a-c99585975af6",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d6029f38-7619-4c86-9c4a-c99585975af6",
	"00000000-0000-0000-0000-000000000000",
	'MASLtype',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d6029f38-7619-4c86-9c4a-c99585975af6",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("99d968e3-aa4c-42bf-8e04-3fbc6a4af36c",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("99d968e3-aa4c-42bf-8e04-3fbc6a4af36c",
	"00000000-0000-0000-0000-000000000000",
	'structure',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("99d968e3-aa4c-42bf-8e04-3fbc6a4af36c",
	"d6029f38-7619-4c86-9c4a-c99585975af6",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("6fe93a02-9c4c-4c78-91ef-a94bd0e6a440",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("6fe93a02-9c4c-4c78-91ef-a94bd0e6a440",
	"00000000-0000-0000-0000-000000000000",
	'enum',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("6fe93a02-9c4c-4c78-91ef-a94bd0e6a440",
	"d6029f38-7619-4c86-9c4a-c99585975af6",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("284b7d39-a93f-4250-9b18-040325d444dc",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("284b7d39-a93f-4250-9b18-040325d444dc",
	"00000000-0000-0000-0000-000000000000",
	'device',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("284b7d39-a93f-4250-9b18-040325d444dc",
	"d6029f38-7619-4c86-9c4a-c99585975af6",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("a710b22f-b6f5-4992-851d-3ffab9b01c21",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("a710b22f-b6f5-4992-851d-3ffab9b01c21",
	"00000000-0000-0000-0000-000000000000",
	'event',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("a710b22f-b6f5-4992-851d-3ffab9b01c21",
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("bfd197f9-4fb0-42a1-96c5-20c0fc21b1eb",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("bfd197f9-4fb0-42a1-96c5-20c0fc21b1eb",
	"00000000-0000-0000-0000-000000000000",
	'timer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("bfd197f9-4fb0-42a1-96c5-20c0fc21b1eb",
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("c098f925-a2ef-4d39-9ebc-9ce45f4866a5",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("c098f925-a2ef-4d39-9ebc-9ce45f4866a5",
	"00000000-0000-0000-0000-000000000000",
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("c098f925-a2ef-4d39-9ebc-9ce45f4866a5",
	"d6029f38-7619-4c86-9c4a-c99585975af6",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("70c117da-2e9d-4e8d-9b64-fec25ec4f695",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("70c117da-2e9d-4e8d-9b64-fec25ec4f695",
	"00000000-0000-0000-0000-000000000000",
	'duration',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("70c117da-2e9d-4e8d-9b64-fec25ec4f695",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d105e6b2-78b9-43c0-949e-1b627687f13e",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d105e6b2-78b9-43c0-949e-1b627687f13e",
	"00000000-0000-0000-0000-000000000000",
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d105e6b2-78b9-43c0-949e-1b627687f13e",
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("9ceca881-832c-4761-92b3-04315d7cc76f",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("9ceca881-832c-4761-92b3-04315d7cc76f",
	"00000000-0000-0000-0000-000000000000",
	'wstring',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("9ceca881-832c-4761-92b3-04315d7cc76f",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("056e263a-a968-407f-bbda-7aab59d0e0a9",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("056e263a-a968-407f-bbda-7aab59d0e0a9",
	"00000000-0000-0000-0000-000000000000",
	'string',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("056e263a-a968-407f-bbda-7aab59d0e0a9",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("e84fc896-d96a-4dc0-893d-e52d84bf383c",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("e84fc896-d96a-4dc0-893d-e52d84bf383c",
	"00000000-0000-0000-0000-000000000000",
	'real',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("e84fc896-d96a-4dc0-893d-e52d84bf383c",
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("a1806461-e825-4ea8-bf6e-8aabc9e87086",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("a1806461-e825-4ea8-bf6e-8aabc9e87086",
	"00000000-0000-0000-0000-000000000000",
	'long_integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("a1806461-e825-4ea8-bf6e-8aabc9e87086",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("227dafea-baa4-4b11-8ab7-78276c32804b",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("227dafea-baa4-4b11-8ab7-78276c32804b",
	"00000000-0000-0000-0000-000000000000",
	'byte',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("227dafea-baa4-4b11-8ab7-78276c32804b",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("adaffa12-c94a-421b-a24c-a0514142ed1f",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("adaffa12-c94a-421b-a24c-a0514142ed1f",
	"00000000-0000-0000-0000-000000000000",
	'wcharacter',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("adaffa12-c94a-421b-a24c-a0514142ed1f",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("b355d0b0-413e-4377-af12-adf841a2fe8d",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("b355d0b0-413e-4377-af12-adf841a2fe8d",
	"00000000-0000-0000-0000-000000000000",
	'character',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("b355d0b0-413e-4377-af12-adf841a2fe8d",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("168d4cde-2b62-4b8b-9f3e-07c79bbf92ba",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("168d4cde-2b62-4b8b-9f3e-07c79bbf92ba",
	"00000000-0000-0000-0000-000000000000",
	'integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("168d4cde-2b62-4b8b-9f3e-07c79bbf92ba",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("0da36ff7-329f-4438-ad95-6af6b41818a0",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("0da36ff7-329f-4438-ad95-6af6b41818a0",
	"00000000-0000-0000-0000-000000000000",
	'boolean',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("0da36ff7-329f-4438-ad95-6af6b41818a0",
	"ba5eda7a-def5-0000-0000-000000000001",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("f750d2e9-6844-4b1f-87f5-d0f3cf332adc",
	1,
	"9b5ecde5-669f-4632-86fb-908de77e4e29",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("f750d2e9-6844-4b1f-87f5-d0f3cf332adc",
	"00000000-0000-0000-0000-000000000000",
	'void',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("f750d2e9-6844-4b1f-87f5-d0f3cf332adc",
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'');
INSERT INTO EP_PKG
	VALUES ("25f91557-515f-429c-8df3-f33b2f715857",
	"a3bfbd63-d3d9-420c-8d30-2ed289a3dca4",
	"a3bfbd63-d3d9-420c-8d30-2ed289a3dca4",
	'calculator',
	'masl_project',
	0);
INSERT INTO PE_PE
	VALUES ("7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'calculator',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("c7e6c192-68e7-498b-9d20-39e6fe2c824c",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'calc_test__keyIO',
	0,
	0);
INSERT INTO C_IR
	VALUES ("04ff03af-7425-410c-9cae-283556fcec27",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	"00000000-0000-0000-0000-000000000000",
	"c7e6c192-68e7-498b-9d20-39e6fe2c824c");
INSERT INTO C_P
	VALUES ("04ff03af-7425-410c-9cae-283556fcec27",
	'keyIO',
	'Unnamed Interface',
	'',
	'calculator::calc_test__keyIO::keyIO');
INSERT INTO SPR_PEP
	VALUES ("40ad6e75-fa1c-415e-be58-ba927085415d",
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	"04ff03af-7425-410c-9cae-283556fcec27");
INSERT INTO SPR_PO
	VALUES ("40ad6e75-fa1c-415e-be58-ba927085415d",
	'key',
	'',
	'begin
  calc::key( code );
end service;',
	3,
	1);
INSERT INTO SPR_PEP
	VALUES ("93dbc92a-7c11-486c-9a5c-633c17b13d8b",
	"1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"04ff03af-7425-410c-9cae-283556fcec27");
INSERT INTO SPR_PO
	VALUES ("93dbc92a-7c11-486c-9a5c-633c17b13d8b",
	'clear',
	'',
	'begin
  calc::clear();
end service;',
	3,
	1);
INSERT INTO C_PO
	VALUES ("8aff26a1-789b-4980-9b7d-c1db40d628d3",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'calc__disp',
	0,
	0);
INSERT INTO C_IR
	VALUES ("4dc6df52-5a3e-43eb-bdb1-42646db69ccf",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	"00000000-0000-0000-0000-000000000000",
	"8aff26a1-789b-4980-9b7d-c1db40d628d3");
INSERT INTO C_P
	VALUES ("4dc6df52-5a3e-43eb-bdb1-42646db69ccf",
	'disp',
	'Unnamed Interface',
	'',
	'calculator::calc__disp::disp');
INSERT INTO SPR_PEP
	VALUES ("caf62e10-3786-4e63-a654-3a7ecb9f4c7b",
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	"4dc6df52-5a3e-43eb-bdb1-42646db69ccf");
INSERT INTO SPR_PO
	VALUES ("caf62e10-3786-4e63-a654-3a7ecb9f4c7b",
	'result',
	'',
	'begin
  keypad::result( value );
  calc_test::result( value );
end service;',
	3,
	1);
INSERT INTO SPR_PEP
	VALUES ("c4626102-85ac-413b-9289-022686bf3469",
	"2350539a-0c9f-433d-8739-a6d76fd28112",
	"4dc6df52-5a3e-43eb-bdb1-42646db69ccf");
INSERT INTO SPR_PO
	VALUES ("c4626102-85ac-413b-9289-022686bf3469",
	'error',
	'',
	'begin
  keypad::error( message );
  calc_test::error( message );
end service;',
	3,
	1);
INSERT INTO C_PO
	VALUES ("552b2344-bb0a-4d02-925b-eb13d0c9bbd6",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'calc',
	0,
	0);
INSERT INTO C_IR
	VALUES ("1cd148f6-5b8c-40c3-acf7-58fa4290fb5f",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	"00000000-0000-0000-0000-000000000000",
	"552b2344-bb0a-4d02-925b-eb13d0c9bbd6");
INSERT INTO C_R
	VALUES ("1cd148f6-5b8c-40c3-acf7-58fa4290fb5f",
	'calc',
	'',
	'Unnamed Interface',
	'calculator::calc::calc');
INSERT INTO SPR_REP
	VALUES ("526b6169-9de9-48bc-b4c2-eef7d349a65c",
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"1cd148f6-5b8c-40c3-acf7-58fa4290fb5f");
INSERT INTO SPR_RO
	VALUES ("526b6169-9de9-48bc-b4c2-eef7d349a65c",
	'key',
	'',
	'',
	3,
	5);
INSERT INTO SPR_REP
	VALUES ("fc34685b-4c32-480e-9fca-81925bcc0cb8",
	"f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"1cd148f6-5b8c-40c3-acf7-58fa4290fb5f");
INSERT INTO SPR_RO
	VALUES ("fc34685b-4c32-480e-9fca-81925bcc0cb8",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO C_PO
	VALUES ("e013c18e-56c5-458c-b355-4d865bab141f",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'calc_test',
	0,
	0);
INSERT INTO C_IR
	VALUES ("ffaa8ac5-0fdf-4bf4-ab16-05c8659cbde1",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	"00000000-0000-0000-0000-000000000000",
	"e013c18e-56c5-458c-b355-4d865bab141f");
INSERT INTO C_R
	VALUES ("ffaa8ac5-0fdf-4bf4-ab16-05c8659cbde1",
	'calc_test',
	'',
	'Unnamed Interface',
	'calculator::calc_test::calc_test');
INSERT INTO SPR_REP
	VALUES ("f5925ba8-855d-4372-88cc-1752d5f61f5a",
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"ffaa8ac5-0fdf-4bf4-ab16-05c8659cbde1");
INSERT INTO SPR_RO
	VALUES ("f5925ba8-855d-4372-88cc-1752d5f61f5a",
	'result',
	'',
	'',
	3,
	5);
INSERT INTO SPR_REP
	VALUES ("9a3b0312-489a-4ee4-a3f5-bbb301616325",
	"6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"ffaa8ac5-0fdf-4bf4-ab16-05c8659cbde1");
INSERT INTO SPR_RO
	VALUES ("9a3b0312-489a-4ee4-a3f5-bbb301616325",
	'error',
	'',
	'',
	3,
	5);
INSERT INTO C_PO
	VALUES ("b27da4f7-4fe1-48c0-8a46-a120e97ec9ef",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'keypad',
	0,
	0);
INSERT INTO C_IR
	VALUES ("8586ec44-a824-4577-b1b0-597b52729859",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	"00000000-0000-0000-0000-000000000000",
	"b27da4f7-4fe1-48c0-8a46-a120e97ec9ef");
INSERT INTO C_R
	VALUES ("8586ec44-a824-4577-b1b0-597b52729859",
	'keypad',
	'',
	'Unnamed Interface',
	'calculator::keypad::keypad');
INSERT INTO SPR_REP
	VALUES ("bc512877-66c2-416e-8bcc-087791407967",
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	"8586ec44-a824-4577-b1b0-597b52729859");
INSERT INTO SPR_RO
	VALUES ("bc512877-66c2-416e-8bcc-087791407967",
	'result',
	'',
	'',
	3,
	5);
INSERT INTO SPR_REP
	VALUES ("1ec7e248-19e1-4a66-9e23-a029c216a02c",
	"f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"8586ec44-a824-4577-b1b0-597b52729859");
INSERT INTO SPR_RO
	VALUES ("1ec7e248-19e1-4a66-9e23-a029c216a02c",
	'error',
	'',
	'',
	3,
	5);
INSERT INTO C_PO
	VALUES ("0b45364a-66ed-4166-ad49-3bd1d79bbc58",
	"7fc6e2b3-6350-44e1-87eb-3643fc851a4e",
	'keypad__keyIO',
	0,
	0);
INSERT INTO C_IR
	VALUES ("c587af72-dfb4-4963-af08-8b1fcdb8f8a5",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	"00000000-0000-0000-0000-000000000000",
	"0b45364a-66ed-4166-ad49-3bd1d79bbc58");
INSERT INTO C_P
	VALUES ("c587af72-dfb4-4963-af08-8b1fcdb8f8a5",
	'keyIO',
	'Unnamed Interface',
	'',
	'calculator::keypad__keyIO::keyIO');
INSERT INTO SPR_PEP
	VALUES ("b9800b77-1338-4249-bc87-55c04f28ef7f",
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	"c587af72-dfb4-4963-af08-8b1fcdb8f8a5");
INSERT INTO SPR_PO
	VALUES ("b9800b77-1338-4249-bc87-55c04f28ef7f",
	'key',
	'',
	'begin
  calc::key( code );
end service;',
	3,
	1);
INSERT INTO SPR_PEP
	VALUES ("3e0d6ec3-b7a7-4eb4-b318-f64e26ff4afc",
	"728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"c587af72-dfb4-4963-af08-8b1fcdb8f8a5");
INSERT INTO SPR_PO
	VALUES ("3e0d6ec3-b7a7-4eb4-b318-f64e26ff4afc",
	'clear',
	'',
	'begin
  calc::clear();
end service;',
	3,
	1);
INSERT INTO PE_PE
	VALUES ("1cbc4670-d99f-43f1-81ee-6f774983d11d",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	21);
INSERT INTO CL_IC
	VALUES ("1cbc4670-d99f-43f1-81ee-6f774983d11d",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'calc::calc::calc',
	'');
INSERT INTO CL_POR
	VALUES ("1cbc4670-d99f-43f1-81ee-6f774983d11d",
	"829f5dc7-3345-4fb6-ab2d-52c4914100e4",
	'calc',
	"48b863f7-f725-4465-81ba-71fd7c26d926");
INSERT INTO CL_IIR
	VALUES ("06463b16-a2ef-4339-b945-11219d6e0214",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	"48b863f7-f725-4465-81ba-71fd7c26d926",
	"00000000-0000-0000-0000-000000000000",
	'calc',
	'');
INSERT INTO CL_IP
	VALUES ("06463b16-a2ef-4339-b945-11219d6e0214",
	'calc',
	'');
INSERT INTO CL_IPINS
	VALUES ("45434e1b-79b4-4543-b533-cb4ffe56325c",
	"06463b16-a2ef-4339-b945-11219d6e0214");
INSERT INTO CL_POR
	VALUES ("1cbc4670-d99f-43f1-81ee-6f774983d11d",
	"e62fd45b-8230-42ea-8487-158b0f845712",
	'disp',
	"85c7d52c-3317-4416-a3f7-6ec11260f2de");
INSERT INTO CL_IIR
	VALUES ("989f43e4-80a6-45ca-9027-d63a157f4ba6",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0",
	"85c7d52c-3317-4416-a3f7-6ec11260f2de",
	"00000000-0000-0000-0000-000000000000",
	'disp',
	'');
INSERT INTO CL_IR
	VALUES ("989f43e4-80a6-45ca-9027-d63a157f4ba6",
	"11155d2f-9f1e-4758-ba13-9729aa1b86c0",
	'disp',
	'');
INSERT INTO PE_PE
	VALUES ("80178564-309f-4d07-bdce-c7b770a39133",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	21);
INSERT INTO CL_IC
	VALUES ("80178564-309f-4d07-bdce-c7b770a39133",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'calc_test::calc_test::calc_test',
	'');
INSERT INTO CL_POR
	VALUES ("80178564-309f-4d07-bdce-c7b770a39133",
	"3f4ba719-6c39-48e7-8998-3ca5d6d69636",
	'keyIO',
	"d37f6cc2-4a91-4615-9dc3-77b4fe90d430");
INSERT INTO CL_IIR
	VALUES ("0a106e38-921b-48cc-9bb7-fc73dc920ce7",
	"290e35c0-edc0-4e06-9522-4230e22adbbb",
	"d37f6cc2-4a91-4615-9dc3-77b4fe90d430",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'');
INSERT INTO CL_IR
	VALUES ("0a106e38-921b-48cc-9bb7-fc73dc920ce7",
	"72e2a7b0-6953-402c-88e7-786d40cef0e4",
	'keyIO',
	'');
INSERT INTO CL_POR
	VALUES ("80178564-309f-4d07-bdce-c7b770a39133",
	"7fd6fdd4-9795-40f7-ac66-9a8b7eeaa3db",
	'calc_test',
	"4800dd22-9d91-4a38-8db5-9963825801b4");
INSERT INTO CL_IIR
	VALUES ("4f5d7207-bbf6-457f-927e-496d9350cc00",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5",
	"4800dd22-9d91-4a38-8db5-9963825801b4",
	"00000000-0000-0000-0000-000000000000",
	'calc_test',
	'');
INSERT INTO CL_IP
	VALUES ("4f5d7207-bbf6-457f-927e-496d9350cc00",
	'calc_test',
	'');
INSERT INTO CL_IPINS
	VALUES ("4f5229d2-3d7b-42b0-8ff8-28578ab5be65",
	"4f5d7207-bbf6-457f-927e-496d9350cc00");
INSERT INTO PE_PE
	VALUES ("32baa563-c095-4863-96b9-027b5cb6b04a",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	21);
INSERT INTO CL_IC
	VALUES ("32baa563-c095-4863-96b9-027b5cb6b04a",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'keypad::keypad::keypad',
	'');
INSERT INTO CL_POR
	VALUES ("32baa563-c095-4863-96b9-027b5cb6b04a",
	"047709e0-57cd-47b2-808b-7ca5a0777f62",
	'keypad',
	"5115f404-f37e-48ec-9198-19cf33e2321a");
INSERT INTO CL_IIR
	VALUES ("eaa4535f-f395-4802-9f57-e15032831925",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	"5115f404-f37e-48ec-9198-19cf33e2321a",
	"00000000-0000-0000-0000-000000000000",
	'keypad',
	'');
INSERT INTO CL_IP
	VALUES ("eaa4535f-f395-4802-9f57-e15032831925",
	'keypad',
	'');
INSERT INTO CL_IPINS
	VALUES ("b6d71b30-b2f6-481b-84be-cff833154701",
	"eaa4535f-f395-4802-9f57-e15032831925");
INSERT INTO CL_POR
	VALUES ("32baa563-c095-4863-96b9-027b5cb6b04a",
	"893262a9-a642-426d-aef8-d06aff2fb94d",
	'keyIO',
	"5673c50e-c01c-451b-a540-3ebfac31bec6");
INSERT INTO CL_IIR
	VALUES ("78b0e079-fbb3-4e8f-84fb-0d6e0c051931",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	"5673c50e-c01c-451b-a540-3ebfac31bec6",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'');
INSERT INTO CL_IR
	VALUES ("78b0e079-fbb3-4e8f-84fb-0d6e0c051931",
	"79a8f25e-57b7-4a5c-97d6-d60adb20004f",
	'keyIO',
	'');
INSERT INTO PE_PE
	VALUES ("45434e1b-79b4-4543-b533-cb4ffe56325c",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("45434e1b-79b4-4543-b533-cb4ffe56325c",
	"1cd148f6-5b8c-40c3-acf7-58fa4290fb5f",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	'',
	'calc::calc::calc -o)- calculator::calc::calc');
INSERT INTO PE_PE
	VALUES ("11155d2f-9f1e-4758-ba13-9729aa1b86c0",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("11155d2f-9f1e-4758-ba13-9729aa1b86c0",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0",
	"4dc6df52-5a3e-43eb-bdb1-42646db69ccf",
	'',
	'calculator::calc__disp::disp -o)- calc::disp::disp');
INSERT INTO PE_PE
	VALUES ("4f5229d2-3d7b-42b0-8ff8-28578ab5be65",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("4f5229d2-3d7b-42b0-8ff8-28578ab5be65",
	"ffaa8ac5-0fdf-4bf4-ab16-05c8659cbde1",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5",
	'',
	'calc_test::calc_test::calc_test -o)- calculator::calc_test::calc_test');
INSERT INTO PE_PE
	VALUES ("72e2a7b0-6953-402c-88e7-786d40cef0e4",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("72e2a7b0-6953-402c-88e7-786d40cef0e4",
	"290e35c0-edc0-4e06-9522-4230e22adbbb",
	"04ff03af-7425-410c-9cae-283556fcec27",
	'',
	'calculator::calc_test__keyIO::keyIO -o)- calc_test::keyIO::keyIO');
INSERT INTO PE_PE
	VALUES ("b6d71b30-b2f6-481b-84be-cff833154701",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("b6d71b30-b2f6-481b-84be-cff833154701",
	"8586ec44-a824-4577-b1b0-597b52729859",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	'',
	'keypad::keypad::keypad -o)- calculator::keypad::keypad');
INSERT INTO PE_PE
	VALUES ("79a8f25e-57b7-4a5c-97d6-d60adb20004f",
	1,
	"25f91557-515f-429c-8df3-f33b2f715857",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("79a8f25e-57b7-4a5c-97d6-d60adb20004f",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	"c587af72-dfb4-4963-af08-8b1fcdb8f8a5",
	'',
	'calculator::keypad__keyIO::keyIO -o)- keypad::keyIO::keyIO');
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
	1,
	'');
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
	3,
	'');
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
	2,
	'');
INSERT INTO C_EP_PROXY
	VALUES ("17e5d352-19e0-4813-b9bb-d447eca1808a",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	-1,
	'key',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	-1,
	'clear',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("6bf3ef4d-a630-4110-b493-9a8c56445956",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("b682f9e5-c575-468d-b70a-5c99eef071be",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	-1,
	'result',
	'',
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("2350539a-0c9f-433d-8739-a6d76fd28112",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	-1,
	'error',
	'',
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("f82fee28-6ee8-4077-b95d-3f2854b31098",
	"00000000-0000-0000-0000-000000000000",
	'disp',
	'',
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	-1,
	'key',
	'',
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	-1,
	'clear',
	'',
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("df8f6d35-1b12-4773-9002-36c313c07570",
	"00000000-0000-0000-0000-000000000000",
	'calc',
	'',
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	-1,
	'result',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	-1,
	'error',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("02d6cbb8-8455-4e8b-995c-c250ef52491a",
	"00000000-0000-0000-0000-000000000000",
	'calc_test',
	'',
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("765057db-ae9f-4be0-98ad-a6399c409c0a",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	-1,
	'result',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	-1,
	'error',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("b795d23d-3942-49da-a886-e859ffccdd4b",
	"00000000-0000-0000-0000-000000000000",
	'keypad',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	-1,
	'key',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	-1,
	'clear',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("ffce239a-ed4e-4590-ac1b-faac177402e4",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'',
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	"00000000-0000-0000-0000-000000000000",
	"829f5dc7-3345-4fb6-ab2d-52c4914100e4",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_P_PROXY
	VALUES ("8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	'calc',
	'Unnamed Interface',
	'',
	'calc::calc::calc',
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("5c1747ab-2911-4576-95a6-9cfcab302c9c",
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("5c1747ab-2911-4576-95a6-9cfcab302c9c",
	'key',
	'',
	'',
	3,
	5,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("fef0cff7-c262-41ca-a5f7-f3e664cde751",
	"f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("fef0cff7-c262-41ca-a5f7-f3e664cde751",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("829f5dc7-3345-4fb6-ab2d-52c4914100e4",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	'calc',
	0,
	0,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("b5696aa9-7e13-4248-8418-9025767c4b37",
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	'../../../calc/models/calc/calc/Shared/calc/calc.xtuml');
INSERT INTO C_C_PROXY
	VALUES ("fab900b3-09cc-4006-aeb9-c39b078e7835",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'calc',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO PE_PE_PROXY
	VALUES ("fab900b3-09cc-4006-aeb9-c39b078e7835",
	1,
	"13e09107-1bbc-45f6-add4-f553454d5291",
	"00000000-0000-0000-0000-000000000000",
	2,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("97b24a14-19a9-4fa1-94c6-74c3550434c0",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	"00000000-0000-0000-0000-000000000000",
	"e62fd45b-8230-42ea-8487-158b0f845712",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_R_PROXY
	VALUES ("97b24a14-19a9-4fa1-94c6-74c3550434c0",
	'disp',
	'',
	'Unnamed Interface',
	'calc::disp::disp',
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("d38c6430-b273-4d39-bb38-83b088b77f6e",
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("d38c6430-b273-4d39-bb38-83b088b77f6e",
	'result',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("4595fe2c-ad45-47c2-902a-d4b7cb229547",
	"2350539a-0c9f-433d-8739-a6d76fd28112",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0",
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("4595fe2c-ad45-47c2-902a-d4b7cb229547",
	'error',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("e62fd45b-8230-42ea-8487-158b0f845712",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	'disp',
	0,
	0,
	'../../../calc/models/calc/calc/calc/calc.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("b682f9e5-c575-468d-b70a-5c99eef071be",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("1dc7a663-5389-4486-845d-13239c236171",
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("2350539a-0c9f-433d-8739-a6d76fd28112",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("4969ba71-79c4-4656-94a3-61c8c0cc6cd1",
	"2350539a-0c9f-433d-8739-a6d76fd28112",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc/models/calc/calc/Shared/disp/disp.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("290e35c0-edc0-4e06-9522-4230e22adbbb",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	"00000000-0000-0000-0000-000000000000",
	"3f4ba719-6c39-48e7-8998-3ca5d6d69636",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_R_PROXY
	VALUES ("290e35c0-edc0-4e06-9522-4230e22adbbb",
	'keyIO',
	'',
	'Unnamed Interface',
	'calc_test::keyIO::keyIO',
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("1fea367d-0176-47b4-805d-208055f696bf",
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	"290e35c0-edc0-4e06-9522-4230e22adbbb",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("1fea367d-0176-47b4-805d-208055f696bf",
	'key',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("3669563a-7b94-4818-8c6d-d497c0ce4ecd",
	"1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"290e35c0-edc0-4e06-9522-4230e22adbbb",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("3669563a-7b94-4818-8c6d-d497c0ce4ecd",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("3f4ba719-6c39-48e7-8998-3ca5d6d69636",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	'keyIO',
	0,
	0,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("17e5d352-19e0-4813-b9bb-d447eca1808a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("d50015d4-5bd7-443c-b70a-2de520864067",
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	'../../../calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_C_PROXY
	VALUES ("efeb43d2-93ed-4e98-9ce6-50858d42b725",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'calc_test',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO PE_PE_PROXY
	VALUES ("efeb43d2-93ed-4e98-9ce6-50858d42b725",
	1,
	"96a80ad1-db0d-477b-86b2-a47b69152b3c",
	"00000000-0000-0000-0000-000000000000",
	2,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("a8230c8b-ff8e-470a-8fda-401ec05877b5",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	"00000000-0000-0000-0000-000000000000",
	"7fd6fdd4-9795-40f7-ac66-9a8b7eeaa3db",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_P_PROXY
	VALUES ("a8230c8b-ff8e-470a-8fda-401ec05877b5",
	'calc_test',
	'Unnamed Interface',
	'',
	'calc_test::calc_test::calc_test',
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("1f848290-bf77-419f-a124-937cf3f530ba",
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("1f848290-bf77-419f-a124-937cf3f530ba",
	'result',
	'',
	'',
	3,
	5,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("93035577-7685-432e-94c2-e586e80229df",
	"6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5",
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("93035577-7685-432e-94c2-e586e80229df",
	'error',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("7fd6fdd4-9795-40f7-ac66-9a8b7eeaa3db",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	'calc_test',
	0,
	0,
	'../../../calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("c02a1b10-f77a-4621-8500-e2cb8eae8051",
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("c0e79403-830e-4402-832e-9089582cc797",
	"6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	"00000000-0000-0000-0000-000000000000",
	"047709e0-57cd-47b2-808b-7ca5a0777f62",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_P_PROXY
	VALUES ("67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	'keypad',
	'Unnamed Interface',
	'',
	'keypad::keypad::keypad',
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("bc41b613-06ae-43e2-abe2-4ee1f5ebe5c7",
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("bc41b613-06ae-43e2-abe2-4ee1f5ebe5c7",
	'result',
	'',
	'',
	3,
	5,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("f39bfa99-510c-407a-933f-6b534a26e2bd",
	"f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("f39bfa99-510c-407a-933f-6b534a26e2bd",
	'error',
	'',
	'',
	3,
	5,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("047709e0-57cd-47b2-808b-7ca5a0777f62",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	'keypad',
	0,
	0,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("765057db-ae9f-4be0-98ad-a6399c409c0a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("949ad16d-94d8-4914-9865-bc1088828c2d",
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("be50d27b-aa67-40e6-a8f2-4563d16d07f3",
	"f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../keypad/models/keypad/keypad/Shared/keypad/keypad.xtuml');
INSERT INTO C_C_PROXY
	VALUES ("45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'keypad',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO PE_PE_PROXY
	VALUES ("45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	1,
	"162dc8f7-4611-4e59-bb13-a94bd0153aa3",
	"00000000-0000-0000-0000-000000000000",
	2,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	"00000000-0000-0000-0000-000000000000",
	"893262a9-a642-426d-aef8-d06aff2fb94d",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_R_PROXY
	VALUES ("e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	'keyIO',
	'',
	'Unnamed Interface',
	'keypad::keyIO::keyIO',
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("f83d8600-fc36-4b95-bd0e-dd7ddeac096e",
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("f83d8600-fc36-4b95-bd0e-dd7ddeac096e",
	'key',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_REP_PROXY
	VALUES ("8b46ee4e-9455-4897-a2a2-1e60f6d0af77",
	"728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO SPR_RO_PROXY
	VALUES ("8b46ee4e-9455-4897-a2a2-1e60f6d0af77",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_PO_PROXY
	VALUES ("893262a9-a642-426d-aef8-d06aff2fb94d",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	'keyIO',
	0,
	0,
	'../../../keypad/models/keypad/keypad/keypad/keypad.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_PP_PROXY
	VALUES ("070f39d0-a683-4d45-a7ec-ed9eb934366e",
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	'../../../keypad/models/keypad/keypad/Shared/keyIO/keyIO.xtuml');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("68ae755d-1417-48da-b395-752b3389c031",
	'calc_test',
	1);
INSERT INTO EP_PKG
	VALUES ("96a80ad1-db0d-477b-86b2-a47b69152b3c",
	"68ae755d-1417-48da-b395-752b3389c031",
	"68ae755d-1417-48da-b395-752b3389c031",
	'calc_test',
	'masl_domain',
	0);
INSERT INTO PE_PE
	VALUES ("2b74500d-fc28-4c00-b566-83c3e43048ca",
	1,
	"96a80ad1-db0d-477b-86b2-a47b69152b3c",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("2b74500d-fc28-4c00-b566-83c3e43048ca",
	"00000000-0000-0000-0000-000000000000",
	"68ae755d-1417-48da-b395-752b3389c031",
	'Shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("6bf3ef4d-a630-4110-b493-9a8c56445956",
	1,
	"2b74500d-fc28-4c00-b566-83c3e43048ca",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("6bf3ef4d-a630-4110-b493-9a8c56445956",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'');
INSERT INTO C_EP
	VALUES ("17e5d352-19e0-4813-b9bb-d447eca1808a",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	-1,
	'key',
	'');
INSERT INTO C_IO
	VALUES ("17e5d352-19e0-4813-b9bb-d447eca1808a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("d50015d4-5bd7-443c-b70a-2de520864067",
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	-1,
	'clear',
	'');
INSERT INTO C_IO
	VALUES ("1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"17e5d352-19e0-4813-b9bb-d447eca1808a");
INSERT INTO PE_PE
	VALUES ("02d6cbb8-8455-4e8b-995c-c250ef52491a",
	1,
	"2b74500d-fc28-4c00-b566-83c3e43048ca",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("02d6cbb8-8455-4e8b-995c-c250ef52491a",
	"00000000-0000-0000-0000-000000000000",
	'calc_test',
	'');
INSERT INTO C_EP
	VALUES ("f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	-1,
	'result',
	'');
INSERT INTO C_IO
	VALUES ("f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("c02a1b10-f77a-4621-8500-e2cb8eae8051",
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	-1,
	'error',
	'');
INSERT INTO C_IO
	VALUES ("6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1");
INSERT INTO C_PP
	VALUES ("c0e79403-830e-4402-832e-9089582cc797",
	"6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("efeb43d2-93ed-4e98-9ce6-50858d42b725",
	1,
	"96a80ad1-db0d-477b-86b2-a47b69152b3c",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("efeb43d2-93ed-4e98-9ce6-50858d42b725",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'calc_test',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("3f4ba719-6c39-48e7-8998-3ca5d6d69636",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	'keyIO',
	0,
	0);
INSERT INTO C_IR
	VALUES ("290e35c0-edc0-4e06-9522-4230e22adbbb",
	"6bf3ef4d-a630-4110-b493-9a8c56445956",
	"00000000-0000-0000-0000-000000000000",
	"3f4ba719-6c39-48e7-8998-3ca5d6d69636");
INSERT INTO C_R
	VALUES ("290e35c0-edc0-4e06-9522-4230e22adbbb",
	'keyIO',
	'',
	'Unnamed Interface',
	'calc_test::keyIO::keyIO');
INSERT INTO SPR_REP
	VALUES ("1fea367d-0176-47b4-805d-208055f696bf",
	"17e5d352-19e0-4813-b9bb-d447eca1808a",
	"290e35c0-edc0-4e06-9522-4230e22adbbb");
INSERT INTO SPR_RO
	VALUES ("1fea367d-0176-47b4-805d-208055f696bf",
	'key',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO SPR_REP
	VALUES ("3669563a-7b94-4818-8c6d-d497c0ce4ecd",
	"1b0a66c0-9429-4c6b-bd80-48ae8ec41355",
	"290e35c0-edc0-4e06-9522-4230e22adbbb");
INSERT INTO SPR_RO
	VALUES ("3669563a-7b94-4818-8c6d-d497c0ce4ecd",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO C_PO
	VALUES ("7fd6fdd4-9795-40f7-ac66-9a8b7eeaa3db",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	'calc_test',
	0,
	0);
INSERT INTO C_IR
	VALUES ("a8230c8b-ff8e-470a-8fda-401ec05877b5",
	"02d6cbb8-8455-4e8b-995c-c250ef52491a",
	"00000000-0000-0000-0000-000000000000",
	"7fd6fdd4-9795-40f7-ac66-9a8b7eeaa3db");
INSERT INTO C_P
	VALUES ("a8230c8b-ff8e-470a-8fda-401ec05877b5",
	'calc_test',
	'Unnamed Interface',
	'',
	'calc_test::calc_test::calc_test');
INSERT INTO SPR_PEP
	VALUES ("1f848290-bf77-419f-a124-937cf3f530ba",
	"f6a54703-5ee2-435d-9fdd-55caec2af4d1",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5");
INSERT INTO SPR_PO
	VALUES ("1f848290-bf77-419f-a124-937cf3f530ba",
	'result',
	'',
	'',
	3,
	5);
INSERT INTO SPR_PEP
	VALUES ("93035577-7685-432e-94c2-e586e80229df",
	"6af3bafd-574b-4083-a6de-ae5756e59d1a",
	"a8230c8b-ff8e-470a-8fda-401ec05877b5");
INSERT INTO SPR_PO
	VALUES ("93035577-7685-432e-94c2-e586e80229df",
	'error',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO PE_PE
	VALUES ("628bb6b2-0ef4-4c3b-8d3b-62267b713dc0",
	1,
	"00000000-0000-0000-0000-000000000000",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	7);
INSERT INTO EP_PKG
	VALUES ("628bb6b2-0ef4-4c3b-8d3b-62267b713dc0",
	"00000000-0000-0000-0000-000000000000",
	"68ae755d-1417-48da-b395-752b3389c031",
	'functions',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("ace6ef2d-6b25-48e5-b12c-1fad00c37471",
	1,
	"628bb6b2-0ef4-4c3b-8d3b-62267b713dc0",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("ace6ef2d-6b25-48e5-b12c-1fad00c37471",
	"00000000-0000-0000-0000-000000000000",
	'result',
	'',
	'begin
  console << "Result: " << value << endl;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO S_SPARM
	VALUES ("1e8b8819-22ac-4b21-bf2b-4015ed0c73ef",
	"ace6ef2d-6b25-48e5-b12c-1fad00c37471",
	'value',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("b9f30da2-3cee-4adc-94bb-b2527864fb17",
	1,
	"628bb6b2-0ef4-4c3b-8d3b-62267b713dc0",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("b9f30da2-3cee-4adc-94bb-b2527864fb17",
	"00000000-0000-0000-0000-000000000000",
	'error',
	'',
	'begin
  console << "Error: " << message << endl;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO S_SPARM
	VALUES ("d34c0588-f279-4c26-a9b1-413acb5c16c8",
	"b9f30da2-3cee-4adc-94bb-b2527864fb17",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("15387b7c-ae70-42cf-9941-38742e90f6ae",
	1,
	"00000000-0000-0000-0000-000000000000",
	"efeb43d2-93ed-4e98-9ce6-50858d42b725",
	7);
INSERT INTO EP_PKG
	VALUES ("15387b7c-ae70-42cf-9941-38742e90f6ae",
	"00000000-0000-0000-0000-000000000000",
	"68ae755d-1417-48da-b395-752b3389c031",
	'testcases',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("f246373a-970e-4bd0-bc18-22fb1ec37b5b",
	1,
	"15387b7c-ae70-42cf-9941-38742e90f6ae",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("f246373a-970e-4bd0-bc18-22fb1ec37b5b",
	"00000000-0000-0000-0000-000000000000",
	'testcase1',
	'',
	'begin
  keyIO~>clear();
  // 1 + 2 =
  keyIO~>key( 1 );
  keyIO~>key( 10 );
  keyIO~>key( 2 );
  keyIO~>key( 14 );
  // 3.0
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'',
	1);
INSERT INTO PE_PE
	VALUES ("3c8ab90b-c805-4e38-882a-2c5ac1e0959a",
	1,
	"15387b7c-ae70-42cf-9941-38742e90f6ae",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("3c8ab90b-c805-4e38-882a-2c5ac1e0959a",
	"00000000-0000-0000-0000-000000000000",
	'testcase2',
	'',
	'begin
  keyIO~>clear();
  // 1 + 2 + 3 =
  keyIO~>key( 1 );
  keyIO~>key( 10 );
  keyIO~>key( 2 );
  keyIO~>key( 10 );
  // 3.0
  keyIO~>key( 3 );
  keyIO~>key( 14 );
// 6.0
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'',
	1);
INSERT INTO PE_PE
	VALUES ("c6d6a981-ed13-4ab2-8214-15b9c6c9de56",
	1,
	"15387b7c-ae70-42cf-9941-38742e90f6ae",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("c6d6a981-ed13-4ab2-8214-15b9c6c9de56",
	"00000000-0000-0000-0000-000000000000",
	'testcase3',
	'',
	'begin
  keyIO~>clear();
  // 7.5 - 4.3 =
  keyIO~>key( 7 );
  keyIO~>key( 15 );
  keyIO~>key( 5 );
  keyIO~>key( 11 );
  keyIO~>key( 4 );
  keyIO~>key( 15 );
  keyIO~>key( 3 );
  keyIO~>key( 14 );
  // 3.2
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'',
	1);
INSERT INTO PE_PE
	VALUES ("d57c133f-b796-46bf-832b-0bc15240be30",
	1,
	"15387b7c-ae70-42cf-9941-38742e90f6ae",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("d57c133f-b796-46bf-832b-0bc15240be30",
	"00000000-0000-0000-0000-000000000000",
	'testcase4',
	'',
	'begin
  keyIO~>clear();
  // 12 * 3 =
  keyIO~>key( 1 );
  keyIO~>key( 2 );
  keyIO~>key( 12 );
  keyIO~>key( 3 );
  keyIO~>key( 14 );
  // 36.0
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'',
	1);
INSERT INTO EP_PKG
	VALUES ("8d18343e-2a07-4520-b3b2-14273b5e2561",
	"68ae755d-1417-48da-b395-752b3389c031",
	"68ae755d-1417-48da-b395-752b3389c031",
	'types',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	"00000000-0000-0000-0000-000000000000",
	'MASLtype',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("2c14acee-fd64-4b59-bdf5-3d9cde605f16",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("2c14acee-fd64-4b59-bdf5-3d9cde605f16",
	"00000000-0000-0000-0000-000000000000",
	'instance',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("2c14acee-fd64-4b59-bdf5-3d9cde605f16",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("543a0c94-589a-46a3-91cb-8c4fb346ca57",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("543a0c94-589a-46a3-91cb-8c4fb346ca57",
	"00000000-0000-0000-0000-000000000000",
	'structure',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("543a0c94-589a-46a3-91cb-8c4fb346ca57",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("85f8ceed-5ac0-452f-beae-204dc806019f",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("85f8ceed-5ac0-452f-beae-204dc806019f",
	"00000000-0000-0000-0000-000000000000",
	'enum',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("85f8ceed-5ac0-452f-beae-204dc806019f",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("79c9fe5a-c703-49f1-9422-708123c357af",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("79c9fe5a-c703-49f1-9422-708123c357af",
	"00000000-0000-0000-0000-000000000000",
	'device',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("79c9fe5a-c703-49f1-9422-708123c357af",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d232476b-a42b-42e7-ae4c-efd44b4cd796",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d232476b-a42b-42e7-ae4c-efd44b4cd796",
	"00000000-0000-0000-0000-000000000000",
	'event',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d232476b-a42b-42e7-ae4c-efd44b4cd796",
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d4b7ef04-3532-4865-85a5-eb21805c6e60",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d4b7ef04-3532-4865-85a5-eb21805c6e60",
	"00000000-0000-0000-0000-000000000000",
	'timer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d4b7ef04-3532-4865-85a5-eb21805c6e60",
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("eb184a21-58ea-4bb0-b0c2-64f7da0c40b3",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("eb184a21-58ea-4bb0-b0c2-64f7da0c40b3",
	"00000000-0000-0000-0000-000000000000",
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("eb184a21-58ea-4bb0-b0c2-64f7da0c40b3",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d1b29c60-072e-4126-b791-8d229772bb7b",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d1b29c60-072e-4126-b791-8d229772bb7b",
	"00000000-0000-0000-0000-000000000000",
	'duration',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d1b29c60-072e-4126-b791-8d229772bb7b",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("e22bc505-ea44-4aa5-9b0b-1f70a6ce9688",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("e22bc505-ea44-4aa5-9b0b-1f70a6ce9688",
	"00000000-0000-0000-0000-000000000000",
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("e22bc505-ea44-4aa5-9b0b-1f70a6ce9688",
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("49187cc8-418f-4fc5-9fc6-3f8df5285b13",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("49187cc8-418f-4fc5-9fc6-3f8df5285b13",
	"00000000-0000-0000-0000-000000000000",
	'wstring',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("49187cc8-418f-4fc5-9fc6-3f8df5285b13",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("4313907c-97ad-4adf-b7e1-3483f78e2f8b",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("4313907c-97ad-4adf-b7e1-3483f78e2f8b",
	"00000000-0000-0000-0000-000000000000",
	'string',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("4313907c-97ad-4adf-b7e1-3483f78e2f8b",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("059ef93d-92e6-485b-8c61-4d59294f78a1",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("059ef93d-92e6-485b-8c61-4d59294f78a1",
	"00000000-0000-0000-0000-000000000000",
	'real',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("059ef93d-92e6-485b-8c61-4d59294f78a1",
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("2729ab78-2943-4cb4-b1d4-8215f3e70ead",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("2729ab78-2943-4cb4-b1d4-8215f3e70ead",
	"00000000-0000-0000-0000-000000000000",
	'long_integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("2729ab78-2943-4cb4-b1d4-8215f3e70ead",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("312e24d4-5a80-4a5d-b673-66b7c2bf6845",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("312e24d4-5a80-4a5d-b673-66b7c2bf6845",
	"00000000-0000-0000-0000-000000000000",
	'byte',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("312e24d4-5a80-4a5d-b673-66b7c2bf6845",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("cb0039b0-4bff-492c-9433-6a8b71a15b8c",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("cb0039b0-4bff-492c-9433-6a8b71a15b8c",
	"00000000-0000-0000-0000-000000000000",
	'wcharacter',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("cb0039b0-4bff-492c-9433-6a8b71a15b8c",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("f3937fec-2c51-44e1-bd3b-4e6c96f8722d",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("f3937fec-2c51-44e1-bd3b-4e6c96f8722d",
	"00000000-0000-0000-0000-000000000000",
	'character',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("f3937fec-2c51-44e1-bd3b-4e6c96f8722d",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("88140e4c-6d61-45d6-ab43-c3a549073e92",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("88140e4c-6d61-45d6-ab43-c3a549073e92",
	"00000000-0000-0000-0000-000000000000",
	'integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("88140e4c-6d61-45d6-ab43-c3a549073e92",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("fe6fad4a-5f66-4990-ae54-00939e936a42",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("fe6fad4a-5f66-4990-ae54-00939e936a42",
	"00000000-0000-0000-0000-000000000000",
	'boolean',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("fe6fad4a-5f66-4990-ae54-00939e936a42",
	"ba5eda7a-def5-0000-0000-000000000001",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("46865378-64d1-40b5-89bf-115079542660",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("46865378-64d1-40b5-89bf-115079542660",
	"00000000-0000-0000-0000-000000000000",
	'void',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("46865378-64d1-40b5-89bf-115079542660",
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("1b141a76-7a50-4118-a17b-dda5b0e153bb",
	1,
	"8d18343e-2a07-4520-b3b2-14273b5e2561",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("1b141a76-7a50-4118-a17b-dda5b0e153bb",
	"00000000-0000-0000-0000-000000000000",
	'MASLunique',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("1b141a76-7a50-4118-a17b-dda5b0e153bb",
	"3c9cb629-4c10-4890-ad51-2e7de377b0a3",
	0,
	'');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	'keypad',
	1);
INSERT INTO EP_PKG
	VALUES ("162dc8f7-4611-4e59-bb13-a94bd0153aa3",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	'keypad',
	'masl_domain',
	0);
INSERT INTO PE_PE
	VALUES ("b4ddf240-6cd3-4ce1-9719-67a13ea7f5bd",
	1,
	"162dc8f7-4611-4e59-bb13-a94bd0153aa3",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("b4ddf240-6cd3-4ce1-9719-67a13ea7f5bd",
	"00000000-0000-0000-0000-000000000000",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	'Shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("ffce239a-ed4e-4590-ac1b-faac177402e4",
	1,
	"b4ddf240-6cd3-4ce1-9719-67a13ea7f5bd",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("ffce239a-ed4e-4590-ac1b-faac177402e4",
	"00000000-0000-0000-0000-000000000000",
	'keyIO',
	'');
INSERT INTO C_EP
	VALUES ("280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	-1,
	'key',
	'');
INSERT INTO C_IO
	VALUES ("280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("070f39d0-a683-4d45-a7ec-ed9eb934366e",
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	-1,
	'clear',
	'');
INSERT INTO C_IO
	VALUES ("728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"280a7dec-01a3-4970-a9b7-f17761e435ae");
INSERT INTO PE_PE
	VALUES ("b795d23d-3942-49da-a886-e859ffccdd4b",
	1,
	"b4ddf240-6cd3-4ce1-9719-67a13ea7f5bd",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("b795d23d-3942-49da-a886-e859ffccdd4b",
	"00000000-0000-0000-0000-000000000000",
	'keypad',
	'');
INSERT INTO C_EP
	VALUES ("765057db-ae9f-4be0-98ad-a6399c409c0a",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	-1,
	'result',
	'');
INSERT INTO C_IO
	VALUES ("765057db-ae9f-4be0-98ad-a6399c409c0a",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("949ad16d-94d8-4914-9865-bc1088828c2d",
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	-1,
	'error',
	'');
INSERT INTO C_IO
	VALUES ("f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"765057db-ae9f-4be0-98ad-a6399c409c0a");
INSERT INTO C_PP
	VALUES ("be50d27b-aa67-40e6-a8f2-4563d16d07f3",
	"f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	1,
	"162dc8f7-4611-4e59-bb13-a94bd0153aa3",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'keypad',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("047709e0-57cd-47b2-808b-7ca5a0777f62",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	'keypad',
	0,
	0);
INSERT INTO C_IR
	VALUES ("67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	"b795d23d-3942-49da-a886-e859ffccdd4b",
	"00000000-0000-0000-0000-000000000000",
	"047709e0-57cd-47b2-808b-7ca5a0777f62");
INSERT INTO C_P
	VALUES ("67deaf2a-634d-49dd-a6fd-a35cfe99ef92",
	'keypad',
	'Unnamed Interface',
	'',
	'keypad::keypad::keypad');
INSERT INTO SPR_PEP
	VALUES ("bc41b613-06ae-43e2-abe2-4ee1f5ebe5c7",
	"765057db-ae9f-4be0-98ad-a6399c409c0a",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92");
INSERT INTO SPR_PO
	VALUES ("bc41b613-06ae-43e2-abe2-4ee1f5ebe5c7",
	'result',
	'',
	'',
	3,
	5);
INSERT INTO SPR_PEP
	VALUES ("f39bfa99-510c-407a-933f-6b534a26e2bd",
	"f8a79e2a-8e1a-4217-b684-844641ec39c9",
	"67deaf2a-634d-49dd-a6fd-a35cfe99ef92");
INSERT INTO SPR_PO
	VALUES ("f39bfa99-510c-407a-933f-6b534a26e2bd",
	'error',
	'',
	'',
	3,
	5);
INSERT INTO C_PO
	VALUES ("893262a9-a642-426d-aef8-d06aff2fb94d",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	'keyIO',
	0,
	0);
INSERT INTO C_IR
	VALUES ("e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	"ffce239a-ed4e-4590-ac1b-faac177402e4",
	"00000000-0000-0000-0000-000000000000",
	"893262a9-a642-426d-aef8-d06aff2fb94d");
INSERT INTO C_R
	VALUES ("e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1",
	'keyIO',
	'',
	'Unnamed Interface',
	'keypad::keyIO::keyIO');
INSERT INTO SPR_REP
	VALUES ("f83d8600-fc36-4b95-bd0e-dd7ddeac096e",
	"280a7dec-01a3-4970-a9b7-f17761e435ae",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1");
INSERT INTO SPR_RO
	VALUES ("f83d8600-fc36-4b95-bd0e-dd7ddeac096e",
	'key',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO SPR_REP
	VALUES ("8b46ee4e-9455-4897-a2a2-1e60f6d0af77",
	"728da4f3-04cc-425e-a2b9-81bf426dbd48",
	"e10fe7d3-8cf5-452d-8cbb-87a36ef29ed1");
INSERT INTO SPR_RO
	VALUES ("8b46ee4e-9455-4897-a2a2-1e60f6d0af77",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO PE_PE
	VALUES ("57a2e0b3-a3f9-4d19-8a37-c029ef19c046",
	1,
	"00000000-0000-0000-0000-000000000000",
	"45cb8f1c-0861-4d11-a251-734d9eabf7ea",
	7);
INSERT INTO EP_PKG
	VALUES ("57a2e0b3-a3f9-4d19-8a37-c029ef19c046",
	"00000000-0000-0000-0000-000000000000",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	'functions',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("7c8d21dd-b083-4e39-ad25-15eab9eec456",
	1,
	"57a2e0b3-a3f9-4d19-8a37-c029ef19c046",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("7c8d21dd-b083-4e39-ad25-15eab9eec456",
	"00000000-0000-0000-0000-000000000000",
	'error',
	'',
	'begin
  null;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO S_SPARM
	VALUES ("3eaf6b5f-aa9b-47cb-bbf2-520b058bd1fb",
	"7c8d21dd-b083-4e39-ad25-15eab9eec456",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("8d4ed9b1-a168-438d-9310-66120c3a0a38",
	1,
	"57a2e0b3-a3f9-4d19-8a37-c029ef19c046",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("8d4ed9b1-a168-438d-9310-66120c3a0a38",
	"00000000-0000-0000-0000-000000000000",
	'result',
	'',
	'begin
  null;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO S_SPARM
	VALUES ("b4404602-ba35-413e-9176-23711757e5dd",
	"8d4ed9b1-a168-438d-9310-66120c3a0a38",
	'value',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("5cf7ab11-1f48-44c2-b930-28694c2a64ad",
	1,
	"57a2e0b3-a3f9-4d19-8a37-c029ef19c046",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("5cf7ab11-1f48-44c2-b930-28694c2a64ad",
	"00000000-0000-0000-0000-000000000000",
	'connect',
	'',
	'begin
  null;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO EP_PKG
	VALUES ("47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	"2bb1960d-424f-43eb-a6fe-a9c01d780f67",
	'types',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	"00000000-0000-0000-0000-000000000000",
	'MASLtype',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("093a3410-6e22-480a-8e06-4369a85773ba",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("093a3410-6e22-480a-8e06-4369a85773ba",
	"00000000-0000-0000-0000-000000000000",
	'instance',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("093a3410-6e22-480a-8e06-4369a85773ba",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("e3ca8929-4406-4019-95cf-30ee12fa3624",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("e3ca8929-4406-4019-95cf-30ee12fa3624",
	"00000000-0000-0000-0000-000000000000",
	'structure',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("e3ca8929-4406-4019-95cf-30ee12fa3624",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("4fd64843-29f4-4eb2-b993-66a0635596e7",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("4fd64843-29f4-4eb2-b993-66a0635596e7",
	"00000000-0000-0000-0000-000000000000",
	'enum',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("4fd64843-29f4-4eb2-b993-66a0635596e7",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("bb18792d-eb5f-4b43-b501-7fa41b96738c",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("bb18792d-eb5f-4b43-b501-7fa41b96738c",
	"00000000-0000-0000-0000-000000000000",
	'device',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("bb18792d-eb5f-4b43-b501-7fa41b96738c",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("ad473636-8e4d-46a5-999e-ab9cfdf5b728",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("ad473636-8e4d-46a5-999e-ab9cfdf5b728",
	"00000000-0000-0000-0000-000000000000",
	'event',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("ad473636-8e4d-46a5-999e-ab9cfdf5b728",
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d9696329-75f6-4058-a1da-48ba3ed297d3",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d9696329-75f6-4058-a1da-48ba3ed297d3",
	"00000000-0000-0000-0000-000000000000",
	'timer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d9696329-75f6-4058-a1da-48ba3ed297d3",
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("3c0ba364-a96f-4ed0-bf49-f6fbbfbb0549",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("3c0ba364-a96f-4ed0-bf49-f6fbbfbb0549",
	"00000000-0000-0000-0000-000000000000",
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("3c0ba364-a96f-4ed0-bf49-f6fbbfbb0549",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("b552d4eb-8b70-4bbf-b77d-d54907d3690e",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("b552d4eb-8b70-4bbf-b77d-d54907d3690e",
	"00000000-0000-0000-0000-000000000000",
	'duration',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("b552d4eb-8b70-4bbf-b77d-d54907d3690e",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("7290e03c-4a90-4ba6-b070-45b5f2387f4d",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("7290e03c-4a90-4ba6-b070-45b5f2387f4d",
	"00000000-0000-0000-0000-000000000000",
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("7290e03c-4a90-4ba6-b070-45b5f2387f4d",
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d4e4afb7-c93e-42c7-a68e-1e63196570c9",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d4e4afb7-c93e-42c7-a68e-1e63196570c9",
	"00000000-0000-0000-0000-000000000000",
	'wstring',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d4e4afb7-c93e-42c7-a68e-1e63196570c9",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("8664b46f-f803-40fd-ba92-18af8b9bb499",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("8664b46f-f803-40fd-ba92-18af8b9bb499",
	"00000000-0000-0000-0000-000000000000",
	'string',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("8664b46f-f803-40fd-ba92-18af8b9bb499",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("b99945b0-2ed0-414a-b8d8-0073bc310b7b",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("b99945b0-2ed0-414a-b8d8-0073bc310b7b",
	"00000000-0000-0000-0000-000000000000",
	'real',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("b99945b0-2ed0-414a-b8d8-0073bc310b7b",
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("547eb3a9-d8ed-49e3-b2cd-884179da3cc4",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("547eb3a9-d8ed-49e3-b2cd-884179da3cc4",
	"00000000-0000-0000-0000-000000000000",
	'long_integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("547eb3a9-d8ed-49e3-b2cd-884179da3cc4",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("e5b29011-dfc7-472e-af6b-0e8b29c885a5",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("e5b29011-dfc7-472e-af6b-0e8b29c885a5",
	"00000000-0000-0000-0000-000000000000",
	'byte',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("e5b29011-dfc7-472e-af6b-0e8b29c885a5",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("1493db18-6e6b-4622-aa4e-c8363cd1ac93",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("1493db18-6e6b-4622-aa4e-c8363cd1ac93",
	"00000000-0000-0000-0000-000000000000",
	'wcharacter',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("1493db18-6e6b-4622-aa4e-c8363cd1ac93",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("9aa207e2-51f3-48eb-8d4d-53c97d3681af",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("9aa207e2-51f3-48eb-8d4d-53c97d3681af",
	"00000000-0000-0000-0000-000000000000",
	'character',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("9aa207e2-51f3-48eb-8d4d-53c97d3681af",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("c01171db-478e-4171-a183-c2e548a46624",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("c01171db-478e-4171-a183-c2e548a46624",
	"00000000-0000-0000-0000-000000000000",
	'integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("c01171db-478e-4171-a183-c2e548a46624",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("4a39ac69-6d0d-4309-9201-ade42dfb5026",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("4a39ac69-6d0d-4309-9201-ade42dfb5026",
	"00000000-0000-0000-0000-000000000000",
	'boolean',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("4a39ac69-6d0d-4309-9201-ade42dfb5026",
	"ba5eda7a-def5-0000-0000-000000000001",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("67ec3e3b-0a13-470e-892a-5bceb3787b18",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("67ec3e3b-0a13-470e-892a-5bceb3787b18",
	"00000000-0000-0000-0000-000000000000",
	'void',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("67ec3e3b-0a13-470e-892a-5bceb3787b18",
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d4ab77cc-60ad-452a-82c4-62614aead508",
	1,
	"47d76d4f-5aca-4d26-ba6c-02bb6c1f34fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d4ab77cc-60ad-452a-82c4-62614aead508",
	"00000000-0000-0000-0000-000000000000",
	'MASLunique',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d4ab77cc-60ad-452a-82c4-62614aead508",
	"2c3ef9de-30d0-40d0-9733-9e0365aee2d1",
	0,
	'');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES ("a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'calc',
	1);
INSERT INTO EP_PKG
	VALUES ("13e09107-1bbc-45f6-add4-f553454d5291",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'calc',
	'masl_domain',
	0);
INSERT INTO PE_PE
	VALUES ("5e58c29c-2fe2-4b3b-8a11-d7bfd9e25731",
	1,
	"13e09107-1bbc-45f6-add4-f553454d5291",
	"00000000-0000-0000-0000-000000000000",
	7);
INSERT INTO EP_PKG
	VALUES ("5e58c29c-2fe2-4b3b-8a11-d7bfd9e25731",
	"00000000-0000-0000-0000-000000000000",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'Shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("df8f6d35-1b12-4773-9002-36c313c07570",
	1,
	"5e58c29c-2fe2-4b3b-8a11-d7bfd9e25731",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("df8f6d35-1b12-4773-9002-36c313c07570",
	"00000000-0000-0000-0000-000000000000",
	'calc',
	'');
INSERT INTO C_EP
	VALUES ("b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	-1,
	'key',
	'');
INSERT INTO C_IO
	VALUES ("b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"ba5eda7a-def5-0000-0000-000000000000",
	'key',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("b5696aa9-7e13-4248-8418-9025767c4b37",
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"ba5eda7a-def5-0000-0000-000000000002",
	'code',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	-1,
	'clear',
	'');
INSERT INTO C_IO
	VALUES ("f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"ba5eda7a-def5-0000-0000-000000000000",
	'clear',
	'',
	0,
	'',
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74");
INSERT INTO PE_PE
	VALUES ("f82fee28-6ee8-4077-b95d-3f2854b31098",
	1,
	"5e58c29c-2fe2-4b3b-8a11-d7bfd9e25731",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("f82fee28-6ee8-4077-b95d-3f2854b31098",
	"00000000-0000-0000-0000-000000000000",
	'disp',
	'');
INSERT INTO C_EP
	VALUES ("b682f9e5-c575-468d-b70a-5c99eef071be",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	-1,
	'result',
	'');
INSERT INTO C_IO
	VALUES ("b682f9e5-c575-468d-b70a-5c99eef071be",
	"ba5eda7a-def5-0000-0000-000000000000",
	'result',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_PP
	VALUES ("1dc7a663-5389-4486-845d-13239c236171",
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	"ba5eda7a-def5-0000-0000-000000000003",
	'value',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("2350539a-0c9f-433d-8739-a6d76fd28112",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	-1,
	'error',
	'');
INSERT INTO C_IO
	VALUES ("2350539a-0c9f-433d-8739-a6d76fd28112",
	"ba5eda7a-def5-0000-0000-000000000000",
	'error',
	'',
	0,
	'',
	"b682f9e5-c575-468d-b70a-5c99eef071be");
INSERT INTO C_PP
	VALUES ("4969ba71-79c4-4656-94a3-61c8c0cc6cd1",
	"2350539a-0c9f-433d-8739-a6d76fd28112",
	"ba5eda7a-def5-0000-0000-000000000004",
	'message',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("42219497-c263-4a0d-bf71-ddece006db36",
	1,
	"5e58c29c-2fe2-4b3b-8a11-d7bfd9e25731",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("42219497-c263-4a0d-bf71-ddece006db36",
	"00000000-0000-0000-0000-000000000000",
	'sequence of integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("42219497-c263-4a0d-bf71-ddece006db36",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("fab900b3-09cc-4006-aeb9-c39b078e7835",
	1,
	"13e09107-1bbc-45f6-add4-f553454d5291",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("fab900b3-09cc-4006-aeb9-c39b078e7835",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'calc',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("829f5dc7-3345-4fb6-ab2d-52c4914100e4",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	'calc',
	0,
	0);
INSERT INTO C_IR
	VALUES ("8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	"df8f6d35-1b12-4773-9002-36c313c07570",
	"00000000-0000-0000-0000-000000000000",
	"829f5dc7-3345-4fb6-ab2d-52c4914100e4");
INSERT INTO C_P
	VALUES ("8b7897d9-4a75-47a7-b3f3-eee995fec8e0",
	'calc',
	'Unnamed Interface',
	'',
	'calc::calc::calc');
INSERT INTO SPR_PEP
	VALUES ("5c1747ab-2911-4576-95a6-9cfcab302c9c",
	"b4a0eaed-7cf6-4574-8a9d-67f2ea22bf74",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0");
INSERT INTO SPR_PO
	VALUES ("5c1747ab-2911-4576-95a6-9cfcab302c9c",
	'key',
	'',
	'',
	3,
	5);
INSERT INTO SPR_PEP
	VALUES ("fef0cff7-c262-41ca-a5f7-f3e664cde751",
	"f3a7fadc-7f48-43e8-adb6-7ffd7e30f1c7",
	"8b7897d9-4a75-47a7-b3f3-eee995fec8e0");
INSERT INTO SPR_PO
	VALUES ("fef0cff7-c262-41ca-a5f7-f3e664cde751",
	'clear',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO C_PO
	VALUES ("e62fd45b-8230-42ea-8487-158b0f845712",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	'disp',
	0,
	0);
INSERT INTO C_IR
	VALUES ("97b24a14-19a9-4fa1-94c6-74c3550434c0",
	"f82fee28-6ee8-4077-b95d-3f2854b31098",
	"00000000-0000-0000-0000-000000000000",
	"e62fd45b-8230-42ea-8487-158b0f845712");
INSERT INTO C_R
	VALUES ("97b24a14-19a9-4fa1-94c6-74c3550434c0",
	'disp',
	'',
	'Unnamed Interface',
	'calc::disp::disp');
INSERT INTO SPR_REP
	VALUES ("d38c6430-b273-4d39-bb38-83b088b77f6e",
	"b682f9e5-c575-468d-b70a-5c99eef071be",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0");
INSERT INTO SPR_RO
	VALUES ("d38c6430-b273-4d39-bb38-83b088b77f6e",
	'result',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO SPR_REP
	VALUES ("4595fe2c-ad45-47c2-902a-d4b7cb229547",
	"2350539a-0c9f-433d-8739-a6d76fd28112",
	"97b24a14-19a9-4fa1-94c6-74c3550434c0");
INSERT INTO SPR_RO
	VALUES ("4595fe2c-ad45-47c2-902a-d4b7cb229547",
	'error',
	'',
	'begin
  null;
end service;',
	3,
	1);
INSERT INTO PE_PE
	VALUES ("731ef03a-a326-4908-a711-2fa03c98bb40",
	1,
	"00000000-0000-0000-0000-000000000000",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	7);
INSERT INTO EP_PKG
	VALUES ("731ef03a-a326-4908-a711-2fa03c98bb40",
	"00000000-0000-0000-0000-000000000000",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'functions',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("72d44079-9894-418f-87e1-2ba1a2bce6a9",
	1,
	"731ef03a-a326-4908-a711-2fa03c98bb40",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("72d44079-9894-418f-87e1-2ba1a2bce6a9",
	"00000000-0000-0000-0000-000000000000",
	'key',
	'',
	'begin
  if ( 0 <= code and code <= 15 ) then
    // Create the calculator instance population on the first call
    if ( null = find_one Calculator() ) then
      ( create unique Calculator() ).init();
    end if;
    // generate the key press to the display
    generate Display.keypress( code ) to ( find_one Calculator() )->R1.Display;
  end if;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO S_SPARM
	VALUES ("26da8bd0-d928-4e0d-a24a-465cda5f6ca3",
	"72d44079-9894-418f-87e1-2ba1a2bce6a9",
	'code',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("ca9fb0ae-30ef-4332-a058-ee22c5658b96",
	1,
	"731ef03a-a326-4908-a711-2fa03c98bb40",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("ca9fb0ae-30ef-4332-a058-ee22c5658b96",
	"00000000-0000-0000-0000-000000000000",
	'clear',
	'',
	'begin
  // Create the calculator instance population on the first call
  if ( null = find_one Calculator() ) then
    ( create unique Calculator() ).init();
  end if;
  // reset the display
  ( find_one Display() ).clearDisplay();
  // clear the memory
  ( find_one Memory() ).reset();
  // set the calculator to no-op
  ( find_one Calculator() ).current_op := -1;
end service;',
	"ba5eda7a-def5-0000-0000-000000000000",
	3,
	'',
	1);
INSERT INTO PE_PE
	VALUES ("67a7dbce-184c-4a7f-b327-d7604e320f07",
	1,
	"00000000-0000-0000-0000-000000000000",
	"fab900b3-09cc-4006-aeb9-c39b078e7835",
	7);
INSERT INTO EP_PKG
	VALUES ("67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'calc',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	'Display',
	2,
	'DISP',
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("3bde5188-846a-446d-b49e-e147a4963cf8",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	'clearDisplay',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'begin
  this.value := 0;
  this.whole_part := 0;
  this.fractional_part := 0;
  this.sign := 1;
end service;',
	3,
	'',
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO O_REF
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	0,
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"a73df127-f726-4832-b56a-497660ba0671",
	"7df6aadd-9183-4695-82c6-070a9850a593",
	"a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"2541f1c9-7928-4ded-87cf-7cf9d7208c48",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'Calculator',
	'calc_id',
	'R1.''displays_values_for''');
INSERT INTO O_RATTR
	VALUES ("a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	1,
	'calc_id');
INSERT INTO O_ATTR
	VALUES ("a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"00000000-0000-0000-0000-000000000000",
	'calc_id',
	'',
	'',
	'calc_id',
	0,
	"ba5eda7a-def5-0000-0000-000000000007",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("f1526d61-1ac6-4787-96e5-03096ac2c96b",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_BATTR
	VALUES ("f1526d61-1ac6-4787-96e5-03096ac2c96b",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ATTR
	VALUES ("f1526d61-1ac6-4787-96e5-03096ac2c96b",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	'value',
	'',
	'',
	'value',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("620d7fb1-e837-416a-9aab-33709935b92a",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_BATTR
	VALUES ("620d7fb1-e837-416a-9aab-33709935b92a",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ATTR
	VALUES ("620d7fb1-e837-416a-9aab-33709935b92a",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"87a4fe75-8c7d-4405-a3c7-6481ccffe21f",
	'current_state',
	'',
	'',
	'current_state',
	0,
	"ba5eda7a-def5-0000-0000-000000000006",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("f7416f58-f301-4f8c-a2e3-fc94d1c11fc1",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_BATTR
	VALUES ("f7416f58-f301-4f8c-a2e3-fc94d1c11fc1",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ATTR
	VALUES ("f7416f58-f301-4f8c-a2e3-fc94d1c11fc1",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"f1526d61-1ac6-4787-96e5-03096ac2c96b",
	'whole_part',
	'',
	'',
	'whole_part',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("8e4ec028-712a-4e22-8255-3889d0a44315",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_BATTR
	VALUES ("8e4ec028-712a-4e22-8255-3889d0a44315",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ATTR
	VALUES ("8e4ec028-712a-4e22-8255-3889d0a44315",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"f7416f58-f301-4f8c-a2e3-fc94d1c11fc1",
	'fractional_part',
	'',
	'',
	'fractional_part',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("87a4fe75-8c7d-4405-a3c7-6481ccffe21f",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_BATTR
	VALUES ("87a4fe75-8c7d-4405-a3c7-6481ccffe21f",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ATTR
	VALUES ("87a4fe75-8c7d-4405-a3c7-6481ccffe21f",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"8e4ec028-712a-4e22-8255-3889d0a44315",
	'sign',
	'',
	'',
	'sign',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_OIDA
	VALUES ("a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	0,
	'calc_id');
INSERT INTO O_ID
	VALUES (1,
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO O_ID
	VALUES (2,
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO SM_ISM
	VALUES ("9a93de90-163d-40be-b24e-63f4501f90cb",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303");
INSERT INTO SM_SM
	VALUES ("9a93de90-163d-40be-b24e-63f4501f90cb",
	'',
	0);
INSERT INTO SM_MOORE
	VALUES ("9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_EVTDI
	VALUES ("87beca53-a13f-47f4-864a-654bcf259d00",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	'key',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVTDI
	VALUES ("d26e32d7-aff3-4e66-9f4a-c34a4c691650",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	'key',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVTDI
	VALUES ("066f51c9-e98c-4d79-910f-a304e079f3de",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	'key',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVTDI
	VALUES ("327d531a-b9d1-42d1-b2e3-ab55763df34d",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	'key',
	'',
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVTDI
	VALUES ("17af057d-7dc7-4795-9e13-c7f1275b39e6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	'message',
	'',
	"ba5eda7a-def5-0000-0000-000000000004",
	'',
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_LEVT
	VALUES ("3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	1,
	'keypress',
	0,
	'',
	'DISP1',
	'');
INSERT INTO SM_LEVT
	VALUES ("cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	3,
	'point',
	0,
	'',
	'DISP3',
	'');
INSERT INTO SM_LEVT
	VALUES ("82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	4,
	'operator',
	0,
	'',
	'DISP4',
	'');
INSERT INTO SM_LEVT
	VALUES ("fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	5,
	'digit',
	0,
	'',
	'DISP5',
	'');
INSERT INTO SM_LEVT
	VALUES ("59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	6,
	'error',
	0,
	'',
	'DISP6',
	'');
INSERT INTO SM_LEVT
	VALUES ("7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEVT
	VALUES ("7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_EVT
	VALUES ("7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	7,
	'reset',
	0,
	'',
	'DISP7',
	'');
INSERT INTO SM_STATE
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'displaying_memory_value',
	1,
	0);
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("8b197121-8866-4639-a4e5-5570651031bf",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461");
INSERT INTO SM_AH
	VALUES ("8b197121-8866-4639-a4e5-5570651031bf",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("8b197121-8866-4639-a4e5-5570651031bf",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'begin
  // reset the display
  this.clearDisplay();
  // display the value in memory
  disp~>result( (this->R3.Memory).value );
end state;',
	'',
	1);
INSERT INTO SM_STATE
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'toggling_sign',
	2,
	0);
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("ef787d38-6da1-4184-897a-59d6acec2b78",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("222f5ce1-b23e-412b-9849-e48e3240a21e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78");
INSERT INTO SM_AH
	VALUES ("222f5ce1-b23e-412b-9849-e48e3240a21e",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("222f5ce1-b23e-412b-9849-e48e3240a21e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'begin
  // -
  if ( 11 = key ) then
    // toggle the sign
    this.sign := -1;
  // .
  elsif ( 15 = key ) then
    generate Display.point( key ) to this;
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    generate Display.digit( key ) to this;
  else
    generate Display.error( "Invalid key press" ) to this;
  end if;
end state;',
	'',
	1);
INSERT INTO SM_STATE
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'receiving_whole_part',
	3,
	0);
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("3ae55861-10fb-4067-a2ec-8b5657daac43",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602");
INSERT INTO SM_AH
	VALUES ("3ae55861-10fb-4067-a2ec-8b5657daac43",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("3ae55861-10fb-4067-a2ec-8b5657daac43",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'mem : instance of Memory;
op : instance of Operation;
begin
  // .
  if ( 15 = key ) then
    generate Display.point( key ) to this;
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    // add to the whole part
    if ( 0 = this.whole_part ) then
      this.whole_part := integer(key);
    else
      this.whole_part := key + this.whole_part * 10;
    end if;
    this.value := this.sign * ( real(this.whole_part) + this.fractional_part );
    // display the new value
    disp~>result( this.value );
  // +, -, *, /, =
  elsif ( 10 <= key and key <= 14) then
    generate Display.operator( key ) to this;
  else
    generate Display.error( "invalid key press" ) to this;
  end if;
end state;',
	'',
	1);
INSERT INTO SM_STATE
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'receiving_fractional_part',
	4,
	0);
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("425b3b39-5f7b-430e-abb1-a1df487803e3",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("e5638f4e-03c4-4252-b825-3dd91889ab2f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3");
INSERT INTO SM_AH
	VALUES ("e5638f4e-03c4-4252-b825-3dd91889ab2f",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("e5638f4e-03c4-4252-b825-3dd91889ab2f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'begin
  // .
  if ( 15 = key ) then
    // ignore
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    // add to the fractional part
    this.fractional_part := this.fractional_part + ( key / 10.0 );
    this.value := this.sign * ( real(this.whole_part) + this.fractional_part );
    // display the new value
    disp~>result( this.value );
  // +, -, *, /, =
  elsif ( 10 <= key and key <= 14 ) then
    generate Display.operator( key ) to this;
  else
    generate Display.error( "invalid key press" ) to this;
  end if;
end state;',
	'',
	1);
INSERT INTO SM_STATE
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'evaluating',
	5,
	0);
INSERT INTO SM_CH
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("d3d69e75-cd9a-4642-afcd-878d0d93a553",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5fc9e3b0-f757-42d6-956a-26c574d68e32");
INSERT INTO SM_AH
	VALUES ("d3d69e75-cd9a-4642-afcd-878d0d93a553",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("d3d69e75-cd9a-4642-afcd-878d0d93a553",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'begin
  // evaluate with the last saved operation
  (this->R3.Operation).op := (this->R1.Calculator).current_op;
  (this->R3.Operation).evaluate();
  // store the operation for the next evaluation
  (this->R1.Calculator).current_op := key;
  // reset the display
  generate Display.reset() to this;
end state;',
	'',
	1);
INSERT INTO SM_STATE
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'displaying_error',
	6,
	0);
INSERT INTO SM_CH
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_CH
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_SEME
	VALUES ("e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_MOAH
	VALUES ("1bdf6312-4b59-470a-9207-6554d485df8c",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6");
INSERT INTO SM_AH
	VALUES ("1bdf6312-4b59-470a-9207-6554d485df8c",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("1bdf6312-4b59-470a-9207-6554d485df8c",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'begin
  // send the error to the display
  disp~>error( message );
end state;',
	'',
	1);
INSERT INTO SM_NSTXN
	VALUES ("ee0eafe6-9d14-45df-bb35-29985ed616ec",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("3fd97e4b-4527-49bd-b82b-42a66ba87456",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ee0eafe6-9d14-45df-bb35-29985ed616ec");
INSERT INTO SM_AH
	VALUES ("3fd97e4b-4527-49bd-b82b-42a66ba87456",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("3fd97e4b-4527-49bd-b82b-42a66ba87456",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("ee0eafe6-9d14-45df-bb35-29985ed616ec",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("4d285eec-bdb4-45d3-bbb5-75af9d586240",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"cefe4397-352f-4f21-98f4-6648a4cdeb1b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("b99b5583-7e94-410c-ac09-f1229a0fa72c",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"4d285eec-bdb4-45d3-bbb5-75af9d586240");
INSERT INTO SM_AH
	VALUES ("b99b5583-7e94-410c-ac09-f1229a0fa72c",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("b99b5583-7e94-410c-ac09-f1229a0fa72c",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("4d285eec-bdb4-45d3-bbb5-75af9d586240",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("9162237f-766b-4a0f-84d1-60ef78df4386",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"fe2ea4d7-99c7-47ae-8bfd-6fce503a49e8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("b27b4e2c-06a3-4972-af62-bafdb7483461",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"9162237f-766b-4a0f-84d1-60ef78df4386");
INSERT INTO SM_AH
	VALUES ("b27b4e2c-06a3-4972-af62-bafdb7483461",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("b27b4e2c-06a3-4972-af62-bafdb7483461",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("9162237f-766b-4a0f-84d1-60ef78df4386",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("a2520fb0-33f0-4f6d-a552-fff07bdb0181",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a00af6d0-2aec-4583-b417-d75a503a8ff4",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"a2520fb0-33f0-4f6d-a552-fff07bdb0181");
INSERT INTO SM_AH
	VALUES ("a00af6d0-2aec-4583-b417-d75a503a8ff4",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("a00af6d0-2aec-4583-b417-d75a503a8ff4",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("a2520fb0-33f0-4f6d-a552-fff07bdb0181",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("089ecc85-e532-4a83-94d3-f3d3bcab7983",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("0a84c05e-a7e6-41c5-bb78-f6485a7a5538",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"089ecc85-e532-4a83-94d3-f3d3bcab7983");
INSERT INTO SM_AH
	VALUES ("0a84c05e-a7e6-41c5-bb78-f6485a7a5538",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("0a84c05e-a7e6-41c5-bb78-f6485a7a5538",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("089ecc85-e532-4a83-94d3-f3d3bcab7983",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("c7464dcb-50bd-43a2-a759-696c7903d056",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("fe9b59c4-48cd-4429-ab9d-938db4ae5f97",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"c7464dcb-50bd-43a2-a759-696c7903d056");
INSERT INTO SM_AH
	VALUES ("fe9b59c4-48cd-4429-ab9d-938db4ae5f97",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("fe9b59c4-48cd-4429-ab9d-938db4ae5f97",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("c7464dcb-50bd-43a2-a759-696c7903d056",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("2766dbf4-c155-44e8-bfc6-197277b73f65",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"3f85110b-e5b1-4fbc-90e7-8286f7e87c9e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("a74e5f42-4dc1-467f-9351-c82163b98ade",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"2766dbf4-c155-44e8-bfc6-197277b73f65");
INSERT INTO SM_AH
	VALUES ("a74e5f42-4dc1-467f-9351-c82163b98ade",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("a74e5f42-4dc1-467f-9351-c82163b98ade",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("2766dbf4-c155-44e8-bfc6-197277b73f65",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("c2ef6177-2e8b-41cd-88af-0ea8d7529968",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("8909db84-06ad-42ca-8700-3a3e8b3e91ac",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"c2ef6177-2e8b-41cd-88af-0ea8d7529968");
INSERT INTO SM_AH
	VALUES ("8909db84-06ad-42ca-8700-3a3e8b3e91ac",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("8909db84-06ad-42ca-8700-3a3e8b3e91ac",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("c2ef6177-2e8b-41cd-88af-0ea8d7529968",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("ea273453-4e04-4117-b233-effecd7d67e2",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("e584100b-c8f7-4ede-bcd0-97e24aa98c95",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ea273453-4e04-4117-b233-effecd7d67e2");
INSERT INTO SM_AH
	VALUES ("e584100b-c8f7-4ede-bcd0-97e24aa98c95",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("e584100b-c8f7-4ede-bcd0-97e24aa98c95",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("ea273453-4e04-4117-b233-effecd7d67e2",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("9389bd0f-2e61-45a0-9dd2-37ffed17a9af",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"82abf203-c8bf-4bd5-b37d-11b08fc5c00f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("d0aec4ea-a50e-4f9f-99c3-b3e7922e1ada",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"9389bd0f-2e61-45a0-9dd2-37ffed17a9af");
INSERT INTO SM_AH
	VALUES ("d0aec4ea-a50e-4f9f-99c3-b3e7922e1ada",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("d0aec4ea-a50e-4f9f-99c3-b3e7922e1ada",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("9389bd0f-2e61-45a0-9dd2-37ffed17a9af",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("45e403fd-95a6-4074-a25a-01191d37d575",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("32a17371-350c-4edd-a8b5-8e7c988b147e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"45e403fd-95a6-4074-a25a-01191d37d575");
INSERT INTO SM_AH
	VALUES ("32a17371-350c-4edd-a8b5-8e7c988b147e",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("32a17371-350c-4edd-a8b5-8e7c988b147e",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("45e403fd-95a6-4074-a25a-01191d37d575",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("8adaec8c-190b-4ec4-92aa-9cf105915ada",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("5ecd36dc-95d6-4f2f-b986-8e7585549752",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"8adaec8c-190b-4ec4-92aa-9cf105915ada");
INSERT INTO SM_AH
	VALUES ("5ecd36dc-95d6-4f2f-b986-8e7585549752",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("5ecd36dc-95d6-4f2f-b986-8e7585549752",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("8adaec8c-190b-4ec4-92aa-9cf105915ada",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("3b3f9f24-9a2c-414a-a685-74275369d012",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("fe13841a-8aec-4477-961b-7192fd216744",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"3b3f9f24-9a2c-414a-a685-74275369d012");
INSERT INTO SM_AH
	VALUES ("fe13841a-8aec-4477-961b-7192fd216744",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("fe13841a-8aec-4477-961b-7192fd216744",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("3b3f9f24-9a2c-414a-a685-74275369d012",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("a32953d7-ccde-4a64-9bdc-ee63e38a5a8d",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"ef787d38-6da1-4184-897a-59d6acec2b78",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("f22733ab-6301-4763-8094-3a84599d1a33",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"a32953d7-ccde-4a64-9bdc-ee63e38a5a8d");
INSERT INTO SM_AH
	VALUES ("f22733ab-6301-4763-8094-3a84599d1a33",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("f22733ab-6301-4763-8094-3a84599d1a33",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("a32953d7-ccde-4a64-9bdc-ee63e38a5a8d",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("1fa18d25-b83f-4028-abf7-6a750a5cd04a",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"425b3b39-5f7b-430e-abb1-a1df487803e3",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("fcf304d0-e658-4090-88bf-d7c55837a4f5",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"1fa18d25-b83f-4028-abf7-6a750a5cd04a");
INSERT INTO SM_AH
	VALUES ("fcf304d0-e658-4090-88bf-d7c55837a4f5",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("fcf304d0-e658-4090-88bf-d7c55837a4f5",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("1fa18d25-b83f-4028-abf7-6a750a5cd04a",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("efbd68f6-b5ce-4409-a2cd-04e73f04face",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"dadf22d3-1c0a-4ddc-b7b4-a1758f498602",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("3e0be207-24dd-4c2a-84e6-4f09f45c3336",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"efbd68f6-b5ce-4409-a2cd-04e73f04face");
INSERT INTO SM_AH
	VALUES ("3e0be207-24dd-4c2a-84e6-4f09f45c3336",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("3e0be207-24dd-4c2a-84e6-4f09f45c3336",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("efbd68f6-b5ce-4409-a2cd-04e73f04face",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("5caca93e-bf8b-4b5f-94e3-c14ffb3eaca4",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5fc9e3b0-f757-42d6-956a-26c574d68e32",
	"59307093-6685-4e1e-84fb-832b9ba7dae6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("8cc13047-aacd-45d0-8133-343d1485566f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"5caca93e-bf8b-4b5f-94e3-c14ffb3eaca4");
INSERT INTO SM_AH
	VALUES ("8cc13047-aacd-45d0-8133-343d1485566f",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("8cc13047-aacd-45d0-8133-343d1485566f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("5caca93e-bf8b-4b5f-94e3-c14ffb3eaca4",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_NSTXN
	VALUES ("045c6e43-e838-49d3-b381-4c580dab278f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"e5358b0c-3ac9-4ccd-967e-fef2d7125db6",
	"7aacc362-c616-4296-978c-29b30a44c2df",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SM_TAH
	VALUES ("7d25e463-493e-4713-aeeb-de9262d2e051",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"045c6e43-e838-49d3-b381-4c580dab278f");
INSERT INTO SM_AH
	VALUES ("7d25e463-493e-4713-aeeb-de9262d2e051",
	"9a93de90-163d-40be-b24e-63f4501f90cb");
INSERT INTO SM_ACT
	VALUES ("7d25e463-493e-4713-aeeb-de9262d2e051",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	3,
	'',
	'',
	5);
INSERT INTO SM_TXN
	VALUES ("045c6e43-e838-49d3-b381-4c580dab278f",
	"9a93de90-163d-40be-b24e-63f4501f90cb",
	"b6a1ad3e-bc3a-496b-a7a2-09a86e6bd461",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	'Memory',
	3,
	'MEM',
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("68d717f4-9c19-4bd1-92ff-a2b36c6f1bab",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	'store',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'begin
  // store the new value
  this.value := value;
end service;',
	3,
	'',
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO O_TPARM
	VALUES ("a39e0b9f-f90a-414d-8e63-cf363c9b754e",
	"68d717f4-9c19-4bd1-92ff-a2b36c6f1bab",
	'value',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO O_TFR
	VALUES ("d5ffec6e-6f20-49f6-a93c-b4b06b9fa95d",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	'reset',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'begin
  // reset the memory to empty
  this.value := 0;
end service;',
	3,
	'',
	"68d717f4-9c19-4bd1-92ff-a2b36c6f1bab",
	1);
INSERT INTO O_REF
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	0,
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"2d982edd-e40f-4d8e-8e4b-5f5be5613ab4",
	"aa4081d2-440d-4a3d-98c5-64fd05d72c5b",
	"b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"6c179287-5815-4901-8583-3eb9c674c312",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'Calculator',
	'calc_id',
	'R2.''stores_value_for''');
INSERT INTO O_RATTR
	VALUES ("b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	1,
	'calc_id');
INSERT INTO O_ATTR
	VALUES ("b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	"00000000-0000-0000-0000-000000000000",
	'calc_id',
	'',
	'',
	'calc_id',
	0,
	"ba5eda7a-def5-0000-0000-000000000007",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("4b3c8ec2-45c6-479a-ab41-c130e3c3014b",
	"999b9e11-a0cd-48f8-af76-70428d6909d4");
INSERT INTO O_BATTR
	VALUES ("4b3c8ec2-45c6-479a-ab41-c130e3c3014b",
	"999b9e11-a0cd-48f8-af76-70428d6909d4");
INSERT INTO O_ATTR
	VALUES ("4b3c8ec2-45c6-479a-ab41-c130e3c3014b",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	"b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	'value',
	'',
	'',
	'value',
	0,
	"ba5eda7a-def5-0000-0000-000000000003",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"999b9e11-a0cd-48f8-af76-70428d6909d4");
INSERT INTO O_OIDA
	VALUES ("b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	0,
	'calc_id');
INSERT INTO O_ID
	VALUES (1,
	"999b9e11-a0cd-48f8-af76-70428d6909d4");
INSERT INTO O_ID
	VALUES (2,
	"999b9e11-a0cd-48f8-af76-70428d6909d4");
INSERT INTO PE_PE
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	'Operation',
	4,
	'OP',
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("7090bcb4-2219-4cd3-88ee-e3e7c62a07fc",
	"a50dceb5-e70a-4161-8548-719d14f75a98",
	'evaluate',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'mem_val : real;
disp_val : real;
result_val : real;
begin
  // get memory value
  mem_val := (this->R3.Memory).value;
  // get display value
  disp_val := (this->R3.Display).value;
  // evaluate the expression
  // +
  if ( 10 = this.op ) then
    result_val := mem_val + disp_val;
  // -
  elsif ( 11 = this.op ) then
    result_val := mem_val - disp_val;
  // *
  elsif ( 12 = this.op ) then
    result_val := mem_val * disp_val;
  // /
  elsif ( 13 = this.op ) then
    result_val := mem_val / disp_val;
  // no-op
  elsif ( -1 = this.op ) then
    result_val := disp_val;
  else
    // unknown operation
    generate Display.error( "Unknown operation" ) to this->R3.Display;
  end if;
  // store the value
  (this->R3.Memory).store( result_val );
end service;',
	3,
	'',
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO O_REF
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	0,
	"b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"21894d1f-1028-499c-b9cb-91035695bc40",
	"f5419a2b-7f03-477f-bf08-afba60a1b197",
	"2a6658fb-ab87-494f-9a57-48c86183e488",
	"4ad28b5b-3217-4c8f-bbb6-f6af27572cbf",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'Memory',
	'calc_id',
	'R3.''combines_with''');
INSERT INTO O_REF
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	0,
	"a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"21894d1f-1028-499c-b9cb-91035695bc40",
	"1a78ba08-4382-48cf-ae13-0e643dcc022c",
	"2a6658fb-ab87-494f-9a57-48c86183e488",
	"e5c3ffa7-4b88-46f1-aa22-946e7cf3a209",
	"4ad28b5b-3217-4c8f-bbb6-f6af27572cbf",
	0,
	'',
	'Display',
	'calc_id',
	'R3.''combines_with''');
INSERT INTO O_RATTR
	VALUES ("2a6658fb-ab87-494f-9a57-48c86183e488",
	"a50dceb5-e70a-4161-8548-719d14f75a98",
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	1,
	'calc_id');
INSERT INTO O_ATTR
	VALUES ("2a6658fb-ab87-494f-9a57-48c86183e488",
	"a50dceb5-e70a-4161-8548-719d14f75a98",
	"00000000-0000-0000-0000-000000000000",
	'calc_id',
	'

',
	'',
	'calc_id',
	0,
	"ba5eda7a-def5-0000-0000-000000000007",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("b8da71a0-2fbe-4c3c-908c-9d581da0db33",
	"a50dceb5-e70a-4161-8548-719d14f75a98");
INSERT INTO O_BATTR
	VALUES ("b8da71a0-2fbe-4c3c-908c-9d581da0db33",
	"a50dceb5-e70a-4161-8548-719d14f75a98");
INSERT INTO O_ATTR
	VALUES ("b8da71a0-2fbe-4c3c-908c-9d581da0db33",
	"a50dceb5-e70a-4161-8548-719d14f75a98",
	"2a6658fb-ab87-494f-9a57-48c86183e488",
	'op',
	'',
	'',
	'op',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"a50dceb5-e70a-4161-8548-719d14f75a98");
INSERT INTO O_OIDA
	VALUES ("2a6658fb-ab87-494f-9a57-48c86183e488",
	"a50dceb5-e70a-4161-8548-719d14f75a98",
	0,
	'calc_id');
INSERT INTO O_ID
	VALUES (1,
	"a50dceb5-e70a-4161-8548-719d14f75a98");
INSERT INTO O_ID
	VALUES (2,
	"a50dceb5-e70a-4161-8548-719d14f75a98");
INSERT INTO PE_PE
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	4);
INSERT INTO O_OBJ
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	'Calculator',
	1,
	'CALC',
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO O_TFR
	VALUES ("3450fcdc-5bbb-4e2d-8fbc-5dd14bed70bf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	'init',
	'',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'disp : instance of Display;
mem : instance of Memory;
op : instance of Operation;
begin
  this.current_op := -1;
  disp := create Display( calc_id => this.calc_id, value => 0, whole_part => 0, fractional_part => 0, sign => 1, Current_State => displaying_memory_value );
  mem := create Memory( calc_id => this.calc_id, value => 0 );
  op := create Operation( calc_id => this.calc_id, op => -1 );
  link this R1 disp;
  link this R2 mem;
  link mem R3 disp using op;
end service;',
	3,
	'',
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO O_NBATTR
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_BATTR
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_ATTR
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"00000000-0000-0000-0000-000000000000",
	'calc_id',
	'',
	'',
	'calc_id',
	0,
	"55aab7dc-dec7-4d33-ae34-588fdf13b5b3",
	'',
	'');
INSERT INTO O_NBATTR
	VALUES ("6b94d3d2-1fa9-4f59-b757-139c85cf6981",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_BATTR
	VALUES ("6b94d3d2-1fa9-4f59-b757-139c85cf6981",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_ATTR
	VALUES ("6b94d3d2-1fa9-4f59-b757-139c85cf6981",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	'current_op',
	'',
	'',
	'current_op',
	0,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_OIDA
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	0,
	'calc_id');
INSERT INTO O_ID
	VALUES (1,
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO O_ID
	VALUES (2,
	"49928fbd-ca08-44fc-a80a-7cb7a05365df");
INSERT INTO PE_PE
	VALUES ("9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	1,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("9c7cacdf-9832-4703-ad1d-84c6fe5e54a0");
INSERT INTO R_PART
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"7df6aadd-9183-4695-82c6-070a9850a593",
	0,
	0,
	'displays_values_for');
INSERT INTO O_RTIDA
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	0,
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"7df6aadd-9183-4695-82c6-070a9850a593");
INSERT INTO R_RTO
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"7df6aadd-9183-4695-82c6-070a9850a593",
	0);
INSERT INTO R_OIR
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"7df6aadd-9183-4695-82c6-070a9850a593",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_FORM
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"a73df127-f726-4832-b56a-497660ba0671",
	0,
	0,
	'prints_answer_on');
INSERT INTO R_RGO
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"a73df127-f726-4832-b56a-497660ba0671");
INSERT INTO R_OIR
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"9c7cacdf-9832-4703-ad1d-84c6fe5e54a0",
	"a73df127-f726-4832-b56a-497660ba0671",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	2,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_SIMP
	VALUES ("f05c9bcc-dae1-4fc3-b72d-4a3b46943da4");
INSERT INTO R_PART
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"aa4081d2-440d-4a3d-98c5-64fd05d72c5b",
	0,
	0,
	'stores_value_for');
INSERT INTO O_RTIDA
	VALUES ("2c94da8d-ad22-4e86-be07-7ce1cec6dcaf",
	"49928fbd-ca08-44fc-a80a-7cb7a05365df",
	0,
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"aa4081d2-440d-4a3d-98c5-64fd05d72c5b");
INSERT INTO R_RTO
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"aa4081d2-440d-4a3d-98c5-64fd05d72c5b",
	0);
INSERT INTO R_OIR
	VALUES ("49928fbd-ca08-44fc-a80a-7cb7a05365df",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"aa4081d2-440d-4a3d-98c5-64fd05d72c5b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_FORM
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"2d982edd-e40f-4d8e-8e4b-5f5be5613ab4",
	0,
	0,
	'stores_value_for_calculation_in');
INSERT INTO R_RGO
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"2d982edd-e40f-4d8e-8e4b-5f5be5613ab4");
INSERT INTO R_OIR
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"f05c9bcc-dae1-4fc3-b72d-4a3b46943da4",
	"2d982edd-e40f-4d8e-8e4b-5f5be5613ab4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	1,
	"67a7dbce-184c-4a7f-b327-d7604e320f07",
	"00000000-0000-0000-0000-000000000000",
	9);
INSERT INTO R_REL
	VALUES ("d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	3,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_ASSOC
	VALUES ("d7d9ee75-2b46-45cf-a285-2c75881ef49e");
INSERT INTO R_AONE
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"f5419a2b-7f03-477f-bf08-afba60a1b197",
	0,
	0,
	'combines_with');
INSERT INTO O_RTIDA
	VALUES ("b438b0be-5f5e-4a4f-9cf7-796ad6f8e935",
	"999b9e11-a0cd-48f8-af76-70428d6909d4",
	0,
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"f5419a2b-7f03-477f-bf08-afba60a1b197");
INSERT INTO R_RTO
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"f5419a2b-7f03-477f-bf08-afba60a1b197",
	0);
INSERT INTO R_OIR
	VALUES ("999b9e11-a0cd-48f8-af76-70428d6909d4",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"f5419a2b-7f03-477f-bf08-afba60a1b197",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_AOTH
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"1a78ba08-4382-48cf-ae13-0e643dcc022c",
	0,
	0,
	'combines_with');
INSERT INTO O_RTIDA
	VALUES ("a7b2578d-2972-452e-9b53-5ae0ef082fdc",
	"9a3d25b6-a13a-4380-b660-67bc28b0c303",
	0,
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"1a78ba08-4382-48cf-ae13-0e643dcc022c");
INSERT INTO R_RTO
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"1a78ba08-4382-48cf-ae13-0e643dcc022c",
	0);
INSERT INTO R_OIR
	VALUES ("9a3d25b6-a13a-4380-b660-67bc28b0c303",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"1a78ba08-4382-48cf-ae13-0e643dcc022c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO R_ASSR
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"21894d1f-1028-499c-b9cb-91035695bc40",
	0);
INSERT INTO R_RGO
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"21894d1f-1028-499c-b9cb-91035695bc40");
INSERT INTO R_OIR
	VALUES ("a50dceb5-e70a-4161-8548-719d14f75a98",
	"d7d9ee75-2b46-45cf-a285-2c75881ef49e",
	"21894d1f-1028-499c-b9cb-91035695bc40",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO EP_PKG
	VALUES ("eee87da5-e73d-4578-b364-65420651d7fb",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	"a93a74b1-e5fb-4904-9380-a73e9e1ef78e",
	'types',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	"00000000-0000-0000-0000-000000000000",
	'MASLtype',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("9564dd81-5b1d-4fcb-92ee-e03bbb145569",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("9564dd81-5b1d-4fcb-92ee-e03bbb145569",
	"00000000-0000-0000-0000-000000000000",
	'instance',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("9564dd81-5b1d-4fcb-92ee-e03bbb145569",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("dd2f15b2-26b6-4852-9294-ee5c924c06f1",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("dd2f15b2-26b6-4852-9294-ee5c924c06f1",
	"00000000-0000-0000-0000-000000000000",
	'structure',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("dd2f15b2-26b6-4852-9294-ee5c924c06f1",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("f22d8821-5811-4e43-90dc-efdf6ad68e8b",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("f22d8821-5811-4e43-90dc-efdf6ad68e8b",
	"00000000-0000-0000-0000-000000000000",
	'enum',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("f22d8821-5811-4e43-90dc-efdf6ad68e8b",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("db7272ec-75f2-4cca-b262-c0501008be78",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("db7272ec-75f2-4cca-b262-c0501008be78",
	"00000000-0000-0000-0000-000000000000",
	'device',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("db7272ec-75f2-4cca-b262-c0501008be78",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("27c4cbd8-e7d4-4316-94b3-8089c5b38895",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("27c4cbd8-e7d4-4316-94b3-8089c5b38895",
	"00000000-0000-0000-0000-000000000000",
	'event',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("27c4cbd8-e7d4-4316-94b3-8089c5b38895",
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("63d53794-c26f-4411-9bb3-443e0dc40046",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("63d53794-c26f-4411-9bb3-443e0dc40046",
	"00000000-0000-0000-0000-000000000000",
	'timer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("63d53794-c26f-4411-9bb3-443e0dc40046",
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("56fb5e17-520d-4f3e-b156-8b4f2cceee6b",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("56fb5e17-520d-4f3e-b156-8b4f2cceee6b",
	"00000000-0000-0000-0000-000000000000",
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("56fb5e17-520d-4f3e-b156-8b4f2cceee6b",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("f52094e0-31fe-434d-b23a-9f0cae2eaf68",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("f52094e0-31fe-434d-b23a-9f0cae2eaf68",
	"00000000-0000-0000-0000-000000000000",
	'duration',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("f52094e0-31fe-434d-b23a-9f0cae2eaf68",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("dc9f7cc0-fe28-440a-aa1c-c70cd83db0a0",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("dc9f7cc0-fe28-440a-aa1c-c70cd83db0a0",
	"00000000-0000-0000-0000-000000000000",
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("dc9f7cc0-fe28-440a-aa1c-c70cd83db0a0",
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("7e8e39ae-7375-4042-a3d6-27fbc73440da",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("7e8e39ae-7375-4042-a3d6-27fbc73440da",
	"00000000-0000-0000-0000-000000000000",
	'wstring',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("7e8e39ae-7375-4042-a3d6-27fbc73440da",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("796b60c9-baa8-43fc-a2ad-fd773137924c",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("796b60c9-baa8-43fc-a2ad-fd773137924c",
	"00000000-0000-0000-0000-000000000000",
	'string',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("796b60c9-baa8-43fc-a2ad-fd773137924c",
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("cbcedf7b-eefa-47e1-8b98-72bb82f46b16",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("cbcedf7b-eefa-47e1-8b98-72bb82f46b16",
	"00000000-0000-0000-0000-000000000000",
	'real',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("cbcedf7b-eefa-47e1-8b98-72bb82f46b16",
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("8afc3081-57de-4579-9785-080f62c4b85e",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("8afc3081-57de-4579-9785-080f62c4b85e",
	"00000000-0000-0000-0000-000000000000",
	'long_integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("8afc3081-57de-4579-9785-080f62c4b85e",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("9ec32fa9-d53f-48f9-869b-97299cdb349f",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("9ec32fa9-d53f-48f9-869b-97299cdb349f",
	"00000000-0000-0000-0000-000000000000",
	'byte',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("9ec32fa9-d53f-48f9-869b-97299cdb349f",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("50552e63-0958-4f53-a0a8-b05caad8e12e",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("50552e63-0958-4f53-a0a8-b05caad8e12e",
	"00000000-0000-0000-0000-000000000000",
	'wcharacter',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("50552e63-0958-4f53-a0a8-b05caad8e12e",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("d13f1fe6-05ed-4769-bdbd-1d723d1baf56",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("d13f1fe6-05ed-4769-bdbd-1d723d1baf56",
	"00000000-0000-0000-0000-000000000000",
	'character',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("d13f1fe6-05ed-4769-bdbd-1d723d1baf56",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("61734297-4d13-470d-8e1e-1ace979506c6",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("61734297-4d13-470d-8e1e-1ace979506c6",
	"00000000-0000-0000-0000-000000000000",
	'integer',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("61734297-4d13-470d-8e1e-1ace979506c6",
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("24014d56-9aa8-4782-837c-4128e2c47c61",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("24014d56-9aa8-4782-837c-4128e2c47c61",
	"00000000-0000-0000-0000-000000000000",
	'boolean',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("24014d56-9aa8-4782-837c-4128e2c47c61",
	"ba5eda7a-def5-0000-0000-000000000001",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("38ebaa2a-06b4-4ad6-9ed2-6cebd422a602",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("38ebaa2a-06b4-4ad6-9ed2-6cebd422a602",
	"00000000-0000-0000-0000-000000000000",
	'void',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("38ebaa2a-06b4-4ad6-9ed2-6cebd422a602",
	"ba5eda7a-def5-0000-0000-000000000000",
	0,
	'');
INSERT INTO PE_PE
	VALUES ("55aab7dc-dec7-4d33-ae34-588fdf13b5b3",
	1,
	"eee87da5-e73d-4578-b364-65420651d7fb",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("55aab7dc-dec7-4d33-ae34-588fdf13b5b3",
	"00000000-0000-0000-0000-000000000000",
	'MASLunique',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("55aab7dc-dec7-4d33-ae34-588fdf13b5b3",
	"2096ffa7-585f-4f2b-8f1f-f900ec20be19",
	0,
	'');
