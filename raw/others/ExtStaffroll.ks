; ��d�ǂݍ��݂�h�~
[return cond="typeof(global.ExtStaffroll_loaded) != 'undefined'"]

; �X�^�b�t���[���v���O�C��
; 2013/11/29	0.7	�E�X�^�b�t���[�����̓Z�[�u�E���[�h�s�ɕύX
;			�Enew ExtStaffroll()����ӏ��������̂ň�ӏ��폜
; 2012/02/23	0.6	setOptions()��margin[rltb]����������Z����Ă��̂��C��
; 2011/05/30	0.51	finalize()��timer.enabled=false��invalidate timer��ǉ�
; 2011/05/29	0.5	�摜���傫���Ȃ�Ɖ��s�������₽��ƒx���Ȃ���(�ꍇ��
;			����Ă�40�b���炢CPU�����ςȂ�)�̂ŁA���s����
;			2000�h�b�g�Ƃ��ɂ��Ă݂��B�Ō��autoCrop()�ŕ␳����
;			�����āA[staffroll_set]��page=���w��ł���悤�ɂ���
; 2011/05/11	0.2	[staffroll_set]��clear�I�v�V�����ǉ�
; 2011/05/04	0.1	���������[�X�B�c�����͖��Ή�

[iscript]

// ExtStaffroll�N���X
class ExtStaffroll extends KAGPlugin {
	var win;
	var layer;
	var forelayer, backlayer;
	var forereline_org, backreline_org;
	var timer;
	var sttick, edtick;

	var startdisp = 0;	// �J�n�ʒu(0=��ʊO����A10=10�h�b�g��ʂɓ�������Ԃ�
	var enddisp = 0;	// ��~�ʒu(0=��ʊO�܂ŁA10=10�h�b�g�c����)

	// �R���X�g���N�^
	function ExtStaffroll(w, elm = %[])
	{
		win        = w;
		elm.layer  = "message0" if (elm.layer  === void);
		timer           = new Timer(timerCallback, '');
		timer.interval  = 33.33333; // (33.33333msec = 1/30�b�ň��)
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		timer.enabled = false;
		if (layer !== void && layer.substr(0,7) == 'message') {
			// �ȑO�̐ݒ�����ɖ߂�
			forelayer.reline = forereline_org;
			backlayer.reline = backreline_org;
		}
		invalidate timer;
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.layer !== void) {
			if (layer !== void && layer.substr(0,7) == 'message') {
				// �ȑO�̐ݒ�����ɖ߂�
				forelayer.reline = forereline_org;
				backlayer.reline = backreline_org;
			}
			layer     = elm.layer;
			elm.page  = 'fore';
			forelayer = win.getMessageLayerObjectFromElm(elm);
			elm.page  = 'back';
			backlayer = win.getMessageLayerObjectFromElm(elm);
		}
		forereline_org = forelayer.reline;
		backreline_org = backlayer.reline;
		forelayer.reline = forereline incontextof forelayer;
		backlayer.reline = backreline incontextof backlayer;

		if (elm.marginl !== void)
			forelayer.marginL = backlayer.marginL = +elm.marginl;
		if (elm.marginr !== void)
			forelayer.marginR = backlayer.marginR = +elm.marginr;
		if (elm.margint !== void)
			forelayer.marginT = backlayer.marginT = +elm.margint;
		if (elm.marginb !== void)
			forelayer.marginB = backlayer.marginB = +elm.marginb;
		if (elm.vertical !== void)
			forelayer.vertical = backlayer.vertical =+elm.vertical;

		if (elm.width  !== void)
			forelayer.imageWidth =backlayer.imageWidth =+elm.width;
		if (elm.height !== void)
			forelayer.imageHeight=backlayer.imageHeight=+elm.height;
		forelayer.setSizeToImageSize();
		backlayer.setSizeToImageSize();

		if (elm.interval !== void)
			timer.interval = +elm.interval;
	}

	// �\��ʂ�reline()���b�p�[
	function forereline()
	{
		// ��ɉ��s��������邩�ǂ������f���āA��ꂻ���Ȃ�T�C�Y��
		// �傫�����Areline()���I�������M���M���܂Ŗ߂��B
		var dummylacksiz = 0;
		var lacksiz = 0;

                if (vertical) {
			// ������
                } else {
			lacksiz = y + lineLayer.height + marginB - imageHeight;
			dummylacksiz = lineLayerBase + lineLayerOriginY + getLineLayerTopOffset() + lineSize + marginB - imageHeight + 1; // +1�厖
			if (dummylacksiz > 0) {
				imageHeight += dummylacksiz;
				// �Pline�����������Ă�ƒx�������̂Œǉ�
				if (2000 > dummylacksiz)
					imageHeight += 2000; // 2000dot����
				setSizeToImageSize();
			}
                }

		// ���s�A�K�� false ��Ԃ��͂�(������fore/back�ňقȂ邾��)
		var ret = global.extstaffroll_obj.forereline_org();

		if (dummylacksiz <= 0)
			return ret;
// �M���M���܂ŃT�C�Y��߂��̂͂�߂�
//		if (vertical) {
//			// ������
//		} else {
//			imageHeight -= dummylacksiz-lacksiz;
//			setSizeToImageSize();
//		}
		return ret;
	}

	// ����ʂ�reline()���b�p�[ ��fore��back�ňقȂ�͈̂�s�����c
	function backreline()
	{
		// ��ɉ��s��������邩�ǂ������f���āA��ꂻ���Ȃ�T�C�Y��
		// �傫�����Areline()���I�������M���M���܂Ŗ߂��B
		var dummylacksiz = 0;
		var lacksiz = 0;
                if (vertical) {
			// ������
                } else {
			lacksiz = y + lineLayer.height + marginB - imageHeight;
			dummylacksiz = lineLayerBase + lineLayerOriginY + getLineLayerTopOffset() + lineSize + marginB - imageHeight + 1;
			if (dummylacksiz > 0) {
				imageHeight += dummylacksiz;
				// �Pline�����������Ă�ƒx�������̂Œǉ�
				if (2000 > dummylacksiz)
					imageHeight += 2000; // 2000dot����
				setSizeToImageSize();
			}
                }

		// ���s�A�K�� false ��Ԃ��͂�(������fore/back�ňقȂ邾��)
		var ret = global.extstaffroll_obj.backreline_org();

		if (dummylacksiz <= 0)
			return ret;
// �M���M���܂ŃT�C�Y��߂��̂͂�߂�
//		if (vertical) {
//			// ������
//		} else {
//			imageHeight -= dummylacksiz-lacksiz;
//			setSizeToImageSize();
//		}
		return ret;
	}

	// �\��ʁE����ʂ��I�[�g�ŕK�v�ȑ傫���ɐ؂蔲��
	function autoCrop(page = 'both')
	{
		if (page == 'fore') {
			var fl = forelayer;
			if (forelayer.vertical) {
				// ������
			} else {
				fl.imageHeight = fl.y + fl.marginB;
			}
			fl.setSizeToImageSize();
		} else if (page == 'back') {
			var bl = backlayer;
			if (backlayer.vertical) {
				// ������
			} else {
				bl.imageHeight = bl.y + bl.marginB;
			}
			bl.setSizeToImageSize();
		} else { // page == 'bogh'
			autoCrop('fore');
			autoCrop('back');
		}
	}

	// ��ʂ��N���A����
	function clear(page = 'both')
	{
		if (page == 'fore')
			forelayer.clear();
		else if (page == 'back')
			backlayer.clear();
		else {
			forelayer.clear();
			backlayer.clear();
		}
	}

	// �X�^�b�t���[���J�n
	function start(time, startdisp=0, enddisp=0)
	{
		sttick = System.getTickCount();
		edtick = sttick + +time;
		this.startdisp = +startdisp;
		this.enddisp = +enddisp;
		timer.enabled = true;
	}
	
	// �X�^�b�t���[����~
	function stop(lastpos=true)
	{
		if (!timer.enabled)
			return;
		if (lastpos) {
			edtick = System.getTickCount();	// �ŏI�ʒu�Ɉړ�
			timerCallback();
		}
		timer.enabled = false;
	}
	
	// �^�C�}�n���h���A�ʒu�ړ�
	function timerCallback()
	{
		var curper = (System.getTickCount()-sttick)/(edtick-sttick);
		if (curper >= 1) {
			// ���ɏI�����Ă���
			timer.enabled = false;
			if (forelayer.vertical) {
				forelayer.left = win.scWidth-enddisp;
				backlayer.left = forelayer.left; // ����ʓ���
			} else {
				forelayer.top = -forelayer.height+enddisp;
				backlayer.top = forelayer.top; // ����ʓ���
			}
			// �g���K�������� [staffroll_wait] ���N����
			win.conductor.trigger("extstaffroll_endtrig");
		} else {
			// ���s��
			if (forelayer.vertical) {
				// ������
			} else {
				// curper=0 �� top=scHeight-startdisp,
				// curper=1 �� top=-forelayer.height+enddisp
				forelayer.top = (-forelayer.height+enddisp-win.scHeight+startdisp)*curper + win.scHeight-startdisp;
				backlayer.top = forelayer.top;
			}
		}
	}

	// [backlay/forelay]���Ă΂ꂽ���ɌĂ΂��
// ���b�Z�[�W���C���̏ꍇ�͂��������Ȃ�̂ŁA���C�������͂��Ȃ�
//	function onCopyLayer(toback)
//	{
//		if (toback) {
//			backlayer = forelayer;
//		} else {
//			forelayer = backlayer;
//		}
//	}

	// �\�E����ʌ������ɌĂ΂��
	function onExchangeForeBack()
	{
		// reline ���X�V����K�v�����邱�Ƃɒ���
		forelayer.reline = forereline_org;
		backlayer.reline = backreline_org;

		var tmp = backlayer;
		backlayer = forelayer;
		forelayer = tmp;

		forereline_org = forelayer.reline;
		backreline_org = backlayer.reline;
		forelayer.reline = forereline incontextof forelayer;
		backlayer.reline = backreline incontextof backlayer;
	}
}


// �v���O�C���ݒ�

[endscript]


; �X�^�b�t���[��������������
; [staffroll_init layer=message# left= top= width= height= vertical=]
[macro name=staffroll_init]
; �Z�[�u���[�h�𖳌�������
[eval exp="tf.extstaffroll_storeEnabled = kag.storeEnabled"]
[eval exp="tf.extstaffroll_restoreEnabled = kag.restoreEnabled"]
[eval exp="kag.storeEnabled = kag.restoreEnabled = false"]
[eval exp="kag.setMenuAccessibleAll()"]
; ���ɓo�^����Ă�����폜
[staffroll_end]
; KAGPlugin�Ƃ��čēo�^
[eval exp="kag.addPlugin(global.extstaffroll_obj = new ExtStaffroll(kag, mp))"]
; ������Ԃł͉�ʊO�ֈړ����A�N���A
[eval exp="mp.page = 'fore'"]
[eval exp="mp.vertical = kag.getMessageLayerObjectFromElm(mp).vertical" cond="mp.vertical === void"]
[eval exp="mp.width  = kag.scWidth"  cond="mp.width  === void"]
[eval exp="mp.height = kag.scHeight" cond="mp.height === void"]
[if exp="!mp.vertical"]
	; �������̏ꍇ
	[eval exp="mp.top    = kag.scHeight" cond="mp.top   === void"]
	[eval exp="mp.left   = 0"            cond="mp.left  === void"]
	; �����͎������������̂ōŏ��l��
	[eval exp="mp.height = 1"            cond="mp.height === void"]
[else]
	; �c�����̏ꍇ
	[eval exp="mp.top    = 0"            cond="mp.top    === void"]
	[eval exp="mp.left   = -mp.width"    cond="mp.left   === void"]
	; �c���͎������������̂ōŏ��l��
	[eval exp="mp.width  = 1"            cond="mp.width === void"]
[endif]
[position layer=%layer|message0 page=fore visible=true left=%left|0 top=%top|0 width=%width height=%height marginl=%marginl|0 margint=%margint|0 marginr=%marginr|0 marginb=%marginb|0 color=0 opacity=0 frame=""]
[position layer=%layer|message0 page=back visible=true left=%left|0 top=%top|0 width=%width height=%height marginl=%marginl|0 margint=%margint|0 marginr=%marginr|0 marginb=%marginb|0 color=0 opacity=0 frame=""]
; �N���A����B�X�^�C���Ȃǂ����ɖ߂�
;[eval exp="global.extstaffroll_obj.setOptions(mp)"]
[endmacro]


; �X�^�b�t���[�������S�ɏI������
[macro name=staffroll_end]
[if exp="typeof(global.extstaffroll_obj) != 'undefined'"]
	[staffroll_stop]
	[eval exp="kag.removePlugin(global.extstaffroll_obj)"]
	[eval exp="invalidate global.extstaffroll_obj"]
	[eval exp="delete global.extstaffroll_obj"]
	; �Z�[�u���[�h�����ɖ߂�
	[eval exp="kag.storeEnabled = tf.extstaffroll_storeEnabled"]
	[eval exp="kag.restoreEnabled = tf.extstaffroll_restoreEnabled"]
	[eval exp="kag.setMenuAccessibleAll()"]
	[eval exp="delete tf.extstaffroll_storeEnabled"]
	[eval exp="delete tf.extstaffroll_restoreEnabled"]
[endif]
[endmacro]


; �X�^�b�t���[���̃I�v�V������ݒ肷��
[macro name=staffroll_setopts]
;�q�X�g���ɏo�͂��Ȃ��悤�ɍ׍H
[eval exp="global.extstaffroll_obj.setOptions(mp)"]
[endmacro]


; �X�^�b�t���[���ɕ\��������E�摜��ݒ肷��
; [staffroll_set storage= target= clear=]
[macro name=staffroll_set]
; �q�X�g�����֎~���Ă���
[eval exp="mp.page = 'fore'" cond="mp.page === void"]
[eval exp="mp.writeenabled_save = kag.historyWriteEnabled"]
[eval exp="mp.enabled_save = kag.historyEnabled"]
[history output=false enabled=false]
; ��ʃN���A�B[cm]��[ct]���g��Ȃ��̂́A����炾�ƃ��b�Z�[�W���C���u�S�āv��
; �N���A����Ă��܂�����Bmessage1�̓N���A���Ȃ��Ă����̂Ɂ[�Ƃ�������H
[if exp="mp.clear === void || mp.clear"]
	[eval exp="global.extstaffroll_obj.clear(mp.page)"]
[endif]
; current ��ݒ肵�����b�Z�[�W���C���ɂ��āA
[eval exp="mp.page_save = kag.currentPage ? 'back' : 'fore'"]
[eval exp="mp.layer_save = 'message'+kag.currentNum"]
[eval exp="mp.withback_save = kag.currentWithBack"]
[eval exp="mp.withback = true" cond="mp.page == 'both'"]
[current layer=&global.extstaffroll_obj.layer page=%fore withback=%withback]
; autoreturn��off�ɂ���
[style autoreturn=false]
;[nowait]	nowait/endwait �́Acall�����reset���ꂿ�Ⴄ�݂����Ȃ̂ō폜
; �����ŕ������S���\��
[call storage=%storage target=%target]
;[endnowait]
[eval exp="global.extstaffroll_obj.autoCrop(mp.page)"]
[history output=%writeenabled_save enabled=%enabled_save]
[current layer=%layer_save page=%page_save withback=%withback_save]
[endmacro]


; �X�^�b�t���[�����J�n����
; [staffroll_start time= startdisp= enddisp=]
[macro name=staffroll_start]
[eval exp="global.extstaffroll_obj.start(+mp.time, +mp.startdisp, +mp.enddisp)"]
[endmacro]


; �X�^�b�t���[���̏I����҂�
; [staffroll_wait lastpos=true(def)/false canskip=true/false(def)]
[macro name=staffroll_wait]
[waittrig name="extstaffroll_endtrig" canskip=%canskip onskip="global.extstaffroll_obj.stop(mp.lastpos)" cond="global.extstaffroll_obj.timer.enabled"]
[endmacro]


; �X�^�b�t���[����������~����
; [staffroll_stop lastpos=true(def)|false]
[macro name=staffroll_stop]
[eval exp="global.extstaffroll_obj.stop(mp.lastpos)"]
[endmacro]


; �ǂݍ��ݍς݃t���O
[eval exp="global.ExtStaffroll_loaded = 1"]

[return]
