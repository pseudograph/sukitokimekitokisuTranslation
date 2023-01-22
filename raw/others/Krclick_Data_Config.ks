; �R���t�B�O��ʐݒ� ##########################################################
;
; Krclick.ks ����̂ݓǂݍ��܂��
;
; init_config_screen_values() ���ĂԂƁA
; .config_screen �ɁA�R���t�B�O��ʂ��\�����郌�C���f�[�^�̔z�������ĕԂ��B
;

; 2013/12/05	0.2	������Ƃ����ʒu����
; 2013/12/02	0.1	���������[�X

[iscript]


// �R���t�B�O��� ###########################################################
var config_screen = [];

// ����������B�������Ȃ��ƁA��ʐ؂�ւ��Ė߂������Ɂu�ŏ��ɐݒ肵���l�v��
// �߂��Ă��܂����߁B
function init_config_screen_values()
{
config_screen = [

	// �w�i
	// �~���ɕ\������̂ŁA�w�i(=���̃��C����parent)�͍Ō�ɒ�`����
	%[	classid		: "KClickableLayer",
		name		: "config_background",
		left		: rposx(0),
		top		: rposy(0),
		width		: rposx(800),
		height		: rposy(600),
		graphic		: "wall_menu",
		cursor		: crArrow,
		clickablemb	: VK_RBUTTON,
		ncaction	: NCACTION_NOACTION,
		onrrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	],

	// �u���b�Z�[�W�\�����x�v
	%[	classid		: "KLayer",
		name		: "messagespeed_str",
		parent		: "config_background",
		texthalign	: 'left',
		left		: rposx(50),
		top		: rposy(56),
		width		: rposx(218),
		height		: rposy(31),
		color: 0,

		kfont		: %[ height: rposy(17) ],
		text		: "���b�Z�[�W�\�����x"
	],
	// �u���ǁv
	%[	classid		: "KLayer",
		name		: "messagespeed1_str",
		parent		: "config_background",
		left		: rposx(62),
		top		: rposy(100),
		width		: rposx(60),
		height		: rposy(31),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "����"
	],
	// ���b�Z�[�W�\�����x(����)�X���C�_�[
	%[	classid		: "KSliderLayer",
		name		: "messagespeed1",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(100),
		width		: rposx(250),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		tabgraphic	: "slider_tab",
		hval		: getMessageSpeed1(),
		hstep		: 1,
		hmin		: 0,
		hmax		: 4,
		hintflg		: true,
		onchangefunc	: "setMessageSpeed1"
	],
	// �y�[�W���܂ň�C��checkbox
	%[	classid		: "KCheckBoxLayer",
		name		: "messagespeed1_pageskip",
		parent		: "config_background",
		left		: rposx(395),
		top		: rposy(105),
		width		: rposx(19),
		height		: rposy(19),
//		basegraphic	: "button_menu_checkbox",
//		graphic		: "button_menu_check",
		checked		: kag.chNonStopToPageBreak,
		oncheck		: "kag.onChNonStopToPageBreakItemClick()",
		onuncheck	: "kag.onChNonStopToPageBreakItemClick()"
	],
	// �u�y�[�W���܂ň�C�Ɂv
	%[	classid		: "KLayer",
		name		: "messagespeed1_pageskip_str",
		parent		: "config_background",
		left		: rposx(425),
		top		: rposy(105),
		width		: rposx(175),
		height		: rposy(20),
		texthalign	: 'left',
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "�y�[�W���܂ň�C��"
	],


	// �u���ǁv
	%[	classid		: "KLayer",
		name		: "messagespeed2_str",
		parent		: "config_background",
		left		: rposx(62),
		top		: rposy(162),
		width		: rposx(60),
		height		: rposy(31),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "����"
	],
	// ���b�Z�[�W�\�����x(����)
	%[	classid		: "KSliderLayer",
		name		: "messagespeed2",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(162),
		width		: rposx(250),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		tabgraphic	: "slider_tab",
		hval		: getMessageSpeed2(),
		hstep		: 1,
		hmin		: 0,
		hmax		: 4,
		hintflg		: true,
		onchangefunc	: "setMessageSpeed2"
	],
	// �y�[�W���܂ň�C��checkbox
	%[	classid		: "KCheckBoxLayer",
		name		: "messagespeed2_pageskip",
		parent		: "config_background",
		left		: rposx(395),
		top		: rposy(167),
		width		: rposx(19),
		height		: rposy(19),
//		basegraphic	: "button_menu_checkbox",
//		graphic		: "button_menu_check",
		checked		: kag.ch2ndNonStopToPageBreak,
		oncheck		: "kag.onCh2ndNonStopToPageBreakItemClick()",
		onuncheck	: "kag.onCh2ndNonStopToPageBreakItemClick()"
	],
	// �u�y�[�W���܂ň�C�Ɂv
	%[	classid		: "KLayer",
		name		: "messagespeed2_pageskip_str",
		parent		: "config_background",
		left		: rposx(425),
		top		: rposy(167),
		width		: rposx(175),
		height		: rposy(20),
		texthalign	: 'left',
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "�y�[�W���܂ň�C��"
	],

	// �u�����v
	%[	classid		: "KLayer",
		name		: "messagespeed_auto_str",
		parent		: "config_background",
		left		: rposx(62),
		top		: rposy(225),
		width		: rposx(60),
		height		: rposy(31),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "����"
	],
	// �I�[�g�v���C�Đ����x
	%[	classid		: "KSliderLayer",
		name		: "messagespeed_auto",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(225),
		width		: rposx(250),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		tabgraphic	: "slider_tab",
		hval		: getMessageSpeedAuto(),
		hstep		: 1,
		hmin		: 0,
		hmax		: 4,
		hintflg		: true,
		onchangefunc	: "setMessageSpeedAuto"
	],

	// �u��ʐݒ�v
	%[	classid		: "KLayer",
		name		: "messagespeed_str",
		parent		: "config_background",
		texthalign	: 'left',
		left		: rposx(50),
		top		: rposy(288),
		width		: rposx(160),
		height		: rposy(31),
		color: 0,
		kfont		: %[ height: rposy(21) ],
		text		: "��ʐݒ�"
	],

	// �t���X�N���[���E�E�B���h�E�\�� ���W�I�{�^��
	%[	classid		: "KRadioButtonLayer",
		name		: "windowconfig",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(332),
		width		: rposx(160),
		height		: rposy(47),
		buttonnum	: 3,
		space		: 13,
		color		: 0,
		pushed		: kag.fullScreened ? 1 : 0,
//		oncheckfunc	:
		buttons	: [
			%[
			color: 0,
			   text    : "�E�B���h�E",
			// �z���g�͂����ɏ����v��Ȃ��񂾂��ǁAWindowResizable.ks���A��x���������1�{�̑傫���ɖ߂����Ⴄ�̂Œǉ��B
			   oncheck : "kag.fullScreened && kag.onWindowedMenuItemClick()"
			],
			%[
			color: 0,
			   text    : "�t���X�N���[��",
			   oncheck : "kag.fullScreened || kag.onFullScreenMenuItemClick()"
			]
		],
		buttonopts : %[
			width: 160
		]
	],


	// �u�T�E���h�ݒ�v
	%[	classid		: "KLayer",
		name		: "messagespeed_str",
		parent		: "config_background",
		texthalign	: 'left',
		left		: rposx(50),
		top		: rposy(391),
		width		: rposx(200),
		height		: rposy(31),
		color: 0,
	 	kfont		: %[ height: rposy(21) ],
		text		: "�T�E���h�ݒ�"
	],
	// �uBGM�v
	%[	classid		: "KLayer",
		name		: "bgmname",
		parent		: "config_background",
		left		: rposx(62),
		top		: rposy(441),
		width		: rposx(60),
		height		: rposy(20),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "�a�f�l"
	],
	// BGM���� �X���C�_�[
	%[	classid		: "KSliderLayer",
		name		: "bgmslider",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(437),
		width		: rposx(250),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		tabgraphic	: "slider_tab",
		hval		: getBgmVolume(),
		hmax		: 100,
		hmin		: 0,
		hintflg		: true,
		hstep		: 1,
		onchangefunc	: "setBgmVolume" //�֐����Ă�
	],
	// BGM���� ���݂̒l
	%[	classid		: "KLayer",
		name		: "bgmvval",
		parent		: "config_background",
		left		: rposx(375),
		top		: rposy(437),
		width		: rposx(40),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		text		: string(getBgmVolume()),
		kfont		: %[ height: rposy(19) ]
	],
	// BGM���� mute
	%[	classid		: "KCheckBoxLayer",
		name		: "bgmmute",
		parent		: "config_background",
		left		: rposx(437),
		top		: rposy(444),
		width		: rposx(19),
		height		: rposy(19),
//		basegraphic	: "button_menu_checkbox",
//		graphic		: "button_menu_check",
		checked		: sf.rcMenu.BgmMute,
		oncheck		: "sf.rcMenu.BgmMute = true, setBgmVolume(0)",
		onuncheck	: "sf.rcMenu.BgmMute = false,
				   setBgmVolume(sf.rcMenu.BgmVolume)"
	],
	// BGM�u�����v
	%[	classid		: "KLayer",
		name		: "bgmmutestr",
		parent		: "config_background",
		left		: rposx(465),
		top		: rposy(441),
		width		: rposx(40),
		height		: rposy(20),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "����"
	],

	// �u���ʉ��v
	%[	classid		: "KLayer",
		name		: "bgmname",
		parent		: "config_background",
		left		: rposx(62),
		top		: rposy(504),
		width		: rposx(60),
		height		: rposy(20),
//		basegraphic	: "button_menu_checkbox",
//		graphic		: "button_menu_check",
color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "���ʉ�"
	],
	// SE���� �X���C�_�[
	%[	classid		: "KSliderLayer",
		name		: "seslider",
		parent		: "config_background",
		left		: rposx(125),
		top		: rposy(500),
		width		: rposx(250),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
//		tabgraphic	: "slider_tab",
		hval		: getSeVolume(),
		hmax		: 100,
		hmin		: 0,
		hintflg		: true,
		hstep		: 1,
		onchangefunc	: "setSeVolume" //�֐����Ă�
	],
	// SE���� ���݂̒l
	%[	classid		: "KLayer",
		name		: "sevval",
		parent		: "config_background",
		left		: rposx(381),
		top		: rposy(500),
		width		: rposx(40),
		height		: rposy(31),
		color		: 0,	// clNone �� 0(����)����Ȃ��̂Œ���
		text		: string(getSeVolume()),
		kfont		: %[ height: rposy(19) ]
	],
	// SE���� mute
	%[	classid		: "KCheckBoxLayer",
		name		: "semute",
		parent		: "config_background",
		left		: rposx(437),
		top		: rposy(506),
		width		: rposx(19),
		height		: rposy(19),
//		basegraphic	: "button_menu_checkbox",
//		graphic		: "button_menu_check",
		checked		: sf.rcMenu.SeMute,
		oncheck		: "sf.rcMenu.SeMute = true, setSeVolume(0)",
		onuncheck	: "sf.rcMenu.SeMute = false,
				   setSeVolume(sf.rcMenu.SeVolume)"
	],
	// SE�u�����v
	%[	classid		: "KLayer",
		name		: "bgmmutestr",
		parent		: "config_background",
		left		: rposx(465),
		top		: rposy(504),
		width		: rposx(40),
		height		: rposy(20),
		color: 0,
		kfont: %[ height: rposy(19) ],
		text		: "����"
	],

	// �u�Z�[�u�v
//	%[	classid		: "KAnimButtonLayer",
//		name		: "game_save",
//		parent		: "config_background",
//		left		: rposx(480),
//		top		: rposy(60),
//		width		: rposx(120),
//		height		: rposy(25),
//		text		: "�Z�[�u",
//		enabled		: kag.canStore(),
////		graphic		: "button_menu_title",
//		onclick		: ".krclick_obj.moveto('back', .krclick_obj.SAVE)"
//	],

	// �u���[�h�v
//	%[	classid		: "KAnimButtonLayer",
//		name		: "game_load",
//		parent		: "config_background",
//		left		: rposx(480),
//		top		: rposy(110),
//		width		: rposx(120),
//		height		: rposy(25),
//		text		: "���[�h",
//		enabled		: kag.canRestore(),
//		graphic		: "button_menu_title",
//		onclick		: ".krclick_obj.moveto('back', .krclick_obj.LOAD)"
//	],

//	// �u���b�Z�[�W�������v
//	%[	classid		: "KAnimButtonLayer",
//		name		: "hide_message",
//		parent		: "config_background",
//		left		: rposx(480),
//		top		: rposy(160),
//		width		: rposx(120),
//		height		: rposy(25),
//		text		: "���b�Z�[�W������",
////		graphic		: "button_menu_title",
//		onclick		: ".krclick_obj.moveto('back', .krclick_obj.CLEAR), kag.hideMessageLayerByUser()"
//	],

//	// �u�����̕\���v
//	%[	classid		: "KAnimButtonLayer",
//		name		: "display_history",
//		parent		: "config_background",
//		left		: rposx(480),
//		top		: rposy(210),
//		width		: rposx(120),
//		height		: rposy(25),
//		text		: "������\������",
////		graphic		: "button_menu_title",
//		onclick		: ".krclick_obj.moveto('back', .krclick_obj.CLEAR), kag.showHistoryByKey()"
//	],

	// �u��O�֖߂�v
//	%[	classid		: "KAnimButtonLayer",
//		name		: "goto_prev",
//		parent		: "config_background",
//		left		: rposx(480),
//		top		: rposy(260),
//		width		: rposx(120),
//		height		: rposy(25),
//		text		: "��O�֖߂�",
//		enabled		: kag.isHistoryOfStoreAlive(),
//		graphic		: "button_menu_title",
//		onclick		: "kag.goBackHistory()"
//	],

	// �u�^�C�g���֖߂�v
	%[	classid		: "KAnimButtonLayer",
		name		: "goto_title",
		parent		: "config_background",
		left		: rposx(562),
		top		: rposy(387),
		width		: rposx(187),
		height		: rposy(37),
		enabled		: kag.startAnchorEnabled,
		color: 0xff000000,
		kfont: %[ height: rposy(19) ],
		text		: "�ŏ��ɖ߂�",
//		graphic		: "button_menu_title",
		onclick		: "kag.goToStartWithAsk()"
	],

	// �u�Q�[���I���v
	%[	classid		: "KAnimButtonLayer",
		name		: "exit_game",
		parent		: "config_background",
		left		: rposx(562),
		top		: rposy(450),
		width		: rposx(187),
		height		: rposy(37),
		color: 0xff000000,
		kfont: %[ height: rposy(19) ],
		text		: "�Q�[�����I������",
//		graphic		: "button_menu_end",
		onclick		: "kag.closeByScript(%[ask:true])"
	],


	// �R���t�B�O��ʂ����
	%[	classid		: "KAnimButtonLayer",
		name		: "close_config",
		parent		: "config_background",
		left		: rposx(562),
		top		: rposy(512),
		width		: rposx(187),
		height		: rposy(37),
		color: 0xff000000,
		kfont: %[ height: rposy(19) ],
		text		: "����",
//		graphic		: "button_menu_close",
		showfocusimage	: true,
		onclick		: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	]
	//��������','������ƁA��̔z��v�f���ǉ����ꂽ���ƂɂȂ�̂Œ���
];

}

[endscript]

[return]
