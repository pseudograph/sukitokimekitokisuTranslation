[return cond="typeof(global.sakura_object) != 'undefined'"]

[iscript]

/*
	�����ӂ点��v���O�C�� �k���R�s�[�Ń������ߖ�CPU�H��

2011/11/28 0.51	[sakura_pause]��[sakura_resume]��ǉ�
2011/05/06 0.5	[iscript]���̍s���� * �����
2010/01/05 0.4	Restore() �� dic === void ���������ɉ������Ȃ��悤�C��
2010/07/21 0.3	�����osakuras���������B���������ĂȂ�������Atransition������
		�����܂��G���[�ɂȂ��Ă����B
 [iscript]���ł͓���*�������Ȃ����ƁI*/


// �Ԃт�̃N���X
class SakuraGrain
{
	var fore;	// �\��ʂ̉Ԃт�I�u�W�F�N�g
	var back;	// ����ʂ̉Ԃт�I�u�W�F�N�g
	var xvelo;	// �����x
	var yvelo;	// �c���x
	var xaccel;	// ������
	var x, y;	// ���ʒu�Əc�ʒu
	var window;	// �E�B���h�E�I�u�W�F�N�g�ւ̎Q��

	var opts;	// �f�t�H���g�l�ۑ��n�b�V��(xspeed,q,yrandq,yspeed�Ȃ�)
	var status = 0;	// 0=���\��(spawned == false)
			// 1=��������(�����ʊO�ɏo����\��)
			// 2=�\����(spawned == true)
			// 3=����������(�����ʊO�ɏo�������)
			// 4=�����\
	var n;		// ���̉Ԃт�̑傫��(0-7)

	var xr, yr, zr;		// X����]�ʒu�AY����]�ʒu�AZ����]�ʒu
	var xrv, yrv, zrv;	// ����]���x
	var w;			// ����

	var parent;		// �e�C���X�^���X

