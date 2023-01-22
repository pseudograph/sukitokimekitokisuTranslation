; ロード・セーブ画面設定 #####################################################
;
; Krclick.ks から読み込まれる
;
; init_load_screen_values() を呼ぶと、
; .load_screen に、ロード画面を構成するレイヤデータの配列を作る
; .load_item にロードの１項目(ロードデータ)を構成するレイヤデータの配列を作る
;
; init_save_screen_values() を呼ぶと、
; .save_screen に、セーブ画面を構成するレイヤデータの配列を作る
; .save_item にセーブの１項目(セーブデータ)を構成するレイヤデータの配列を作る
;
; sf.rcMenu.curPage に現在表示しているページ No. を保存する

; 2013/12/02	0.1	初期リリース



[iscript]

// ロード画面 ##############################################################

var load_item = [];
var load_screen = [];
var load_message = "この記録を読込みますか？"; // 読込時ダイアログ文字列
//var load_message = "【%s】\nをロードしますか？"; // 読込時ダイアログ文字列

// 初期化する。こうしないと、画面切り替えて戻った時に「最初に設定した値」に
// 戻ってしまうため
function init_load_screen_values()
{

// ロード画面の一項目(parentは後にプログラムで適当に追加するので不要)
load_item = [
	// ロード項目 画像
	%[	classid		: "KLayer",
		name		: "thumbnail",
//		parent		: "load_item1",
		left		: rposx(40),
		top		: rposy(7),
		width		: rposx(166),
		height		: rposy(120),
		color		: 0x00000000,	// clNone は 0(透明)じゃないので注意
//		text		: "記録なし",
		kfont		: %[ height: rposy(18) ]
	],
	// ロード項目 ラベル名
	%[	classid		: "KLayer",
		name		: "label",
//		parent		: "load_item1",
		left		: rposx(225),
		top		: rposy(31),
		width		: rposx(563),
		height		: rposy(40),
		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "記録なし",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// ロード項目 記録保護チェックボックス
//	%[	classid		: "KCheckBoxLayer",
//		name		: "protectcheckbox",
////		parent		: "load_item1",
////		basegraphic	: "button_checkboxback",
////		graphic		: "button_checkbox",
////		stateval	: "kag.bookMarkProtectedStates[##]",
//		left		: rposx(398),
//		top		: rposy(34),
//		width		: rposx(16),
//		height		: rposx(16)	// ← checkboxなのでrposy()
//	],
	// ロード項目 「記録保護」
//	%[	classid		: "KLayer",
////		parent		: "load_item1",
//		left		: rposx(420),
//		top		: rposy(35),
//		width		: 68,
//		height		: 18,
//		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "記録保護",
//		kfont		: %[ height: rposy(14) ],
//		texthalign	: 'left'
//	],
	// ロード項目 アイテムNo.
	%[	classid		: "KLayer",
		name		: "item#",
//		parent		: "load_item1",
		left		: rposx(8),
		top		: rposy((140-25)/3),
		width		: 30,
		height		: 30,
		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "00",
		kfont		: %[ height: rposy(25) ]
	],
	// ロード項目 日付
	%[	classid		: "KLayer",
		name		: "date",
//		parent		: "load_item1",
		left		: rposx(225),
		top		: rposy(94),
		width		: rposx(320),
		height		: rposy(23),
		color		: 0,	// clNone は 0(透明)じゃないので注意
		text		: "日付 ----/--/-- --:--:--",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// ロード項目 画面上に表示されていたメッセージ
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
//		text		: 'うでたてふせ'
	]

];

// ロード画面のパーツ群
load_screen = [
	// 背景
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

	// ロード項目群
	// ロード項目０ベース
	%[	classid		: "KAnimButtonLayer",
		name		: "load_item0",	// この名前は後で使用するため
						// 命名規則を変更しないこと
						// 0から始まることに注意
		parent		: "load_background",
		left		: rposx(175-5),
		top		: rposy(150*0+5),
		width		: rposx(625),
		height		: rposy(140),
		color:0,
		graphic		: "button_load_item",
		onrelease	: "loadBookMarkWithAsk(sf.rcMenu.curPage*4+0)"
	],
	// ロード項目１ベース
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
	// ロード項目２ベース
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
	// ロード項目３ベース
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

	// ページ選択
	%[	classid		: "KRadioButtonLayer",
		name		: "page_select",
		parent		: "load_background",
		vertical	: true,
		left		: rposx(13),
		top		: rposy(88),
		space		: rposy(6),
		buttonnum	: 15,
		color		: 0,	// clNone は 0(透明)じゃないので注意
		pushed		: sf.rcMenu.curPage,
		oncheckfunc	: "change_load_page",	// ↓共通オプション
		buttonopts	: %[
			width     : rposx(125),
			height    : rposy(31),
			color:0,
		 	kfont	  : %[ height: rposy(18) ]
		],
		buttons		: [
			%[ name:"page_select_01", text:" 1～ 4" ],
			%[ name:"page_select_02", text:" 5～ 8" ],
			%[ name:"page_select_03", text:" 9～12" ],
			%[ name:"page_select_04", text:"13～16" ],
			%[ name:"page_select_05", text:"17～20" ],
			%[ name:"page_select_06", text:"21～24" ],
			%[ name:"page_select_07", text:"25～28" ],
			%[ name:"page_select_08", text:"29～32" ],
			%[ name:"page_select_09", text:"33～36" ],
			%[ name:"page_select_10", text:"37～40" ],
			%[ name:"page_select_11", text:"41～44" ],
			%[ name:"page_select_12", text:"45～48" ]
		],
	],

	// ロード画面を閉じる
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
		text		: "戻る",
		onrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	]
	//↑末尾に','があると、空の配列要素が追加されたことになるので注意
];
}



