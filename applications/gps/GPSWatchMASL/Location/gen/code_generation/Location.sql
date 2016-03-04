-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
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
	VALUES ("1e19e908-6d63-4a2c-ba87-91df99e0b8f1",
	"d3e85166-d4ac-4b90-b854-d05bd73a3f1b");
INSERT INTO ACT_ACT
	VALUES ("1e19e908-6d63-4a2c-ba87-91df99e0b8f1",
	'interface operation',
	0,
	"d05f4fee-6dba-4bcb-904e-3be1a9d152a1",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::getLocation',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d05f4fee-6dba-4bcb-904e-3be1a9d152a1",
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
	"1e19e908-6d63-4a2c-ba87-91df99e0b8f1",
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
	VALUES ("521588cd-27bb-4f6d-b78e-fbc392af37dd",
	"542cae30-1dd9-48c0-98af-314b9a0a770b");
INSERT INTO ACT_ACT
	VALUES ("521588cd-27bb-4f6d-b78e-fbc392af37dd",
	'interface operation',
	0,
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::getDistance',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
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
	"521588cd-27bb-4f6d-b78e-fbc392af37dd",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("63fff333-e83b-4a0b-bda5-c5ef7e4cc827",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	"5a5d0452-d55a-47bc-a993-9c03e24bd2e4",
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES ("63fff333-e83b-4a0b-bda5-c5ef7e4cc827",
	"33a8abea-51b8-4a59-879e-dc00d72a0358",
	"e2636ae8-def1-49b8-97c8-2839a25a00af",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("5a5d0452-d55a-47bc-a993-9c03e24bd2e4",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	"855c4d33-b06c-4cb1-8280-95dca9cc6410",
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES ("5a5d0452-d55a-47bc-a993-9c03e24bd2e4",
	"a780ec24-56df-42ec-9834-4ac8584617ef",
	"055ff2ae-943f-49de-9dc9-b686e8792c85",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("855c4d33-b06c-4cb1-8280-95dca9cc6410",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	"90a29eba-7e9c-4f3d-91cd-74d8c15bfb24",
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES ("855c4d33-b06c-4cb1-8280-95dca9cc6410",
	"f577ce6e-161a-4ea3-8e9f-e0533dfe2f45",
	"7c3774cb-766e-4a29-a10d-d1e6ea3908e3",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("90a29eba-7e9c-4f3d-91cd-74d8c15bfb24",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	"00000000-0000-0000-0000-000000000000",
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES ("90a29eba-7e9c-4f3d-91cd-74d8c15bfb24",
	"1cbb75aa-76e4-4ddc-978c-75e273a09ad4");
INSERT INTO V_VAL
	VALUES ("e2636ae8-def1-49b8-97c8-2839a25a00af",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("e2636ae8-def1-49b8-97c8-2839a25a00af",
	"fe31f746-9f5a-4e30-aff2-3a40d9f7bf79");
INSERT INTO V_VAL
	VALUES ("9748156e-0121-4d4b-bd0f-6de8cfd469a7",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_PVL
	VALUES ("9748156e-0121-4d4b-bd0f-6de8cfd469a7",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"02e02c6b-07cb-4001-8d4c-a9f0e6b4fa42");
INSERT INTO V_VAL
	VALUES ("33a8abea-51b8-4a59-879e-dc00d72a0358",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("33a8abea-51b8-4a59-879e-dc00d72a0358",
	"b8eb03c7-f22c-4ecf-bd9d-b3369d94c909",
	"9748156e-0121-4d4b-bd0f-6de8cfd469a7",
	'-');
INSERT INTO V_VAL
	VALUES ("b8eb03c7-f22c-4ecf-bd9d-b3369d94c909",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_PVL
	VALUES ("b8eb03c7-f22c-4ecf-bd9d-b3369d94c909",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"b33e6942-0da2-4439-a833-f336db25ee48");
INSERT INTO V_VAL
	VALUES ("055ff2ae-943f-49de-9dc9-b686e8792c85",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("055ff2ae-943f-49de-9dc9-b686e8792c85",
	"fb48e134-06bb-4c35-8003-b802290baf75");
INSERT INTO V_VAL
	VALUES ("311f60b3-212a-43d2-aca4-5b3f798f247d",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_PVL
	VALUES ("311f60b3-212a-43d2-aca4-5b3f798f247d",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"8942d77f-c285-45eb-b14c-538fd52d1c2e");
INSERT INTO V_VAL
	VALUES ("a780ec24-56df-42ec-9834-4ac8584617ef",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("a780ec24-56df-42ec-9834-4ac8584617ef",
	"845364a3-9026-43c8-9221-98f745ab5949",
	"311f60b3-212a-43d2-aca4-5b3f798f247d",
	'-');
INSERT INTO V_VAL
	VALUES ("845364a3-9026-43c8-9221-98f745ab5949",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_PVL
	VALUES ("845364a3-9026-43c8-9221-98f745ab5949",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	"a0e5b226-4670-4129-83e4-c4f0c6afb32f");
INSERT INTO V_VAL
	VALUES ("7c3774cb-766e-4a29-a10d-d1e6ea3908e3",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("7c3774cb-766e-4a29-a10d-d1e6ea3908e3",
	"8bb89d7c-0ce1-47b7-aaa6-8f77b2c1cf54");
INSERT INTO V_VAL
	VALUES ("fe42ea42-1d9c-47b2-af1d-999d1327e33f",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("fe42ea42-1d9c-47b2-af1d-999d1327e33f",
	"fe31f746-9f5a-4e30-aff2-3a40d9f7bf79");
INSERT INTO V_VAL
	VALUES ("e6a84728-0afe-47ed-a43e-404e88987af8",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("e6a84728-0afe-47ed-a43e-404e88987af8",
	"86a96c6e-44d8-4d89-acbc-5068e179c8c9",
	"fe42ea42-1d9c-47b2-af1d-999d1327e33f",
	'*');
INSERT INTO V_VAL
	VALUES ("86a96c6e-44d8-4d89-acbc-5068e179c8c9",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("86a96c6e-44d8-4d89-acbc-5068e179c8c9",
	"fe31f746-9f5a-4e30-aff2-3a40d9f7bf79");
INSERT INTO V_VAL
	VALUES ("f577ce6e-161a-4ea3-8e9f-e0533dfe2f45",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("f577ce6e-161a-4ea3-8e9f-e0533dfe2f45",
	"b401d512-05a5-4cad-bfb2-2710ad5f962c",
	"e6a84728-0afe-47ed-a43e-404e88987af8",
	'+');
INSERT INTO V_VAL
	VALUES ("65592fb1-67a3-4cdc-9bf8-f73e6c01cff0",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("65592fb1-67a3-4cdc-9bf8-f73e6c01cff0",
	"fb48e134-06bb-4c35-8003-b802290baf75");
INSERT INTO V_VAL
	VALUES ("b401d512-05a5-4cad-bfb2-2710ad5f962c",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("b401d512-05a5-4cad-bfb2-2710ad5f962c",
	"67c6fe37-ff3f-463e-a2f6-8ee20017cea9",
	"65592fb1-67a3-4cdc-9bf8-f73e6c01cff0",
	'*');
INSERT INTO V_VAL
	VALUES ("67c6fe37-ff3f-463e-a2f6-8ee20017cea9",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("67c6fe37-ff3f-463e-a2f6-8ee20017cea9",
	"fb48e134-06bb-4c35-8003-b802290baf75");
INSERT INTO V_VAL
	VALUES ("ec311829-63a9-40cd-a739-da5bd38e786e",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BRV
	VALUES ("ec311829-63a9-40cd-a739-da5bd38e786e",
	"d9535451-525d-4227-ba92-d27c86a78649",
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES ("863597ec-e312-41fb-97e9-2a4adcea5152",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_TVL
	VALUES ("863597ec-e312-41fb-97e9-2a4adcea5152",
	"8bb89d7c-0ce1-47b7-aaa6-8f77b2c1cf54");
INSERT INTO V_PAR
	VALUES ("863597ec-e312-41fb-97e9-2a4adcea5152",
	"00000000-0000-0000-0000-000000000000",
	"ec311829-63a9-40cd-a739-da5bd38e786e",
	'x',
	"00000000-0000-0000-0000-000000000000",
	7,
	23);
INSERT INTO V_VAL
	VALUES ("183b83fe-526d-453e-bce0-1454681a03cb",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("183b83fe-526d-453e-bce0-1454681a03cb",
	"498424c2-b8b3-4549-b69a-9d2fddc3c4ab",
	"ec311829-63a9-40cd-a739-da5bd38e786e",
	'*');
INSERT INTO V_VAL
	VALUES ("498424c2-b8b3-4549-b69a-9d2fddc3c4ab",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_SCV
	VALUES ("498424c2-b8b3-4549-b69a-9d2fddc3c4ab",
	"8b470401-daf6-4c3f-a65a-15c75f4e3c4d",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("1cbb75aa-76e4-4ddc-978c-75e273a09ad4",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_BIN
	VALUES ("1cbb75aa-76e4-4ddc-978c-75e273a09ad4",
	"f4533699-dd8f-4905-8265-7ac72c5586b3",
	"183b83fe-526d-453e-bce0-1454681a03cb",
	'*');
INSERT INTO V_VAL
	VALUES ("f4533699-dd8f-4905-8265-7ac72c5586b3",
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
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234");
INSERT INTO V_LIN
	VALUES ("f4533699-dd8f-4905-8265-7ac72c5586b3",
	'1000');
INSERT INTO V_VAR
	VALUES ("fe31f746-9f5a-4e30-aff2-3a40d9f7bf79",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	'deltaLat',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("fe31f746-9f5a-4e30-aff2-3a40d9f7bf79",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("fb48e134-06bb-4c35-8003-b802290baf75",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	'deltaLong',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("fb48e134-06bb-4c35-8003-b802290baf75",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_VAR
	VALUES ("8bb89d7c-0ce1-47b7-aaa6-8f77b2c1cf54",
	"f7dff7f6-3bcd-40bb-97ef-b86e6b06e234",
	'sumSquares',
	1,
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_TRN
	VALUES ("8bb89d7c-0ce1-47b7-aaa6-8f77b2c1cf54",
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
	VALUES ("5cabdb8f-2082-413c-a84b-69aa527a5c57",
	"cc39c820-780d-470f-bee7-3597645af293");
INSERT INTO ACT_ACT
	VALUES ("5cabdb8f-2082-413c-a84b-69aa527a5c57",
	'interface operation',
	0,
	"e92e3be4-9daf-4658-814d-d10cecb97077",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e92e3be4-9daf-4658-814d-d10cecb97077",
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
	"5cabdb8f-2082-413c-a84b-69aa527a5c57",
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
	VALUES ("57613f86-6c7b-415a-8f7d-8901aad434d4",
	"ff79e44e-221f-48dc-a50c-fb3247c64321");
INSERT INTO ACT_ACT
	VALUES ("57613f86-6c7b-415a-8f7d-8901aad434d4",
	'interface operation',
	0,
	"2787452e-0e9a-4045-9ba0-a15f8442c8a0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Location::Location::unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("2787452e-0e9a-4045-9ba0-a15f8442c8a0",
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
	"57613f86-6c7b-415a-8f7d-8901aad434d4",
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
	VALUES ("69eaa942-9e67-4e2a-b21b-e9306412ddbd",
	"d9535451-525d-4227-ba92-d27c86a78649");
INSERT INTO ACT_ACT
	VALUES ("69eaa942-9e67-4e2a-b21b-e9306412ddbd",
	'bridge',
	0,
	"789a230f-041d-444c-b080-2821b307cf48",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Math::sqrt',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("789a230f-041d-444c-b080-2821b307cf48",
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
	"69eaa942-9e67-4e2a-b21b-e9306412ddbd",
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
	VALUES ("427951cb-0bfa-42ac-80d7-9f25452791a4",
	"0285858d-e1d1-4dc7-8d17-d97f2ac3106c");
INSERT INTO ACT_ACT
	VALUES ("427951cb-0bfa-42ac-80d7-9f25452791a4",
	'bridge',
	0,
	"5410ea78-7b7b-4d20-b243-df4bc295b9c7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5410ea78-7b7b-4d20-b243-df4bc295b9c7",
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
	"427951cb-0bfa-42ac-80d7-9f25452791a4",
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
	VALUES ("c3e39090-5d04-4278-8935-539333db0316",
	"5072982b-8c43-49b3-a290-5eff68b97094");
INSERT INTO ACT_ACT
	VALUES ("c3e39090-5d04-4278-8935-539333db0316",
	'bridge',
	0,
	"e38eef4e-c610-46a9-89d3-5c36fcdc9fa7",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e38eef4e-c610-46a9-89d3-5c36fcdc9fa7",
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
	"c3e39090-5d04-4278-8935-539333db0316",
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
	VALUES ("31db7ace-cf85-4648-8c0a-5cac7aac8491",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56");
INSERT INTO ACT_ACT
	VALUES ("31db7ace-cf85-4648-8c0a-5cac7aac8491",
	'bridge',
	0,
	"9ab5b065-5462-4bef-b0c9-3c70f4cd5ffa",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9ab5b065-5462-4bef-b0c9-3c70f4cd5ffa",
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
	"31db7ace-cf85-4648-8c0a-5cac7aac8491",
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
	VALUES ("92673518-a99a-47f8-860a-5cb49fa7e148",
	"1f23bfea-5bee-4cc0-bd4a-501e8f2d79e0");
INSERT INTO ACT_ACT
	VALUES ("92673518-a99a-47f8-860a-5cb49fa7e148",
	'bridge',
	0,
	"024f41c3-c8a9-4ac7-8c55-1c09714b21f0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("024f41c3-c8a9-4ac7-8c55-1c09714b21f0",
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
	"92673518-a99a-47f8-860a-5cb49fa7e148",
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
	VALUES ("9e514566-6b55-4f0e-acbc-71029d53b901",
	"777f161b-80a2-46c8-8fe9-f9f056ed2d83");
INSERT INTO ACT_ACT
	VALUES ("9e514566-6b55-4f0e-acbc-71029d53b901",
	'bridge',
	0,
	"e41f2764-d9d1-4d10-94a4-34c5cd69a06c",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e41f2764-d9d1-4d10-94a4-34c5cd69a06c",
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
	"9e514566-6b55-4f0e-acbc-71029d53b901",
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
	VALUES ("17b842ca-7463-471e-9256-3c368e55216c",
	"369729b8-fc8f-4c1c-a052-4f8655356620");
INSERT INTO ACT_ACT
	VALUES ("17b842ca-7463-471e-9256-3c368e55216c",
	'bridge',
	0,
	"51f689e0-92a5-4592-8dbf-9f083f6d3f03",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("51f689e0-92a5-4592-8dbf-9f083f6d3f03",
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
	"17b842ca-7463-471e-9256-3c368e55216c",
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
	VALUES ("08ac4d31-906f-40d0-b947-fabe78a70273",
	"8f3b07d5-6887-46e4-a7c1-d7d527514451");
INSERT INTO ACT_ACT
	VALUES ("08ac4d31-906f-40d0-b947-fabe78a70273",
	'bridge',
	0,
	"be2ac2a5-a48e-43ad-80a1-56ad58081973",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInteger',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("be2ac2a5-a48e-43ad-80a1-56ad58081973",
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
	"08ac4d31-906f-40d0-b947-fabe78a70273",
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
	VALUES ("b2b9bd5a-24d5-44fd-8d6d-4a3346cc8557",
	"95221f6c-de10-4c67-90e5-e798fe63e80d");
INSERT INTO ACT_ACT
	VALUES ("b2b9bd5a-24d5-44fd-8d6d-4a3346cc8557",
	'bridge',
	0,
	"7b5465fb-ca49-445d-8ec5-a574d8cba3b0",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("7b5465fb-ca49-445d-8ec5-a574d8cba3b0",
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
	"b2b9bd5a-24d5-44fd-8d6d-4a3346cc8557",
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
	VALUES ("f5f4eec8-f945-422a-a6cb-7da69174ff9f",
	"c3444eea-942a-42bb-b8b5-0ab6137dbbde");
INSERT INTO ACT_ACT
	VALUES ("f5f4eec8-f945-422a-a6cb-7da69174ff9f",
	'bridge',
	0,
	"ceebc29c-ebcc-4146-81c9-eda994483d79",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::create_date',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ceebc29c-ebcc-4146-81c9-eda994483d79",
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
	"f5f4eec8-f945-422a-a6cb-7da69174ff9f",
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
	VALUES ("bde7796b-8d9a-404a-b07b-39269cd4877c",
	"843583a8-33e3-442b-b01f-a02c8ee5118f");
INSERT INTO ACT_ACT
	VALUES ("bde7796b-8d9a-404a-b07b-39269cd4877c",
	'bridge',
	0,
	"9a668124-4ddd-4938-8e20-8f43f8b58ad3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_second',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9a668124-4ddd-4938-8e20-8f43f8b58ad3",
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
	"bde7796b-8d9a-404a-b07b-39269cd4877c",
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
	VALUES ("43c2bc7d-c24b-4d98-87e0-a4c7a2a5d2ee",
	"d93450b2-3a11-4c34-b3d7-f7aefb6d70de");
INSERT INTO ACT_ACT
	VALUES ("43c2bc7d-c24b-4d98-87e0-a4c7a2a5d2ee",
	'bridge',
	0,
	"51966ee8-ed30-41f6-8bfb-c1142d747f74",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_minute',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("51966ee8-ed30-41f6-8bfb-c1142d747f74",
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
	"43c2bc7d-c24b-4d98-87e0-a4c7a2a5d2ee",
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
	VALUES ("7a00c430-af21-4cab-86b7-c570df4af35d",
	"e0db9e53-bf87-4d36-be73-257397a0d365");
INSERT INTO ACT_ACT
	VALUES ("7a00c430-af21-4cab-86b7-c570df4af35d",
	'bridge',
	0,
	"5014424d-278b-43a9-8a6c-edc02743bfbb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_hour',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5014424d-278b-43a9-8a6c-edc02743bfbb",
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
	"7a00c430-af21-4cab-86b7-c570df4af35d",
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
	VALUES ("4fd06c90-0245-4804-a7e7-fda72a17b302",
	"58cbb23e-3454-48cc-9e74-5646a0d0f278");
INSERT INTO ACT_ACT
	VALUES ("4fd06c90-0245-4804-a7e7-fda72a17b302",
	'bridge',
	0,
	"816112f6-4ffb-4932-8456-e8ed8bf80bd6",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_day',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("816112f6-4ffb-4932-8456-e8ed8bf80bd6",
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
	"4fd06c90-0245-4804-a7e7-fda72a17b302",
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
	VALUES ("1a39d2ff-eae8-440d-a5a0-b3ac8919fea2",
	"6ddf5cc2-e281-450c-b8ed-cfe96dad5dba");
INSERT INTO ACT_ACT
	VALUES ("1a39d2ff-eae8-440d-a5a0-b3ac8919fea2",
	'bridge',
	0,
	"dc46859f-a0d3-4396-bd66-22e9444fe3db",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_month',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("dc46859f-a0d3-4396-bd66-22e9444fe3db",
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
	"1a39d2ff-eae8-440d-a5a0-b3ac8919fea2",
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
	VALUES ("0f7ac1a8-fd1a-477e-bf9c-92f13a4e9ce8",
	"e3925957-565e-4d54-b51e-de756b38436b");
INSERT INTO ACT_ACT
	VALUES ("0f7ac1a8-fd1a-477e-bf9c-92f13a4e9ce8",
	'bridge',
	0,
	"e945be50-014b-4247-8ae5-a61f7c797132",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::get_year',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e945be50-014b-4247-8ae5-a61f7c797132",
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
	"0f7ac1a8-fd1a-477e-bf9c-92f13a4e9ce8",
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
	VALUES ("19b702b7-69b8-4a8e-9ca0-7560f5de9a91",
	"c4b15688-a8b6-4413-a5dc-745884449002");
INSERT INTO ACT_ACT
	VALUES ("19b702b7-69b8-4a8e-9ca0-7560f5de9a91",
	'bridge',
	0,
	"14551f50-8eb8-4448-af3b-4450eebadd78",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::current_clock',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("14551f50-8eb8-4448-af3b-4450eebadd78",
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
	"19b702b7-69b8-4a8e-9ca0-7560f5de9a91",
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
	VALUES ("bb29ca7e-c593-4db0-b2a2-fa3ff2f43c20",
	"46b59376-c853-4d33-846c-27169f3a0095");
INSERT INTO ACT_ACT
	VALUES ("bb29ca7e-c593-4db0-b2a2-fa3ff2f43c20",
	'bridge',
	0,
	"82da2443-dc50-4e74-84ca-8d11a3376c30",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("82da2443-dc50-4e74-84ca-8d11a3376c30",
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
	"bb29ca7e-c593-4db0-b2a2-fa3ff2f43c20",
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
	VALUES ("44ce7d67-14ed-4d7e-b5eb-2d09ccc81df8",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d");
INSERT INTO ACT_ACT
	VALUES ("44ce7d67-14ed-4d7e-b5eb-2d09ccc81df8",
	'bridge',
	0,
	"1ef55fdf-f810-4c59-be80-fcabb2c8ea93",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_start_recurring',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1ef55fdf-f810-4c59-be80-fcabb2c8ea93",
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
	"44ce7d67-14ed-4d7e-b5eb-2d09ccc81df8",
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
	VALUES ("a719bc17-083b-42b8-9743-99cf09a5a08d",
	"d2dcf1f7-3bd3-4723-bb82-f0eb4e6dcaa4");
INSERT INTO ACT_ACT
	VALUES ("a719bc17-083b-42b8-9743-99cf09a5a08d",
	'bridge',
	0,
	"f66287c6-f63f-4ca6-8047-25cbb1087e8a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_remaining_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("f66287c6-f63f-4ca6-8047-25cbb1087e8a",
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
	"a719bc17-083b-42b8-9743-99cf09a5a08d",
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
	VALUES ("d791a768-ff90-45a3-8792-34810e6a7617",
	"f5c2064f-2bf3-483a-8f6f-1592bdb0f621");
INSERT INTO ACT_ACT
	VALUES ("d791a768-ff90-45a3-8792-34810e6a7617",
	'bridge',
	0,
	"5d2b5171-edb2-4166-8486-ca9f7c5f155a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_reset_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("5d2b5171-edb2-4166-8486-ca9f7c5f155a",
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
	"d791a768-ff90-45a3-8792-34810e6a7617",
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
	VALUES ("a6d47a10-f8e2-475c-90e1-c129b51b76bb",
	"50ae1e2b-bb34-42d8-bd2a-ecd0ac9e4817");
INSERT INTO ACT_ACT
	VALUES ("a6d47a10-f8e2-475c-90e1-c129b51b76bb",
	'bridge',
	0,
	"9c3c6a84-7d69-4afa-8c14-1e2062fa5a04",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_add_time',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9c3c6a84-7d69-4afa-8c14-1e2062fa5a04",
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
	"a6d47a10-f8e2-475c-90e1-c129b51b76bb",
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
	VALUES ("ce9a7891-3773-4e14-bb2f-eac5f2316547",
	"922755eb-0a34-4c1e-91bb-5e2173030872");
INSERT INTO ACT_ACT
	VALUES ("ce9a7891-3773-4e14-bb2f-eac5f2316547",
	'bridge',
	0,
	"949d5c13-918f-4545-842c-379bcbc672a5",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Time::timer_cancel',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("949d5c13-918f-4545-842c-379bcbc672a5",
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
	"ce9a7891-3773-4e14-bb2f-eac5f2316547",
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
	VALUES ("8e81ba52-2540-437f-9acf-eb4fd1cda173",
	"74cd30e4-7a10-41f2-a19e-8dea5f160808");
INSERT INTO ACT_ACT
	VALUES ("8e81ba52-2540-437f-9acf-eb4fd1cda173",
	'class operation',
	0,
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::activate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
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
	"8e81ba52-2540-437f-9acf-eb4fd1cda173",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("832914cb-b467-43d3-8678-80cff3655e48",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	"7f096db5-a5b7-4181-a082-4604f9b32d0a",
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES ("832914cb-b467-43d3-8678-80cff3655e48",
	"92e03919-9768-460d-94b1-4471ffac3c5e",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	3,
	34);
INSERT INTO ACT_SMT
	VALUES ("7f096db5-a5b7-4181-a082-4604f9b32d0a",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	"ff3c62a7-9d62-46c5-be96-639c11b2afe7",
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES ("7f096db5-a5b7-4181-a082-4604f9b32d0a",
	"ffefbd02-6817-428e-b5b5-cf477ded753c",
	"07c6a88b-dc4c-4c7b-a9fe-acbaf07658c3",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("ff3c62a7-9d62-46c5-be96-639c11b2afe7",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	"f8f5a179-9a08-4ff7-ab6a-ed6cde6800cb",
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES ("ff3c62a7-9d62-46c5-be96-639c11b2afe7",
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
	VALUES ("ff3c62a7-9d62-46c5-be96-639c11b2afe7",
	1,
	"c04ed440-90e8-44f1-924e-ef8d4990b685");
INSERT INTO E_CSME
	VALUES ("ff3c62a7-9d62-46c5-be96-639c11b2afe7",
	"cb833abe-0ef3-4f5f-bf65-1e7dd700e932");
INSERT INTO E_CEA
	VALUES ("ff3c62a7-9d62-46c5-be96-639c11b2afe7");
INSERT INTO ACT_SMT
	VALUES ("f8f5a179-9a08-4ff7-ab6a-ed6cde6800cb",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	"00000000-0000-0000-0000-000000000000",
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES ("f8f5a179-9a08-4ff7-ab6a-ed6cde6800cb",
	"738c240e-a2b5-4cd6-878e-f5763ffb76fa",
	"af562311-f989-4724-b3a7-2d040578a21a",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("21ad0b6e-0e03-41d5-acd6-589d8330aa2a",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_IRF
	VALUES ("21ad0b6e-0e03-41d5-acd6-589d8330aa2a",
	"92e03919-9768-460d-94b1-4471ffac3c5e");
INSERT INTO V_VAL
	VALUES ("07c6a88b-dc4c-4c7b-a9fe-acbaf07658c3",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_UNY
	VALUES ("07c6a88b-dc4c-4c7b-a9fe-acbaf07658c3",
	"21ad0b6e-0e03-41d5-acd6-589d8330aa2a",
	'empty');
INSERT INTO V_VAL
	VALUES ("fa7f0de0-b071-4e0f-a002-6fadabf47604",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_IRF
	VALUES ("fa7f0de0-b071-4e0f-a002-6fadabf47604",
	"92e03919-9768-460d-94b1-4471ffac3c5e");
INSERT INTO V_VAL
	VALUES ("af562311-f989-4724-b3a7-2d040578a21a",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_AVL
	VALUES ("af562311-f989-4724-b3a7-2d040578a21a",
	"fa7f0de0-b071-4e0f-a002-6fadabf47604",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"04d11236-f87a-4a85-a144-14749ff088d9");
INSERT INTO V_VAL
	VALUES ("738c240e-a2b5-4cd6-878e-f5763ffb76fa",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_BRV
	VALUES ("738c240e-a2b5-4cd6-878e-f5763ffb76fa",
	"42b1952e-cd2b-4631-9167-6812a0f94c8d",
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES ("7c6b3b7d-bd16-44cf-b8ee-7e437e2776a0",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_TVL
	VALUES ("7c6b3b7d-bd16-44cf-b8ee-7e437e2776a0",
	"c04ed440-90e8-44f1-924e-ef8d4990b685");
INSERT INTO V_PAR
	VALUES ("7c6b3b7d-bd16-44cf-b8ee-7e437e2776a0",
	"00000000-0000-0000-0000-000000000000",
	"738c240e-a2b5-4cd6-878e-f5763ffb76fa",
	'event_inst',
	"1306759d-1c8b-470b-b072-01f11ed89bd9",
	14,
	41);
INSERT INTO V_VAL
	VALUES ("1306759d-1c8b-470b-b072-01f11ed89bd9",
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
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67");
INSERT INTO V_SCV
	VALUES ("1306759d-1c8b-470b-b072-01f11ed89bd9",
	"e29cc0f2-a1ab-47d5-a575-89abaac935cf",
	"ba5eda7a-def5-0000-0000-000000000002");
INSERT INTO V_PAR
	VALUES ("1306759d-1c8b-470b-b072-01f11ed89bd9",
	"00000000-0000-0000-0000-000000000000",
	"738c240e-a2b5-4cd6-878e-f5763ffb76fa",
	'microseconds',
	"00000000-0000-0000-0000-000000000000",
	14,
	59);
INSERT INTO V_VAR
	VALUES ("92e03919-9768-460d-94b1-4471ffac3c5e",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("92e03919-9768-460d-94b1-4471ffac3c5e",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO V_VAR
	VALUES ("c04ed440-90e8-44f1-924e-ef8d4990b685",
	"9890c7c3-8b98-4c1e-9113-9ce16dc71a67",
	'tick',
	1,
	"ba5eda7a-def5-0000-0000-00000000000a");
INSERT INTO V_TRN
	VALUES ("c04ed440-90e8-44f1-924e-ef8d4990b685",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("ffefbd02-6817-428e-b5b5-cf477ded753c",
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
	"8e81ba52-2540-437f-9acf-eb4fd1cda173",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("7efb6afa-4879-4246-950c-49e2d126d176",
	"ffefbd02-6817-428e-b5b5-cf477ded753c",
	"4cdde94f-95ff-4bd1-974b-a44cf54b0475",
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES ("7efb6afa-4879-4246-950c-49e2d126d176",
	"92e03919-9768-460d-94b1-4471ffac3c5e",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	6,
	33);
INSERT INTO ACT_SMT
	VALUES ("4cdde94f-95ff-4bd1-974b-a44cf54b0475",
	"ffefbd02-6817-428e-b5b5-cf477ded753c",
	"ed0605cf-4c6b-426d-b714-9999a2eb0e70",
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES ("4cdde94f-95ff-4bd1-974b-a44cf54b0475",
	"ecec3334-b469-4659-91ca-78f813755b5b",
	"c4b61ef1-cb6f-489d-a1af-a8f7e1b543e9",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("ed0605cf-4c6b-426d-b714-9999a2eb0e70",
	"ffefbd02-6817-428e-b5b5-cf477ded753c",
	"b86416f6-d3f4-4131-a942-35d5156c513a",
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES ("ed0605cf-4c6b-426d-b714-9999a2eb0e70",
	"5fa4b6bf-1526-4fe6-9308-b8c1a24f7446",
	"894b666d-07cf-406d-9000-d60d2a370fc1",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("b86416f6-d3f4-4131-a942-35d5156c513a",
	"ffefbd02-6817-428e-b5b5-cf477ded753c",
	"00000000-0000-0000-0000-000000000000",
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES ("b86416f6-d3f4-4131-a942-35d5156c513a",
	"f6a153eb-d513-43a2-a07f-75ac5333eb1b",
	"13918239-a51c-4391-8a28-9bbccce9330f",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("2afed10e-4402-4722-9646-15def172c810",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_IRF
	VALUES ("2afed10e-4402-4722-9646-15def172c810",
	"92e03919-9768-460d-94b1-4471ffac3c5e");
INSERT INTO V_VAL
	VALUES ("c4b61ef1-cb6f-489d-a1af-a8f7e1b543e9",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_AVL
	VALUES ("c4b61ef1-cb6f-489d-a1af-a8f7e1b543e9",
	"2afed10e-4402-4722-9646-15def172c810",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("ecec3334-b469-4659-91ca-78f813755b5b",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_LIN
	VALUES ("ecec3334-b469-4659-91ca-78f813755b5b",
	'0');
INSERT INTO V_VAL
	VALUES ("ad8e89bf-8c25-48b7-91f7-96da0a2bb256",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_IRF
	VALUES ("ad8e89bf-8c25-48b7-91f7-96da0a2bb256",
	"92e03919-9768-460d-94b1-4471ffac3c5e");
INSERT INTO V_VAL
	VALUES ("894b666d-07cf-406d-9000-d60d2a370fc1",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_AVL
	VALUES ("894b666d-07cf-406d-9000-d60d2a370fc1",
	"ad8e89bf-8c25-48b7-91f7-96da0a2bb256",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("5fa4b6bf-1526-4fe6-9308-b8c1a24f7446",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_SCV
	VALUES ("5fa4b6bf-1526-4fe6-9308-b8c1a24f7446",
	"dbd234dc-a87c-4772-8d1b-3d9a858e6509",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("31f4c724-4874-42a8-a2b1-af85418eda47",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_IRF
	VALUES ("31f4c724-4874-42a8-a2b1-af85418eda47",
	"92e03919-9768-460d-94b1-4471ffac3c5e");
INSERT INTO V_VAL
	VALUES ("13918239-a51c-4391-8a28-9bbccce9330f",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_AVL
	VALUES ("13918239-a51c-4391-8a28-9bbccce9330f",
	"31f4c724-4874-42a8-a2b1-af85418eda47",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("f6a153eb-d513-43a2-a07f-75ac5333eb1b",
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
	"ffefbd02-6817-428e-b5b5-cf477ded753c");
INSERT INTO V_SCV
	VALUES ("f6a153eb-d513-43a2-a07f-75ac5333eb1b",
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
	VALUES ("b10060c7-0eea-4f0a-8a70-c6feefa18de0",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"b2ff34dd-68b1-448a-af84-ca3788a84eb8");
INSERT INTO ACT_ACT
	VALUES ("b10060c7-0eea-4f0a-8a70-c6feefa18de0",
	'class state',
	0,
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::idle',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
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
	"b10060c7-0eea-4f0a-8a70-c6feefa18de0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("b7b5e7ed-384d-49a4-ad35-3643c5033bfb",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	"c38369da-f9d8-4b46-b4f4-d20fa5911750",
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES ("b7b5e7ed-384d-49a4-ad35-3643c5033bfb",
	"3ab3fb81-cbad-42f7-82a7-234f98e0e025",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("c38369da-f9d8-4b46-b4f4-d20fa5911750",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	"4af86ea7-9a2f-475b-9e81-226e377c9180",
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES ("c38369da-f9d8-4b46-b4f4-d20fa5911750",
	"e0c4cec7-ff87-46be-94a6-671a215d45e8",
	"503bc0a5-d121-41ff-ad4b-064c85cdc2a3",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("4af86ea7-9a2f-475b-9e81-226e377c9180",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	"0028e1c5-fff5-4333-ba04-4e845f157208",
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES ("4af86ea7-9a2f-475b-9e81-226e377c9180",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES ("0028e1c5-fff5-4333-ba04-4e845f157208",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES ("0028e1c5-fff5-4333-ba04-4e845f157208",
	"e522f7cf-dd2a-40c8-b3af-d33c19ac44d2",
	"1df7efa6-dccb-48f5-8f87-dfd1f96dba09",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("503bc0a5-d121-41ff-ad4b-064c85cdc2a3",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_TVL
	VALUES ("503bc0a5-d121-41ff-ad4b-064c85cdc2a3",
	"5dbf8689-dd25-492c-a380-33df1ee786b9");
INSERT INTO V_VAL
	VALUES ("e0c4cec7-ff87-46be-94a6-671a215d45e8",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_BRV
	VALUES ("e0c4cec7-ff87-46be-94a6-671a215d45e8",
	"922755eb-0a34-4c1e-91bb-5e2173030872",
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES ("100ab9fb-78f0-48d5-8274-371f71ea041b",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_IRF
	VALUES ("100ab9fb-78f0-48d5-8274-371f71ea041b",
	"3ab3fb81-cbad-42f7-82a7-234f98e0e025");
INSERT INTO V_VAL
	VALUES ("0571dccb-412a-4e1a-b385-e521bb80ac9e",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_AVL
	VALUES ("0571dccb-412a-4e1a-b385-e521bb80ac9e",
	"100ab9fb-78f0-48d5-8274-371f71ea041b",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"04d11236-f87a-4a85-a144-14749ff088d9");
INSERT INTO V_PAR
	VALUES ("0571dccb-412a-4e1a-b385-e521bb80ac9e",
	"00000000-0000-0000-0000-000000000000",
	"e0c4cec7-ff87-46be-94a6-671a215d45e8",
	'timer_inst_ref',
	"00000000-0000-0000-0000-000000000000",
	3,
	25);
INSERT INTO V_VAL
	VALUES ("c758effe-5bfb-4abd-8191-caefd527d35c",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_LST
	VALUES ("c758effe-5bfb-4abd-8191-caefd527d35c",
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES ("c758effe-5bfb-4abd-8191-caefd527d35c",
	"4af86ea7-9a2f-475b-9e81-226e377c9180",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	4,
	14);
INSERT INTO V_VAL
	VALUES ("48128b55-ce97-40e4-8bae-e17828312d50",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_TVL
	VALUES ("48128b55-ce97-40e4-8bae-e17828312d50",
	"5dbf8689-dd25-492c-a380-33df1ee786b9");
INSERT INTO V_VAL
	VALUES ("1df7efa6-dccb-48f5-8f87-dfd1f96dba09",
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
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d");
INSERT INTO V_UNY
	VALUES ("1df7efa6-dccb-48f5-8f87-dfd1f96dba09",
	"48128b55-ce97-40e4-8bae-e17828312d50",
	'not');
INSERT INTO V_VAR
	VALUES ("3ab3fb81-cbad-42f7-82a7-234f98e0e025",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("3ab3fb81-cbad-42f7-82a7-234f98e0e025",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO V_VAR
	VALUES ("5dbf8689-dd25-492c-a380-33df1ee786b9",
	"fa5f07d6-e165-4c1d-aa2c-9c973d7a494d",
	'res',
	1,
	"ba5eda7a-def5-0000-0000-000000000001");
INSERT INTO V_TRN
	VALUES ("5dbf8689-dd25-492c-a380-33df1ee786b9",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BLK
	VALUES ("e522f7cf-dd2a-40c8-b3af-d33c19ac44d2",
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
	"b10060c7-0eea-4f0a-8a70-c6feefa18de0",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("46cf3800-4e0f-45dd-b782-32dee586a521",
	"e522f7cf-dd2a-40c8-b3af-d33c19ac44d2",
	"00000000-0000-0000-0000-000000000000",
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES ("46cf3800-4e0f-45dd-b782-32dee586a521",
	"5072982b-8c43-49b3-a290-5eff68b97094",
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES ("3e9a85d0-3501-45a7-8ab3-598ddaea8a44",
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
	"e522f7cf-dd2a-40c8-b3af-d33c19ac44d2");
INSERT INTO V_LST
	VALUES ("3e9a85d0-3501-45a7-8ab3-598ddaea8a44",
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES ("3e9a85d0-3501-45a7-8ab3-598ddaea8a44",
	"46cf3800-4e0f-45dd-b782-32dee586a521",
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
	VALUES ("61e18eb0-c816-45a1-8e92-8c23fe879e99",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"cc5b5d48-8abb-4b41-9a6c-d3999c3ed49e");
INSERT INTO ACT_ACT
	VALUES ("61e18eb0-c816-45a1-8e92-8c23fe879e99",
	'class state',
	0,
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS::locating',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
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
	"61e18eb0-c816-45a1-8e92-8c23fe879e99",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("230203e1-5984-42b0-b09c-2f3e01a0ad4a",
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	"8a48b92b-6829-4bef-9717-e4b871d684ac",
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES ("230203e1-5984-42b0-b09c-2f3e01a0ad4a",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("8a48b92b-6829-4bef-9717-e4b871d684ac",
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES ("8a48b92b-6829-4bef-9717-e4b871d684ac",
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3",
	"6d1a8cf1-a2ce-4fbd-a4f8-8f94689af014",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("3a4ad5c4-f7e3-46ac-a52c-ba6d4ea3c382",
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	"00000000-0000-0000-0000-000000000000",
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES ("3a4ad5c4-f7e3-46ac-a52c-ba6d4ea3c382",
	"b12c9be3-52f1-401e-a6d2-887054f01cd3",
	"3e025f18-b7ae-42d5-b52a-872ae95eeeae",
	"8a48b92b-6829-4bef-9717-e4b871d684ac");
INSERT INTO ACT_SMT
	VALUES ("88022220-cac4-4689-b48e-1e27dc3d534d",
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	"00000000-0000-0000-0000-000000000000",
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES ("88022220-cac4-4689-b48e-1e27dc3d534d",
	"bde937e6-303d-44a1-ba5b-de5db4ab6911",
	"8a48b92b-6829-4bef-9717-e4b871d684ac");
INSERT INTO V_VAL
	VALUES ("34c09319-5af0-410a-b5bf-2b0ba2642b79",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_IRF
	VALUES ("34c09319-5af0-410a-b5bf-2b0ba2642b79",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("6610ca78-4682-4d1a-89b0-0342e73267f7",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_AVL
	VALUES ("6610ca78-4682-4d1a-89b0-0342e73267f7",
	"34c09319-5af0-410a-b5bf-2b0ba2642b79",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("1d9384c3-acfc-4fc2-99a7-611a704966ec",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_BIN
	VALUES ("1d9384c3-acfc-4fc2-99a7-611a704966ec",
	"d1e4362e-f0bc-40b8-b2cf-46bf51aed64b",
	"6610ca78-4682-4d1a-89b0-0342e73267f7",
	'%');
INSERT INTO V_VAL
	VALUES ("d1e4362e-f0bc-40b8-b2cf-46bf51aed64b",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_LIN
	VALUES ("d1e4362e-f0bc-40b8-b2cf-46bf51aed64b",
	'3');
INSERT INTO V_VAL
	VALUES ("6d1a8cf1-a2ce-4fbd-a4f8-8f94689af014",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_BIN
	VALUES ("6d1a8cf1-a2ce-4fbd-a4f8-8f94689af014",
	"90aee2f6-6fe3-4c4a-90ce-7ff222baa862",
	"1d9384c3-acfc-4fc2-99a7-611a704966ec",
	'==');
INSERT INTO V_VAL
	VALUES ("90aee2f6-6fe3-4c4a-90ce-7ff222baa862",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_LIN
	VALUES ("90aee2f6-6fe3-4c4a-90ce-7ff222baa862",
	'0');
INSERT INTO V_VAL
	VALUES ("ac930db9-4af6-43b3-8b82-a347503ccfd4",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_IRF
	VALUES ("ac930db9-4af6-43b3-8b82-a347503ccfd4",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("7014d5d7-f3da-4e97-991c-6b37fef1ad35",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_AVL
	VALUES ("7014d5d7-f3da-4e97-991c-6b37fef1ad35",
	"ac930db9-4af6-43b3-8b82-a347503ccfd4",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("1b8b3331-6fa2-492f-8758-00919a5dabee",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_BIN
	VALUES ("1b8b3331-6fa2-492f-8758-00919a5dabee",
	"0f7ed747-b4bf-4ae9-a883-d1c2ed71cda9",
	"7014d5d7-f3da-4e97-991c-6b37fef1ad35",
	'%');
INSERT INTO V_VAL
	VALUES ("0f7ed747-b4bf-4ae9-a883-d1c2ed71cda9",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_LIN
	VALUES ("0f7ed747-b4bf-4ae9-a883-d1c2ed71cda9",
	'5');
INSERT INTO V_VAL
	VALUES ("3e025f18-b7ae-42d5-b52a-872ae95eeeae",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_BIN
	VALUES ("3e025f18-b7ae-42d5-b52a-872ae95eeeae",
	"d63264bb-bef0-4210-9739-09cc78c05ae3",
	"1b8b3331-6fa2-492f-8758-00919a5dabee",
	'==');
INSERT INTO V_VAL
	VALUES ("d63264bb-bef0-4210-9739-09cc78c05ae3",
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
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf");
INSERT INTO V_LIN
	VALUES ("d63264bb-bef0-4210-9739-09cc78c05ae3",
	'0');
INSERT INTO V_VAR
	VALUES ("4736c6d6-a6a3-437d-a134-3ed86b2452d7",
	"15070610-b0d1-440f-9efa-c5c5ffbf0eaf",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("4736c6d6-a6a3-437d-a134-3ed86b2452d7",
	0,
	"a11d0283-3557-43c5-9573-7b7c025dd098");
INSERT INTO ACT_BLK
	VALUES ("8b3c9a3e-eb94-4914-ba45-1f823aee90c3",
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
	"61e18eb0-c816-45a1-8e92-8c23fe879e99",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("9a3ee91b-2d1e-458e-b36f-c448841f1093",
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3",
	"8bdf1179-8a6d-4f0a-9304-033af6cfb5e8",
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES ("9a3ee91b-2d1e-458e-b36f-c448841f1093",
	"77ad74f3-1b66-4a2a-a740-4645e2b9a432",
	"851c9faf-ec02-4b35-a893-8250789984fd",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("8bdf1179-8a6d-4f0a-9304-033af6cfb5e8",
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3",
	"00000000-0000-0000-0000-000000000000",
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES ("8bdf1179-8a6d-4f0a-9304-033af6cfb5e8",
	"e73e9ced-debb-41c2-bb4b-861da3b5b1da",
	"8c920c23-570f-4526-a496-5e3cd74a5603",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("d25ea431-fd10-49a8-be1a-6d01206678e4",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_IRF
	VALUES ("d25ea431-fd10-49a8-be1a-6d01206678e4",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("851c9faf-ec02-4b35-a893-8250789984fd",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_AVL
	VALUES ("851c9faf-ec02-4b35-a893-8250789984fd",
	"d25ea431-fd10-49a8-be1a-6d01206678e4",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("80bdec91-a37d-49cd-86b5-491a3ff11689",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_IRF
	VALUES ("80bdec91-a37d-49cd-86b5-491a3ff11689",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("e88c17df-6130-4cd5-899c-7270d22417db",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_AVL
	VALUES ("e88c17df-6130-4cd5-899c-7270d22417db",
	"80bdec91-a37d-49cd-86b5-491a3ff11689",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("77ad74f3-1b66-4a2a-a740-4645e2b9a432",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_BIN
	VALUES ("77ad74f3-1b66-4a2a-a740-4645e2b9a432",
	"b5d6ea7e-3790-4ef9-9ad2-70ec650b11f6",
	"e88c17df-6130-4cd5-899c-7270d22417db",
	'+');
INSERT INTO V_VAL
	VALUES ("8f9b1448-a360-4b79-8be2-6e0592c40b2e",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_SCV
	VALUES ("8f9b1448-a360-4b79-8be2-6e0592c40b2e",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("b5d6ea7e-3790-4ef9-9ad2-70ec650b11f6",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_BIN
	VALUES ("b5d6ea7e-3790-4ef9-9ad2-70ec650b11f6",
	"bfefeef9-2346-4f22-8019-ba67f54af5d8",
	"8f9b1448-a360-4b79-8be2-6e0592c40b2e",
	'*');
INSERT INTO V_VAL
	VALUES ("bfefeef9-2346-4f22-8019-ba67f54af5d8",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_LIN
	VALUES ("bfefeef9-2346-4f22-8019-ba67f54af5d8",
	'2');
INSERT INTO V_VAL
	VALUES ("7208e40d-bffa-44a8-a86b-d828d8a6fb53",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_IRF
	VALUES ("7208e40d-bffa-44a8-a86b-d828d8a6fb53",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("8c920c23-570f-4526-a496-5e3cd74a5603",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_AVL
	VALUES ("8c920c23-570f-4526-a496-5e3cd74a5603",
	"7208e40d-bffa-44a8-a86b-d828d8a6fb53",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("fc7dba7b-f2f4-4d0d-839d-4820a003c128",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_IRF
	VALUES ("fc7dba7b-f2f4-4d0d-839d-4820a003c128",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("3cd6c448-4a3f-4cd2-9b2c-882db705f250",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_AVL
	VALUES ("3cd6c448-4a3f-4cd2-9b2c-882db705f250",
	"fc7dba7b-f2f4-4d0d-839d-4820a003c128",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("e73e9ced-debb-41c2-bb4b-861da3b5b1da",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_BIN
	VALUES ("e73e9ced-debb-41c2-bb4b-861da3b5b1da",
	"32bc8bdb-3a8c-4402-bdd8-561a748bc738",
	"3cd6c448-4a3f-4cd2-9b2c-882db705f250",
	'+');
INSERT INTO V_VAL
	VALUES ("32bc8bdb-3a8c-4402-bdd8-561a748bc738",
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
	"8b3c9a3e-eb94-4914-ba45-1f823aee90c3");
INSERT INTO V_SCV
	VALUES ("32bc8bdb-3a8c-4402-bdd8-561a748bc738",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO ACT_BLK
	VALUES ("b12c9be3-52f1-401e-a6d2-887054f01cd3",
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
	"61e18eb0-c816-45a1-8e92-8c23fe879e99",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("0667bea3-31d8-4d16-a892-72af756f10b9",
	"b12c9be3-52f1-401e-a6d2-887054f01cd3",
	"4ce18541-ee6c-4243-ab9e-a531ad6db383",
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES ("0667bea3-31d8-4d16-a892-72af756f10b9",
	"23a1f07f-edca-4ee9-a6d9-e34ea962a4bc",
	"26e65c6c-cea9-4f23-ae44-de0fe1b5627d",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("4ce18541-ee6c-4243-ab9e-a531ad6db383",
	"b12c9be3-52f1-401e-a6d2-887054f01cd3",
	"00000000-0000-0000-0000-000000000000",
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES ("4ce18541-ee6c-4243-ab9e-a531ad6db383",
	"5bf8fa24-2339-491d-abc7-952adc9c26c2",
	"e2070bb3-f29c-4835-aeed-bb43353f965e",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("051a7d4f-039d-4ac3-baff-12e80063e0fc",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_IRF
	VALUES ("051a7d4f-039d-4ac3-baff-12e80063e0fc",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("26e65c6c-cea9-4f23-ae44-de0fe1b5627d",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_AVL
	VALUES ("26e65c6c-cea9-4f23-ae44-de0fe1b5627d",
	"051a7d4f-039d-4ac3-baff-12e80063e0fc",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("7e03fcc3-e2f2-4c37-b9d9-61b947f0a625",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_IRF
	VALUES ("7e03fcc3-e2f2-4c37-b9d9-61b947f0a625",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("ecf59301-4ec2-4014-bac6-44b237c48591",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_AVL
	VALUES ("ecf59301-4ec2-4014-bac6-44b237c48591",
	"7e03fcc3-e2f2-4c37-b9d9-61b947f0a625",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("23a1f07f-edca-4ee9-a6d9-e34ea962a4bc",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_BIN
	VALUES ("23a1f07f-edca-4ee9-a6d9-e34ea962a4bc",
	"c9febe0a-e046-412f-b63e-123b1234f0c6",
	"ecf59301-4ec2-4014-bac6-44b237c48591",
	'+');
INSERT INTO V_VAL
	VALUES ("c9febe0a-e046-412f-b63e-123b1234f0c6",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_SCV
	VALUES ("c9febe0a-e046-412f-b63e-123b1234f0c6",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("b72959bd-b82c-4026-b75f-432c4ed40699",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_IRF
	VALUES ("b72959bd-b82c-4026-b75f-432c4ed40699",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("e2070bb3-f29c-4835-aeed-bb43353f965e",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_AVL
	VALUES ("e2070bb3-f29c-4835-aeed-bb43353f965e",
	"b72959bd-b82c-4026-b75f-432c4ed40699",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("b423632b-651c-402e-b914-6889529dc8d1",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_IRF
	VALUES ("b423632b-651c-402e-b914-6889529dc8d1",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("bdf19e80-af0a-4271-8157-95c6b6e5c36c",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_AVL
	VALUES ("bdf19e80-af0a-4271-8157-95c6b6e5c36c",
	"b423632b-651c-402e-b914-6889529dc8d1",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("5bf8fa24-2339-491d-abc7-952adc9c26c2",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_BIN
	VALUES ("5bf8fa24-2339-491d-abc7-952adc9c26c2",
	"980d02e0-970e-4b33-9a07-1dcc4be0198a",
	"bdf19e80-af0a-4271-8157-95c6b6e5c36c",
	'+');
INSERT INTO V_VAL
	VALUES ("1d51f685-b002-4d01-afd7-c93d348702da",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_SCV
	VALUES ("1d51f685-b002-4d01-afd7-c93d348702da",
	"dbf43f06-4892-4b02-9e66-beb8ebdddd32",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("980d02e0-970e-4b33-9a07-1dcc4be0198a",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_BIN
	VALUES ("980d02e0-970e-4b33-9a07-1dcc4be0198a",
	"91ffd16e-146f-45e8-b2f6-233ba4f5f808",
	"1d51f685-b002-4d01-afd7-c93d348702da",
	'*');
INSERT INTO V_VAL
	VALUES ("91ffd16e-146f-45e8-b2f6-233ba4f5f808",
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
	"b12c9be3-52f1-401e-a6d2-887054f01cd3");
INSERT INTO V_LIN
	VALUES ("91ffd16e-146f-45e8-b2f6-233ba4f5f808",
	'3');
INSERT INTO ACT_BLK
	VALUES ("bde937e6-303d-44a1-ba5b-de5db4ab6911",
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
	"61e18eb0-c816-45a1-8e92-8c23fe879e99",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("168dd5c4-d655-4d6d-9970-34370765f327",
	"bde937e6-303d-44a1-ba5b-de5db4ab6911",
	"9e80e98a-afcd-4e2e-ad1c-d1e29ccbedd4",
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES ("168dd5c4-d655-4d6d-9970-34370765f327",
	"09acafca-d9f7-4b3e-ae83-c75a165a4288",
	"a4d27bde-1ae6-4ff6-82e0-d0a94d60033e",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("9e80e98a-afcd-4e2e-ad1c-d1e29ccbedd4",
	"bde937e6-303d-44a1-ba5b-de5db4ab6911",
	"00000000-0000-0000-0000-000000000000",
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES ("9e80e98a-afcd-4e2e-ad1c-d1e29ccbedd4",
	"e28d0f32-5dae-4059-b71a-1c59f2c4d67f",
	"cfa927cb-416b-4ca4-bc38-dedcb6c004c5",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("e2382089-cfd9-422b-8185-a8316b8d2fff",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_IRF
	VALUES ("e2382089-cfd9-422b-8185-a8316b8d2fff",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("a4d27bde-1ae6-4ff6-82e0-d0a94d60033e",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_AVL
	VALUES ("a4d27bde-1ae6-4ff6-82e0-d0a94d60033e",
	"e2382089-cfd9-422b-8185-a8316b8d2fff",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("bdae24a2-0c2e-436a-9cde-63c11d0c2f8e",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_IRF
	VALUES ("bdae24a2-0c2e-436a-9cde-63c11d0c2f8e",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("8a5850a1-ec9b-4f24-9272-ed95269dc23d",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_AVL
	VALUES ("8a5850a1-ec9b-4f24-9272-ed95269dc23d",
	"bdae24a2-0c2e-436a-9cde-63c11d0c2f8e",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"09473724-2761-4447-8c19-d815032f1b3f");
INSERT INTO V_VAL
	VALUES ("09acafca-d9f7-4b3e-ae83-c75a165a4288",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_BIN
	VALUES ("09acafca-d9f7-4b3e-ae83-c75a165a4288",
	"67181ad3-0993-460b-a063-3ae497bb01bd",
	"8a5850a1-ec9b-4f24-9272-ed95269dc23d",
	'+');
INSERT INTO V_VAL
	VALUES ("67181ad3-0993-460b-a063-3ae497bb01bd",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_SCV
	VALUES ("67181ad3-0993-460b-a063-3ae497bb01bd",
	"3c71d8f2-0e03-4c4c-a7de-9a75633ef8e0",
	"ba5eda7a-def5-0000-0000-000000000003");
INSERT INTO V_VAL
	VALUES ("2ae3d4df-e281-4e54-8f91-69e5a6591420",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_IRF
	VALUES ("2ae3d4df-e281-4e54-8f91-69e5a6591420",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("cfa927cb-416b-4ca4-bc38-dedcb6c004c5",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_AVL
	VALUES ("cfa927cb-416b-4ca4-bc38-dedcb6c004c5",
	"2ae3d4df-e281-4e54-8f91-69e5a6591420",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("33b18096-2551-4be7-88e7-6ee548aa9da2",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_IRF
	VALUES ("33b18096-2551-4be7-88e7-6ee548aa9da2",
	"4736c6d6-a6a3-437d-a134-3ed86b2452d7");
INSERT INTO V_VAL
	VALUES ("4f8c04b5-2606-4350-8b04-01095737f1f0",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_AVL
	VALUES ("4f8c04b5-2606-4350-8b04-01095737f1f0",
	"33b18096-2551-4be7-88e7-6ee548aa9da2",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"d2bba660-6b8e-432f-9040-bf791d85b1fb");
INSERT INTO V_VAL
	VALUES ("e28d0f32-5dae-4059-b71a-1c59f2c4d67f",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_BIN
	VALUES ("e28d0f32-5dae-4059-b71a-1c59f2c4d67f",
	"f6107447-e13c-4d35-b819-9217ffcec5c3",
	"4f8c04b5-2606-4350-8b04-01095737f1f0",
	'+');
INSERT INTO V_VAL
	VALUES ("f6107447-e13c-4d35-b819-9217ffcec5c3",
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
	"bde937e6-303d-44a1-ba5b-de5db4ab6911");
INSERT INTO V_SCV
	VALUES ("f6107447-e13c-4d35-b819-9217ffcec5c3",
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
	VALUES ("15f3ce45-bac8-4ce4-888a-24871fe8dd87",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"11cccd6a-1ca6-4f1f-b5e4-f42573b7f02b");
INSERT INTO ACT_ACT
	VALUES ("15f3ce45-bac8-4ce4-888a-24871fe8dd87",
	'class transition',
	0,
	"6ac413e9-bcf5-4294-b5b8-b55c870403c4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A2: registerListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("6ac413e9-bcf5-4294-b5b8-b55c870403c4",
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
	"15f3ce45-bac8-4ce4-888a-24871fe8dd87",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("43fb0c69-9c6e-424e-b4b2-673203debfc9",
	"6ac413e9-bcf5-4294-b5b8-b55c870403c4",
	"450aec22-2fc5-4110-892b-da738cf6ac37",
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES ("43fb0c69-9c6e-424e-b4b2-673203debfc9",
	"74cd30e4-7a10-41f2-a19e-8dea5f160808",
	"00000000-0000-0000-0000-000000000000",
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES ("450aec22-2fc5-4110-892b-da738cf6ac37",
	"6ac413e9-bcf5-4294-b5b8-b55c870403c4",
	"00000000-0000-0000-0000-000000000000",
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES ("450aec22-2fc5-4110-892b-da738cf6ac37",
	"fe195afc-727c-4e6d-bbb2-d1dbe4646c56",
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES ("9b046a41-99e8-450c-b04a-7ee83c4f8ac4",
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
	"6ac413e9-bcf5-4294-b5b8-b55c870403c4");
INSERT INTO V_LST
	VALUES ("9b046a41-99e8-450c-b04a-7ee83c4f8ac4",
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES ("9b046a41-99e8-450c-b04a-7ee83c4f8ac4",
	"450aec22-2fc5-4110-892b-da738cf6ac37",
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
	VALUES ("d7f54576-d842-42fa-965f-a6566dc06802",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"fcbcb3dd-3aad-4a8d-8da0-bfffb549314f");
INSERT INTO ACT_ACT
	VALUES ("d7f54576-d842-42fa-965f-a6566dc06802",
	'class transition',
	0,
	"25325f73-6680-4a6c-9300-cd11e056baf2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A3: unregisterListener',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("25325f73-6680-4a6c-9300-cd11e056baf2",
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
	"d7f54576-d842-42fa-965f-a6566dc06802",
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
	VALUES ("48a2d538-fd28-4f50-a87f-92c72fa73b6e",
	"22c1a22f-b999-4406-9b43-da67b9331ef7",
	"3ecd1eab-8c84-417a-991a-48008b1f4abc");
INSERT INTO ACT_ACT
	VALUES ("48a2d538-fd28-4f50-a87f-92c72fa73b6e",
	'class transition',
	0,
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb",
	"00000000-0000-0000-0000-000000000000",
	0,
	'GPS_A1: tick',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("84ea194d-a2ac-444b-9a20-79173fdb7bdb",
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
	"48a2d538-fd28-4f50-a87f-92c72fa73b6e",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("158c67f9-271d-42b5-909d-f3fec535916e",
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb",
	"8bb5cb09-ff0a-4c65-8c0d-ea7ec3eeb332",
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES ("158c67f9-271d-42b5-909d-f3fec535916e",
	"12c681f9-2c66-440d-8229-6610f7502f7d",
	1,
	'any',
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	2,
	34);
INSERT INTO ACT_SMT
	VALUES ("8bb5cb09-ff0a-4c65-8c0d-ea7ec3eeb332",
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb",
	"00000000-0000-0000-0000-000000000000",
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES ("8bb5cb09-ff0a-4c65-8c0d-ea7ec3eeb332",
	"c87f6ff6-eb85-43b9-b466-dda2c353f838",
	"7d793106-f0d6-4701-98a2-d1bb55b64456",
	0,
	0);
INSERT INTO V_VAL
	VALUES ("9f1a15d3-9d53-411b-a22a-f4dae51429c3",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_IRF
	VALUES ("9f1a15d3-9d53-411b-a22a-f4dae51429c3",
	"12c681f9-2c66-440d-8229-6610f7502f7d");
INSERT INTO V_VAL
	VALUES ("7d793106-f0d6-4701-98a2-d1bb55b64456",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_AVL
	VALUES ("7d793106-f0d6-4701-98a2-d1bb55b64456",
	"9f1a15d3-9d53-411b-a22a-f4dae51429c3",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("f35285b1-e3b0-400a-832a-8df677bb712a",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_IRF
	VALUES ("f35285b1-e3b0-400a-832a-8df677bb712a",
	"12c681f9-2c66-440d-8229-6610f7502f7d");
INSERT INTO V_VAL
	VALUES ("0ef23fe9-cec2-4e35-8cb3-04c10ee8a99a",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_AVL
	VALUES ("0ef23fe9-cec2-4e35-8cb3-04c10ee8a99a",
	"f35285b1-e3b0-400a-832a-8df677bb712a",
	"a11d0283-3557-43c5-9573-7b7c025dd098",
	"eb31747b-a19e-4e30-852c-b256db51b7b4");
INSERT INTO V_VAL
	VALUES ("c87f6ff6-eb85-43b9-b466-dda2c353f838",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_BIN
	VALUES ("c87f6ff6-eb85-43b9-b466-dda2c353f838",
	"29088d78-a517-45ec-aee3-213ac56b859d",
	"0ef23fe9-cec2-4e35-8cb3-04c10ee8a99a",
	'+');
INSERT INTO V_VAL
	VALUES ("29088d78-a517-45ec-aee3-213ac56b859d",
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
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb");
INSERT INTO V_LIN
	VALUES ("29088d78-a517-45ec-aee3-213ac56b859d",
	'1');
INSERT INTO V_VAR
	VALUES ("12c681f9-2c66-440d-8229-6610f7502f7d",
	"84ea194d-a2ac-444b-9a20-79173fdb7bdb",
	'gps',
	1,
	"ba5eda7a-def5-0000-0000-000000000008");
INSERT INTO V_INT
	VALUES ("12c681f9-2c66-440d-8229-6610f7502f7d",
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
