-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'AttributeMenuItemTests',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'AttributeMenuItemTests',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	-1);
INSERT INTO EP_PKG
	VALUES (3,
	0,
	1,
	'Attribute Tests',
	'',
	0);
INSERT INTO PE_PE
	VALUES (4,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (4,
	1,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (4);
INSERT INTO R_PART
	VALUES (5,
	4,
	6,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (7,
	5,
	0,
	4,
	6);
INSERT INTO R_RTO
	VALUES (5,
	4,
	6,
	0);
INSERT INTO R_OIR
	VALUES (5,
	4,
	6,
	0);
INSERT INTO R_FORM
	VALUES (8,
	4,
	9,
	0,
	0,
	'');
INSERT INTO R_RGO
	VALUES (8,
	4,
	9);
INSERT INTO R_OIR
	VALUES (8,
	4,
	9,
	0);
INSERT INTO PE_PE
	VALUES (10,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (10,
	2,
	'',
	0);
INSERT INTO R_ASSOC
	VALUES (10);
INSERT INTO R_AOTH
	VALUES (11,
	10,
	12,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (13,
	11,
	0,
	10,
	12);
INSERT INTO R_RTO
	VALUES (11,
	10,
	12,
	0);
INSERT INTO R_OIR
	VALUES (11,
	10,
	12,
	0);
INSERT INTO R_AONE
	VALUES (14,
	10,
	15,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (16,
	14,
	0,
	10,
	15);
INSERT INTO R_RTO
	VALUES (14,
	10,
	15,
	0);
INSERT INTO R_OIR
	VALUES (14,
	10,
	15,
	0);
INSERT INTO R_ASSR
	VALUES (17,
	10,
	18,
	0);
INSERT INTO R_RGO
	VALUES (17,
	10,
	18);
INSERT INTO R_OIR
	VALUES (17,
	10,
	18,
	0);
INSERT INTO PE_PE
	VALUES (19,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (19,
	3,
	'',
	0);
INSERT INTO R_SUBSUP
	VALUES (19);
INSERT INTO R_SUPER
	VALUES (20,
	19,
	21);
INSERT INTO O_RTIDA
	VALUES (22,
	20,
	0,
	19,
	21);
INSERT INTO R_RTO
	VALUES (20,
	19,
	21,
	0);
INSERT INTO R_OIR
	VALUES (20,
	19,
	21,
	0);
INSERT INTO R_SUB
	VALUES (23,
	19,
	24);
INSERT INTO R_RGO
	VALUES (23,
	19,
	24);
INSERT INTO R_OIR
	VALUES (23,
	19,
	24,
	0);
INSERT INTO PE_PE
	VALUES (25,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (25,
	5,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (25);
INSERT INTO R_PART
	VALUES (26,
	25,
	27,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (26,
	25,
	27,
	-1);
INSERT INTO R_OIR
	VALUES (26,
	25,
	27,
	0);
INSERT INTO R_PART
	VALUES (28,
	25,
	29,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (28,
	25,
	29,
	-1);
INSERT INTO R_OIR
	VALUES (28,
	25,
	29,
	0);
INSERT INTO PE_PE
	VALUES (30,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (30,
	6,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (30);
INSERT INTO R_PART
	VALUES (31,
	30,
	32,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (31,
	30,
	32,
	-1);
INSERT INTO R_OIR
	VALUES (31,
	30,
	32,
	0);
INSERT INTO R_PART
	VALUES (28,
	30,
	33,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (28,
	30,
	33,
	-1);
INSERT INTO R_OIR
	VALUES (28,
	30,
	33,
	0);
INSERT INTO PE_PE
	VALUES (34,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (34,
	7,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (34);
INSERT INTO R_PART
	VALUES (5,
	34,
	35,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (7,
	5,
	0,
	34,
	35);
INSERT INTO R_RTO
	VALUES (5,
	34,
	35,
	0);
INSERT INTO R_OIR
	VALUES (5,
	34,
	35,
	0);
INSERT INTO R_FORM
	VALUES (36,
	34,
	37,
	0,
	0,
	'');
INSERT INTO R_RGO
	VALUES (36,
	34,
	37);
INSERT INTO R_OIR
	VALUES (36,
	34,
	37,
	0);
INSERT INTO PE_PE
	VALUES (38,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (38,
	8,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (38);
INSERT INTO R_PART
	VALUES (17,
	38,
	39,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (40,
	17,
	0,
	38,
	39);
INSERT INTO O_RTIDA
	VALUES (41,
	17,
	0,
	38,
	39);
INSERT INTO R_RTO
	VALUES (17,
	38,
	39,
	0);
INSERT INTO R_OIR
	VALUES (17,
	38,
	39,
	0);
INSERT INTO R_FORM
	VALUES (42,
	38,
	43,
	0,
	0,
	'');
INSERT INTO R_RGO
	VALUES (42,
	38,
	43);
INSERT INTO R_OIR
	VALUES (42,
	38,
	43,
	0);
INSERT INTO PE_PE
	VALUES (44,
	1,
	3,
	0,
	9);
INSERT INTO R_REL
	VALUES (44,
	9,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (44);
INSERT INTO R_PART
	VALUES (23,
	44,
	45,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (46,
	23,
	0,
	44,
	45);
INSERT INTO R_RTO
	VALUES (23,
	44,
	45,
	0);
INSERT INTO R_OIR
	VALUES (23,
	44,
	45,
	0);
INSERT INTO R_FORM
	VALUES (47,
	44,
	48,
	0,
	0,
	'');
INSERT INTO R_RGO
	VALUES (47,
	44,
	48);
INSERT INTO R_OIR
	VALUES (47,
	44,
	48,
	0);
INSERT INTO PE_PE
	VALUES (42,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (42,
	'testAddIdRefRef',
	16,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (42,
	17,
	0,
	40,
	38,
	43,
	39,
	49,
	50,
	0,
	0,
	'',
	'testAddIdToLink',
	'one_id',
	'R8');
INSERT INTO O_RATTR
	VALUES (49,
	42,
	13,
	11,
	1,
	'one_id');
INSERT INTO O_ATTR
	VALUES (49,
	42,
	0,
	'one_id',
	'',
	'',
	'one_id',
	0,
	51,
	'',
	'');
INSERT INTO O_REF
	VALUES (42,
	17,
	0,
	41,
	38,
	43,
	39,
	52,
	53,
	0,
	0,
	'',
	'testAddIdToLink',
	'oth_id',
	'R8');
INSERT INTO O_RATTR
	VALUES (52,
	42,
	16,
	14,
	1,
	'oth_id');
INSERT INTO O_ATTR
	VALUES (52,
	42,
	49,
	'oth_id',
	'',
	'',
	'oth_id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	42);
INSERT INTO O_ID
	VALUES (1,
	42);
INSERT INTO O_ID
	VALUES (2,
	42);
INSERT INTO PE_PE
	VALUES (47,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (47,
	'testAddIdRefRefSS',
	17,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (47,
	23,
	0,
	46,
	44,
	48,
	45,
	54,
	55,
	0,
	0,
	'',
	'testAddIdSub',
	'id',
	'R9');
INSERT INTO O_RATTR
	VALUES (54,
	47,
	22,
	20,
	1,
	'id');
INSERT INTO O_ATTR
	VALUES (54,
	47,
	0,
	'id',
	'',
	'',
	'id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	47);
INSERT INTO O_ID
	VALUES (1,
	47);
INSERT INTO O_ID
	VALUES (2,
	47);
INSERT INTO PE_PE
	VALUES (23,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (23,
	'testAddIdSub',
	11,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (23,
	20,
	0,
	22,
	19,
	24,
	21,
	46,
	56,
	0,
	0,
	'',
	'testAddIdSup',
	'id',
	'R3');
INSERT INTO O_RATTR
	VALUES (46,
	23,
	22,
	20,
	1,
	'id');
INSERT INTO O_ATTR
	VALUES (46,
	23,
	0,
	'id',
	'',
	'',
	'id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	23);
INSERT INTO O_OIDA
	VALUES (46,
	23,
	0,
	'id');
INSERT INTO O_ID
	VALUES (1,
	23);
INSERT INTO O_ID
	VALUES (2,
	23);
INSERT INTO PE_PE
	VALUES (20,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (20,
	'testAddIdSup',
	10,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (22,
	20);
INSERT INTO O_BATTR
	VALUES (22,
	20);
INSERT INTO O_ATTR
	VALUES (22,
	20,
	0,
	'id',
	'',
	'',
	'id',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (58,
	20);
INSERT INTO O_BATTR
	VALUES (58,
	20);
INSERT INTO O_ATTR
	VALUES (58,
	20,
	22,
	'new_id',
	'',
	'',
	'new_id',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	20);
INSERT INTO O_OIDA
	VALUES (22,
	20,
	0,
	'id');
INSERT INTO O_ID
	VALUES (1,
	20);
INSERT INTO O_ID
	VALUES (2,
	20);
INSERT INTO PE_PE
	VALUES (11,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (11,
	'testAddIdToAone',
	7,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (13,
	11);
INSERT INTO O_BATTR
	VALUES (13,
	11);
INSERT INTO O_ATTR
	VALUES (13,
	11,
	0,
	'one_id',
	'',
	'',
	'one_id',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (59,
	11);
INSERT INTO O_BATTR
	VALUES (59,
	11);
INSERT INTO O_ATTR
	VALUES (59,
	11,
	13,
	'new_one_id',
	'',
	'',
	'new_one_id',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	11);
INSERT INTO O_OIDA
	VALUES (13,
	11,
	0,
	'one_id');
INSERT INTO O_ID
	VALUES (1,
	11);
INSERT INTO O_ID
	VALUES (2,
	11);
INSERT INTO PE_PE
	VALUES (14,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (14,
	'testAddIdToAoth',
	8,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (16,
	14);
INSERT INTO O_BATTR
	VALUES (16,
	14);
INSERT INTO O_ATTR
	VALUES (16,
	14,
	0,
	'oth_id',
	'',
	'',
	'oth_id',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (60,
	14);
INSERT INTO O_BATTR
	VALUES (60,
	14);
INSERT INTO O_ATTR
	VALUES (60,
	14,
	16,
	'new_oth_id',
	'',
	'',
	'new_oth_id',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	14);
INSERT INTO O_OIDA
	VALUES (16,
	14,
	0,
	'oth_id');
INSERT INTO O_ID
	VALUES (1,
	14);
INSERT INTO O_ID
	VALUES (2,
	14);
INSERT INTO PE_PE
	VALUES (17,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (17,
	'testAddIdToLink',
	9,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (17,
	11,
	0,
	13,
	10,
	18,
	12,
	40,
	61,
	0,
	0,
	'',
	'testAddIdToAone',
	'one_id',
	'R2');
INSERT INTO O_RATTR
	VALUES (40,
	17,
	13,
	11,
	1,
	'one_id');
INSERT INTO O_ATTR
	VALUES (40,
	17,
	0,
	'one_id',
	'',
	'',
	'one_id',
	0,
	51,
	'',
	'');
INSERT INTO O_REF
	VALUES (17,
	14,
	0,
	16,
	10,
	18,
	15,
	41,
	62,
	0,
	0,
	'',
	'testAddIdToAoth',
	'oth_id',
	'R2');
INSERT INTO O_RATTR
	VALUES (41,
	17,
	16,
	14,
	1,
	'oth_id');
INSERT INTO O_ATTR
	VALUES (41,
	17,
	40,
	'oth_id',
	'',
	'',
	'oth_id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	17);
INSERT INTO O_OIDA
	VALUES (40,
	17,
	0,
	'one_id');
INSERT INTO O_OIDA
	VALUES (41,
	17,
	0,
	'oth_id');
INSERT INTO O_ID
	VALUES (1,
	17);
INSERT INTO O_ID
	VALUES (2,
	17);
INSERT INTO PE_PE
	VALUES (8,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (8,
	'testAddIdToRefForm',
	6,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (8,
	5,
	0,
	7,
	4,
	9,
	6,
	63,
	64,
	0,
	0,
	'',
	'testAddIdToRefPart',
	'id',
	'R1');
INSERT INTO O_RATTR
	VALUES (63,
	8,
	7,
	5,
	1,
	'id');
INSERT INTO O_ATTR
	VALUES (63,
	8,
	0,
	'id',
	'',
	'',
	'id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	8);
INSERT INTO O_ID
	VALUES (1,
	8);
INSERT INTO O_ID
	VALUES (2,
	8);
INSERT INTO PE_PE
	VALUES (36,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (36,
	'testAddIdToRefFormID',
	15,
	'KEY',
	'',
	0);
INSERT INTO O_REF
	VALUES (36,
	5,
	0,
	7,
	34,
	37,
	35,
	65,
	66,
	0,
	0,
	'',
	'testAddIdToRefPart',
	'id',
	'R7');
INSERT INTO O_RATTR
	VALUES (65,
	36,
	7,
	5,
	1,
	'id');
INSERT INTO O_ATTR
	VALUES (65,
	36,
	0,
	'id',
	'',
	'',
	'id',
	0,
	51,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	36);
INSERT INTO O_OIDA
	VALUES (65,
	36,
	0,
	'id');
INSERT INTO O_ID
	VALUES (1,
	36);
INSERT INTO O_ID
	VALUES (2,
	36);
INSERT INTO PE_PE
	VALUES (5,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (5,
	'testAddIdToRefPart',
	5,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (7,
	5);
INSERT INTO O_BATTR
	VALUES (7,
	5);
INSERT INTO O_ATTR
	VALUES (7,
	5,
	0,
	'id',
	'',
	'',
	'id',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (67,
	5);
INSERT INTO O_BATTR
	VALUES (67,
	5);
INSERT INTO O_ATTR
	VALUES (67,
	5,
	7,
	'new',
	'',
	'',
	'new',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	5);
INSERT INTO O_OIDA
	VALUES (7,
	5,
	0,
	'id');
INSERT INTO O_ID
	VALUES (1,
	5);
INSERT INTO O_ID
	VALUES (2,
	5);
INSERT INTO PE_PE
	VALUES (68,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (68,
	'testBaseToDerived',
	4,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (69,
	68);
INSERT INTO O_BATTR
	VALUES (69,
	68);
INSERT INTO O_ATTR
	VALUES (69,
	68,
	0,
	'base',
	'',
	'',
	'base',
	0,
	57,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (70,
	68,
	'self.derived = 1;',
	1);
INSERT INTO ACT_DAB
	VALUES (71,
	68,
	70,
	1);
INSERT INTO ACT_ACT
	VALUES (71,
	'derived attribute',
	0,
	72,
	0,
	0,
	'testBaseToDerived::derived',
	0);
INSERT INTO ACT_BLK
	VALUES (72,
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
	71,
	0);
INSERT INTO ACT_SMT
	VALUES (73,
	72,
	0,
	1,
	1,
	'testBaseToDerived::derived line: 1');
INSERT INTO ACT_AI
	VALUES (73,
	74,
	75,
	0,
	0);
INSERT INTO V_VAL
	VALUES (76,
	1,
	0,
	1,
	1,
	4,
	0,
	0,
	0,
	0,
	77,
	72);
INSERT INTO V_IRF
	VALUES (76,
	78);
INSERT INTO V_VAL
	VALUES (75,
	1,
	0,
	1,
	6,
	12,
	0,
	0,
	0,
	0,
	57,
	72);
INSERT INTO V_AVL
	VALUES (75,
	76,
	68,
	70);
INSERT INTO V_VAL
	VALUES (74,
	0,
	0,
	1,
	16,
	16,
	0,
	0,
	0,
	0,
	57,
	72);
INSERT INTO V_LIN
	VALUES (74,
	'1');
INSERT INTO V_VAR
	VALUES (78,
	72,
	'self',
	1,
	77);
INSERT INTO V_INT
	VALUES (78,
	0,
	68);
INSERT INTO O_BATTR
	VALUES (70,
	68);
INSERT INTO O_ATTR
	VALUES (70,
	68,
	69,
	'derived',
	'',
	'',
	'derived',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	68);
INSERT INTO O_ID
	VALUES (1,
	68);
INSERT INTO O_ID
	VALUES (2,
	68);
INSERT INTO PE_PE
	VALUES (28,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (28,
	'testClassOtherSide 1',
	13,
	'KEY',
	'',
	0);
INSERT INTO O_ID
	VALUES (0,
	28);
INSERT INTO O_ID
	VALUES (1,
	28);
INSERT INTO O_ID
	VALUES (2,
	28);
INSERT INTO PE_PE
	VALUES (26,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (26,
	'testFormalizeAfterMoveDown',
	12,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (80,
	26);
INSERT INTO O_BATTR
	VALUES (80,
	26);
INSERT INTO O_ATTR
	VALUES (80,
	26,
	0,
	'TestAttrFormalizerMoveDown',
	'',
	'',
	'TestAttrFormalizerMoveDown',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (81,
	26);
INSERT INTO O_BATTR
	VALUES (81,
	26);
INSERT INTO O_ATTR
	VALUES (81,
	26,
	80,
	'TestAttrOther',
	'',
	'',
	'TestAttrOther',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	26);
INSERT INTO O_OIDA
	VALUES (80,
	26,
	0,
	'TestAttrFormalizerMoveDown');
INSERT INTO O_ID
	VALUES (1,
	26);
INSERT INTO O_ID
	VALUES (2,
	26);
INSERT INTO PE_PE
	VALUES (31,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (31,
	'testFormalizeAfterMoveUp',
	14,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (82,
	31);
INSERT INTO O_BATTR
	VALUES (82,
	31);
INSERT INTO O_ATTR
	VALUES (82,
	31,
	0,
	'TestAttrOther',
	'',
	'',
	'TestAttrOther',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (83,
	31);
INSERT INTO O_BATTR
	VALUES (83,
	31);
INSERT INTO O_ATTR
	VALUES (83,
	31,
	82,
	'TestAttrFormalizerMoveUp',
	'',
	'',
	'TestAttrFormalizerMoveUp',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	31);
INSERT INTO O_OIDA
	VALUES (83,
	31,
	0,
	'TestAttrFormalizerMoveUp');
INSERT INTO O_ID
	VALUES (1,
	31);
INSERT INTO O_ID
	VALUES (2,
	31);
INSERT INTO PE_PE
	VALUES (84,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (84,
	'testMoveThreeAttributes',
	3,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (85,
	84);
INSERT INTO O_BATTR
	VALUES (85,
	84);
INSERT INTO O_ATTR
	VALUES (85,
	84,
	0,
	'top',
	'',
	'',
	'top',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (86,
	84);
INSERT INTO O_BATTR
	VALUES (86,
	84);
INSERT INTO O_ATTR
	VALUES (86,
	84,
	85,
	'middle',
	'',
	'',
	'middle',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (87,
	84);
INSERT INTO O_BATTR
	VALUES (87,
	84);
INSERT INTO O_ATTR
	VALUES (87,
	84,
	86,
	'bottom',
	'',
	'',
	'bottom',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	84);
INSERT INTO O_ID
	VALUES (1,
	84);
INSERT INTO O_ID
	VALUES (2,
	84);
INSERT INTO PE_PE
	VALUES (88,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (88,
	'testMoveTwoAttributes',
	2,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (89,
	88);
INSERT INTO O_BATTR
	VALUES (89,
	88);
INSERT INTO O_ATTR
	VALUES (89,
	88,
	0,
	'top',
	'',
	'',
	'top',
	0,
	57,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (90,
	88);
INSERT INTO O_BATTR
	VALUES (90,
	88);
INSERT INTO O_ATTR
	VALUES (90,
	88,
	89,
	'bottom',
	'',
	'',
	'bottom',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	88);
INSERT INTO O_ID
	VALUES (1,
	88);
INSERT INTO O_ID
	VALUES (2,
	88);
INSERT INTO PE_PE
	VALUES (91,
	1,
	3,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (91,
	'testOneAttribute',
	1,
	'KEY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (92,
	91);
INSERT INTO O_BATTR
	VALUES (92,
	91);
INSERT INTO O_ATTR
	VALUES (92,
	91,
	0,
	'one',
	'',
	'',
	'one',
	0,
	57,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	91);
INSERT INTO O_ID
	VALUES (1,
	91);
INSERT INTO O_ID
	VALUES (2,
	91);
INSERT INTO PE_PE
	VALUES (93,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (93,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (93,
	0);
INSERT INTO PE_PE
	VALUES (94,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (94,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (94,
	1);
INSERT INTO PE_PE
	VALUES (57,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (57,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (57,
	2);
INSERT INTO PE_PE
	VALUES (95,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (95,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (95,
	3);
INSERT INTO PE_PE
	VALUES (96,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (96,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (96,
	4);
INSERT INTO PE_PE
	VALUES (97,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (97,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (97,
	5);
INSERT INTO PE_PE
	VALUES (98,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (98,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (98,
	6);
INSERT INTO PE_PE
	VALUES (51,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (51,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (51,
	7);
INSERT INTO PE_PE
	VALUES (77,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (77,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (77,
	8);
INSERT INTO PE_PE
	VALUES (99,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (99,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (99,
	9);
INSERT INTO PE_PE
	VALUES (100,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (100,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (100,
	10);
INSERT INTO PE_PE
	VALUES (101,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (101,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (101,
	11);
INSERT INTO PE_PE
	VALUES (102,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (102,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (102,
	12);
INSERT INTO PE_PE
	VALUES (103,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (103,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (103,
	13);
INSERT INTO PE_PE
	VALUES (104,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (104,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (104,
	101,
	1);
INSERT INTO PE_PE
	VALUES (105,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (105,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (105,
	102,
	3);
INSERT INTO PE_PE
	VALUES (106,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (106,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (106,
	101,
	2);
