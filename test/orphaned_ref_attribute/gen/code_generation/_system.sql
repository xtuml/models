-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.5

INSERT INTO S_SYS
	VALUES (1,
	'original',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'pkg1',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (3,
	'C1',
	1,
	'C1',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (4,
	3);
INSERT INTO O_BATTR
	VALUES (4,
	3);
INSERT INTO O_ATTR
	VALUES (4,
	3,
	0,
	'C1_ID',
	'',
	'',
	'C1_ID',
	0,
	5,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3);
INSERT INTO O_OIDA
	VALUES (4,
	3,
	0);
INSERT INTO O_ID
	VALUES (1,
	3);
INSERT INTO O_ID
	VALUES (2,
	3);
INSERT INTO PE_PE
	VALUES (6,
	1,
	2,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (6,
	'C2',
	2,
	'C2',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (7,
	6);
INSERT INTO O_BATTR
	VALUES (7,
	6);
INSERT INTO O_ATTR
	VALUES (7,
	6,
	0,
	'C2_ID',
	'',
	'',
	'C2_ID',
	0,
	8,
	'',
	'');
INSERT INTO O_REF
	VALUES (6,
	3,
	0,
	4,
	9,
	10,
	11,
	12,
	13,
	0,
	0,
	'',
	'C1',
	'C1_ID',
	'R1');
INSERT INTO O_RATTR
	VALUES (12,
	6,
	4,
	3,
	1,
	'C1_ID');
INSERT INTO O_ATTR
	VALUES (12,
	6,
	7,
	'C1_ID',
	'',
	'',
	'C1_ID',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	6);
INSERT INTO O_OIDA
	VALUES (7,
	6,
	0);
INSERT INTO O_OIDA
	VALUES (12,
	6,
	0);
INSERT INTO O_ID
	VALUES (1,
	6);
INSERT INTO O_ID
	VALUES (2,
	6);
INSERT INTO PE_PE
	VALUES (15,
	1,
	2,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (15,
	'C3',
	3,
	'C3',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (16,
	15);
INSERT INTO O_BATTR
	VALUES (16,
	15);
INSERT INTO O_ATTR
	VALUES (16,
	15,
	0,
	'C3_ID',
	'',
	'',
	'C3_ID',
	0,
	8,
	'',
	'');
INSERT INTO O_REF
	VALUES (15,
	6,
	0,
	7,
	17,
	18,
	19,
	20,
	21,
	0,
	0,
	'',
	'C2',
	'C2_ID',
	'R2');
INSERT INTO O_RATTR
	VALUES (20,
	15,
	7,
	6,
	1,
	'C2_ID');
INSERT INTO O_ATTR
	VALUES (20,
	15,
	16,
	'C2_ID',
	'',
	'',
	'C2_ID',
	0,
	14,
	'',
	'');
INSERT INTO O_REF
	VALUES (15,
	6,
	0,
	12,
	17,
	18,
	19,
	22,
	23,
	0,
	0,
	'',
	'C2',
	'C1_ID',
	'R2');
INSERT INTO O_REF
	VALUES (15,
	15,
	0,
	22,
	24,
	25,
	26,
	22,
	27,
	23,
	0,
	'',
	'C3',
	'C1_ID',
	'R3');
INSERT INTO O_RATTR
	VALUES (22,
	15,
	4,
	3,
	1,
	'C1_ID');
INSERT INTO O_ATTR
	VALUES (22,
	15,
	20,
	'C1_ID',
	'',
	'',
	'C1_ID',
	0,
	14,
	'',
	'');
INSERT INTO O_REF
	VALUES (15,
	15,
	0,
	16,
	24,
	25,
	26,
	28,
	29,
	0,
	0,
	'',
	'C3',
	'C3_ID',
	'R3');
INSERT INTO O_RATTR
	VALUES (28,
	15,
	16,
	15,
	1,
	'C3_ID');
INSERT INTO O_ATTR
	VALUES (28,
	15,
	22,
	'Other_C3_ID',
	'',
	'Other_',
	'C3_ID',
	1,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	15);
INSERT INTO O_OIDA
	VALUES (16,
	15,
	0);
INSERT INTO O_OIDA
	VALUES (22,
	15,
	0);
INSERT INTO O_ID
	VALUES (1,
	15);
INSERT INTO O_ID
	VALUES (2,
	15);
INSERT INTO PE_PE
	VALUES (30,
	1,
	2,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (30,
	'C4',
	4,
	'C4',
	'',
	0);
INSERT INTO O_REF
	VALUES (30,
	3,
	0,
	4,
	31,
	32,
	33,
	34,
	35,
	0,
	0,
	'',
	'C1',
	'C1_ID',
	'R5');
INSERT INTO O_REF
	VALUES (30,
	15,
	0,
	22,
	36,
	37,
	38,
	34,
	39,
	35,
	0,
	'',
	'C3',
	'C1_ID',
	'R4');
INSERT INTO O_RATTR
	VALUES (34,
	30,
	4,
	3,
	1,
	'C1_ID');
INSERT INTO O_ATTR
	VALUES (34,
	30,
	0,
	'C1_ID',
	'',
	'',
	'C1_ID',
	0,
	14,
	'',
	'');
INSERT INTO O_REF
	VALUES (30,
	15,
	0,
	16,
	36,
	37,
	38,
	40,
	41,
	0,
	0,
	'',
	'C3',
	'C3_ID',
	'R4');
INSERT INTO O_RATTR
	VALUES (40,
	30,
	16,
	15,
	1,
	'C3_ID');
INSERT INTO O_ATTR
	VALUES (40,
	30,
	34,
	'C3_ID',
	'',
	'',
	'C3_ID',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	30);
INSERT INTO O_OIDA
	VALUES (34,
	30,
	0);
INSERT INTO O_OIDA
	VALUES (40,
	30,
	0);
INSERT INTO O_ID
	VALUES (1,
	30);
INSERT INTO O_ID
	VALUES (2,
	30);
INSERT INTO PE_PE
	VALUES (9,
	1,
	2,
	0,
	9);
INSERT INTO R_SIMP
	VALUES (9);
INSERT INTO R_REL
	VALUES (9,
	1,
	'',
	0);
INSERT INTO R_PART
	VALUES (3,
	9,
	11,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (4,
	3,
	0,
	9,
	11);
INSERT INTO R_RTO
	VALUES (3,
	9,
	11,
	0);
INSERT INTO R_OIR
	VALUES (3,
	9,
	11,
	0);
INSERT INTO R_FORM
	VALUES (6,
	9,
	10,
	1,
	0,
	'');
INSERT INTO R_RGO
	VALUES (6,
	9,
	10);
INSERT INTO R_OIR
	VALUES (6,
	9,
	10,
	0);
INSERT INTO PE_PE
	VALUES (17,
	1,
	2,
	0,
	9);
INSERT INTO R_SIMP
	VALUES (17);
INSERT INTO R_REL
	VALUES (17,
	2,
	'',
	0);
INSERT INTO R_PART
	VALUES (6,
	17,
	19,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (7,
	6,
	0,
	17,
	19);
INSERT INTO O_RTIDA
	VALUES (12,
	6,
	0,
	17,
	19);
INSERT INTO R_RTO
	VALUES (6,
	17,
	19,
	0);
INSERT INTO R_OIR
	VALUES (6,
	17,
	19,
	0);
INSERT INTO R_FORM
	VALUES (15,
	17,
	18,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (15,
	17,
	18);
INSERT INTO R_OIR
	VALUES (15,
	17,
	18,
	0);
INSERT INTO PE_PE
	VALUES (24,
	1,
	2,
	0,
	9);
INSERT INTO R_SIMP
	VALUES (24);
INSERT INTO R_REL
	VALUES (24,
	3,
	'',
	0);
INSERT INTO R_PART
	VALUES (15,
	24,
	26,
	0,
	1,
	'prev');
INSERT INTO O_RTIDA
	VALUES (16,
	15,
	0,
	24,
	26);
INSERT INTO O_RTIDA
	VALUES (22,
	15,
	0,
	24,
	26);
INSERT INTO R_RTO
	VALUES (15,
	24,
	26,
	0);
INSERT INTO R_OIR
	VALUES (15,
	24,
	26,
	0);
INSERT INTO R_FORM
	VALUES (15,
	24,
	25,
	0,
	1,
	'next');
INSERT INTO R_RGO
	VALUES (15,
	24,
	25);
INSERT INTO R_OIR
	VALUES (15,
	24,
	25,
	0);
INSERT INTO PE_PE
	VALUES (36,
	1,
	2,
	0,
	9);
INSERT INTO R_SIMP
	VALUES (36);
INSERT INTO R_REL
	VALUES (36,
	4,
	'',
	0);
INSERT INTO R_PART
	VALUES (15,
	36,
	38,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (16,
	15,
	0,
	36,
	38);
INSERT INTO O_RTIDA
	VALUES (22,
	15,
	0,
	36,
	38);
INSERT INTO R_RTO
	VALUES (15,
	36,
	38,
	0);
INSERT INTO R_OIR
	VALUES (15,
	36,
	38,
	0);
INSERT INTO R_FORM
	VALUES (30,
	36,
	37,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (30,
	36,
	37);
INSERT INTO R_OIR
	VALUES (30,
	36,
	37,
	0);
INSERT INTO PE_PE
	VALUES (31,
	1,
	2,
	0,
	9);
INSERT INTO R_SIMP
	VALUES (31);
INSERT INTO R_REL
	VALUES (31,
	5,
	'',
	0);
INSERT INTO R_FORM
	VALUES (30,
	31,
	32,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (30,
	31,
	32);
INSERT INTO R_OIR
	VALUES (30,
	31,
	32,
	0);
INSERT INTO R_PART
	VALUES (3,
	31,
	33,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (4,
	3,
	0,
	31,
	33);
INSERT INTO R_RTO
	VALUES (3,
	31,
	33,
	0);
INSERT INTO R_OIR
	VALUES (3,
	31,
	33,
	0);
INSERT INTO PE_PE
	VALUES (42,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (42,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (42,
	0);
INSERT INTO PE_PE
	VALUES (43,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (43,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (43,
	1);
INSERT INTO PE_PE
	VALUES (8,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (8,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (8,
	2);
INSERT INTO PE_PE
	VALUES (44,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (44,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (44,
	3);
INSERT INTO PE_PE
	VALUES (45,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (45,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (45,
	4);
INSERT INTO PE_PE
	VALUES (5,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (5,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (5,
	5);
INSERT INTO PE_PE
	VALUES (46,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (46,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (46,
	6);
INSERT INTO PE_PE
	VALUES (14,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (14,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (14,
	7);
INSERT INTO PE_PE
	VALUES (47,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (47,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (47,
	8);
INSERT INTO PE_PE
	VALUES (48,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (48,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (48,
	9);
INSERT INTO PE_PE
	VALUES (49,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (49,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (49,
	10);
INSERT INTO PE_PE
	VALUES (50,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (50,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (50,
	11);
INSERT INTO PE_PE
	VALUES (51,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (51,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (51,
	12);
INSERT INTO PE_PE
	VALUES (52,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (52,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (52,
	13);
INSERT INTO PE_PE
	VALUES (53,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (53,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (53,
	50,
	1);
INSERT INTO PE_PE
	VALUES (54,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (54,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (54,
	51,
	3);
INSERT INTO PE_PE
	VALUES (55,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (55,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (55,
	50,
	2);