// セーブ画面 ##############################################################
// ロード画面と同じ構成ならそのままコピーしてきて "load"→"save"へ変換する
// だけでよい。ここでは、別の構成(たとえば画像ファイルが異なるとか)になる
// ことも考慮して別に定義してある。

var save_item = [];
var save_screen = [];
var save_message = "上書きしますか？"; // 既存書込時文字列
//var save_message = "【%s】\nで上書きしますか？"; // 既存書込時文字列

// 初期化する。こうしないと、画面切り替えて戻った時に「最初に設定した値」に
// 戻ってしまうため。
function init_save_screen_values()
{

// セーブ画面の一項目(parentは後にプログラムで適当に追加するので不要)
save_item = [
	// セーブ項目 画像
	%[	classid		: "KLayer",
		name		: "thumbnail",
//		parent		: "save_item1",
		left		: rposx(40),
		top		: rposy(8),
		width		: rposx(166),
		height		: rposy(120),
		color		: 0x00000000,	// clNone は 0(透明)じゃないので注意
//		text		: "記録なし",
		kfont		: %[ height: rposy(18) ]
	],
	// セーブ項目 ラベル名
	%[	classid		: "KLayer",
		name		: "label",
//		parent		: "save_item1",
		left		: rposx(225),
		top		: rposy(19),
		width		: rposx(375),
		height		: rposy(40),
		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "記録なし",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// セーブ項目 記録保護チェックボックス
//	%[	classid		: "KCheckBoxLayer",
//		name		: "protectcheckbox",
////		parent		: "save_item1",
////		basegraphic	: "button_checkboxback",
////		graphic		: "button_checkbox",
////		stateval	: "kag.bookMarkProtectedStates[##]",
//		left		: rposx(398),
//		top		: rposy(34),
//		width		: rposx(16),
//		height		: rposx(16)	// ← checkboxなのでrposy()
//	],
//	// セーブ項目 「記録保護」
//	%[	classid		: "KLayer",
////		parent		: "save_item1",
//		left		: rposx(420),
//		top		: rposy(35),
//		width		: 68,
//		height		: 18,
//		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "記録保護",
//		kfont		: %[ height: rposy(14) ],
//		texthalign	: 'left'
//	],
	// セーブ項目 アイテムNo.
	%[	classid		: "KLayer",
		name		: "item#",
//		parent		: "save_item1",
		left		: rposx(8),
		top		: rposy((140-50)/3),
		width		: 30,
		height		: 30,
		color		: 0,	// clNone は 0(透明)じゃないので注意
//		text		: "00",
		kfont		: %[ height: rposy(25) ]
	],
	// セーブ項目 日付
	%[	classid		: "KLayer",
		name		: "date",
//		parent		: "save_item1",
		left		: rposx(225),
		top		: rposy(56),
		width		: rposx(320),
		height		: rposy(48),
		color		: 0,	// clNone は 0(透明)じゃないので注意
		text		: "日付 ----/--/-- --:--:--",
		kfont		: %[ height: rposy(19) ],
		texthalign	: 'left'
	],
	// セーブ項目 画面上に表示されていたメッセージ
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
//		text		: 'うでたてふせ'
	]
];


// セーブ画面のパーツ群
save_screen = [
	// 背景
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

	// セーブ項目群
	// セーブ項目０ベース
	%[	classid		: "KAnimButtonLayer",
		name		: "save_item0",	// この名前は後で使用するため
						// 命名規則を変更しないこと
						// 0から始まることに注意
		parent		: "save_background",
		left		: rposx(175-5),
		top		: rposy(150*0+5),
		width		: rposx(625),
		height		: rposy(140),
		color: 0,
		graphic		: "button_save_item",
		onrelease	: "saveBookMarkWithAsk(sf.rcMenu.curPage*4+0)"
	],
	// セーブ項目１ベース
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
	// セーブ項目２ベース
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
	// セーブ項目３ベース
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

	// ページ選択
	%[	classid		: "KRadioButtonLayer",
		name		: "page_select",
		parent		: "save_background",
		vertical	: true,
		left		: rposx(13),
		top		: rposy(88),
		space		: rposy(6),
		buttonnum	: 15,
		color		: 0,	// clNone は 0(透明)じゃないので注意
		pushed		: sf.rcMenu.curPage,
		oncheckfunc	: "change_save_page",	// ↓共通オプション
		buttonopts	: %[
			width     : rposx(125),
			height    : rposy(31),
			color: 0,
	 		kfont     : %[ height: rposy(18) ]
		],
		buttons		: [
			%[ name:"page_select_01", text:" 1～ 4" ],
			%[ name:"page_select_02", text:" 5～ 8" ],
			%[ name:"page_select_03", text:" 9～12" ],
			%[ name:"page_select_04", text:"13～16" ],
			%[ name:"page_select_05", text:"17～20" ],
			%[ name:"page_select_06", text:"21～24" ],
			%[ name:"page_select_07", text:"25～28" ],
			%[ name:"page_select_08", text:"29～32" ],
			%[ name:"page_select_09", text:"33～36" ],
			%[ name:"page_select_10", text:"37～40" ],
			%[ name:"page_select_11", text:"41～44" ],
			%[ name:"page_select_12", text:"45～48" ]
		],
	],

	// セーブ画面を閉じる
	%[	classid		: "KAnimButtonLayer",
		name		: "return_to_game",
		parent		: "save_background",
		left		: rposx(13),
		top		: rposy(550),
		width		: rposx(125),
		height		: rposy(31),
		color: 0,
//		graphic		: "button_save_close",
		text		: "戻る",
	 	kfont		: %[ height: rposy(18) ],
		onrelease	: ".krclick_obj.moveto('back', .krclick_obj.CLEAR)"
	]
	//↑末尾に','があると、空の配列要素が追加されたことになるので注意
];

}

[endscript]

[return]