	// SakuraGrain �R���X�g���N�^
	function SakuraGrain(window, n, opts, w, parent)
	{
		this.window = window;
		this.opts   = opts; // �� �R�s�[�ł͂Ȃ��ĎQ�Ƃł��邱�Ƃɒ���
		this.n      = n;
		this.status = 0;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		// �ŏ��͉�ʊO�֒ǂ��o��
		fore.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);
		back.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);

		// �}�E�X���b�Z�[�W�͑S�擧��
		fore.hitType = back.hitType = htMask;
		fore.hitThreshold = back.hitThreshold = 256; 

		this.w = w;
		fore.setSize(w, w);	// �T�C�Y���w�肵�Ă���
		back.setSize(w, w);	// ���̎��_�ł͂܂��摜�͖���

		this.parent = parent;	// �e�C���X�^���X
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	// ��]�ʂ���摜�ʒu�𓾂āA�w��̃T�C�Y�ɃR�s�[
	function copyImage()
	{
		var pn = parent.PATNUM;
		var W = parent.MAXW;
/*
		var x = (int(xr)%pn + int(zr)%pn*pn) % (pn*pn) * W;
		var y =  int(yr)%pn * W;
		fore.stretchCopy(0, 0, w, w,
				parent.imglayer, x, y, W, W);
 [iscript]���ł͓���*�������Ȃ����ƁI*/
/*	Z����]���v���O�����Ŏ�������ꍇ�͂�����(�p�^�[�����������ł���)�B
	�ł��AZ����]���v���O�����Ŏ�������ƁA�A�e���s���R�ɂȂ��A�Ԃт�
	����50�𒴂����Core2Duo(1.8GHz)��20%�ȏ�CPU�p���[��H���̂ŁA�v�B
	������L���ɂ��鎞��imglayer���ʂ̂��̂�ǂ܂Ȃ���΂����Ȃ����Ƃɒ���
 [iscript]���ł͓���*�������Ȃ����ƁI*/
		var x = int(xr*4)%pn * W;
		var y = int(yr*4)%pn * W;
		var sinz = Math.sin(zr/5);
		var cosz = Math.cos(zr/5);
		var a = w/W;
		fore.affineCopy(parent.imglayer, x, y, W, W,
				true,
				a*cosz, -a*sinz, a*sinz, a*cosz,
				-a*W/2*( cosz+sinz)+w/2,
				-a*W/2*(-sinz+cosz)+w/2, 
				stNearest, true);

		back.assignImages(fore);
	}

	// �o��
	function spawn(out_of_window=true, status=2)
	{
		var qn = Math.pow(opts.q, n);
		var win_w = window.primaryLayer.width;
		var win_h = window.primaryLayer.height;

		fore.absolute = back.absolute = opts.priority+n;
		this.status = status;
		xvelo   = opts.xspeed*qn;
		var yrand = (Math.random()-0.5)*2*opts.yrandq;	// �͈́}yrandq
		yvelo   = (opts.yspeed+yrand)*qn;
		yvelo   = 0.0001 if (yvelo == 0); // yvelo = 0�͏����s�\�Ȃ̂�
		xaccel  = (Math.random()-0.5)*2 * opts.xaccelq*qn;

		xr = intrandom(0, parent.PATNUM-1);
		yr = intrandom(0, parent.PATNUM-1);
		zr = intrandom(0, parent.PATNUM-1);
		// randsiz = 0.5 - 1.0, ���x�x����]�������̂��߂Ɍv�Z
		var randsiz = 0.5 + (opts.yrandq+yrand)/(opts.yrandq*2)*0.5;
		xrv = 0.05 + Math.random()*randsiz;
		zrv = 0.05 + Math.random()*randsiz;
		// ����܂��]�����Ȃ������炻����ۂ������邽�߂�0.3�ɂ���
		yrv = (xrv*xrv + zrv*zrv) < 0.1 ? 0.3 : Math.random()*randsiz;
		copyImage();

		// +1 �Ƃ� -2 �Ƃ��́A�K����ʓ��ɕ\�����邽��
		x = intrandom(-fore.width+1,  win_w+fore.width-1);
		y = intrandom(-fore.height+1, win_h+fore.height-1);
		if(out_of_window) {
			// ��ʊO����\������ꍇ
			var t = 0;	// xvelo == 0 �� t = 0�Ƃ���
			if(xvelo != 0) {
				var a = Math.abs(yvelo/xvelo);	// �X����Βl
				var sq = win_h*win_w;	// �`��ʖʐ�
				if (a >= Math.abs(win_h/win_w)) {
					// t = �O�p�`�̖ʐςƁA�`��ʐς̔�
					t = win_h*win_h/a/2 /sq;
				} else {
					// t = ��`�̖ʐςƁA�`��ʐς̔�
					var qua = (win_h*2-win_w*a)*win_w/2;
					t = qua/sq;
				}
			}
			if (Math.random() < t) {
				// �c���������C���ɂ���B�X�s�[�h����������
				// ���[�E�E�[���r�؂��̂�h�����߂�rand�K�v
				var xrand = Math.random()*xvelo;
				if (0 <= xvelo)
					x = -fore.width+1 + xrand;
				else
					x = win_w-1       - xrand;
			} else {
				// �����������C���ɂ���X�s�[�h����������
				// ��[�E���[���r�؂��̂�h�����߂�rand�K�v
				var yrand = Math.random()*yvelo;
				if (0 <= yvelo)
					y = -fore.height+1 + yrand;
				else
					y = win_h-1        - yrand;
			}
		}
		if (status == 2 || status == 3) { // �\���E�����������Ȃ�\��
			fore.setPos(x, y);
			back.setPos(x, y); // ����ʂ̈ʒu��������
		} else {
			fore.setPos(-fore.width, 0); // ���������Ȃ�_�~�[��
			back.setPos(-fore.width, 0); // ��ʊO�\��
		}
		fore.visible = opts.forevisible;
		back.visible = opts.backvisible;
	}


	// �\���E��\���̏�Ԃ��Đݒ肷��
	function resetVisibleState()
	{
		if (status) {
			fore.visible = opts.forevisible;
			back.visible = opts.backvisible;
		}
		else {
			fore.visible = false;
			back.visible = false;
		}
	}


	// �Ԃт�𓮂���
	function move()
	{
		if (status == 4)	// �����\��ԂȂ牽�����Ȃ�
			return;
		var qn = Math.pow(opts.q, n);
		if (status == 0) {
			// �\������Ă��Ȃ���Ε\��
			// �o���p�x��1/opts.q�A�Ŕw�ʂ͕K���o��(=1.0)
			spawn() if (Math.random() <= 1/qn);
			return;
		}
		x += xvelo;
		y += yvelo;

		xvelo += xaccel;
		xaccel += (Math.random() - 0.5) * 2 * opts.xaccelq * qn;
		if (xvelo >  (opts.xspeed + opts.xspeedmax)*qn)
			xvelo = (opts.xspeed + opts.xspeedmax)*qn;
		if (xvelo < (opts.xspeed - opts.xspeedmax)*qn)
			xvelo = (opts.xspeed - opts.xspeedmax)*qn;
		if (xaccel > opts.xaccelmax*qn)
			xaccel = opts.xaccelmax*qn;
		if (xaccel < -opts.xaccelmax*qn)
			xaccel = -opts.xaccelmax*qn;

		if (status != 1) { // ���������ȊO�ł���Ύ��ۂɓ�����
			fore.setPos(x, y);
			back.setPos(x, y); // ����ʂ̈ʒu��������
		}

		// �Ԃт炪���S�ɉ�ʊO�ɏo���ꍇ�A��\���ɂ���B
		// ����move()�̎��A��ōĕ\������邩�ǂ������f�����
		if (x <= -fore.width  || window.primaryLayer.width  <= x ||
		    y <= -fore.height || window.primaryLayer.height <= y) {
			if (status == 1 || status == 2) // �\��/���������Ȃ�
				status = 0;	// ���\���ɂ���
			else if (status == 3)	// �����O�Ȃ�
				status = 4;	// �����\�ɂ���
		}

		xr += xrv; yr += yrv; zr += zrv;
		copyImage();
	}

	
	// �\�Ɨ��̊Ǘ�������������
	function exchangeForeBack()
	{
		var tmp = fore;
		fore = back;
		back = tmp;
	}
}



