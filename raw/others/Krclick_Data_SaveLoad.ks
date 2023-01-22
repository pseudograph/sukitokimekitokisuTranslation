; ���[�h�E�Z�[�u��ʐݒ� #####################################################
;
; Krclick.ks ����ǂݍ��܂��
;
; init_load_screen_values() ���ĂԂƁA
; .load_screen �ɁA���[�h��ʂ��\�����郌�C���f�[�^�̔z������
; .load_item �Ƀ��[�h�̂P����(���[�h�f�[�^)���\�����郌�C���f�[�^�̔z������
;
; init_save_screen_values() ���ĂԂƁA
; .save_screen �ɁA�Z�[�u��ʂ��\�����郌�C���f�[�^�̔z������
; .save_item �ɃZ�[�u�̂P����(�Z�[�u�f�[�^)���\�����郌�C���f�[�^�̔z������
;
; sf.rcMenu.curPage �Ɍ��ݕ\�����Ă���y�[�W No. ��ۑ�����

; 2013/12/02	0.1	���������[�X



[iscript]

// ���[�h��� ##############################################################

var load_item = [];
var load_screen = [];
var load_message = "���̋L�^��Ǎ��݂܂����H"; // �Ǎ����_�C�A���O������
//var load_message = "�y%s�z\n�����[�h���܂����H"; // �Ǎ����_�C�A���O������

// ����������B�������Ȃ��ƁA��ʐ؂�ւ��Ė߂������Ɂu�ŏ��ɐݒ肵���l�v��
// �߂��Ă��܂�����
function init_load_screen_values()
{

// ���[�h��ʂ̈ꍀ��(parent�͌�Ƀv���O�����œK���ɒǉ�����̂ŕs�v)
load_item = [
	// ���[�h���� �摜
	%[	classid		: "KLayer",
		name		: "thumbnail",
//		parent		: "load_item1",
		left		: rposx(40),
		top		: rposy(7),
		width		: rposx(166),
		height		: rposy(120),
		color		: 0x00000000,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�Ȃ�",
		kfont		: %[ height: rposy(18) ]
	],
	// ���[�h���� ���x����
	%[	classid		: "KLayer",
		name		: "label",
//		parent		: "load_item1",
		left		: rposx(225),
		top		: rposy(31),
		width		: rposx(563),
		height		: rposy(40),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�Ȃ�",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// ���[�h���� �L�^�ی�`�F�b�N�{�b�N�X
//	%[	classid		: "KCheckBoxLayer",
//		name		: "protectcheckbox",
////		parent		: "load_item1",
////		basegraphic	: "button_checkboxback",
////		graphic		: "button_checkbox",
////		stateval	: "kag.bookMarkProtectedStates[##]",
//		left		: rposx(398),
//		top		: rposy(34),
//		width		: rposx(16),
//		height		: rposx(16)	// �� checkbox�Ȃ̂�rposy()
//	],
	// ���[�h���� �u�L�^�ی�v
//	%[	classid		: "KLayer",
////		parent		: "load_item1",
//		left		: rposx(420),
//		top		: rposy(35),
//		width		: 68,
//		height		: 18,
//		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�ی�",
//		kfont		: %[ height: rposy(14) ],
//		texthalign	: 'left'
//	],
	// ���[�h���� �A�C�e��No.
	%[	classid		: "KLayer",
		name		: "item#",
//		parent		: "load_item1",
		left		: rposx(8),
		top		: rposy((140-25)/3),
		width		: 30,
		height		: 30,
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "00",
		kfont		: %[ height: rposy(25) ]
	],
	// ���[�h���� ���t
	%[	classid		: "KLayer",
		name		: "date",
//		parent		: "load_item1",
		left		: rposx(225),
		top		: rposy(94),
		width		: rposx(320),
		height		: rposy(23),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		text		: "���t ----/--/-- --:--:--",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// ���[�h���� ��ʏ�ɕ\������Ă������b�Z�[�W
	%[	classid		: "KLayer",
		name		: "message",
//		parent		: "load_item1",
		left		: rposx(225),
		top		: rposy(73),
		width		: rposx(385),
		height		: rposy(55),
		color		: 0,
		texthalign	: 'left',
		textvalign	: 'top',
		textleft	: rposx(5),
		texttop		: rposy(5),
		textwidth	: rposx(390-5),
		textheight	: rposx(60-5)
//		text		: '���ł��Ăӂ�'
	]

];

// ���[�h��ʂ̃p�[�c�Q
load_screen = [
	// �w�i
	%[	classid		: "KClickableLayer",
		name		: "load_background",
		focusable       : false,
		left		: rposx(0),
		top		: rposy(0),
		width		: rposx(800),
		height		: rposx(600),
		color		: 0x00000000,
		graphic		: "wall_load",
		cursor		: crArrow,
		clickablemb	: VK_RBUTTON,
		ncaction	: NCACTION_NOACTION,
		onrrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	],

	// ���[�h���ڌQ
	// ���[�h���ڂO�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "load_item0",	// ���̖��O�͌�Ŏg�p���邽��
						// �����K����ύX���Ȃ�����
						// 0����n�܂邱�Ƃɒ���
		parent		: "load_background",
		left		: rposx(175-5),
		top		: rposy(150*0+5),
		width		: rposx(625),
		height		: rposy(140),
		color:0,
		graphic		: "button_load_item",
		onrelease	: "loadBookMarkWithAsk(sf.rcMenu.curPage*4+0)"
	],
	// ���[�h���ڂP�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "load_item1",
		parent		: "load_background",
		left		: rposx(175-5),
		top		: rposy(150*1+5),
		width		: rposx(625),
		height		: rposy(140),
		color:0,
		graphic		: "button_load_item",
		onrelease	: "loadBookMarkWithAsk(sf.rcMenu.curPage*4+1)"
	],
	// ���[�h���ڂQ�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "load_item2",
		parent		: "load_background",
		left		: rposx(175-5),
		top		: rposy(150*2+5),
		width		: rposx(625),
		height		: rposy(140),
		color:0,
		graphic		: "button_load_item",
		onrelease	: "loadBookMarkWithAsk(sf.rcMenu.curPage*4+2)"
	],
	// ���[�h���ڂR�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "load_item3",
		parent		: "load_background",
		left		: rposx(175-5),
		top		: rposy(150*3+5),
		width		: rposx(625),
		height		: rposy(140),
		color:0,
		graphic		: "button_load_item",
		onrelease	: "loadBookMarkWithAsk(sf.rcMenu.curPage*4+3)"
	],

	// �y�[�W�I��
	%[	classid		: "KRadioButtonLayer",
		name		: "page_select",
		parent		: "load_background",
		vertical	: true,
		left		: rposx(13),
		top		: rposy(88),
		space		: rposy(6),
		buttonnum	: 15,
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		pushed		: sf.rcMenu.curPage,
		oncheckfunc	: "change_load_page",	// �����ʃI�v�V����
		buttonopts	: %[
			width     : rposx(125),
			height    : rposy(31),
			color:0,
		 	kfont	  : %[ height: rposy(18) ]
		],
		buttons		: [
			%[ name:"page_select_01", text:" 1�` 4" ],
			%[ name:"page_select_02", text:" 5�` 8" ],
			%[ name:"page_select_03", text:" 9�`12" ],
			%[ name:"page_select_04", text:"13�`16" ],
			%[ name:"page_select_05", text:"17�`20" ],
			%[ name:"page_select_06", text:"21�`24" ],
			%[ name:"page_select_07", text:"25�`28" ],
			%[ name:"page_select_08", text:"29�`32" ],
			%[ name:"page_select_09", text:"33�`36" ],
			%[ name:"page_select_10", text:"37�`40" ],
			%[ name:"page_select_11", text:"41�`44" ],
			%[ name:"page_select_12", text:"45�`48" ]
		],
	],

	// ���[�h��ʂ����
	%[	classid		: "KAnimButtonLayer",
		name		: "return_to_game",
		parent		: "load_background",
		left		: rposx(13),
		top		: rposy(550),
		width		: rposx(125),
		height		: rposy(31),
		color:0,
//		graphic		: "button_load_close",
	 	kfont		: %[ height: rposy(18) ],
		text		: "�߂�",
		onrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	]
	//��������','������ƁA��̔z��v�f���ǉ����ꂽ���ƂɂȂ�̂Œ���
];
}



// �Z�[�u��� ##############################################################
// ���[�h��ʂƓ����\���Ȃ炻�̂܂܃R�s�[���Ă��� "load"��"save"�֕ϊ�����
// �����ł悢�B�����ł́A�ʂ̍\��(���Ƃ��Ή摜�t�@�C�����قȂ�Ƃ�)�ɂȂ�
// ���Ƃ��l�����ĕʂɒ�`���Ă���B

var save_item = [];
var save_screen = [];
var save_message = "�㏑�����܂����H"; // ����������������
//var save_message = "�y%s�z\n�ŏ㏑�����܂����H"; // ����������������

// ����������B�������Ȃ��ƁA��ʐ؂�ւ��Ė߂������Ɂu�ŏ��ɐݒ肵���l�v��
// �߂��Ă��܂����߁B
function init_save_screen_values()
{

// �Z�[�u��ʂ̈ꍀ��(parent�͌�Ƀv���O�����œK���ɒǉ�����̂ŕs�v)
save_item = [
	// �Z�[�u���� �摜
	%[	classid		: "KLayer",
		name		: "thumbnail",
//		parent		: "save_item1",
		left		: rposx(40),
		top		: rposy(8),
		width		: rposx(166),
		height		: rposy(120),
		color		: 0x00000000,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�Ȃ�",
		kfont		: %[ height: rposy(18) ]
	],
	// �Z�[�u���� ���x����
	%[	classid		: "KLayer",
		name		: "label",
//		parent		: "save_item1",
		left		: rposx(225),
		top		: rposy(19),
		width		: rposx(375),
		height		: rposy(40),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�Ȃ�",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// �Z�[�u���� �L�^�ی�`�F�b�N�{�b�N�X
//	%[	classid		: "KCheckBoxLayer",
//		name		: "protectcheckbox",
////		parent		: "save_item1",
////		basegraphic	: "button_checkboxback",
////		graphic		: "button_checkbox",
////		stateval	: "kag.bookMarkProtectedStates[##]",
//		left		: rposx(398),
//		top		: rposy(34),
//		width		: rposx(16),
//		height		: rposx(16)	// �� checkbox�Ȃ̂�rposy()
//	],
//	// �Z�[�u���� �u�L�^�ی�v
//	%[	classid		: "KLayer",
////		parent		: "save_item1",
//		left		: rposx(420),
//		top		: rposy(35),
//		width		: 68,
//		height		: 18,
//		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "�L�^�ی�",
//		kfont		: %[ height: rposy(14) ],
//		texthalign	: 'left'
//	],
	// �Z�[�u���� �A�C�e��No.
	%[	classid		: "KLayer",
		name		: "item#",
//		parent		: "save_item1",
		left		: rposx(8),
		top		: rposy((140-50)/3),
		width		: 30,
		height		: 30,
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		text		: "00",
		kfont		: %[ height: rposy(25) ]
	],
	// �Z�[�u���� ���t
	%[	classid		: "KLayer",
		name		: "date",
//		parent		: "save_item1",
		left		: rposx(225),
		top		: rposy(56),
		width		: rposx(320),
		height		: rposy(48),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		text		: "���t ----/--/-- --:--:--",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// �Z�[�u���� ��ʏ�ɕ\������Ă������b�Z�[�W
	%[	classid		: "KLayer",
		name		: "message",
//		parent		: "save_item1",
		left		: rposx(225),
		top		: rposy(73),
		width		: rposx(385),
		height		: rposy(55),
		color		: 0x00ffffff,
		texthalign	: 'left',
		textvalign	: 'top',
		textleft	: rposx(5),
		texttop		: rposy(5),
		textwidth	: rposx(392-5),
		textheight	: rposx(60-5)
//		text		: '���ł��Ăӂ�'
	]
];


// �Z�[�u��ʂ̃p�[�c�Q
save_screen = [
	// �w�i
	%[	classid		: "KClickableLayer",
		name		: "save_background",
		focusable       : false,
		left		: rposx(0),
		top		: rposy(0),
		width		: rposx(800),
		height		: rposx(600),
		color		: 0x00000000,
		graphic		: "wall_save",
		cursor		: crArrow,
		clickablemb	: VK_RBUTTON,
		ncaction	: NCACTION_NOACTION,
		onrrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	],

	// �Z�[�u���ڌQ
	// �Z�[�u���ڂO�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "save_item0",	// ���̖��O�͌�Ŏg�p���邽��
						// �����K����ύX���Ȃ�����
						// 0����n�܂邱�Ƃɒ���
		parent		: "save_background",
		left		: rposx(175-5),
		top		: rposy(150*0+5),
		width		: rposx(625),
		height		: rposy(140),
		color: 0,
		graphic		: "button_save_item",
		onrelease	: "saveBookMarkWithAsk(sf.rcMenu.curPage*4+0)"
	],
	// �Z�[�u���ڂP�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "save_item1",
		parent		: "save_background",
		left		: rposx(175-5),
		top		: rposy(150*1+5),
		width		: rposx(625),
		height		: rposy(140),
		color: 0,
		graphic		: "button_save_item",
		onrelease	: "saveBookMarkWithAsk(sf.rcMenu.curPage*4+1)"
	],
	// �Z�[�u���ڂQ�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "save_item2",
		parent		: "save_background",
		left		: rposx(175-5),
		top		: rposy(150*2+5),
		width		: rposx(625),
		height		: rposy(140),
		color: 0,
		graphic		: "button_save_item",
		onrelease	: "saveBookMarkWithAsk(sf.rcMenu.curPage*4+2)"
	],
	// �Z�[�u���ڂR�x�[�X
	%[	classid		: "KAnimButtonLayer",
		name		: "save_item3",
		parent		: "save_background",
		left		: rposx(175-5),
		top		: rposy(150*3+5),
		width		: rposx(625),
		height		: rposy(140),
		color: 0,
		graphic		: "button_save_item",
		onrelease	: "saveBookMarkWithAsk(sf.rcMenu.curPage*4+3)"
	],

	// �y�[�W�I��
	%[	classid		: "KRadioButtonLayer",
		name		: "page_select",
		parent		: "save_background",
		vertical	: true,
		left		: rposx(13),
		top		: rposy(88),
		space		: rposy(6),
		buttonnum	: 15,
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		pushed		: sf.rcMenu.curPage,
		oncheckfunc	: "change_save_page",	// �����ʃI�v�V����
		buttonopts	: %[
			width     : rposx(125),
			height    : rposy(31),
			color: 0,
	 		kfont     : %[ height: rposy(18) ]
		],
		buttons		: [
			%[ name:"page_select_01", text:" 1�` 4" ],
			%[ name:"page_select_02", text:" 5�` 8" ],
			%[ name:"page_select_03", text:" 9�`12" ],
			%[ name:"page_select_04", text:"13�`16" ],
			%[ name:"page_select_05", text:"17�`20" ],
			%[ name:"page_select_06", text:"21�`24" ],
			%[ name:"page_select_07", text:"25�`28" ],
			%[ name:"page_select_08", text:"29�`32" ],
			%[ name:"page_select_09", text:"33�`36" ],
			%[ name:"page_select_10", text:"37�`40" ],
			%[ name:"page_select_11", text:"41�`44" ],
			%[ name:"page_select_12", text:"45�`48" ]
		],
	],

	// �Z�[�u��ʂ����
	%[	classid		: "KAnimButtonLayer",
		name		: "return_to_game",
		parent		: "save_background",
		left		: rposx(13),
		top		: rposy(550),
		width		: rposx(125),
		height		: rposy(31),
		color: 0,
//		graphic		: "button_save_close",
		text		: "�߂�",
	 	kfont		: %[ height: rposy(18) ],
		onrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	]
	//��������','������ƁA��̔z��v�f���ǉ����ꂽ���ƂɂȂ�̂Œ���
];

}

[endscript]

[return]
