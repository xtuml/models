-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.5

INSERT INTO S_SYS
	VALUES ("80664b21-d988-48f6-9814-1c3dffcd4ce1",
	'EERealizedStaticDataTestNoLocalRealizedEE',
	1);
INSERT INTO EP_PKG
	VALUES ("a588ed5c-86f2-4ce9-ae87-56e3baf1a1c1",
	"80664b21-d988-48f6-9814-1c3dffcd4ce1",
	"80664b21-d988-48f6-9814-1c3dffcd4ce1",
	'Components',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("4d0dd39b-99e7-4dd3-b360-a0d66114db0a",
	1,
	"a588ed5c-86f2-4ce9-ae87-56e3baf1a1c1",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("4d0dd39b-99e7-4dd3-b360-a0d66114db0a",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'App',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("0895c34c-0418-43b1-8c37-19cdb5cf6b2a",
	"4d0dd39b-99e7-4dd3-b360-a0d66114db0a",
	'AppLibPort',
	0,
	0);
INSERT INTO C_IR
	VALUES ("4ff781f9-09e5-4253-aeb1-a56f316febd7",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	"00000000-0000-0000-0000-000000000000",
	"0895c34c-0418-43b1-8c37-19cdb5cf6b2a");
INSERT INTO C_R
	VALUES ("4ff781f9-09e5-4253-aeb1-a56f316febd7",
	'AppLibInterface',
	'',
	'Unnamed Interface',
	'App::AppLibPort::AppLibInterface');
INSERT INTO SPR_REP
	VALUES ("1b718a4a-b38e-45f6-a64b-6e7f19e4aac9",
	"169b10de-0861-4d5f-952f-11eae841aada",
	"4ff781f9-09e5-4253-aeb1-a56f316febd7");
INSERT INTO SPR_RO
	VALUES ("1b718a4a-b38e-45f6-a64b-6e7f19e4aac9",
	'To',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("a33324ce-22d2-4a94-a8e2-690e3ccfe30c",
	"1b718a4a-b38e-45f6-a64b-6e7f19e4aac9");
INSERT INTO ACT_ACT
	VALUES ("a33324ce-22d2-4a94-a8e2-690e3ccfe30c",
	'interface operation',
	0,
	"a278b447-3ba6-4b29-8b97-7291b6c65657",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::To',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a278b447-3ba6-4b29-8b97-7291b6c65657",
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
	"a33324ce-22d2-4a94-a8e2-690e3ccfe30c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO SPR_REP
	VALUES ("c276dfdf-0567-4041-a03d-fd709c4aa637",
	"34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"4ff781f9-09e5-4253-aeb1-a56f316febd7");
INSERT INTO SPR_RO
	VALUES ("c276dfdf-0567-4041-a03d-fd709c4aa637",
	'From',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES ("3a609f59-58a0-4728-9f68-acabe7fcb8b5",
	"c276dfdf-0567-4041-a03d-fd709c4aa637");
INSERT INTO ACT_ACT
	VALUES ("3a609f59-58a0-4728-9f68-acabe7fcb8b5",
	'interface operation',
	0,
	"fde4f364-b66f-425f-8586-ae5b1cab801d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::From',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("fde4f364-b66f-425f-8586-ae5b1cab801d",
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
	"3a609f59-58a0-4728-9f68-acabe7fcb8b5",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("d2aee982-d66d-4389-92e1-24f8625201c9",
	1,
	"00000000-0000-0000-0000-000000000000",
	"4d0dd39b-99e7-4dd3-b360-a0d66114db0a",
	7);
INSERT INTO EP_PKG
	VALUES ("d2aee982-d66d-4389-92e1-24f8625201c9",
	"00000000-0000-0000-0000-000000000000",
	"80664b21-d988-48f6-9814-1c3dffcd4ce1",
	'ExternalEntities',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	1,
	"d2aee982-d66d-4389-92e1-24f8625201c9",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("c4e5c842-89ca-46ca-b7e1-a661ad00a223",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	0,
	'');
INSERT INTO S_BRG
	VALUES ("b913fe03-f801-4932-ac89-50be6cf3a5fa",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("97df80ca-48ca-4d16-a2e1-1800d4bf9dd7",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"f48d79a8-c399-432d-9c4b-3ab8c8200824",
	'');
INSERT INTO S_BPARM
	VALUES ("78d78d29-2835-4d6d-82ef-9b4622c58960",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"fc9e517b-5987-497f-9358-52e724b5a3f4",
	'');
INSERT INTO S_BPARM
	VALUES ("fc9e517b-5987-497f-9358-52e724b5a3f4",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"b7e61bf1-134f-4635-9000-01b230add6b6",
	'');
INSERT INTO S_BPARM
	VALUES ("b7e61bf1-134f-4635-9000-01b230add6b6",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("f48d79a8-c399-432d-9c4b-3ab8c8200824",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"78d78d29-2835-4d6d-82ef-9b4622c58960",
	'');
INSERT INTO S_BPARM
	VALUES ("63d7d353-5aec-4442-b273-7ace5a2a28e9",
	"b913fe03-f801-4932-ac89-50be6cf3a5fa",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"97df80ca-48ca-4d16-a2e1-1800d4bf9dd7",
	'');
INSERT INTO S_BRG
	VALUES ("6d3441e1-15d2-4bb2-93ab-c3e5c684fdca",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("ec521225-e3b7-4774-8494-55580dd73d08",
	"6d3441e1-15d2-4bb2-93ab-c3e5c684fdca",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("d39dcf8e-6705-4d9d-b95b-fd7ae96b5b91",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("49ed876e-2cb6-449b-bb78-cce3a06dad26",
	"d39dcf8e-6705-4d9d-b95b-fd7ae96b5b91",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("14779bd8-adcf-4896-8d3b-0ce4840fb934",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("405898a8-ba39-4a1d-b495-2650cb7f7edf",
	"14779bd8-adcf-4896-8d3b-0ce4840fb934",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("ea134d1a-4642-4e39-a4c9-e06476b2b501",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("0d9a49a2-801e-439c-a686-5b73f81761b3",
	"ea134d1a-4642-4e39-a4c9-e06476b2b501",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("2d56f678-f5eb-45a4-a99a-793bfade4fa2",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("ad7d36ae-9003-4123-a5ba-db9cd13187af",
	"2d56f678-f5eb-45a4-a99a-793bfade4fa2",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("0d645bca-6bb6-4dff-9dce-3e2473d5d1cb",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("4a204321-edab-4701-95b7-a30d0021bbc3",
	"0d645bca-6bb6-4dff-9dce-3e2473d5d1cb",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("12df3321-d1bd-4d2b-9d1c-3a731bfc00d0",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	0,
	'');
INSERT INTO S_BRG
	VALUES ("9a89cce1-7d72-4a2d-8bc3-9007ffde8b44",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("6023b0b4-923c-4c06-b584-3c923496cdcd",
	"9a89cce1-7d72-4a2d-8bc3-9007ffde8b44",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"4504a78d-4b5f-449e-bd17-2e9ce55ee1f0",
	'');
INSERT INTO S_BPARM
	VALUES ("4504a78d-4b5f-449e-bd17-2e9ce55ee1f0",
	"9a89cce1-7d72-4a2d-8bc3-9007ffde8b44",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("2ff216cd-a481-49d2-b07d-17b072bcad78",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("68aa681d-40e0-4923-8c8f-1e304765ae1d",
	"2ff216cd-a481-49d2-b07d-17b072bcad78",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"341e0f38-b45e-47b7-b777-010a74796129",
	'');
INSERT INTO S_BPARM
	VALUES ("341e0f38-b45e-47b7-b777-010a74796129",
	"2ff216cd-a481-49d2-b07d-17b072bcad78",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("cbdbfd06-7a3a-46cb-a6bc-2959ca7b8507",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("5520c25d-254a-4d01-b4ef-0eb222bb7d7d",
	"cbdbfd06-7a3a-46cb-a6bc-2959ca7b8507",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("932ff452-6634-4455-935c-b65747bd205c",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("1c8f0126-93e1-4a68-b976-a8df1615a969",
	"932ff452-6634-4455-935c-b65747bd205c",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"5119f43a-0d76-4b1f-b0ce-488665fdc0fe",
	'');
INSERT INTO S_BPARM
	VALUES ("5119f43a-0d76-4b1f-b0ce-488665fdc0fe",
	"932ff452-6634-4455-935c-b65747bd205c",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("2f50fd47-e8c2-4e1a-a9b8-ac6f1ccafeb7",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("0a84691f-0f43-4295-a4bd-a5fc94a9703d",
	"2f50fd47-e8c2-4e1a-a9b8-ac6f1ccafeb7",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"e834126a-d39d-4ce9-8d22-39b75693bca8",
	'');
INSERT INTO S_BPARM
	VALUES ("e834126a-d39d-4ce9-8d22-39b75693bca8",
	"2f50fd47-e8c2-4e1a-a9b8-ac6f1ccafeb7",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("f0cde4ff-bea1-4b84-aabf-a78987a48d5a",
	"d4bf49ad-03ad-45a1-9f0d-ab57c5a2fac5",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("0c7d4ae8-991c-4db6-9012-4a95961121c3",
	"f0cde4ff-bea1-4b84-aabf-a78987a48d5a",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("4ac4ff39-90cd-4fbf-a0e0-9915a15ca5c1",
	1,
	"d2aee982-d66d-4389-92e1-24f8625201c9",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("4ac4ff39-90cd-4fbf-a0e0-9915a15ca5c1",
	'Architecture',
	'',
	'ARCH',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("22628b38-331c-4469-9e47-3bdd051dd1d6",
	"4ac4ff39-90cd-4fbf-a0e0-9915a15ca5c1",
	'shutdown',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'control stop;',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("fd764db4-3985-4d7f-adcd-31c291b766a2",
	"22628b38-331c-4469-9e47-3bdd051dd1d6");
INSERT INTO ACT_ACT
	VALUES ("fd764db4-3985-4d7f-adcd-31c291b766a2",
	'bridge',
	0,
	"8fd61b9c-fb59-4b03-9dcc-9807048fac5d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Architecture::shutdown',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("8fd61b9c-fb59-4b03-9dcc-9807048fac5d",
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
	"fd764db4-3985-4d7f-adcd-31c291b766a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("775b4e6b-efe9-4583-bd4c-a4693c6823f4",
	"8fd61b9c-fb59-4b03-9dcc-9807048fac5d",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'Architecture::shutdown line: 1');
INSERT INTO ACT_CTL
	VALUES ("775b4e6b-efe9-4583-bd4c-a4693c6823f4");
INSERT INTO PE_PE
	VALUES ("2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	1,
	"d2aee982-d66d-4389-92e1-24f8625201c9",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("7967880a-0409-431b-8d5a-be797b0e29d4",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("133d12e9-fea0-48ba-99b8-34269c8b6061",
	"7967880a-0409-431b-8d5a-be797b0e29d4",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("764dcd66-a28c-4531-99e9-98f575c629d4",
	"7967880a-0409-431b-8d5a-be797b0e29d4");
INSERT INTO ACT_ACT
	VALUES ("764dcd66-a28c-4531-99e9-98f575c629d4",
	'bridge',
	0,
	"c89c8df6-dc8d-4470-82c0-d0c3bea2b73d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("c89c8df6-dc8d-4470-82c0-d0c3bea2b73d",
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
	"764dcd66-a28c-4531-99e9-98f575c629d4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0947fb9d-f7a5-4521-b00d-d0b296c129c9",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("e61954cc-6c45-4fce-b0a9-2b498e2cab3e",
	"0947fb9d-f7a5-4521-b00d-d0b296c129c9",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("eb4cb1fe-f625-483d-9f7f-d3d827e68bfc",
	"0947fb9d-f7a5-4521-b00d-d0b296c129c9");
INSERT INTO ACT_ACT
	VALUES ("eb4cb1fe-f625-483d-9f7f-d3d827e68bfc",
	'bridge',
	0,
	"3413b636-11df-4108-a0e7-4fe7e4fed02b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3413b636-11df-4108-a0e7-4fe7e4fed02b",
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
	"eb4cb1fe-f625-483d-9f7f-d3d827e68bfc",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("8b72f0a1-e757-4a31-b0e7-e543c55de656",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("5a6ffba7-b12a-4571-9f7d-fea3363fc4f5",
	"8b72f0a1-e757-4a31-b0e7-e543c55de656",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("450aa8ab-4fa1-4060-a864-c436de80703d",
	"8b72f0a1-e757-4a31-b0e7-e543c55de656");
INSERT INTO ACT_ACT
	VALUES ("450aa8ab-4fa1-4060-a864-c436de80703d",
	'bridge',
	0,
	"84cb61d4-0964-4232-8483-384650838eec",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("84cb61d4-0964-4232-8483-384650838eec",
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
	"450aa8ab-4fa1-4060-a864-c436de80703d",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("bdfeaf24-7aff-4568-ab4c-fa4f44901b74",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("445d3d9e-feb4-4b56-ba74-3435f84f0264",
	"bdfeaf24-7aff-4568-ab4c-fa4f44901b74",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("953b3382-117c-48a2-8439-166742ed9d62",
	"bdfeaf24-7aff-4568-ab4c-fa4f44901b74",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"445d3d9e-feb4-4b56-ba74-3435f84f0264",
	'');
INSERT INTO ACT_BRB
	VALUES ("20cf8996-e673-474e-a92d-1c67d232a01c",
	"bdfeaf24-7aff-4568-ab4c-fa4f44901b74");
INSERT INTO ACT_ACT
	VALUES ("20cf8996-e673-474e-a92d-1c67d232a01c",
	'bridge',
	0,
	"bf710f8e-110d-405f-8fe0-82d42963990b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bf710f8e-110d-405f-8fe0-82d42963990b",
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
	"20cf8996-e673-474e-a92d-1c67d232a01c",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("ec3cde1c-094f-4231-8396-21d893dfc4a5",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("b735e6f8-d703-42c6-9be8-43dd4bdd8cb9",
	"ec3cde1c-094f-4231-8396-21d893dfc4a5",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"8e46f53d-8a39-4e6e-958d-2e87f3e28109",
	'');
INSERT INTO S_BPARM
	VALUES ("8e46f53d-8a39-4e6e-958d-2e87f3e28109",
	"ec3cde1c-094f-4231-8396-21d893dfc4a5",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("a1733bec-01e0-4ad6-8be8-e274413fc819",
	"ec3cde1c-094f-4231-8396-21d893dfc4a5");
INSERT INTO ACT_ACT
	VALUES ("a1733bec-01e0-4ad6-8be8-e274413fc819",
	'bridge',
	0,
	"4b074930-70aa-4a79-88f0-816b58adcfd4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("4b074930-70aa-4a79-88f0-816b58adcfd4",
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
	"a1733bec-01e0-4ad6-8be8-e274413fc819",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("afda83d3-ffdb-4a75-bde6-257f75965411",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("de90eda0-8652-4b4b-8e8f-1bdb577ac019",
	"afda83d3-ffdb-4a75-bde6-257f75965411",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"58914382-a4c9-4bd0-95b8-37e2acaba923",
	'');
INSERT INTO S_BPARM
	VALUES ("58914382-a4c9-4bd0-95b8-37e2acaba923",
	"afda83d3-ffdb-4a75-bde6-257f75965411",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("c3521356-9136-46fb-b81a-23c6f52b793b",
	"afda83d3-ffdb-4a75-bde6-257f75965411");
INSERT INTO ACT_ACT
	VALUES ("c3521356-9136-46fb-b81a-23c6f52b793b",
	'bridge',
	0,
	"ae722268-0734-4073-9894-697d1b2e23a3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("ae722268-0734-4073-9894-697d1b2e23a3",
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
	"c3521356-9136-46fb-b81a-23c6f52b793b",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("3caf9df7-ca0f-4773-956a-3e9c4d5f49d6",
	"2020b54c-61b4-47ec-a000-3e6ce4c19aee",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("54186027-7110-45d0-9a4d-cfddba2126fa",
	"3caf9df7-ca0f-4773-956a-3e9c4d5f49d6",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("a32f71f5-cfb3-41de-8dbd-09a18218b2fb",
	1,
	"d2aee982-d66d-4389-92e1-24f8625201c9",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("a32f71f5-cfb3-41de-8dbd-09a18218b2fb",
	'CMP',
	'',
	'CMP',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("b112a956-a4ee-468a-96cb-104719577597",
	"a32f71f5-cfb3-41de-8dbd-09a18218b2fb",
	'GetData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("98d2a289-f655-4c07-847f-481435a03add",
	"b112a956-a4ee-468a-96cb-104719577597");
INSERT INTO ACT_ACT
	VALUES ("98d2a289-f655-4c07-847f-481435a03add",
	'bridge',
	0,
	"bc400dfa-5a4d-413e-b6a9-9892f1629b93",
	"00000000-0000-0000-0000-000000000000",
	0,
	'CMP::GetData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("bc400dfa-5a4d-413e-b6a9-9892f1629b93",
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
	"98d2a289-f655-4c07-847f-481435a03add",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("968cd317-53a7-4f2e-bbd8-b37d9956639e",
	"a32f71f5-cfb3-41de-8dbd-09a18218b2fb",
	'SetData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("411a3562-ad1c-4b6a-82ad-23932bc6dd3f",
	"968cd317-53a7-4f2e-bbd8-b37d9956639e",
	'data',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("0304246f-458d-4d4d-9f22-4fcb907cc9e8",
	"968cd317-53a7-4f2e-bbd8-b37d9956639e");
INSERT INTO ACT_ACT
	VALUES ("0304246f-458d-4d4d-9f22-4fcb907cc9e8",
	'bridge',
	0,
	"b94959d8-be97-4552-9d7a-672152a9643f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'CMP::SetData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("b94959d8-be97-4552-9d7a-672152a9643f",
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
	"0304246f-458d-4d4d-9f22-4fcb907cc9e8",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("77fd60c1-768b-40a2-98da-bd73973e6f27",
	1,
	"a588ed5c-86f2-4ce9-ae87-56e3baf1a1c1",
	"00000000-0000-0000-0000-000000000000",
	21);
INSERT INTO CL_IC
	VALUES ("77fd60c1-768b-40a2-98da-bd73973e6f27",
	"ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'EERealizedStaticDataTestLibraryDuplicateRealizedEE::Select_Me2::Select_Me2',
	'');
INSERT INTO CL_IIR
	VALUES ("1276cdb6-c43c-4d9e-abfd-d0eb9007787f",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	"77fd60c1-768b-40a2-98da-bd73973e6f27",
	"00000000-0000-0000-0000-000000000000",
	'AppLibInterface',
	'');
INSERT INTO CL_IP
	VALUES ("1276cdb6-c43c-4d9e-abfd-d0eb9007787f",
	'AppLibInterface',
	'');
INSERT INTO CL_IPINS
	VALUES ("a5fd5ff1-a79c-438c-91cb-40307dd73416",
	"1276cdb6-c43c-4d9e-abfd-d0eb9007787f");
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
INSERT INTO C_EP_PROXY
	VALUES ("169b10de-0861-4d5f-952f-11eae841aada",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	-1,
	'To',
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Interfaces/AppLibInterface/AppLibInterface.xtuml');
INSERT INTO C_EP_PROXY
	VALUES ("34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	-1,
	'From',
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Interfaces/AppLibInterface/AppLibInterface.xtuml');
INSERT INTO C_I_PROXY
	VALUES ("8754de7f-ab0d-4dc3-a92a-3cc112add588",
	"00000000-0000-0000-0000-000000000000",
	'AppLibInterface',
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Interfaces/AppLibInterface/AppLibInterface.xtuml');
INSERT INTO C_SF_PROXY
	VALUES ("a5fd5ff1-a79c-438c-91cb-40307dd73416",
	"4ff781f9-09e5-4253-aeb1-a56f316febd7",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'',
	'Select_Me2::AppLibPort::AppLibInterface -o)- App::AppLibPort::AppLibInterface',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2.xtuml');
INSERT INTO C_IR_PROXY
	VALUES ("0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	"00000000-0000-0000-0000-000000000000",
	"4353928a-8ff6-4b05-9fd1-81bfee1cbfc3",
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO C_P_PROXY
	VALUES ("0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'AppLibInterface',
	'Unnamed Interface',
	'',
	'Select_Me2::AppLibPort::AppLibInterface',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("ecec1380-fcc5-4272-abe4-afde283e08ec",
	"169b10de-0861-4d5f-952f-11eae841aada",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("ecec1380-fcc5-4272-abe4-afde283e08ec",
	'To',
	'',
	'LOG::LogInfo(message:"Modified after callback: " + CMP::GetData());
',
	1,
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO ACT_POB_PROXY
	VALUES ("1ae0910a-f840-4651-b967-b17439e80013",
	"ecec1380-fcc5-4272-abe4-afde283e08ec",
	'/');
INSERT INTO ACT_ACT_PROXY
	VALUES ("1ae0910a-f840-4651-b967-b17439e80013",
	'interface operation',
	0,
	"b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::To',
	"00000000-0000-0000-0000-000000000000",
	'/');
INSERT INTO ACT_BLK_PROXY
	VALUES ("b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	0,
	0,
	0,
	'CMP',
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
	"1ae0910a-f840-4651-b967-b17439e80013",
	"00000000-0000-0000-0000-000000000000",
	'/');
INSERT INTO ACT_SMT_PROXY
	VALUES ("e126c9f1-0b47-4cd0-a945-9aac7c0209c7",
	"b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'AppLibPort::AppLibInterface::To line: 1',
	'/');
INSERT INTO ACT_BRG_PROXY
	VALUES ("e126c9f1-0b47-4cd0-a945-9aac7c0209c7",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	1,
	6,
	1,
	1,
	'/');
INSERT INTO S_BRG_PROXY
	VALUES ("d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/ExternalEntities/ExternalEntities.xtuml');
INSERT INTO V_VAL_PROXY
	VALUES ("679701b3-68fa-4b82-81f7-6a057d553aa2",
	0,
	0,
	1,
	22,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	'/');
INSERT INTO V_LST_PROXY
	VALUES ("679701b3-68fa-4b82-81f7-6a057d553aa2",
	'Modified after callback: ',
	'/');
INSERT INTO V_VAL_PROXY
	VALUES ("c99c9768-bb64-44ca-a716-63c7fc8e70e2",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	'/');
INSERT INTO V_BIN_PROXY
	VALUES ("c99c9768-bb64-44ca-a716-63c7fc8e70e2",
	"d7fdd115-326e-48e1-a08e-941ecc040059",
	"679701b3-68fa-4b82-81f7-6a057d553aa2",
	'+',
	'/');
INSERT INTO V_PAR_PROXY
	VALUES ("c99c9768-bb64-44ca-a716-63c7fc8e70e2",
	"e126c9f1-0b47-4cd0-a945-9aac7c0209c7",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	1,
	14,
	'/');
INSERT INTO V_VAL_PROXY
	VALUES ("d7fdd115-326e-48e1-a08e-941ecc040059",
	0,
	0,
	1,
	57,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"b8b20d44-f88a-48c5-9a7a-3c0b15a6e5d9",
	'/');
INSERT INTO V_BRV_PROXY
	VALUES ("d7fdd115-326e-48e1-a08e-941ecc040059",
	"5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	1,
	1,
	52,
	'/');
INSERT INTO S_BRG_PROXY
	VALUES ("5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	"d00f3316-ba20-4040-9632-8a2f59739819",
	'GetData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	'',
	1,
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/ExternalEntities/ExternalEntities.xtuml');
INSERT INTO SPR_PEP_PROXY
	VALUES ("69d100f6-f213-476d-b406-11905eff8183",
	"34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO SPR_PO_PROXY
	VALUES ("69d100f6-f213-476d-b406-11905eff8183",
	'From',
	'',
	'',
	1,
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO ACT_POB_PROXY
	VALUES ("ec2cce74-f9b1-4f83-9fa3-4dffd0aa5e93",
	"69d100f6-f213-476d-b406-11905eff8183",
	'/');
INSERT INTO ACT_ACT_PROXY
	VALUES ("ec2cce74-f9b1-4f83-9fa3-4dffd0aa5e93",
	'interface operation',
	0,
	"37b47b1f-a9a7-4a85-bc44-1e0727e18958",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::From',
	"00000000-0000-0000-0000-000000000000",
	'/');
INSERT INTO ACT_BLK_PROXY
	VALUES ("37b47b1f-a9a7-4a85-bc44-1e0727e18958",
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
	"ec2cce74-f9b1-4f83-9fa3-4dffd0aa5e93",
	"00000000-0000-0000-0000-000000000000",
	'/');
INSERT INTO C_PO_PROXY
	VALUES ("4353928a-8ff6-4b05-9fd1-81bfee1cbfc3",
	"ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	'AppLibPort',
	0,
	0,
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("169b10de-0861-4d5f-952f-11eae841aada",
	"ba5eda7a-def5-0000-0000-000000000000",
	'To',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Interfaces/AppLibInterface/AppLibInterface.xtuml');
INSERT INTO C_IO_PROXY
	VALUES ("34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"ba5eda7a-def5-0000-0000-000000000000",
	'From',
	'',
	1,
	'',
	"169b10de-0861-4d5f-952f-11eae841aada",
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Interfaces/AppLibInterface/AppLibInterface.xtuml');
INSERT INTO C_C_PROXY
	VALUES ("ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'Select_Me2',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'',
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2/Select_Me2.xtuml');
INSERT INTO PE_PE_PROXY
	VALUES ("ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	1,
	"9b86608b-83e7-420e-9137-d3f9d4022bd8",
	"00000000-0000-0000-0000-000000000000",
	2,
	'../../../EERealizedStaticDataTestLibraryDuplicateRealizedEE/models/EERealizedStaticDataTestLibraryDuplicateRealizedEE/Select_Me2/Select_Me2.xtuml');
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.5

INSERT INTO S_SYS
	VALUES ("eb70e36b-077c-495d-8c74-7118eb669658",
	'EERealizedStaticDataTestLibraryDuplicateRealizedEE',
	1);
INSERT INTO EP_PKG
	VALUES ("4ec1dcd4-bcc3-49fe-bba0-10aa55b8fca0",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	'Interfaces',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("8754de7f-ab0d-4dc3-a92a-3cc112add588",
	1,
	"4ec1dcd4-bcc3-49fe-bba0-10aa55b8fca0",
	"00000000-0000-0000-0000-000000000000",
	6);
INSERT INTO C_I
	VALUES ("8754de7f-ab0d-4dc3-a92a-3cc112add588",
	"00000000-0000-0000-0000-000000000000",
	'AppLibInterface',
	'');
INSERT INTO C_EP
	VALUES ("169b10de-0861-4d5f-952f-11eae841aada",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	-1,
	'To',
	'');
INSERT INTO C_IO
	VALUES ("169b10de-0861-4d5f-952f-11eae841aada",
	"ba5eda7a-def5-0000-0000-000000000000",
	'To',
	'',
	0,
	'',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO C_EP
	VALUES ("34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	-1,
	'From',
	'');
INSERT INTO C_IO
	VALUES ("34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"ba5eda7a-def5-0000-0000-000000000000",
	'From',
	'',
	1,
	'',
	"169b10de-0861-4d5f-952f-11eae841aada");
INSERT INTO EP_PKG
	VALUES ("9b86608b-83e7-420e-9137-d3f9d4022bd8",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	'Select_Me2',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	1,
	"9b86608b-83e7-420e-9137-d3f9d4022bd8",
	"00000000-0000-0000-0000-000000000000",
	2);
INSERT INTO C_C
	VALUES ("ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000",
	'Select_Me2',
	'',
	0,
	"00000000-0000-0000-0000-000000000000",
	0,
	'');
INSERT INTO C_PO
	VALUES ("4353928a-8ff6-4b05-9fd1-81bfee1cbfc3",
	"ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	'AppLibPort',
	0,
	0);
INSERT INTO C_IR
	VALUES ("0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	"8754de7f-ab0d-4dc3-a92a-3cc112add588",
	"00000000-0000-0000-0000-000000000000",
	"4353928a-8ff6-4b05-9fd1-81bfee1cbfc3");
INSERT INTO C_P
	VALUES ("0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'AppLibInterface',
	'Unnamed Interface',
	'',
	'Select_Me2::AppLibPort::AppLibInterface');
INSERT INTO SPR_PEP
	VALUES ("ecec1380-fcc5-4272-abe4-afde283e08ec",
	"169b10de-0861-4d5f-952f-11eae841aada",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665");
INSERT INTO SPR_PO
	VALUES ("ecec1380-fcc5-4272-abe4-afde283e08ec",
	'To',
	'',
	'LOG::LogInfo(message:"Modified after callback: " + CMP::GetData());
',
	1);
INSERT INTO ACT_POB
	VALUES ("078edda0-94ec-4333-a983-fab294477f12",
	"ecec1380-fcc5-4272-abe4-afde283e08ec");
INSERT INTO ACT_ACT
	VALUES ("078edda0-94ec-4333-a983-fab294477f12",
	'interface operation',
	0,
	"d77af792-256a-4f89-8e40-c081ac65673a",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::To',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d77af792-256a-4f89-8e40-c081ac65673a",
	0,
	0,
	0,
	'CMP',
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
	"078edda0-94ec-4333-a983-fab294477f12",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("78e1094b-1ba2-4991-85a1-ddecf2e12f01",
	"d77af792-256a-4f89-8e40-c081ac65673a",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'AppLibPort::AppLibInterface::To line: 1');
INSERT INTO ACT_BRG
	VALUES ("78e1094b-1ba2-4991-85a1-ddecf2e12f01",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES ("e34d0680-1858-438d-bb3b-b83a284b79c4",
	0,
	0,
	1,
	22,
	47,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"d77af792-256a-4f89-8e40-c081ac65673a");
INSERT INTO V_LST
	VALUES ("e34d0680-1858-438d-bb3b-b83a284b79c4",
	'Modified after callback: ');
INSERT INTO V_VAL
	VALUES ("883adc37-ffba-41b6-81cc-e34f6a2c689f",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"d77af792-256a-4f89-8e40-c081ac65673a");
INSERT INTO V_BIN
	VALUES ("883adc37-ffba-41b6-81cc-e34f6a2c689f",
	"a5819669-6d1e-4b9d-8f93-2b20c1dbd379",
	"e34d0680-1858-438d-bb3b-b83a284b79c4",
	'+');
INSERT INTO V_PAR
	VALUES ("883adc37-ffba-41b6-81cc-e34f6a2c689f",
	"78e1094b-1ba2-4991-85a1-ddecf2e12f01",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	1,
	14);
INSERT INTO V_VAL
	VALUES ("a5819669-6d1e-4b9d-8f93-2b20c1dbd379",
	0,
	0,
	1,
	57,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"d77af792-256a-4f89-8e40-c081ac65673a");
INSERT INTO V_BRV
	VALUES ("a5819669-6d1e-4b9d-8f93-2b20c1dbd379",
	"5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	1,
	1,
	52);
INSERT INTO SPR_PEP
	VALUES ("69d100f6-f213-476d-b406-11905eff8183",
	"34feca2e-29c0-463d-a0c3-14d60180eb4b",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665");
INSERT INTO SPR_PO
	VALUES ("69d100f6-f213-476d-b406-11905eff8183",
	'From',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES ("f2a912c1-e6eb-4fa8-8079-1e3f4bbcc237",
	"69d100f6-f213-476d-b406-11905eff8183");
INSERT INTO ACT_ACT
	VALUES ("f2a912c1-e6eb-4fa8-8079-1e3f4bbcc237",
	'interface operation',
	0,
	"a7f585a1-0810-4416-8513-97697175e9da",
	"00000000-0000-0000-0000-000000000000",
	0,
	'AppLibPort::AppLibInterface::From',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("a7f585a1-0810-4416-8513-97697175e9da",
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
	"f2a912c1-e6eb-4fa8-8079-1e3f4bbcc237",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("1a46339a-9213-4ca9-91bf-ce733ec75465",
	1,
	"00000000-0000-0000-0000-000000000000",
	"ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	7);
INSERT INTO EP_PKG
	VALUES ("1a46339a-9213-4ca9-91bf-ce733ec75465",
	"00000000-0000-0000-0000-000000000000",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	'Functions',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("c9b66516-5464-45c8-aed6-075fb657a064",
	1,
	"1a46339a-9213-4ca9-91bf-ce733ec75465",
	"00000000-0000-0000-0000-000000000000",
	1);
INSERT INTO S_SYNC
	VALUES ("c9b66516-5464-45c8-aed6-075fb657a064",
	"00000000-0000-0000-0000-000000000000",
	'TestCase1',
	'',
	'EE = CMP::preserveMe();

LOG::LogInfo(message:"Default data: " + CMP::GetData());

CMP::SetData(data:"MODIFIED");

LOG::LogInfo(message:"Modified data: " + CMP::GetData());

AppLibPort::From();
',
	"ba5eda7a-def5-0000-0000-000000000000",
	1,
	'');
INSERT INTO ACT_FNB
	VALUES ("264311df-dd18-478a-a836-b9e954a5eddf",
	"c9b66516-5464-45c8-aed6-075fb657a064");
INSERT INTO ACT_ACT
	VALUES ("264311df-dd18-478a-a836-b9e954a5eddf",
	'function',
	0,
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"00000000-0000-0000-0000-000000000000",
	0,
	'TestCase1',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	0,
	0,
	0,
	'AppLibPort',
	'',
	'',
	9,
	1,
	9,
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
	"264311df-dd18-478a-a836-b9e954a5eddf",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f1812a2b-ecf8-48cb-a824-fc759c7dc4a5",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"57acfb16-cc48-4076-8eee-b276e7014838",
	1,
	1,
	'TestCase1 line: 1');
INSERT INTO ACT_AI
	VALUES ("f1812a2b-ecf8-48cb-a824-fc759c7dc4a5",
	"9d9e2fcc-d28a-407e-b720-43e6aa53bdc7",
	"c91be974-549d-4d6c-a15f-3df2cd12868d",
	0,
	0);
INSERT INTO ACT_SMT
	VALUES ("57acfb16-cc48-4076-8eee-b276e7014838",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"4d0a3e7b-b60e-446c-a463-c077faa063b2",
	3,
	1,
	'TestCase1 line: 3');
INSERT INTO ACT_BRG
	VALUES ("57acfb16-cc48-4076-8eee-b276e7014838",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	3,
	6,
	3,
	1);
INSERT INTO ACT_SMT
	VALUES ("4d0a3e7b-b60e-446c-a463-c077faa063b2",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"1ef164ae-5a0a-45f1-91b2-d39eb8a84582",
	5,
	1,
	'TestCase1 line: 5');
INSERT INTO ACT_BRG
	VALUES ("4d0a3e7b-b60e-446c-a463-c077faa063b2",
	"9e0fcd98-bda6-422a-8157-6b905b9ea67f",
	5,
	6,
	5,
	1);
INSERT INTO ACT_SMT
	VALUES ("1ef164ae-5a0a-45f1-91b2-d39eb8a84582",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"a9c94e21-e1cf-4d45-a44f-a1383087f341",
	7,
	1,
	'TestCase1 line: 7');
INSERT INTO ACT_BRG
	VALUES ("1ef164ae-5a0a-45f1-91b2-d39eb8a84582",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	7,
	6,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES ("a9c94e21-e1cf-4d45-a44f-a1383087f341",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	"00000000-0000-0000-0000-000000000000",
	9,
	1,
	'TestCase1 line: 9');
INSERT INTO ACT_IOP
	VALUES ("a9c94e21-e1cf-4d45-a44f-a1383087f341",
	9,
	13,
	9,
	1,
	"69d100f6-f213-476d-b406-11905eff8183",
	"00000000-0000-0000-0000-000000000000",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO V_VAL
	VALUES ("c91be974-549d-4d6c-a15f-3df2cd12868d",
	1,
	1,
	1,
	1,
	2,
	0,
	0,
	0,
	0,
	"08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_TVL
	VALUES ("c91be974-549d-4d6c-a15f-3df2cd12868d",
	"516776f7-feb3-4792-a75e-f48341993532");
INSERT INTO V_VAL
	VALUES ("9d9e2fcc-d28a-407e-b720-43e6aa53bdc7",
	0,
	0,
	1,
	11,
	-1,
	0,
	0,
	0,
	0,
	"08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_BRV
	VALUES ("9d9e2fcc-d28a-407e-b720-43e6aa53bdc7",
	"f2f8fab9-52e4-463e-807b-1f4fd312068b",
	1,
	1,
	6);
INSERT INTO V_VAL
	VALUES ("0fd2108e-4356-44c2-af8a-b77d4b7373bb",
	0,
	0,
	3,
	22,
	36,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_LST
	VALUES ("0fd2108e-4356-44c2-af8a-b77d4b7373bb",
	'Default data: ');
INSERT INTO V_VAL
	VALUES ("1e2bb205-b112-48aa-aa49-cdaf3409294d",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_BIN
	VALUES ("1e2bb205-b112-48aa-aa49-cdaf3409294d",
	"05556317-e86d-42c5-96af-d3ad62374bac",
	"0fd2108e-4356-44c2-af8a-b77d4b7373bb",
	'+');
INSERT INTO V_PAR
	VALUES ("1e2bb205-b112-48aa-aa49-cdaf3409294d",
	"57acfb16-cc48-4076-8eee-b276e7014838",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	3,
	14);
INSERT INTO V_VAL
	VALUES ("05556317-e86d-42c5-96af-d3ad62374bac",
	0,
	0,
	3,
	46,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_BRV
	VALUES ("05556317-e86d-42c5-96af-d3ad62374bac",
	"5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	1,
	3,
	41);
INSERT INTO V_VAL
	VALUES ("c4502e41-5ef1-42bc-83d0-a7748da5095d",
	0,
	0,
	5,
	19,
	27,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_LST
	VALUES ("c4502e41-5ef1-42bc-83d0-a7748da5095d",
	'MODIFIED');
INSERT INTO V_PAR
	VALUES ("c4502e41-5ef1-42bc-83d0-a7748da5095d",
	"4d0a3e7b-b60e-446c-a463-c077faa063b2",
	"00000000-0000-0000-0000-000000000000",
	'data',
	"00000000-0000-0000-0000-000000000000",
	5,
	14);
INSERT INTO V_VAL
	VALUES ("35ebba86-24a3-4b5c-a0a9-c9e64ebec8d2",
	0,
	0,
	7,
	22,
	37,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_LST
	VALUES ("35ebba86-24a3-4b5c-a0a9-c9e64ebec8d2",
	'Modified data: ');
INSERT INTO V_VAL
	VALUES ("02bb95d7-2b1e-42ca-8199-767478a86351",
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_BIN
	VALUES ("02bb95d7-2b1e-42ca-8199-767478a86351",
	"c2aace1b-88ef-4824-bc5c-eb62342fb366",
	"35ebba86-24a3-4b5c-a0a9-c9e64ebec8d2",
	'+');
INSERT INTO V_PAR
	VALUES ("02bb95d7-2b1e-42ca-8199-767478a86351",
	"1ef164ae-5a0a-45f1-91b2-d39eb8a84582",
	"00000000-0000-0000-0000-000000000000",
	'message',
	"00000000-0000-0000-0000-000000000000",
	7,
	14);
INSERT INTO V_VAL
	VALUES ("c2aace1b-88ef-4824-bc5c-eb62342fb366",
	0,
	0,
	7,
	47,
	-1,
	0,
	0,
	0,
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3");
INSERT INTO V_BRV
	VALUES ("c2aace1b-88ef-4824-bc5c-eb62342fb366",
	"5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	1,
	7,
	42);
INSERT INTO V_VAR
	VALUES ("516776f7-feb3-4792-a75e-f48341993532",
	"97c183cf-a031-4d2d-8f7b-e06ae5b728a3",
	'EE',
	1,
	"08b741e3-d595-44ca-820b-3dbd9f57fb6c");
INSERT INTO V_TRN
	VALUES ("516776f7-feb3-4792-a75e-f48341993532",
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO V_LOC
	VALUES ("572ac816-2ae5-4d29-adba-b22d074fd746",
	1,
	1,
	2,
	"516776f7-feb3-4792-a75e-f48341993532");
INSERT INTO PE_PE
	VALUES ("e066fae2-bef2-467c-bd00-38aa14b2eabb",
	1,
	"00000000-0000-0000-0000-000000000000",
	"ba08cbd7-0b9d-4529-81a0-c740d033af4f",
	7);
INSERT INTO EP_PKG
	VALUES ("e066fae2-bef2-467c-bd00-38aa14b2eabb",
	"00000000-0000-0000-0000-000000000000",
	"eb70e36b-077c-495d-8c74-7118eb669658",
	'ExternalEntities',
	'',
	0);
INSERT INTO PE_PE
	VALUES ("0b18d990-3978-4b5f-97c8-02cd9bb84015",
	1,
	"e066fae2-bef2-467c-bd00-38aa14b2eabb",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("66fee427-e088-43ed-9486-52f0970d66d4",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'current_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	0,
	'');
INSERT INTO S_BRG
	VALUES ("cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'create_date',
	'',
	1,
	"ba5eda7a-def5-0000-0000-00000000000e",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("7c31d4ba-3fff-4275-bfb3-7b0d5bff17ff",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'second',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"a1a65aaa-991e-4925-a1f6-a5d6c40a5e14",
	'');
INSERT INTO S_BPARM
	VALUES ("1c6e163d-a107-4df4-ad55-bc3d585f1c52",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'minute',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"15353fb0-f6cc-423b-a7da-7b38a8dc845b",
	'');
INSERT INTO S_BPARM
	VALUES ("15353fb0-f6cc-423b-a7da-7b38a8dc845b",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'hour',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"267eeff8-f096-458c-8897-6977dde119a5",
	'');
INSERT INTO S_BPARM
	VALUES ("267eeff8-f096-458c-8897-6977dde119a5",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'day',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("a1a65aaa-991e-4925-a1f6-a5d6c40a5e14",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'month',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"1c6e163d-a107-4df4-ad55-bc3d585f1c52",
	'');
INSERT INTO S_BPARM
	VALUES ("215d053d-443c-467e-a344-5d36c8f9e3cb",
	"cc16a844-ee19-44ad-a4c6-66ec0e139fb9",
	'year',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"7c31d4ba-3fff-4275-bfb3-7b0d5bff17ff",
	'');
INSERT INTO S_BRG
	VALUES ("71c35107-5a2d-4e61-91bf-0f0eea4714c9",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_second',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("e3c03a0f-8878-4ce7-bfd2-53b33a956a59",
	"71c35107-5a2d-4e61-91bf-0f0eea4714c9",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("9ddde11f-91b4-43c8-b2d7-a5fb1d20b69e",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_minute',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("38ed2fd8-0de4-47a3-a686-c00e337bd670",
	"9ddde11f-91b4-43c8-b2d7-a5fb1d20b69e",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("80ac1870-6a40-45e5-b077-e10217c56dfa",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_hour',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("c0e3bfff-6ab7-48d5-b499-ce9e742e0582",
	"80ac1870-6a40-45e5-b077-e10217c56dfa",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("3d16cf8c-9c1b-4b7e-b956-5b5c6dfd806d",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_day',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("7a6784fb-9f5d-47e8-afce-d5c2709d77dd",
	"3d16cf8c-9c1b-4b7e-b956-5b5c6dfd806d",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("89e21190-19c0-40aa-8ebc-cbacd86723fd",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_month',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("9044050c-5531-4c05-b9ab-85d610a4a885",
	"89e21190-19c0-40aa-8ebc-cbacd86723fd",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("d24ddc32-d3ee-4435-b742-e8867099f935",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'get_year',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("3684d6c6-86a0-417c-96fd-0c1e705a5814",
	"d24ddc32-d3ee-4435-b742-e8867099f935",
	'date',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("bf761f4d-612d-4550-8830-851b0300dbb7",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'current_clock',
	'',
	1,
	"ba5eda7a-def5-0000-0000-000000000010",
	'',
	0,
	'');
INSERT INTO S_BRG
	VALUES ("f5234811-1718-47e4-a10c-4d12d906f7c7",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("8db9506a-fc99-4cb2-aedf-9b095434d0e2",
	"f5234811-1718-47e4-a10c-4d12d906f7c7",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"f4906246-b705-4df5-9d5c-45f133aa91f6",
	'');
INSERT INTO S_BPARM
	VALUES ("f4906246-b705-4df5-9d5c-45f133aa91f6",
	"f5234811-1718-47e4-a10c-4d12d906f7c7",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("bb69597e-3b84-456c-a161-b1e522643cd0",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	"ba5eda7a-def5-0000-0000-00000000000f",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("38537d7d-ea2c-47ce-8301-65dd9f8b26e5",
	"bb69597e-3b84-456c-a161-b1e522643cd0",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"cd0ae5b6-d401-4268-929c-e2ce91b1159d",
	'');
INSERT INTO S_BPARM
	VALUES ("cd0ae5b6-d401-4268-929c-e2ce91b1159d",
	"bb69597e-3b84-456c-a161-b1e522643cd0",
	'event_inst',
	"ba5eda7a-def5-0000-0000-00000000000a",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("e6b11737-4b86-41e9-be9b-05fca5a1f0bd",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000002",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("83d815eb-474c-442a-a1be-917f4d3f631e",
	"e6b11737-4b86-41e9-be9b-05fca5a1f0bd",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("d8b3f790-b411-46c2-b0f5-ab52200473fa",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("637d9f9d-6b45-42c7-a35c-415bfc4e279d",
	"d8b3f790-b411-46c2-b0f5-ab52200473fa",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"2b9a0a5b-4fdc-4121-ba5d-09859b060782",
	'');
INSERT INTO S_BPARM
	VALUES ("2b9a0a5b-4fdc-4121-ba5d-09859b060782",
	"d8b3f790-b411-46c2-b0f5-ab52200473fa",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("0b8a924d-b0c4-4845-a488-0030cb22005e",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("f6255e37-4265-459b-85b1-27e16bcfe5cb",
	"0b8a924d-b0c4-4845-a488-0030cb22005e",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"3d936c1e-e025-4cda-bca3-8d52697fd200",
	'');
INSERT INTO S_BPARM
	VALUES ("3d936c1e-e025-4cda-bca3-8d52697fd200",
	"0b8a924d-b0c4-4845-a488-0030cb22005e",
	'microseconds',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BRG
	VALUES ("67e29287-2155-4bdf-ab7d-c170f393fa0b",
	"0b18d990-3978-4b5f-97c8-02cd9bb84015",
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	"ba5eda7a-def5-0000-0000-000000000001",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("7bd6557c-419e-4f2d-9f22-abade3a0f806",
	"67e29287-2155-4bdf-ab7d-c170f393fa0b",
	'timer_inst_ref',
	"ba5eda7a-def5-0000-0000-00000000000f",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("78bccfaa-8770-42c5-89d5-24d262bf5742",
	1,
	"e066fae2-bef2-467c-bd00-38aa14b2eabb",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("78bccfaa-8770-42c5-89d5-24d262bf5742",
	'Architecture',
	'',
	'ARCH',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("41244e24-07b8-4acb-a81e-2aa7ee0716d0",
	"78bccfaa-8770-42c5-89d5-24d262bf5742",
	'shutdown',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'control stop;',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("9fef9818-afd1-413d-b184-2e33590d6dc3",
	"41244e24-07b8-4acb-a81e-2aa7ee0716d0");
INSERT INTO ACT_ACT
	VALUES ("9fef9818-afd1-413d-b184-2e33590d6dc3",
	'bridge',
	0,
	"189e929b-13e5-4c80-8f9b-45603aa6d5bc",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Architecture::shutdown',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("189e929b-13e5-4c80-8f9b-45603aa6d5bc",
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
	"9fef9818-afd1-413d-b184-2e33590d6dc3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_SMT
	VALUES ("f1b8adfa-3f70-48ef-850a-f1b4d7c1ba0a",
	"189e929b-13e5-4c80-8f9b-45603aa6d5bc",
	"00000000-0000-0000-0000-000000000000",
	1,
	1,
	'Architecture::shutdown line: 1');
INSERT INTO ACT_CTL
	VALUES ("f1b8adfa-3f70-48ef-850a-f1b4d7c1ba0a");
INSERT INTO PE_PE
	VALUES ("9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	1,
	"e066fae2-bef2-467c-bd00-38aa14b2eabb",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'Logging',
	'',
	'LOG',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("10d02e2f-13b5-49cf-9ba6-1b30970edfd6",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogSuccess',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("6411de8c-e6dd-4a61-84bf-ad976a844d43",
	"10d02e2f-13b5-49cf-9ba6-1b30970edfd6",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("e5342f20-658d-409c-bc5a-21e680d89b39",
	"10d02e2f-13b5-49cf-9ba6-1b30970edfd6");
INSERT INTO ACT_ACT
	VALUES ("e5342f20-658d-409c-bc5a-21e680d89b39",
	'bridge',
	0,
	"d56f02c8-2436-4ec2-9dfc-9d6104fd4795",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogSuccess',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d56f02c8-2436-4ec2-9dfc-9d6104fd4795",
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
	"e5342f20-658d-409c-bc5a-21e680d89b39",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("0fa565be-0fd8-42ff-8049-5b8d89221508",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogFailure',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("8b413cd6-6742-49cf-843f-b84b7954291a",
	"0fa565be-0fd8-42ff-8049-5b8d89221508",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("d89951bd-9c29-4303-8a9b-53ae0e7fd50f",
	"0fa565be-0fd8-42ff-8049-5b8d89221508");
INSERT INTO ACT_ACT
	VALUES ("d89951bd-9c29-4303-8a9b-53ae0e7fd50f",
	'bridge',
	0,
	"3d766573-0e90-413a-9bdc-480778ebd210",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogFailure',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3d766573-0e90-413a-9bdc-480778ebd210",
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
	"d89951bd-9c29-4303-8a9b-53ae0e7fd50f",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogInfo',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("570f4e9f-b5af-49d1-9066-e4ca183604b1",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("565f7e15-0b1c-475e-aaf1-bdb169f00403",
	"d8ee1801-f52a-4b77-9d1f-8cf32a594431");
INSERT INTO ACT_ACT
	VALUES ("565f7e15-0b1c-475e-aaf1-bdb169f00403",
	'bridge',
	0,
	"070c181a-fa46-4b8d-8e96-97ff11b0699d",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogInfo',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("070c181a-fa46-4b8d-8e96-97ff11b0699d",
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
	"565f7e15-0b1c-475e-aaf1-bdb169f00403",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("7ec71bbb-7d49-4147-bf95-f88a608eb940",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogDate',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("f34354c6-f012-4a9d-9cc6-490cc6c7aeb3",
	"7ec71bbb-7d49-4147-bf95-f88a608eb940",
	'd',
	"ba5eda7a-def5-0000-0000-00000000000e",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO S_BPARM
	VALUES ("bf5ed02a-aa10-4cee-b8d9-b58b87ae4462",
	"7ec71bbb-7d49-4147-bf95-f88a608eb940",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"f34354c6-f012-4a9d-9cc6-490cc6c7aeb3",
	'');
INSERT INTO ACT_BRB
	VALUES ("81765fa0-da1f-4b20-8cf5-b9c9b1daac39",
	"7ec71bbb-7d49-4147-bf95-f88a608eb940");
INSERT INTO ACT_ACT
	VALUES ("81765fa0-da1f-4b20-8cf5-b9c9b1daac39",
	'bridge',
	0,
	"308792d6-f5c7-435a-9b1e-7d3b7e0fbf20",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogDate',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("308792d6-f5c7-435a-9b1e-7d3b7e0fbf20",
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
	"81765fa0-da1f-4b20-8cf5-b9c9b1daac39",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("e9aab547-ab05-46b8-bcda-185055a11f69",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogTime',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("5ee873a1-f0c7-447a-93eb-2c7c10161e23",
	"e9aab547-ab05-46b8-bcda-185055a11f69",
	't',
	"ba5eda7a-def5-0000-0000-000000000010",
	0,
	'',
	"c8efbfc7-4d39-4b78-bf04-5a9157a6d6e1",
	'');
INSERT INTO S_BPARM
	VALUES ("c8efbfc7-4d39-4b78-bf04-5a9157a6d6e1",
	"e9aab547-ab05-46b8-bcda-185055a11f69",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("3167f6d2-de0a-4f90-88ff-c0b5dd6f3d03",
	"e9aab547-ab05-46b8-bcda-185055a11f69");
INSERT INTO ACT_ACT
	VALUES ("3167f6d2-de0a-4f90-88ff-c0b5dd6f3d03",
	'bridge',
	0,
	"9386520b-e15f-4ff4-abce-e85c4b72ee45",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogTime',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("9386520b-e15f-4ff4-abce-e85c4b72ee45",
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
	"3167f6d2-de0a-4f90-88ff-c0b5dd6f3d03",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("53c3d1ec-ec71-456e-87f1-76c47cf0b9ca",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogReal',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("0a8e1baf-a3d1-447b-a56d-5940aa419af2",
	"53c3d1ec-ec71-456e-87f1-76c47cf0b9ca",
	'r',
	"ba5eda7a-def5-0000-0000-000000000003",
	0,
	'',
	"ac039cbd-4788-40bc-b08c-c25d922c9db6",
	'');
INSERT INTO S_BPARM
	VALUES ("ac039cbd-4788-40bc-b08c-c25d922c9db6",
	"53c3d1ec-ec71-456e-87f1-76c47cf0b9ca",
	'message',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("e0479dd2-94ad-45e4-a94b-0f6eee3736b4",
	"53c3d1ec-ec71-456e-87f1-76c47cf0b9ca");
INSERT INTO ACT_ACT
	VALUES ("e0479dd2-94ad-45e4-a94b-0f6eee3736b4",
	'bridge',
	0,
	"3b443137-2a71-4884-b201-15b9fd822a0f",
	"00000000-0000-0000-0000-000000000000",
	0,
	'Logging::LogReal',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("3b443137-2a71-4884-b201-15b9fd822a0f",
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
	"e0479dd2-94ad-45e4-a94b-0f6eee3736b4",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("796309c7-3fa5-4f39-9011-3769aaf8598a",
	"9ce0d656-ff77-4b4b-a1d6-07d063e98a8e",
	'LogInteger',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES ("15766186-09e8-4d56-81e0-4ff0b999d7fb",
	"796309c7-3fa5-4f39-9011-3769aaf8598a",
	'message',
	"ba5eda7a-def5-0000-0000-000000000002",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO PE_PE
	VALUES ("d00f3316-ba20-4040-9632-8a2f59739819",
	1,
	"e066fae2-bef2-467c-bd00-38aa14b2eabb",
	"00000000-0000-0000-0000-000000000000",
	5);
INSERT INTO S_EE
	VALUES ("d00f3316-ba20-4040-9632-8a2f59739819",
	'CMP',
	'',
	'CMP',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("5fed9068-f8bb-41eb-95bc-15109d5e0bb4",
	"d00f3316-ba20-4040-9632-8a2f59739819",
	'GetData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000004",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("8d07e7c9-e12c-4cde-b8e6-bed9e875f4f3",
	"5fed9068-f8bb-41eb-95bc-15109d5e0bb4");
INSERT INTO ACT_ACT
	VALUES ("8d07e7c9-e12c-4cde-b8e6-bed9e875f4f3",
	'bridge',
	0,
	"d4c555ac-ce4d-44d3-8b55-79d1526b0df2",
	"00000000-0000-0000-0000-000000000000",
	0,
	'CMP::GetData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("d4c555ac-ce4d-44d3-8b55-79d1526b0df2",
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
	"8d07e7c9-e12c-4cde-b8e6-bed9e875f4f3",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("9e0fcd98-bda6-422a-8157-6b905b9ea67f",
	"d00f3316-ba20-4040-9632-8a2f59739819",
	'SetData',
	'',
	0,
	"ba5eda7a-def5-0000-0000-000000000000",
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES ("991a7acb-4732-464b-b460-e0dcc7ce6b43",
	"9e0fcd98-bda6-422a-8157-6b905b9ea67f",
	'data',
	"ba5eda7a-def5-0000-0000-000000000004",
	0,
	'',
	"00000000-0000-0000-0000-000000000000",
	'');
INSERT INTO ACT_BRB
	VALUES ("8c6c3926-b204-4e42-8827-70a2e9d451a2",
	"9e0fcd98-bda6-422a-8157-6b905b9ea67f");
INSERT INTO ACT_ACT
	VALUES ("8c6c3926-b204-4e42-8827-70a2e9d451a2",
	'bridge',
	0,
	"1a07ac7f-486c-48e8-af3e-169b61ba36a4",
	"00000000-0000-0000-0000-000000000000",
	0,
	'CMP::SetData',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("1a07ac7f-486c-48e8-af3e-169b61ba36a4",
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
	"8c6c3926-b204-4e42-8827-70a2e9d451a2",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO S_BRG
	VALUES ("f2f8fab9-52e4-463e-807b-1f4fd312068b",
	"d00f3316-ba20-4040-9632-8a2f59739819",
	'preserveMe',
	'',
	0,
	"08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES ("9546a67a-49cd-4d52-94af-c4f428819519",
	"f2f8fab9-52e4-463e-807b-1f4fd312068b");
INSERT INTO ACT_ACT
	VALUES ("9546a67a-49cd-4d52-94af-c4f428819519",
	'bridge',
	0,
	"e74b0943-0e68-4628-81f8-1e4f29d2e81b",
	"00000000-0000-0000-0000-000000000000",
	0,
	'CMP::preserveMe',
	"00000000-0000-0000-0000-000000000000");
INSERT INTO ACT_BLK
	VALUES ("e74b0943-0e68-4628-81f8-1e4f29d2e81b",
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
	"9546a67a-49cd-4d52-94af-c4f428819519",
	"00000000-0000-0000-0000-000000000000");
INSERT INTO PE_PE
	VALUES ("08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	1,
	"9b86608b-83e7-420e-9137-d3f9d4022bd8",
	"00000000-0000-0000-0000-000000000000",
	3);
INSERT INTO S_DT
	VALUES ("08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	"00000000-0000-0000-0000-000000000000",
	'myRef',
	'',
	'');
INSERT INTO S_UDT
	VALUES ("08b741e3-d595-44ca-820b-3dbd9f57fb6c",
	"ba5eda7a-def5-0000-0000-00000000000b",
	0);
INSERT INTO PE_PE
	VALUES ("a5fd5ff1-a79c-438c-91cb-40307dd73416",
	1,
	"9b86608b-83e7-420e-9137-d3f9d4022bd8",
	"00000000-0000-0000-0000-000000000000",
	22);
INSERT INTO C_SF
	VALUES ("a5fd5ff1-a79c-438c-91cb-40307dd73416",
	"4ff781f9-09e5-4253-aeb1-a56f316febd7",
	"0c64b772-2dfc-44d2-abce-65d9cfc7d665",
	'',
	'Select_Me2::AppLibPort::AppLibInterface -o)- App::AppLibPort::AppLibInterface');
INSERT INTO C_R_PROXY
	VALUES ("4ff781f9-09e5-4253-aeb1-a56f316febd7",
	'AppLibInterface',
	'',
	'Unnamed Interface',
	'App::AppLibPort::AppLibInterface',
	'../../../EERealizedStaticDataTestNoLocalRealizedEE/models/EERealizedStaticDataTestNoLocalRealizedEE/Components/App/App.xtuml');
