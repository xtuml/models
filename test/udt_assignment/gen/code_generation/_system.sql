-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.5

INSERT INTO S_SYS
	VALUES (1,
	'udt_assignment',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'udt_assignment',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	2);
INSERT INTO C_C
	VALUES (3,
	0,
	0,
	'udt_assignment',
	'',
	0,
	0,
	0,
	'');
INSERT INTO PE_PE
	VALUES (4,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (4,
	0,
	1,
	'udt_assignment',
	'',
	0);
INSERT INTO PE_PE
	VALUES (5,
	1,
	4,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (5,
	'udt_assignment',
	1,
	'KEY',
	'',
	0);
INSERT INTO O_TFR
	VALUES (6,
	5,
	'udt_assignment_test',
	'',
	7,
	1,
	'x = param.udt + 1;
x = param.sdt.member;
x = param.irdt.attribute;
if(param.udt == param.udt2)
end if;
if(param.edt == param.edt2)
end if;
if(not param.bool_udt)
end if;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (8,
	6,
	'udt',
	9,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (10,
	6,
	'sdt',
	11,
	0,
	'',
	8,
	'');
INSERT INTO O_TPARM
	VALUES (12,
	6,
	'irdt',
	13,
	0,
	'',
	10,
	'');
INSERT INTO O_TPARM
	VALUES (14,
	6,
	'udt2',
	15,
	0,
	'',
	12,
	'');
INSERT INTO O_TPARM
	VALUES (16,
	6,
	'edt',
	17,
	0,
	'',
	14,
	'');
INSERT INTO O_TPARM
	VALUES (18,
	6,
	'edt2',
	19,
	0,
	'',
	16,
	'');
INSERT INTO O_TPARM
	VALUES (20,
	6,
	'bool_udt',
	21,
	0,
	'',
	18,
	'');
INSERT INTO ACT_OPB
	VALUES (22,
	6);
INSERT INTO ACT_ACT
	VALUES (22,
	'operation',
	0,
	23,
	0,
	0,
	'udt_assignment::udt_assignment_test',
	0);
INSERT INTO ACT_BLK
	VALUES (23,
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
	0,
	0,
	0,
	22,
	0);
INSERT INTO ACT_SMT
	VALUES (24,
	23,
	25,
	1,
	1,
	'udt_assignment::udt_assignment_test line: 1');
INSERT INTO ACT_AI
	VALUES (24,
	26,
	27,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (25,
	23,
	28,
	2,
	1,
	'udt_assignment::udt_assignment_test line: 2');
INSERT INTO ACT_AI
	VALUES (25,
	29,
	30,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (28,
	23,
	31,
	3,
	1,
	'udt_assignment::udt_assignment_test line: 3');
INSERT INTO ACT_AI
	VALUES (28,
	32,
	33,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (31,
	23,
	34,
	4,
	1,
	'udt_assignment::udt_assignment_test line: 4');
INSERT INTO ACT_IF
	VALUES (31,
	35,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (34,
	23,
	37,
	6,
	1,
	'udt_assignment::udt_assignment_test line: 6');
INSERT INTO ACT_IF
	VALUES (34,
	38,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (37,
	23,
	0,
	8,
	1,
	'udt_assignment::udt_assignment_test line: 8');
INSERT INTO ACT_IF
	VALUES (37,
	40,
	41,
	0,
	0);
INSERT INTO V_VAL
	VALUES (27,
	1,
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_TVL
	VALUES (27,
	42);
INSERT INTO V_VAL
	VALUES (43,
	0,
	0,
	1,
	11,
	13,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_PVL
	VALUES (43,
	0,
	0,
	8,
	0);
INSERT INTO V_VAL
	VALUES (26,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_BIN
	VALUES (26,
	44,
	43,
	'+');
INSERT INTO V_VAL
	VALUES (44,
	0,
	0,
	1,
	17,
	17,
	0,
	0,
	0,
	0,
	45,
	23);
INSERT INTO V_LIN
	VALUES (44,
	'1');
INSERT INTO V_VAL
	VALUES (30,
	1,
	0,
	2,
	1,
	1,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_TVL
	VALUES (30,
	42);
INSERT INTO V_VAL
	VALUES (46,
	0,
	0,
	2,
	15,
	17,
	0,
	0,
	0,
	0,
	11,
	23);
INSERT INTO V_PVL
	VALUES (46,
	0,
	0,
	10,
	0);
INSERT INTO V_VAL
	VALUES (29,
	0,
	0,
	2,
	15,
	20,
	0,
	0,
	0,
	0,
	45,
	23);
INSERT INTO V_MVL
	VALUES (29,
	46,
	47,
	48);
INSERT INTO V_VAL
	VALUES (33,
	1,
	0,
	3,
	1,
	1,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_TVL
	VALUES (33,
	42);
INSERT INTO V_VAL
	VALUES (49,
	0,
	0,
	3,
	16,
	19,
	0,
	0,
	0,
	0,
	13,
	23);
INSERT INTO V_PVL
	VALUES (49,
	0,
	0,
	12,
	0);
INSERT INTO V_VAL
	VALUES (32,
	0,
	0,
	3,
	16,
	24,
	0,
	0,
	0,
	0,
	45,
	23);
INSERT INTO V_AVL
	VALUES (32,
	49,
	50,
	51);
INSERT INTO V_VAL
	VALUES (52,
	0,
	0,
	4,
	10,
	12,
	0,
	0,
	0,
	0,
	9,
	23);
INSERT INTO V_PVL
	VALUES (52,
	0,
	0,
	8,
	0);
INSERT INTO V_VAL
	VALUES (36,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	53,
	23);
INSERT INTO V_BIN
	VALUES (36,
	54,
	52,
	'==');
INSERT INTO V_VAL
	VALUES (54,
	0,
	0,
	4,
	23,
	26,
	0,
	0,
	0,
	0,
	15,
	23);
INSERT INTO V_PVL
	VALUES (54,
	0,
	0,
	14,
	0);
INSERT INTO V_VAL
	VALUES (55,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	17,
	23);
INSERT INTO V_PVL
	VALUES (55,
	0,
	0,
	16,
	0);
INSERT INTO V_VAL
	VALUES (39,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	53,
	23);
INSERT INTO V_BIN
	VALUES (39,
	56,
	55,
	'==');
INSERT INTO V_VAL
	VALUES (56,
	0,
	0,
	6,
	23,
	26,
	0,
	0,
	0,
	0,
	19,
	23);
INSERT INTO V_PVL
	VALUES (56,
	0,
	0,
	18,
	0);
INSERT INTO V_VAL
	VALUES (57,
	0,
	0,
	8,
	14,
	21,
	0,
	0,
	0,
	0,
	21,
	23);
INSERT INTO V_PVL
	VALUES (57,
	0,
	0,
	20,
	0);
INSERT INTO V_VAL
	VALUES (41,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	53,
	23);
INSERT INTO V_UNY
	VALUES (41,
	57,
	'not');
INSERT INTO V_VAR
	VALUES (42,
	23,
	'x',
	1,
	9);
INSERT INTO V_TRN
	VALUES (42,
	0,
	'');
INSERT INTO V_LOC
	VALUES (58,
	1,
	1,
	1,
	42);
INSERT INTO V_LOC
	VALUES (59,
	2,
	1,
	1,
	42);
INSERT INTO V_LOC
	VALUES (60,
	3,
	1,
	1,
	42);
INSERT INTO ACT_BLK
	VALUES (35,
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
	22,
	0);
INSERT INTO ACT_BLK
	VALUES (38,
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
	22,
	0);
INSERT INTO ACT_BLK
	VALUES (40,
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
	22,
	0);
INSERT INTO O_ID
	VALUES (0,
	5);
INSERT INTO O_ID
	VALUES (1,
	5);
INSERT INTO O_ID
	VALUES (2,
	5);
INSERT INTO PE_PE
	VALUES (15,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (15,
	0,
	'UDT1',
	'',
	'');
INSERT INTO S_UDT
	VALUES (15,
	45,
	0);
INSERT INTO PE_PE
	VALUES (9,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (9,
	0,
	'UDT2',
	'',
	'');
INSERT INTO S_UDT
	VALUES (9,
	15,
	0);
INSERT INTO PE_PE
	VALUES (48,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (48,
	0,
	'SDT',
	'',
	'');
INSERT INTO S_SDT
	VALUES (48);
INSERT INTO S_MBR
	VALUES (47,
	'member',
	'',
	48,
	45,
	0,
	'');
INSERT INTO PE_PE
	VALUES (50,
	1,
	4,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (50,
	'IRDT',
	2,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (51,
	50);
INSERT INTO O_BATTR
	VALUES (51,
	50);
INSERT INTO O_ATTR
	VALUES (51,
	50,
	0,
	'attribute',
	'',
	'',
	'attribute',
	0,
	45,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	50);
INSERT INTO O_ID
	VALUES (1,
	50);
INSERT INTO O_ID
	VALUES (2,
	50);
INSERT INTO PE_PE
	VALUES (11,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (11,
	0,
	'SDT_UDT',
	'',
	'');
INSERT INTO S_UDT
	VALUES (11,
	48,
	0);
INSERT INTO PE_PE
	VALUES (13,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (13,
	0,
	'IRDT_UDT',
	'',
	'');
INSERT INTO S_UDT
	VALUES (13,
	61,
	0);
INSERT INTO PE_PE
	VALUES (61,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (61,
	0,
	'inst_ref<IRDT>',
	'',
	'');
INSERT INTO S_IRDT
	VALUES (61,
	0,
	50);
INSERT INTO PE_PE
	VALUES (62,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (62,
	0,
	'inst_ref_set<IRDT>',
	'',
	'');
INSERT INTO S_IRDT
	VALUES (62,
	1,
	50);
INSERT INTO PE_PE
	VALUES (63,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (63,
	0,
	'EDT',
	'',
	'');
INSERT INTO S_EDT
	VALUES (63);
INSERT INTO S_ENUM
	VALUES (64,
	'enum',
	'',
	63,
	0);
INSERT INTO PE_PE
	VALUES (17,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (17,
	0,
	'EDT_UDT',
	'',
	'');
INSERT INTO S_UDT
	VALUES (17,
	63,
	0);
INSERT INTO PE_PE
	VALUES (19,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (19,
	0,
	'EDT_UDT_2',
	'',
	'');
INSERT INTO S_UDT
	VALUES (19,
	63,
	0);
INSERT INTO PE_PE
	VALUES (21,
	1,
	4,
	0,
	3);
INSERT INTO S_DT
	VALUES (21,
	0,
	'bool_udt',
	'',
	'');
INSERT INTO S_UDT
	VALUES (21,
	53,
	0);
INSERT INTO PE_PE
	VALUES (7,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (7,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (7,
	0);
INSERT INTO PE_PE
	VALUES (53,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (53,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (53,
	1);
INSERT INTO PE_PE
	VALUES (45,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (45,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (45,
	2);
INSERT INTO PE_PE
	VALUES (65,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (65,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (65,
	3);
INSERT INTO PE_PE
	VALUES (66,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (66,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (66,
	4);
INSERT INTO PE_PE
	VALUES (67,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (67,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (67,
	5);
INSERT INTO PE_PE
	VALUES (68,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (68,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (68,
	6);
INSERT INTO PE_PE
	VALUES (69,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (69,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (69,
	7);
INSERT INTO PE_PE
	VALUES (70,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (70,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (70,
	8);
INSERT INTO PE_PE
	VALUES (71,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (71,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (71,
	9);
INSERT INTO PE_PE
	VALUES (72,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (72,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (72,
	10);
INSERT INTO PE_PE
	VALUES (73,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (73,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (73,
	11);
INSERT INTO PE_PE
	VALUES (74,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (74,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (74,
	12);
INSERT INTO PE_PE
	VALUES (75,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (75,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (75,
	13);
INSERT INTO PE_PE
	VALUES (76,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (76,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (76,
	73,
	1);
INSERT INTO PE_PE
	VALUES (77,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (77,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (77,
	74,
	3);
INSERT INTO PE_PE
	VALUES (78,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (78,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (78,
	73,
	2);
