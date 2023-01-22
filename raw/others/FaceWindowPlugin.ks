[return cond="typeof(.FaceWindow) != 'undefined'"]

; 2013/11/28	0.4	�E[facewin_uninit]�ŁA.FaceWindow_obj��delete�O��
;			�@invalidate����悤�ύX
;			�Ekag.addPlugin()��[facewin_init]�̊O�Ŏ��s
;			�@�ēǂݍ��ݎ���finalize()�ŃG���[�ɂȂ邽��
; 2013/09/08	0.32	�Edraw_face()��absolute/visible��assign()�O��ŕۑ�
;			�@����悤�ύX
; 2013/04/08	0.31	�E[facewin_regpos]�Ŏw�肵��srcleft/srctop�����f�����
;			�@���Ȃ������̂��C��
; 2013/02/09	0.3	�EonRestore()��draw_face()�ɏ\���p�����[�^��n����
;			�@���Ȃ������̂��C��
; 2012/08/19	0.21	�Efinalize()��typoef(w)=='undefined'��isvalid(w)�ɕύX
; 2012/08/13	0.2	�E�\�߃R�s�[�����W��o�^���Ė��O�ŌĂяo����悤�Ɋg��
; 2012/08/11	0.1	�E���������[�X


[call storage="TJSFunctions.ks"]

[iscript]

class FaceWindow extends KAGPlugin {
	var w;			// =kag
	var layer;		// �Q�Ƃ���O�i���C���ԍ�(������)
	var left=0, top=0;	// �t�F�C�X�E�B���h�E�̈ʒu
	var width=160, height=120;	// �t�F�C�X�E�B���h�E�̃T�C�Y
	var alphastorage = "";	// omAlpha�ō�������ꍇ�̉摜�t�@�C����
	var alphalayer;		// omAlpha�ō�������ꍇ�̉摜(���C��)
	var transargs = %[	// [trans]�̃f�t�H���g�p�����[�^
		method : 'crossfade',
		time   : 100
	];
	var pagedat = %[	// �y�[�W���Ƃ́A�O��\�������摜�f�[�^
		fore : %[
			storage  : "",
			srclayer : "",
			srcpage  : "",
			srcleft:0, srctop:0 // srcwidth=160, srcheight=120,
		],
		back : %[
			storage  : "",
			srclayer : "",
			srcpage  : "",
			srcleft:0, srctop:0 // srcwidth=160, srcheight=120,
		]
	];
	var ctclear = false;	// [ct]�ŃN���A���邩�ǂ���
	var cmclear = false;	// [cm]�ŃN���A���邩�ǂ���
	var ct_org, cm_org;	// [cm][ct]�̃I���W�i��
	var poshash = %[];	// ���O��srcleft/srctop�̑Ή��n�b�V��

	// �ȉ��͈ꎞ�ϐ��Ȃ̂�store���ۑ��̕K�v�Ȃ�
	var currentNum, currentPage, currentWithBack, actualChSpeed;

	// �R���X�g���N�^
	function FaceWindow(w, elm)
	{
		// �������B�����ł��Ȃ��� onRestore() �Ŏg���̂�
		this.w           = w;
		ct_org           = w.tagHandlers.ct;
		cm_org           = w.tagHandlers.cm;
		w.tagHandlers.ct = ct_new;
		w.tagHandlers.cm = cm_new;
		// layer���w�肳��Ă��Ȃ���Ή������Ȃ�
		if (elm === void || elm.layer === void)
			return;

		// �f�t�H���g�ł�kag.fore.messages[9]������
		elm.index = 1010000 if (elm.index === void);

		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		clear_face('fore');
		clear_face('back');
		w.tagHandlers.ct    = ct_org;
		w.tagHandlers.cm    = cm_org;
		if (alphalayer !== void)
			invalidate alphalayer;
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;

		var e = %[];
		// �������o�b�N�A�b�v����B[facewin_setopt mp...]
		// �����mp�̓��e���ς��̂�h������
		(Dictionary.assignStruct incontextof e)(elm);

		if (e.layer !== void) {
			var fg = getLayerFromPage('fore');
			var bg = getLayerFromPage('back');
			// layer���w�肳�ꂽ��ȑO�̂�߂����肢�낢�돉����
			layer = string(e.layer);// �O�i���C���ԍ�(������)
			fg = getLayerFromPage('fore');
			bg = getLayerFromPage('back');
			fg.autoHide = bg.autoHide = true;
			clear_face('fore');
			clear_face('back');
		}

		// �y�[�W�I�v�V������ݒ肷��
		if (e.page !== void) {
			var p = pagedat[e.page];
			// name���w�肳��Ă��炻������srcleft/top���w��
			p.srcleft = poshash[e.name].srcleft if (e.name!==void);
			p.srctop  = poshash[e.name].srctop  if (e.name!==void);
			
			p.storage   = e.storage   if (e.storage  !== void);
			p.srclayer  = e.srclayer  if (e.srclayer !== void);
			p.srcpage   = e.srcpage   if (e.srcpage  !== void);
			p.srcleft   = e.srcleft   if (e.srcleft  !== void);
			p.srctop    = e.srctop    if (e.srctop   !== void);
//������		p.srcwidth  = e.srcwidth  if (e.srcwidth !== void);
//			p.srcheight = e.srcheight if (e.srcheight!== void);
			// storage��srclayer�͔w���A�w�肳�ꂽ����������""��
			if (e.storage !== void && e.storage != "")
				p.srclayer = "";
			if (e.srclayer !== void && e.srclayer != "")
				p.storage = "";
		}

		// trans* �̃p�����[�^��ݒ肷��
		var keyary = keys(elm);
		for (var i = keyary.count-1; i >= 0; i--) {
			var key = keyary[i];
			if (key != 'trans' && key.substr(0,5) == 'trans') {
				var arg = key.substr(5);
				transargs[arg] = elm[key];
			}
		}

		ctclear = +e.ctclear if (e.ctclear !== void);
		cmclear = +e.cmclear if (e.cmclear !== void);

		// �t�F�C�X�E�C���h�E�ʒu�E�T�C�Y��ݒ�
		left   = +e.left   if (e.left   !== void);
		top    = +e.top    if (e.top    !== void);
		width  = +e.width  if (e.width  !== void);
		height = +e.height if (e.height !== void);
		
		if (e.alphastorage !== void) {
			if (alphalayer !== void)
				invalidate alphalayer;
			alphalayer = void;
			if (e.alphastorage != "") {
				// �t�@�C�������w�肳��Ă���
				alphastorage = e.alphastorage;
				alphalayer = new Layer(w, w.fore.base);
				alphalayer.visible = false;
				alphalayer.loadImages(alphastorage);
			}
		}

		// �傫����ς��鎞��fore/back/alphalayer�S���N���A
		if (e.width !== void || e.height !== void) {
			clear_face('fore');
			clear_face('back');
			// �A���t�@���C�����N���A����
			if (e.alphastorage === void) {
				if (alphalayer !== void)
					invalidate alphalayer;
				alphalayer = void;
				alphastorage = "";
			}
		}

		// �K�v�Ȃ�poshash�ݒ�
		if (e.name !== void && e.poshash !== void) {
			poshash[e.name] = %[];
			(Dictionary.assign incontextof poshash[e.name])(e.poshash);
		}

		// �c��̃p�����[�^��[layopt]�Ɋۓ����B
		// left/top/width/height/index/autohide�Ȃ�
		if (layer !== void) {
			e.layer = layer;
			w.tagHandlers.layopt(e);
		}
	}

	// trans�p�̈�������������o���B������elm�Ɏw�肳��Ă����炻�����D��
	function setTransArgs(elm)
	{
		if (elm === void)
			return void;
		var keyary = keys(transargs);
		for (var i = keyary.count-1; i >= 0; i--) {
			if (typeof(elm[keyary[i]]) == 'undefined')
				elm[keyary[i]] = transargs[keyary[i]];
		}
		return elm;
	}

	// �y�[�W����w�肳��Ă��郌�C���𓾂�
	function getLayerFromPage(page = 'fore', l=this.layer)
	{
		return (l === void) ? void : w[page].layers[l];
	}

	// [ct]��faceWindow���ǂ����邩
	function ct_new()
	{
		if (ctclear) {
			// MainWindow�ł�currentWithBack���ƕ\����ʂȂ�comp��
			// �w�肵�Ă��̂ŁAcurrentPage��fore���Ɖ���ł��Ȃ�
			if (!w.currentWithBack)
				clear_face(w.currentPage);
			else {
				clear_face('fore');
				clear_face('back');
			}
		}
		return ct_org(...);
	}

	// [cm]��faceWindow���ǂ����邩
	function cm_new()
	{
		if (cmclear) {
			if (!w.currentWithBack)
				clear_face(w.currentPage);
			else {
				clear_face('fore');
				clear_face('back');
			}
		}
		return cm_org(...);
	}

	// �t�F�C�E�B���h�E���N���A����(�傫����ʒu�͕ς��Ȃ�)
	function clear_face(page = 'fore')
	{
		if (layer === void)
			return;
		var p = pagedat[page];
		p.storage = p.srclayer = p.srcpage = "";
		var l = getLayerFromPage(page);
		var v = l.visible;
		l.freeImage();
		l.setImageSize(width, height);
		l.setSizeToImageSize();
		l.face = dfAuto, l.type = ltAlpha;
		l.fillRect(0,0,width,height, 0);
		l.visible = v;
	}

	// �t�F�C�X�E�B���h�E�Ɋ��\������
	// page=��ݒ肵���Ⴄ(=elm�̓��e���ς��)�̂Œ���
	function draw_face(elm)
	{
		if (layer === void)
			return;

		var e = %[];
		// �������o�b�N�A�b�v����B[facewin_draw mp...]
		// �����mp�̓��e���ς��̂�h������
		(Dictionary.assignStruct incontextof e)(elm);

		e.page = 'back' if (e.page === void);
		setOptions(e);

		var dst = getLayerFromPage(e.page);
		var p = pagedat[e.page];
		if (e.storage !== void && e.storage != ""/*���肤��*/) {
			// storage ���w�肳��Ă����炻��ǂݍ���ŕ\��
			w.tagHandlers.image(%[
				storage : p.storage, // setOptions()�Őݒ�ς�
				layer   : layer,
				page    : e.page
			]);
			dst.setImagePos(0,0);
		} else if (e.srclayer !== void && e.srclayer != "") {
			// srclayer ���w�肳��Ă����炻��R�s�[���ĕ\��
			var src = w[p.srcpage].layers[p.srclayer];
			// �S�̂�assing()����̂̓A�j���[�V�������̃R�s�[�̂���
			// �����Aassign()�����Ⴄ�Ƃ����ȃ����o���R�s�[�����
			// ���܂��̂ŁA�������͌��ɖ߂�
			var autoHide = dst.autoHide;
			var absolute = dst.absolute;
			var visible  = dst.visible;
			dst.assign(src);	// �ʒu�Ȃǂ��S�ăR�s�[�����
			dst.setPos(left, top, width, height);
			dst.setImagePos(-p.srcleft, -p.srctop);
			dst.autoHide = autoHide;
			dst.absolute = absolute;
			dst.visible  = visible;
		} else {
			// storage��srclayer���w�肳��Ă��Ȃ���΃N���A
			clear_face(e.page);
		}
		if (alphalayer !== void) {
			// alphalayer�ɉ摜�����݂��Ă��獇������
			dst.operateRect(p.srcleft, p.srctop,
					alphalayer, 0,0,width,height,
					omMultiplicative);
		}
	}

	// [backlay][forelay]�ȂǂŃ��C�����R�s�[������
	function onCopyLayer(toback)
	{
		if (toback)
			(Dictionary.assignStruct incontextof pagedat.back)(pagedat.fore);
		else
			(Dictionary.assignStruct incontextof pagedat.fore)(pagedat.back);
	}

	// �\���C���Ɨ����C�������ւ�����
	function onExchangeForeBack()
	{
		var tmp = pagedat.fore;
		pagedat.fore = pagedat.back;
		pagedat.back = tmp;
	}

	// �Z�[�u��
        function onStore(f, elm)
	{
		var dic = f.FaceWindow = %[];
		dic.layer        = layer;
		dic.left         = left;
		dic.top          = top;
		dic.width        = width;
		dic.height       = height;
		dic.alphastorage = alphastorage;
		dic.alphalayer   = alphalayer;
		dic.pagedat      = %[];
		(Dictionary.assignStruct incontextof dic.pagedat)(pagedat);
		dic.transargs    = %[];
		(Dictionary.assignStruct incontextof dic.transargs)(transargs);
		dic.ctclear      = ctclear;
		dic.cmclear      = cmclear;
		dic.poshash      = %[];
		(Dictionary.assignStruct incontextof dic.poshash)(poshash);
		return dic;
	}

	// ���[�h��
        function onRestore(f, clear, elm)
	{
		var dic = f.FaceWindow;
		finalize();		// ct_org/cm_org�����ɖ߂�
		if (dic === void)
			return;
		FaceWindow(w, dic);	// ������ + ct_org/cm_org�Ȃǂ�ݒ�
		(Dictionary.assignStruct incontextof pagedat)(dic.pagedat);
		(Dictionary.assignStruct incontextof transargs)(dic.transargs);
		(Dictionary.assignStruct incontextof poshash)(dic.poshash);
		// �\�E�����ɉ摜��\������
		var args = %[];
		(Dictionary.assignStruct incontextof args)(pagedat.fore);
		args.page = 'fore';
		draw_face(args);
		(Dictionary.assignStruct incontextof args)(pagedat.back);
		args.page = 'back';
		draw_face(args);

		return dic;
	}
};


kag.addPlugin(.FaceWindowPlugin_obj = new FaceWindow(kag));

[endscript]


; ��E�B���h�E������������B�w�肳�ꂽ��E�B���h�E�̓N���A�����B
[macro name=facewin_init]
[facewin_uninit]
[facewin_setopt * layer=%layer|1]
[endmacro]


; ��E�B���h�E���J������B�w�肳��Ă�����E�B���h�E�̓N���A�����B
[macro name=facewin_uninit]
[facewin_clear page=both]
[facewin_setopt page=both visible=false]
[endmacro]


; �I�v�V�������w�肷��
[macro name=facewin_setopt]
[eval exp="mp.page = 'both'" cond="mp.page === void"]
[if exp="mp.page == 'both'"]
	[facewin_setopt * page=fore]
	[facewin_setopt * page=back]
[else]
	[eval exp=".FaceWindowPlugin_obj.setOptions(mp)"]
[endif]
[endmacro]


; ��摜��srcleft/srctop�𖼑O���œo�^����
; [facewin_regpos name=XXXX srcleft=#### srctop=####]
[macro name=facewin_regpos]
[eval exp=".FaceWindowPlugin_obj.setOptions(%[name:mp.name, poshash:%[srcleft:+mp.srcleft, srctop:+mp.srctop]])"]
[endmacro]

; ��摜��srcleft/srctop�̖��O���폜����
; [facewin_unregpos name=XXXX]
[macro name=facewin_unregpos]
; setOptions()����name=xxx,poshash=void�̂Ƃ��̏����͂ł��Ȃ�(facewin_disp����
; �Ă΂ꂽ�肷�邩��̂Ń��m�X�S�C���[�K�������c�܂��������c
[eval exp="delete .FaceWindowPlugin_obj.poshash[mp.name]"]
[endmacro]


; ��摜��\������Btrans���w�肳��Ă����trans����B
[macro name=facewin_disp]
[eval exp="mp.page      = 'back'" cond="mp.page      === void"]
[eval exp="mp.srcpage   = 'fore'" cond="mp.srcpage   === void"]
[eval exp="mp.trans     = true"   cond="mp.trans     === void"]
[eval exp="mp.wait      = true"   cond="mp.wait      === void"]
[eval exp="mp.backlay   = true"   cond="mp.backlay   === void"]
[eval exp="mp.canskip   = true"   cond="mp.canskip   === void"]
[eval exp="mp.stoptrans = true"   cond="mp.stoptrans === void"]
[if exp="mp.page == 'both'"]
	; �����Afore����Ȃ�backlay�̂��ƍl���Ȃ��Ă悢�̂ŕύX���Ȃ����ƁB
	[facewin_disp * page='fore' trans=false]
	[facewin_disp * page='back' trans=false]
[else]
	[stoptrans cond="mp.stoptrans"]
	[backlay cond="mp.backlay"]
	[eval exp=".FaceWindowPlugin_obj.draw_face(mp)"]
	[if exp="mp.page == 'back' && mp.trans"]
		[eval exp=".FaceWindowPlugin_obj.setTransArgs(mp)"]
		[trans *]
		[wt canskip=%canskip cond="mp.wait"]
	[endif]
[endif]
[endmacro]


; ��E�B���h�E�ɕ\������Ă����摜����������
; ������� visible=0 �̕����������悢
[macro name=facewin_clear]
[facewin_disp * storage=&void srclayer=&void]
[endmacro]

[return]