// ����U�炷�v���O�C���N���X
class SakuraPlugin extends KAGPlugin
{
	var sakuras;	// �Ԃт�z��B�񎟌��z��ŁAsakuras[�傫��][��]�ɂȂ��Ă�
	var timer;	// �^�C�}
	var window;	// �E�B���h�E�ւ̎Q��
	var opts = %[];	// �I�v�V�����ۑ��ϐ�

	var imglayer;		// �Ԃт�̌��摜���C��
	var PATNUM = 32;	// �p�^�[����(AxAxA)
	var MAXW = 64;
	var imgwidth = [ 6, 10, 16, 25, 40, MAXW ]; // �Ԃт�̉�(=�c)dot
	var INTERVAL = 20;	// �^�C�}�[����(=20��/�b)

	// �R���X�g���N�^
	function SakuraPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
//		SakuraPluginInit();	�����ł͏ȃ������̂��߂ɂ܂�init���Ȃ�
		sakuras = [ [], [], [], [], [], [], [] ];
	}

	// ������
	function SakuraPluginInit()
	{
		stop();
		sakuras = [ [], [], [], [], [], [], [] ];
		opts = %[
			"priority"    => 2000000-1-5,	// �\���D�揇��
							// -maxgrain���K�v
			"mingrain"    => 0,	// �Ԃт�ŏ��T�C�Y
			"maxgrain"    => 5,	// �Ԃт�ő�T�C�Y
			"dencity"     => 30,	// �Ԃт�̐�(�i�K����)
			"xspeed"      => 0,	// x�����ւ̕��σX�s�[�h
			"xaccelq"     => 0.05,	// x�����ւ̉����x�W��
			"xaccelmax"   => 0.5,	// x�����̉����x�ő�l
			"xspeedmax"   => 0.7,	// x�����̑��x�ő�l
			"yspeed"      => 2.2,	// y�����ւ̕��σX�s�[�h
			"yrandq"      => 0.4,	// y�����̉����x�����_���W��
			"q"           => 1.3,	// �Ԃт�̑傫����i�K�̌W��
			"forevisible" => true,	// �\��ʂ��\����Ԃ��ǂ���
			"backvisible" => true	// ����ʂ��\����Ԃ��ǂ���
		];

		// �g�p����p�^�[���C���[�W��ǂށB16x16x16�Ń�����65MB�H��
		if (imglayer === void) { // ���ɓǂ�ł���Γǂ܂Ȃ�
//			var fnam = "sakura"+PATNUM+"x"+PATNUM+"x"+PATNUM+"-"+MAXW+'x'+MAXW;
//		Z����affineCopy�Ŏ��s���鎞�̓ǂݍ��݃t�@�C����
			var fnam = "sakura"+PATNUM+"x"+PATNUM+"-"+MAXW+'x'+MAXW;
			imglayer = new Layer(window, window.back.base);
			imglayer.loadImages(fnam);
		}
	}


	// �I�������B�������ɂ₳�����p�^�[���C���[�W���J������
	function SakuraPluginUninit()
	{
		for (var i = sakuras.count-1; i >= 0; i--)
			for (var j = sakuras[i].count-1; j >= 0; j--)
				invalidate sakuras[i][j];
		sakuras = [ [], [], [], [], [], [], [] ];

		if (imglayer !== void) {
			invalidate imglayer;
			imglayer = void;
		}
	}


	// �f�X�g���N�^
	function finalize()
	{
		// ���̃N���X�̊Ǘ����邷�ׂẴI�u�W�F�N�g�𖾎��I�ɔj��
		for(var n = sakuras.count-1; n >= 0; n--) {
			for(var i = sakuras[n].count-1; i >= 0; i--)
				invalidate sakuras[n][i];
			invalidate sakuras[n];
		}
		invalidate sakuras;
		invalidate timer if timer !== void;
		super.finalize(...);
	}


	// dencity �̉Ԃт�ɕύX����B
	// �������Ȃ��Ȃ�ꍇ�A���ɑ��݂���Ԃт�́A��ʊO�ɏo����폜�����
	// �����Ȃ�ꍇ�́c�܂��t�c�[�ɁB
	function change_sakura_dencity(status = 1)
	{
		var num = opts.dencity;

		// �ŏ��ɕs�v�ȊK�w�̉Ԃт���폜
		for (var n = 0; n < sakuras.count && n < opts.mingrain; n++) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				sakuras[n][i].status = 3; // �폜�҂�
		}
		for (var n = opts.maxgrain+1; n < sakuras.count; n++) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				sakuras[n][i].status = 3; // �폜�҂�
		}

		// �K�v�ȊK�w������
		for (var n = opts.mingrain; n <= opts.maxgrain; n++) {
			// n = �Ԃт�̑傫���Anewnum = �\����(�ʐςɔ��)
			var newnum = int(num/Math.pow(opts.q,n*2));
			newnum = 1 if (num != 0 && newnum < 1);
			if (sakuras[n] === void)
				sakuras[n] = [];	// ���߂Ă̏ꍇ�A������
			// ���Ȃ��Ȃ�ꍇ
			for (var i = sakuras[n].count-1; i >= newnum; i--)
				sakuras[n][i].status = 3;	// �폜�҂�
			// �����Ȃ�ꍇ
			for (var i = sakuras[n].count; i < newnum; i++) {
				sakuras[n][i]= new SakuraGrain(window, n, opts, imgwidth[n], this);
				sakuras[n][i].spawn(false, status);
			}
			// ���ݍ폜�҂��̂��̂ŁA����������̂������status�ύX
			for (var i = 0; i < newnum; i++) {
				if (sakuras[n][i].status == 3)
					sakuras[n][i].status = 2;
				if (sakuras[n][i].status == 4)
					sakuras[n][i].status = 0;
			}
		}
	}


	// opts.dencity ��(x�Ԃт���)�̉Ԃт���o��������
	function start(type = 1, opts)
	{
		if (timer !== void)
			return;		// ���ɍ����ᒆ�Ȃ炷���߂�

		setOptions(opts);
		change_sakura_dencity(type ? 2 : 1);
		// �^�C�}�[���쐬
		timer = new Timer(onTimer, '');
		timer.interval = 1000/INTERVAL;	// ���bINTERVAL�񓮂���
		timer.enabled = true;
	}


	// �Ԃт������
	function stop()
	{
		if (timer === void)
			return;		// �����ᒆ�łȂ���΂����߂�

		// ��C�ɂ�߂�
		for (var n = sakuras.count-1; n >= 0; n--) {
			for (var i = sakuras[n].count-1; i >= 0; i--)
				invalidate sakuras[n][i];
			sakuras[n] = [];
		}
		sakuras.count = 0;
			invalidate timer;
		timer = void;
	}


	// �I�v�V������ݒ肷��
	function setOptions(newopts)
	{
		if (newopts !== void) {
			var ary = [];
			var optkeys = [];
			ary.assign(newopts);
			// �܂��ŏ��ɐݒ肷��
			for (var i = 0; i < ary.count; i += 2) {
				var e = ary[i];
				opts[e] = +ary[i+1];
				optkeys.add(e);
			}
			// ���ꂩ��l���`�F�b�N�B
			// �������Ȃ��ƈ�ݒ肷��x�Ɏ��s����Ă��܂�����B
			if (optkeys.find("forevisible") >= 0 ||
			    optkeys.find("backvisible") >= 0) {
				resetVisibleState();
			}
			else if (optkeys.find("dencity")  >= 0 || 
				 optkeys.find("mingrain") >= 0 ||
				 optkeys.find("maxgrain") >= 0) {
				change_sakura_dencity();
			}
			// �ςȒl�͖���
		}
	}


	// �^�C�}�[�̎������ƂɌĂ΂��
	function onTimer()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--) {
				sakuras[n][i].move(); // move ���\�b�h���Ăяo��
				if (sakuras[n][i].status == 4) {
					invalidate sakuras[n][i];
					sakuras[n].erase(i); // �폜�҂����폜
				}
			}
	}


	// ���ׂẲԂт� �\���E��\���̏�Ԃ��Đݒ肷��
	function resetVisibleState()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--)
				// resetVisibleState ���\�b�h���Ăяo��
				sakuras[n][i].resetVisibleState();
	}


	// �x��ۑ�����Ƃ�
	function onStore(f, elm)
	{
		var dic = f.sakuras = %[];
		dic.init = timer !== void;
		dic.opts = %[];
		(Dictionary.assign incontextof dic.opts)(opts);
		dic.pause = (timer !== void && !timer.enabled);
	}


	// �x��ǂݏo���Ƃ�
	function onRestore(f, clear, elm)
	{
		var dic = f.sakuras;
		SakuraPluginInit();
		if (dic === void)
			return;
		(Dictionary.assign incontextof opts)(dic.opts);
		setOptions(opts);
		if(dic === void || !+dic.init)
			stop();		// �Ԃт�͂łĂ��Ȃ�
		else if(dic !== void && +dic.init) {
			start();	// �Ԃт�͂łĂ���
			timer.enabled = false if (dic.pause);
		}
	}


	function onStableStateChanged(stable)
	{
	}


	function onMessageHiddenStateChanged(hidden)
	{
	}


	// ���C���̕\���������̃R�s�[
	// ���̃v���O�C���ł̓R�s�[���ׂ����͕\���E��\���̏�񂾂�
	function onCopyLayer(toback)
	{
		if (toback) {
			// �\����
			opts.backvisible = opts.forevisible;
		} else {
			// �����\
			opts.forevisible = opts.backvisible;
		}
		resetVisibleState();
	}


	// ���ƕ\�̊Ǘ���������
	function onExchangeForeBack()
	{
		for (var n = sakuras.count-1; n >= 0; n--)
			for (var i = sakuras[n].count-1; i >= 0; i--)
				// exchangeForeBack ���\�b�h���Ăяo��
				sakuras[n][i].exchangeForeBack();
	}
}

kag.addPlugin(global.sakura_object = new SakuraPlugin(kag));
	// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����

[endscript]


; �}�N���o�^
; �������}�N��
[macro name="sakura_init"]
[eval exp="sakura_object.SakuraPluginInit()"]
[endmacro]

[macro name="sakura_uninit"]
[eval exp="sakura_object.SakuraPluginUninit()"]
[endmacro]

; �J�n�}�N��
[macro name="sakura_start"]
[eval exp="sakura_object.start(mp.type, mp)"]
[endmacro]

; ��~�}�N��
[macro name="sakura_stop"]
[eval exp="sakura_object.stop()"]
[endmacro]

; �I�v�V�����ݒ�}�N��
[macro name="sakura_opts"]
[eval exp="sakura_object.setOptions(mp)"]
[endmacro]

; �ꎞ��~
[macro name="sakura_pause"]
[eval exp="sakura_object.timer.enabled = false" cond="sakura_object.timer!==void"]
[endmacro]

; �ꎞ��~����
[macro name="sakura_resume"]
[eval exp="sakura_object.timer.enabled = true" cond="sakura_object.timer!==void"]
[endmacro]


[return]
