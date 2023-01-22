[return cond="typeof(global.krclick_obj) != 'undefined'"]

; �R���t�B�O�E�Z�[�u�E���[�h��ʗ�
;
; �{��̉�ʍ\���́A�u�E�N���b�N�ł̐ݒ��ʂ� TJS2 �Ŏ�������T���v��
; 2002/6/14 �Łv�����m�X�S�Q�l�ɂ����Ē����܂����B���\���グ�܂��B
;
; Config.tjs �̐ݒ���ȉ��̂悤�ɂ���K�v����
;   freeSaveDataMode = false;
;   saveThumbnail    = true;
;   numBookMarks     = 48;
;   thumbnailWidth   = 128/640*scWidth;
; Krclick.ks : ���̃t�@�C���B�E�N���b�N���[�`���̃��C�����[�`��
; Krclick_Data_Config.ks: �R���t�B�O��ʂ��\�����郌�C���̔z�u�f�[�^
; Krclick_Data_SaveLoad.ks: �Z�[�u��ʁE���[�h��ʂ��\�����郌�C���̔z�u�f�[�^
;
; 2013/12/04	0.11	�EsaveBookMarkWithAsk()��������Ƃ����œK��
;			�E�R�����g���̌Â�loadBookMarkWithAsk()�������폜
; 2013/12/02	0.1	���������[�X


; �O��v���O�C���ǂݍ���
[call storage="KLayers.ks"]

[iscript]
// ��ʃT�C�Y���ς���Ă����Έʒu�E�傫����ύX���Ȃ����߂ɁA640x480����{�ɁA
// ���ۂ̉�ʃT�C�Y(scWidth/scHeight)�ɍ��킹�č��W��Ԃ��֐��B
// Krclick_Data_Confit.ks��Krclick_Data_SaveLoad.ks�̒����痘�p����B
function rposx(x)
{
	return x*kag.scWidth/800;
}
function rposy(y)
{
	return y*kag.scHeight/600;
}
[endscript]



; �R���t�B�O��ʂ̒�`�����z��ǂݍ���
[call storage="Krclick_Data_Config.ks"]

; �Z�[�u�E���[�h��ʂ̒�`�����z��ǂݍ���
[call storage="Krclick_Data_SaveLoad.ks"]

[iscript]

if (!kag.saveThumbnail)
	System.inform('system/Config.tjs �� saveThumbnail �� '+
			'true �ɂ��Ă��������B');


// �����Ńf�t�H���g�t�H���g���`���Ă��������A�R������KLayers���g��
// �S�Ẵ��C���̃f�t�H���g���ύX�����̂ŁA���� sf.rcMenu.LayerDefault��
// ����ύX���������悢�B
// .KFont_default.face   = '�l�r �o�S�V�b�N',
// .KFont_default.height = 10;


// �������֐��B
// �L�����N�^�f�[�^�͕K������ sf �ɃZ�[�u���ꂸ�Af �ɃZ�[�u����邱�Ƃ�����A
// ���̏ꍇ�Ƀ^�C�g���ɖ߂���[clearvar]���ꂽ��ɍĐݒ�ł���悤�ɁB
function init_rcMenu()
{
	// �O���[�o���V�X�e���ϐ��̃f�t�H���g�l�ݒ�
	if (sf.rcMenu === void) {
		sf.rcMenu = %[
			curPage		: 0,	// ���݂�load/save�\���y�[�W
			BgmVolume	: 100,	// BGM�{�����[��
			BgmMute		: false,// BGM�~���[�gcheckbox
			SeVolume	: 100,	// SE�{�����[��
			SeMute		: false,// SE�~���[�gcheckbox
			bookMarkComments: [],	// �R�����g(���ݖ��g�p)
			bookMarkMessages: [],	// ��ʂɕ\������Ă����b�Z�[�W
			LayerDefault    : %[
				// �e�탌�C���̃f�t�H���g�l
				// �����̎����͂Ȃ��Ă��悢
				absolute   : 20000000+1,
//				color      : 0xff004080,
//				entercolor : 0xff70b0f0,
//				clickcolor : 0xff90d0ff,
				kfont : %[
					face   : '�l�r �o�S�V�b�N',
					height : rposx(10)
				],
				enterfont : %[
					height : rposx(14)
				],
				clickfont : %[
					height : rposx(14)
				],
				buttonopts : %[	 // RadioButton�̃f�t�H���g�l
//					color      : 0xff004080,
//					entercolor : 0xff70b0f0,
//					clickcolor : 0xff90d0ff,
					kfont : %[
						face   : '�l�r �o�S�V�b�N',
						height : rposx(10)
					],
					enterfont : %[
						height : rposx(14)
					],
					clickfont : %[
						height : rposx(14)
					]
				]
			]
		];
	}

	// ���ǂ̕����\���Ɂu�ƂĂ��x��(V)�v��ǉ�(���x�i�K(=5)�̈�
	if (typeof(kag.chVerySlowMenuItem) == 'undefined') {
		kag.chVerySlowMenuItem = new KAGMenuItem(kag,
					"�ƂĂ��x��(&V)",
					1,
					kag.onChSpeedMenuItemClick, false);
		kag.chSpeeds.nowait = 0;	// nowait��ǉ����Ă���
		// Normal��Slow�̔䗦����VerySlow���v�Z����
		 kag.chSpeeds.veryslow = int((kag.chSlowMenuItem.speed*kag.chSlowMenuItem.speed)/kag.chNormalMenuItem.speed);
		kag.chVerySlowMenuItem.speed = kag.chSpeeds.veryslow;
		kag.chSpeedMenu.insert(kag.chVerySlowMenuItem, 4);
	}

	// ���ǂ̕����\������u�ς��Ȃ�(&M)�v���폜(�I�u�W�F�N�g�͎c��)
	if (kag.ch2ndSpeedMenu.children.find(kag.ch2ndNoChangeMenuItem) >= 0)
		kag.ch2ndSpeedMenu.remove(kag.ch2ndNoChangeMenuItem);
	// ���ǂ̕����\���Ɂu�x��(V)�v��ǉ�(���x�i�K(=5)�̈�
	if (typeof(kag.ch2ndSlowMenuItem) == 'undefined') {
		kag.ch2ndSlowMenuItem = new KAGMenuItem(kag,
					"�x��(&S)",
					1,
					kag.onCh2ndSpeedMenuItemClick, false);
		// Fast��Normal�̔䗦����Slow���v�Z����
		kag.ch2ndSlowMenuItem.speed = kag.chSpeeds.slow;
		kag.ch2ndSpeedMenu.insert(kag.ch2ndSlowMenuItem, 3);
	}
	// ���ǂ̕����\���Ɂu�ƂĂ��x��(V)�v��ǉ�(���x�i�K(=5)�̈�
	if (typeof(kag.ch2ndVerySlowMenuItem) == 'undefined') {
		kag.ch2ndVerySlowMenuItem = new KAGMenuItem(kag,
					"�ƂĂ��x��(&V)",
					1,
					kag.onCh2ndSpeedMenuItemClick, false);
		// Fast��Normal�̔䗦����Slow���v�Z����
		kag.ch2ndVerySlowMenuItem.speed = kag.chSpeeds.veryslow;
		kag.ch2ndSpeedMenu.insert(kag.ch2ndVerySlowMenuItem, 4);
	}

	// �e��{�����[����������
	setBgmVolume  (getBgmVolume());	// �����{�����[����ݒ�
	setSeVolume   (getSeVolume());	// SE�{�����[����ݒ�

	// �e�탁�b�Z�[�W�X�s�[�h��������
	setMessageSpeed1(getMessageSpeed1());	// ���ǃ��b�Z�[�W
	setMessageSpeed2(getMessageSpeed2());	// ���ǃ��b�Z�[�W
	setMessageSpeedAuto(getMessageSpeedAuto()); // �I�[�g���b�Z�[�W

	// tf.loadbookmarknum �͒�`���Ă͂Ȃ�Ȃ��B�ȉ���load�̎��Ɏg�����߁B
	delete tf.loadbookmarknum;
	// tf.krclickmode �͒�`���Ă͂Ȃ�Ȃ��B�ȉ��Ń��[�h�w��Ɏg�����߁B
	delete tf.krclickmode;
}



// ��ʍ쐬�֐� ###########################################################

// dic�ɖ����p�����[�^��def�ŏ㏑��
function marge_dic_default(dic, def)
{
	if (def === void)
		return dic;
	var defkeys = keys(def);
	for (var i = defkeys.count-1; i >= 0; i--) {
		var key = defkeys[i];
		var type = typeof(dic[key]);
		if (type == 'undefined')
			dic[key] = def[key];
		else if (type == 'Object') // dic�̂͂�
			marge_dic_default(dic[key], def[key]);
	}
	return dic;
}

// sf.rcMenu.LayerDefault ���f�t�H���g�l�Ƃ��ă��C�����쐬����
function createLayersWithDefault(itemary, parent)
{
	if (sf.rcMenu.LayerDefault !== void)
		for (var i = itemary.count-1; i >= 0; i--)
			marge_dic_default(itemary[i], sf.rcMenu.LayerDefault);
	return createLayers(itemary, parent);
}


// ���[�h�E�Z�[�u��ʂ̈�A�C�e�����쐬����
function make_loadsave_item(itemary, num, parent)
{
/* �ݒ�\����
		name	: "thumbnail"		// �T���l�C���摜
		name	: "label"		// ���x����
		name	: "protectcheckbox"	// �L�^�ی�`�F�b�N�{�b�N�X
		name	: "item#"		// �A�C�e��No.
		name	: "date"		// ���t
//���͂Ȃ�	name	: "comment"		// �R�����g

[iscript]���ł͓���*�������Ȃ����ƁI*/
	var ret = createLayersWithDefault(itemary, parent);

	// �����̓��j�[�N�ɗB�ꑶ�݂���K�v������
	var thumb  = findLayer('thumbnail',       parent, false);
	var label  = findLayer('label',           parent, false);
	var pcb    = findLayer('protectcheckbox', parent, false);
	var itemno = findLayer('item#',           parent, false);
	var date   = findLayer('date',            parent, false);
	var cmnt   = findLayer('comment',         parent, false);
	var msg    = findLayer('message',         parent, false);

	var tnstr      = kag.getBookMarkFileNameAtNum(num);
	var labelstr   = "�L�^�Ȃ�";
	var pcbchecked = false;
	var datestr    = "���t�F----/--/-- --:--:--:--";
	var cmntstr    = "";
	var msgstr     = "";

	if (Storages.isExistentStorage(tnstr) && kag.bookMarkDates[num] != ""){
		datestr    = "���t�F"+kag.bookMarkDates[num];
		labelstr   = kag.bookMarkNames[num];
		pcbchecked = kag.bookMarkProtectedStates[num];
		if (sf.rcMenu.bookMarkComments !== void)
			cmntstr = sf.rcMenu.bookMarkComments[num];
		if (sf.rcMenu.bookMarkMessages !== void)
			msgstr  = sf.rcMenu.bookMarkMessages[num];
		// �T���l�C���ݒ�
		thumb.setOptions(%[graphic:tnstr]) if (thumb !== void);
	} else {
		// �T���l�C���摜���蓮�ō폜���ꂽ���ɂ��Ή�
		if (kag.bookMarkDates[num] != "") {
			kag.bookMarkNames[num] = ""; // �L�^��
			kag.bookMarkDates[num] = ""; // �ۑ��N����
			// ���b�Z�[�W���C���ɕ\������Ă����b�Z�[�W
			if (sf.rcMenu.bookMarkComments !== void)
				sf.rcMenu.bookMarkComments[num] = "";
			kag.setBookMarkMenuCaptions();
		}
		// �T���l�C���ݒ�
		tnstr = "�L�^����";
		if (thumb !== void)
			thumb.setOptions(%[graphic:"", text:"�L�^�Ȃ�"]);
	}

	// �ۑ������ݒ�
	date  .setOptions(%[text:datestr   ]) if (date   !== void);
	// �x���̐ݒ�
	label .setOptions(%[text:labelstr  ]) if (label  !== void);
	// �L�^�ی�`�F�b�N�{�b�N�X�ݒ�
	if (pcb !== void)
		pcb   .setOptions(%[checked:pcbchecked, 
			    stateval:"kag.bookMarkProtectedStates["+num+"]"]);
	// ���[�h�E�Z�[�u�ԍ��ݒ�
	itemno.setOptions(%[text:num+1     ]) if (itemno !== void);
	// �R�����g�ݒ�
	cmnt  .setOptions(%[text:cmntstr   ]) if (cmnt   !== void);
	// �\�����b�Z�[�W�ݒ�
	msg   .setOptions(%[text:msgstr    ]) if (msg    !== void);

	return ret;
}


// ���[�h�ݒ� ################################################################

// ���[�h��ʂ̃A�C�e���Q���쐬����
function make_load_items(pagenum=sf.rcMenu.curPage, page='fore')
{
	var parent = kag[page].base;
	var ret = [], lary = [], l;
	sf.rcMenu.curPage = pagenum;
	for (var i = 0; (l = findLayer('load_item'+i, parent)) !== void; i++) {
		for (var j = l.children.count-1; j >= 0; j--) {
			// �q����S���폜
			var cl = l.children.pop();
			if (page == 'fore')
				.krclick_obj.forelayers.remove(cl);
			else
				.krclick_obj.backlayers.remove(cl);
			invalidate cl;		// �q����S���폜
		}
		lary.add(l);
	}
	var itemno = lary.count*pagenum;
	for (var i = 0; i < lary.count; i++, itemno++) {
		// "load_item[0-9]+" ��e�ɁAload_item��ǉ�
		var itemary = [];		// �����ō�邱�Ƃɒ���
		itemary.assignStruct(load_item);
		for (var j = itemary.count-1; j >= 0; j--)
			itemary[j].parent = 'load_item'+i;
		add_ary(ret, make_loadsave_item(itemary, itemno, lary[i]));
	}
	return ret;	// �z���S���Ԃ��B
}


// ���[�h��ʂ̕\���y�[�W�؂�ւ��{�^���������ꂽ
// �\�����R�s�[�@���@����ʂɎ���ʍ쐬�@���@�g�����W�V�������ĕ\��
function change_load_page(index)
{
	if (sf.rcMenu.curPage == index)
		return;
	kag.tagHandlers.backlay(%[]);
	// .krclick_obj.show() �ł��ƁA�ȉ��̂悤�ɖ������[�v����̂�
	// onCheck()��show()��createLayers()��onCheck()��...
	// �����������疳�����[�v���Ȃ��Ȃ��Ă����A�������̂��߂��̂܂܂ɁB
	add_ary(.krclick_obj.backlayers, make_load_items(index, 'back'));
	.krclick_obj.moveto_noshow('back');
}


// ���[�h��ʂ��쐬����
function make_load_screen(pagenum=sf.rcMenu.curPage, page='fore')
{
	var parent = kag[page].base;
	// �{�^�����z�� "load_screen"�A"load_item" �Ń��[�h��ʂ��쐬����
	init_load_screen_values();
	var ret = createLayersWithDefault(load_screen, parent);
	add_ary(ret, make_load_items(pagenum, page));
	findLayer('page_select', parent).makeCheck(pagenum);	// �{�^��������
	return ret;	// �z���S���Ԃ��B�g�b�v�����Ԃ��Ƒ��� invalidate
			// �����͗l�B�Ȃ�ł�̂�B
}


// �x�����[�h����
function loadBookMarkWithAsk(num)
{
	// kag.loadBookMarkWithAsk(num)�́A�����ł͎��s���Ȃ��B���s�����
	// ���̏u�ԂɐF�Xinvalidate����ăG���[�ɂȂ邽�߁B��xmoveto��
	// �I�������A���̎��� tf.loadbookmarknum ���ݒ肳��Ă����烍�[�h����
	// �悤�ɂ���
	// ���[�h���A��ʂ́A.krclick_obj.onRestore()���ŃN���A�����
	
	// bookMarkDates ���󕶎��̏ꍇ�͞x�͑��݂��Ȃ�
	if (num >= kag.numBookMarks || kag.bookMarkDates[num] == "")
		return false;

	var prompt = .load_message.sprintf(kag.bookMarkNames[num]);

	if (typeof(.ImageDialogLayerPlugin_obj) != 'undefined' &&
	    .ImageDialogLayerPlugin_obj.options.enabled) {
		// YesNoDialogLayer�𗘗p���̏ꍇ�B���͕K��false�Ŗ߂�
		.ImageDialogLayerPlugin_obj.askYesNoLayer(prompt, loadBookMarkWithAsk_next, num);
	} else {
		// YesNoDialogLayer�𗘗p���łȂ��ꍇ���f�t�H���gYesNoDialog
		if (askYesNo(prompt))
			loadBookMarkWithAsk_next(num);
	}
}

// ���[�h���A[Yes]���I�����ꂽ�ꍇ�Ɏ��s�����
function loadBookMarkWithAsk_next(num)
{
	// �ǂݍ��݂܂��� �� Yes �Ȃ�B
	kag.loadBookMark(num);
	tf.loadbookmarknum = num;
	// ���j���[���I�����A�f�[�^�����[�h����
	.krclick_obj.moveto('back', .krclick_obj.CLEAR);
}


// �Z�[�u�ݒ� ################################################################

// �Z�[�u��ʂ̃A�C�e���Q���쐬����
function make_save_items(pagenum=sf.rcMenu.curPage, page='fore')
{
	var parent = kag[page].base;
	var ret = [], lary = [], l;
	sf.rcMenu.curPage = pagenum;
	for (var i = 0; (l = findLayer('save_item'+i, parent)) !== void; i++) {
		for (var j = l.children.count-1; j >= 0; j--) {
			// �q����S���폜
			var cl = l.children.pop();
			if (page == 'fore')
				.krclick_obj.forelayers.remove(cl);
			else
				.krclick_obj.backlayers.remove(cl);
			invalidate cl;		// �q����S���폜
		}
		lary.add(l);
	}
	var itemno = lary.count*pagenum;
	for (var i = 0; i < lary.count; i++, itemno++) {
		// "save_item[0-9]+" ��e�ɁAsave_item��ǉ�
		var itemary = [];		// �����ō�邱�Ƃɒ���
		itemary.assignStruct(save_item);
		for (var j = itemary.count-1; j >= 0; j--)
			itemary[j].parent = 'save_item'+i;
		add_ary(ret, make_loadsave_item(itemary, itemno, lary[i]));
		
	}
	return ret;	// �z���S���Ԃ��B
}


// �Z�[�u��ʂ̕\���y�[�W�؂�ւ��{�^���������ꂽ
// �\�����R�s�[�@���@����ʂɎ���ʍ쐬�@���@�g�����W�V�������ĕ\��
function change_save_page(index)
{
	if (sf.rcMenu.curPage == index)
		return;
	kag.tagHandlers.backlay(%[]);
	// .krclick_obj.show() �ł��ƁA�ȉ��̂悤�ɖ������[�v����̂�
	// onCheck()��show()��createLayers()��onCheck()��...
	// �����������疳�����[�v���Ȃ��Ȃ��Ă����A�������̂��߂��̂܂܂ɁB
	add_ary(.krclick_obj.backlayers, make_save_items(index, 'back'));
	.krclick_obj.moveto_noshow('back');
}


// �Z�[�u��ʂ��쐬����
function make_save_screen(pagenum=sf.rcMenu.curPage, page='back')
{
	var parent = kag[page].base;
	// �{�^�����z�� "save_screen"�A"save_item" �ŃZ�[�u��ʂ��쐬����
	init_save_screen_values();
	var ret = createLayersWithDefault(save_screen, parent);
	add_ary(ret, make_save_items(pagenum, page));
	findLayer('page_select', parent).makeCheck(pagenum);	// �{�^��������
	return ret;	// �z���S���Ԃ��B�g�b�v�����Ԃ��Ƒ��� invalidate
			// �����͗l�B�Ȃ�ł�̂�B
}


// �x���Z�[�u����
// �Z�[�u��ɉ�ʂ��X�V���邽�߂ɁAloadBookMarkWithAsk()�Ɛ����Ⴄ
function saveBookMarkWithAsk(num)
{
	// �Z�[�u���A��ʂ�.krclick_obj.onStore()���ōX�V���悤�Ǝv���Ă����A
	// onStore()�́u���x���ʉߎ��v�ɓ����̂ł�����߂��c

	if (kag.readOnlyMode || num >= kag.numBookMarks ||
	    kag.bookMarkProtectedStates[num])
		return false;

	if (kag.bookMarkDates[num] == "") { // �V�K�Ȃ牽���������ɃZ�[�u
		saveBookMarkWithAsk_next(num);
		return;
	}

	var prompt = .save_message.sprintf(kag.pcflags.currentPageName);
	if (typeof(.ImageDialogLayerPlugin_obj) != 'undefined' &&
	    .ImageDialogLayerPlugin_obj.options.enabled) {
		// YesNoDialogLayer�𗘗p���łȂ��ꍇ���f�t�H���gYesNoDialog
		.ImageDialogLayerPlugin_obj.askYesNoLayer(prompt, saveBookMarkWithAsk_next, num);
	} else {
		// YesNoDialogLayer�𗘗p���łȂ��ꍇ���f�t�H���g����
		if (askYesNo(prompt))
			saveBookMarkWithAsk_next(num);
	}
}

//�Z�[�u���A[Yes]���I�����ꂽ�ꍇ�Ɏ��s�����
function saveBookMarkWithAsk_next(num)
{
	// �������݂܂��� �� Yes �Ȃ�B
	kag.saveBookMark(num);
	if(sf.rcMenu.bookMarkComments !== void)
		sf.rcMenu.bookMarkComments[num] = ""; // �R�����g�N���A
	if(sf.rcMenu.bookMarkMessages !== void)
		sf.rcMenu.bookMarkMessages[num] = f.messagestore;
	if (.krclick_obj.mode == .krclick_obj.SAVE)
		make_save_items();	// ���j���[�Z�[�u�łȂ���΃{�^�����X�V
}


// �R���t�B�O�ݒ� ###########################################################

// �R���t�B�O��ʂ��쐬����
function make_config_screen(page='fore')
{
	init_config_screen_values();
	return createLayersWithDefault(config_screen, kag[page].base);
}


// BGM�{�����[��(0�`100)�𓾂�
function getBgmVolume()
{
	var vol = sf.rcMenu.BgmVolume;
	if (sf.rcMenu.BgmMute)
		vol = 0;
	return int(vol);
}
// BGM�{�����[����ύX����(hval �����g��Ȃ��Ahval = 0�`100)
function setBgmVolume(hval, vval, dragging)
{
	var vol = hval;
	if (!sf.rcMenu.BgmMute)
		sf.rcMenu.BgmVolume = vol;
	else
		vol = 0;
	kag.bgm.setOptions(%[gvolume:vol]);

	var l;
	if ((l = findLayer("bgmvval")) !== void)
		l.setOptions(%[text:string(vol)]);
	if ((l = findLayer("bgmslider")) !== void)
		l.setOptions(%[hval:vol]);
//	kag.saveSystemVariables();	// �����100ms���炢������̂ō폜
}


// SE�{�����[��(0�`100)�𓾂�
function getSeVolume()
{
	var vol = sf.rcMenu.SeVolume;
	if (sf.rcMenu.SeMute)
		vol = 0;
	return int(vol);
}
// SE�{�����[����ύX����(hval �����g��Ȃ��Ahval = 0�`100)
function setSeVolume(hval, vval, dragging)
{
	var vol = hval;
	if (!sf.rcMenu.SeMute)
		sf.rcMenu.SeVolume = vol;
	else
		vol = 0;

	for (var i = kag.numSEBuffers-1; i >= 0; i--)
		kag.se[i].setOptions(%[gvolume:vol]);

	var l;
	if ((l = findLayer("sevval")) !== void)
		l.setOptions(%[text:string(vol)]);
	if ((l = findLayer("seslider")) !== void)
		l.setOptions(%[hval:vol]);
//	kag.saveSystemVariables();	// �����100ms���炢������̂ō폜
}


// ���ǃ��b�Z�[�W�\�����x(�{�^���C���f�b�N�X)�𓾂�
function getMessageSpeed1(buttonnum)
{
	var uchs = kag.userChSpeed, chs = kag.chSpeeds;

	// �z���g��buttonnum���g����Ƃ����񂾂��A�����ł͎g���Ȃ��̂œD�L��
	return  (uchs <= chs.nowait) ? 4 :
		(uchs <= chs.fast  ) ? 3 :
		(uchs <= chs.normal) ? 2 :
		(uchs <= chs.slow  ) ? 1 : 0;
	// 4 = buttonum-1
	// buttonnum ; // �I�[�g���b�Z�[�W�{�^����
}


// ���ǃ��b�Z�[�W�\�����x��ݒ肷��(index=hval �����g��Ȃ�)
function setMessageSpeed1(hval, vval, dragging)
{
	var clickfunc = [
		"kag.chVerySlowMenuItem.click()",
		"kag.chSlowMenuItem.click()",
		"kag.chNormalMenuItem.click()",
		"kag.chFastMenuItem.click()",
		"kag.chNoWaitMenuItem.click()"
	];
	Scripts.eval(clickfunc[hval]);
}


// ���ǃ��b�Z�[�W�\�����x(�{�^���C���f�b�N�X)�𓾂�
function getMessageSpeed2(buttonnum)
{
	var uch2s = kag.userCh2ndSpeed, chs = kag.chSpeeds;

	// �z���g��buttonnum���g����Ƃ����񂾂��A�����ł͎g���Ȃ��̂œD�L��
	return  (uch2s <= chs.nowait) ? 4 :
		(uch2s <= chs.fast  ) ? 3 :
		(uch2s <= chs.normal) ? 2 : 
		(uch2s <= chs.slow  ) ? 1 : 0;
	// 4 = buttonum-1
	// buttonnum ; // �I�[�g���b�Z�[�W�{�^����
}

// ���ǃ��b�Z�[�W�\�����x��ݒ肷��
function setMessageSpeed2(hval, vval, dragging)
{

	var clickfunc = [
		"kag.ch2ndVerySlowMenuItem.click()",
		"kag.ch2ndSlowMenuItem.click()",
		"kag.ch2ndNormalMenuItem.click()",
		"kag.ch2ndFastMenuItem.click()",
		"kag.ch2ndNoWaitMenuItem.click()"
	];
	Scripts.eval(clickfunc[hval]);
}


// �I�[�g���b�Z�[�W�\�����x(�{�^���C���f�b�N�X)�𓾂�
function getMessageSpeedAuto(buttonnum)
{
	var ampw = kag.autoModePageWait, ampws = kag.autoModePageWaits;

	// �z���g��buttonnum���g����Ƃ����񂾂��A�����ł͎g���Ȃ��̂œD�L��
	return  (ampw <= ampws.fast  ) ? 4 :
		(ampw <= ampws.faster) ? 3 :
		(ampw <= ampws.medium) ? 2 : 
		(ampw <= ampws.slower) ? 1 : 0;
	// 4 = buttonum-1
	// buttonnum ; // �I�[�g���b�Z�[�W�{�^����
}

// �I�[�g���b�Z�[�W�\�����x��ݒ肷��
function setMessageSpeedAuto(hval, vval, dragging)
{
	var clickfunc = [
		"kag.autoModeSlowMenuItem.click()",
		"kag.autoModeSlowerMenuItem.click()",
		"kag.autoModeMediumMenuItem.click()",
		"kag.autoModeFasterMenuItem.click()",
		"kag.autoModeFastMenuItem.click()"
	];
	Scripts.eval(clickfunc[hval]);
}



// �E�N���b�N���[�`���v���O�C���{�� ##########################################
class RClickPlugin extends KAGPlugin
{
	var	window;
	var	forelayers = [];
	var	backlayers = [];
	var 	mode;	// ���݂̉�ʃ��[�h
	var     CLEAR=-1, CONFIG=0, LOAD=1, SAVE=2;
		// -1:�\������, 0:�R���t�B�O 1:���[�h 2:�Z�[�u

	// �R���X�g���N�^
	function RClickPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
		// �f�t�H���g�ŁA��ʂƓ����T�C�Y�̂��̂��ЂƂ�`���Ă����B
		clear('both');
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate_layers(forelayers);
		invalidate_layers(backlayers);
		super.finalize();
	}

	// forelayers/backlayers �ɃI�v�V������ݒ肷��
	function setOptions(page='fore', elm)
	{
		if (page == 'fore' || page == 'both')
			for (var i = forelayers.count-1; i >= 0; i--)
				forelayers.setOptions(elm);
		if (page == 'back' || page == 'both')
			for (var i = backlayers.count-1; i >= 0; i--)
				backlayers.setOptions(elm);
	}

	// ���C���[���폜����ꍇ��children���ɍ폜����
//	function invalidate_layers_sub(layer)
//	{
//		for (var i = layer.children.count-1; i >= 0; i--)
//			invalidate_layers_sub(layer.children[i]);
//		invalidate layer;
//	}

	// ���C���[���폜����
	function invalidate_layers(layers)
	{
		for (var i = layers.count-1; i >= 0; i--)
			invalidate layers.pop();
	}

	// �w�肳�ꂽ���[�h(CLEAR:�N���A, CONFIG:menu, LOAD:load, SAVE:save)
	// ��ʂ�\������
	function show(page='fore', mode=this.mode, pagenum=sf.rcMenu.curPage)
	{
		clear(page);
		this.mode = mode;
		if (mode == LOAD) {
			// ���[�h��ʍ쐬
			if (page == 'fore' || page == 'both') {
				forelayers = make_load_screen(pagenum, 'fore');
				configureFocus(forelayers);
			}
			if (page == 'back' || page == 'both') {
				backlayers = make_load_screen(pagenum, 'back');
				configureFocus(backlayers);
			}
		} else if (mode == SAVE) {
			// �Z�[�u��ʍ쐬
			if (page == 'fore' || page == 'both') {
				forelayers = make_save_screen(pagenum, 'fore');
				configureFocus(forelayers);
			}
			if (page == 'back' || page == 'both') {
				backlayers = make_save_screen(pagenum, 'back');
				configureFocus(backlayers);
			}
		} else if (mode == CONFIG) {
			// ���j���[��ʍ쐬
			if (page == 'fore' || page == 'both') {
				forelayers = make_config_screen('fore');
				configureFocus(forelayers);
			}
			if (page == 'back' || page == 'both') {
				backlayers = make_config_screen('back');
				configureFocus(backlayers);
			}
		}
		// mode == CLEAR �̏ꍇ�͏�� init ���Ă���̂ŉ������Ȃ�
	}

	// ��ʃN���A
	function clear(page='fore')
	{
		mode = CLEAR;
		if (page == 'fore' || page == 'both')
			invalidate_layers(forelayers);
		if (page == 'back' || page == 'both')
			invalidate_layers(backlayers);
	}

	// �w�胂�[�h�́A��ʂ� enabled/disabled ��؂�ւ���
	// ���ۂɂ�xxx_background������ύX�B����Ŏq���A�N�Z�X�s�\�ɂȂ�
	function enabled(enabled=true, page='fore', mode=this.mode)
	{
		if (mode == CLEAR)
			return;
		var l, laynam = 'config_background';
		if (mode == LOAD)
			laynam = 'load_background';
		else if (mode == SAVE)
			laynam = 'save_background';
		if (page == 'fore' || page == 'both') {
			l = findLayer(laynam, kag.fore.base, false);
			l.enabled = +enabled if (l !== void);
		}
		if (page == 'back' || page == 'both') {
			l = findLayer(laynam, kag.back.base, false);
			l.enabled = +enabled if(l !== void);
		}
	}

	// ��ʂ�ύX���ďI���
	function moveto(page='fore', mode=this.mode, pagenum=sf.rcMenu.curPage)
	{
		// �w�i��`���Ă���I���g���K������
		show(page, mode, pagenum);
		moveto_noshow(page);
	}

	// ��ʂ�ύX���ďI���
	function moveto_noshow(page='fore')
	{
		// �w�i�͍ŏ� enabled=false �ɂ��Ă���
		enabled(false, 'both');
		window.trigger('krclick_end');
	}

	// ���[�h��
	function onRestore(f, clear_val, elm)
	{
		clear('both');	// �\������Ă�͂��̃��[�h��ʂ��N���A
	}

	// ���C���̕\�������̏��̃R�s�[
	function onCopyLayer(toback)
	{
		if (toback) {	// �\����
			invalidate_layers(backlayers);
			for (var i = 0; i < forelayers.count; i++) {
				var fl = forelayers[i], classid, bp, layer;
				classid = global[fl.classid];
				bp = findLayer(fl.parent.name, kag.back.base);
				bp = kag.back.base if (bp === void);
				layer = new classid(fl.window, bp, fl.name);
				layer.assign(fl);
				backlayers.add(layer);
			}
		} else {	// �����\
			invalidate_layers(forelayers);
			for (var i = 0; i < backlayers.count; i++) {
				var bl = backlayers[i], classid, fp, layer;
				classid = global[bl.classid];
				fp = findLayer(bl.parent.name, kag.fore.base);
				fp = kag.fore.base if (fp === void);
				layer = new classid(bl.window, fp, bl.name);
				layer.assign(bl);
				forelayers.add(layer);
			}
			configureFocus(forelayers);
		}
	}

	// ���ƕ\�̊Ǘ���������
	function onExchangeForeBack()
	{
		var tmp = backlayers;
		backlayers = forelayers;
		forelayers = tmp;
		configureFocus(forelayers);
	}
}

kag.addPlugin(.krclick_obj = new RClickPlugin(kag));


[endscript]

[macro name=rcmenu_init]
[eval exp="init_rcMenu()"]
[endmacro]

; ��x���������Ă���
[rcmenu_init]

[return]


; �������� KAG �v���O���� #################################################

; �R���t�B�O��ʕ\��
*krclick_config
[eval exp="tf.krclickmode = .krclick_obj.CONFIG"]
[jump target=*krclick_main]


; ���[�h��ʕ\��
*krclick_load
[return cond="!kag.canRestore()"]
[eval exp="tf.krclickmode = .krclick_obj.LOAD"]
[jump target=*krclick_main]


; �Z�[�u��ʕ\��
*krclick_save
[return cond="!kag.canStore()"]
[eval exp="tf.krclickmode = .krclick_obj.SAVE"]
[jump target=*krclick_main]


; �E�N���b�N���C�����[�`��(�����ɂ���܂ł�tf.krclickmode���ݒ肳��Ă��邱��)
*krclick_main
[locklink]
[locksnapshot]
; ����� load �Ŏg���̂ō폜���Ă���
[eval exp="delete tf.loadbookmarknum"]
[stoptrans]
[backlay]
[eval exp=".krclick_obj.show('back', tf.krclickmode)"]

*krclick_loop
; �ŏ��� enabled=false �ɂ��Ă���
[eval exp=".krclick_obj.enabled(false, 'both')"]
[stoptrans]
[trans method=crossfade time=200]
[wt canskip=false]
; �\�����I������� enabled=true
[eval exp=".krclick_obj.enabled(true, 'both')"]

; "krclick_end" �g���K���������܂őҋ@
[waittrig name="krclick_end"]
; �O�̂��� sf.* ���Z�[�u����B�{���͂�������Ȃ��ق��������񂾂��ǁA����
; �֐��͎��s�ɐ��\ms���炢�������Ēx���̂ŁB
[eval exp="kag.saveSystemVariables()"]

; ���ݕ\�����̉�ʂ����b�N���āA�{�^���������Ȃ��悤�ɂ��Ă���
[eval exp=".krclick_obj.enabled(false, 'both')"]

; ���̎��_�ŗ���ʂɉ������`����Ă��邩�A�I�����͉����`����Ă��Ȃ�
; �ŁAmode �� CLEAR �Ȃ�I���A�����łȂ���Ε`�惋�[�v��
[jump target=*krclick_loop     cond=".krclick_obj.mode != .krclick_obj.CLEAR"]
[jump target=*krclick_dataload cond="tf.loadbookmarknum !== void"]

[stoptrans]
[trans method=crossfade time=200]
[wt canskip=false]

[unlocksnapshot]
[unlocklink]

[return]


*krclick_dataload
; �f�[�^��ǂݍ���
; �Ȃ�ł����œǂނ��Ƃ����ƁAkrclick_obj ���œǂނƁA���C���� invalidate
; ���ꂽ�肵�ăG���[�ɂȂ邱�Ƃ����邩��A��x KAG �ɖ߂�悤�ɂ����킯�ŁB
[eval exp="kag.loadBookMark(tf.loadbookmarknum)"]
[s]
