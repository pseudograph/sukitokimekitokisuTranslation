@if exp="typeof(global.oldMovie_object) == 'undefined'"
@iscript

/*
	�Â��t�B�����̂悤�Ȍ��ʂ�����v���O�C��
*/

class OldMovie
{
	// �t�B�������ʂ̃N���X

	var fore; // �\��ʂ̌��ʃI�u�W�F�N�g
	var back; // ����ʂ̌��ʃI�u�W�F�N�g
	var l, t; // ���ʒu�Əc�ʒu
	var ownwer; // ���̃I�u�W�F�N�g�����L����I�u�W�F�N�g
	var spawned = false; // ���ʂ��o�����Ă��邩
	var window; // �E�B���h�E�I�u�W�F�N�g�ւ̎Q��
    var type; // ���ʂ̎�ށB0�͏c���A1�̓m�C�Y

	function OldMovie(window, tp, h, opa, opa2, owner)
	{
        var opac;

		// OldMovie �R���X�g���N�^
		this.owner = owner;
		this.window = window;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		fore.hitType = htMask;
		fore.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
		back.hitType = htMask;
		back.hitThreshold = 256;
        fore.face = dfBoth;
        back.face = dfBoth;
        type = tp;
        if(type == 0) {
            fore.setSize(2, window.primaryLayer.height);
            back.setSize(2, window.primaryLayer.height);
            fore.fillRect(0, 0, 2, h, 0xFF000000);
    		opac = opa;
        }
        else {
            fore.setSize(2,2);
            back.setSize(2,2);
            fore.fillRect(0, 0, 2, 2, 0xFFFFFFFF);
    		opac = opa2;
        }
		back.assignImages(fore);
		fore.opacity = opac;
		back.opacity = opac;
        fore.parent = window.fore.base;
        back.parent = window.back.base;

		fore.absolute = 2000000 - 1; // �d�ˍ��킹�����̎w��
		back.absolute = fore.absolute;
	}

	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	function spawn(nl,nt,nw,nh)
	{
		// �o��
		l = Math.random() * nw; // �������ʒu
        var tt = nt;
        if(type == 1) tt += Math.random() * nh;
		spawned = true;
		fore.setPos(nl + l, tt);
		back.setPos(nl + l, tt); // ����ʂ̈ʒu��������
		fore.visible = owner.foreVisible;
		back.visible = owner.backVisible;
	}

	function resetVisibleState()
	{
		// �\���E��\���̏�Ԃ��Đݒ肷��
		if(spawned)
		{
			fore.visible = owner.foreVisible;
			back.visible = owner.backVisible;
		}
		else
		{
			fore.visible = false;
			back.visible = false;
		}
	}

	function move(nl,nt,nw,nh)
	{
		l = Math.random() * nw; // �������ʒu
        var tt = nt;
        if(type == 1) tt += Math.random() * nh;
		fore.setPos(nl + l, tt);
		back.setPos(nl + l, tt); // ����ʂ̈ʒu��������
	}

	function exchangeForeBack()
	{
		// �\�Ɨ��̊Ǘ�������������
		var tmp = fore;
		fore = back;
		back = tmp;
	}
}

class OldMoviePlugin extends KAGPlugin
{
	// ���ʂ�����v���O�C���N���X

	var noises = []; // �c��
    var pnoises = []; // �m�C�Y
	var timer; // �^�C�}
	var window; // �E�B���h�E�ւ̎Q��
	var foreVisible = true; // �\��ʂ��\����Ԃ��ǂ���
	var backVisible = true; // ����ʂ��\����Ԃ��ǂ���
	var l = 0; // �`��͈� ( �w��\ )
    var t = 0;
	var w; 
    var h;
    var opa = 40; // �c���̓����x
    var opa2 = 240; // �m�C�Y�̓����x

	function OldMoviePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize ���\�b�h
		// ���̃N���X�̊Ǘ����邷�ׂẴI�u�W�F�N�g�𖾎��I�ɔj��
		for(var i = 0; i < noises.count; i++)
			invalidate noises[i];
		invalidate noises;
		for(var i = 0; i < pnoises.count; i++)
			invalidate pnoises[i];
		invalidate pnoises;

		invalidate timer if timer !== void;

		super.finalize(...);
	}

	function init(num, num2, options)
	{
    	w = window.primaryLayer.width; 
        h = window.primaryLayer.height;
        l = +options.left if options.left !== void;
        t = +options.top if options.top !== void;
        w = +options.width if options.width !== void;
        h = +options.height if options.height !== void;
    
		// num �̏c���Anum2 �̃m�C�Y���o��������
		if(timer !== void) return; // ���łɌ��ʂ͂łĂ���

		// �c�����쐬
		for(var i = 0; i < num; i++)
		{
			noises[i] = new OldMovie(window, 0, h, opa, opa2, this);
    		noises[i].spawn(l,t,w,h);
		}

		// �m�C�Y���쐬
		for(var i = 0; i < num2; i++)
		{
			pnoises[i] = new OldMovie(window, 1, h, opa, opa2, this);
    		pnoises[i].spawn(l,t,w,h);
		}

		// �^�C�}�[���쐬
		timer = new Timer(onTimer, '');
		timer.interval = 100;
		timer.enabled = true;

		foreVisible = true;
		backVisible = true;
		setOptions(options); // �I�v�V������ݒ�
	}

	function uninit()
	{
		// ���ʂ�����
		if(timer === void) return; // ���ʂ͂łĂ��Ȃ�

		for(var i = 0; i < noises.count; i++)
			invalidate noises[i];
		noises.count = 0;
		for(var i = 0; i < pnoises.count; i++)
			invalidate pnoises[i];
		pnoises.count = 0;

		invalidate timer;
		timer = void;
	}

	function setOptions(elm)
	{
		// �I�v�V������ݒ肷��
		foreVisible = +elm.forevisible if elm.forevisible !== void;
		backVisible = +elm.backvisible if elm.backvisible !== void;
		resetVisibleState();
	}

	function onTimer()
	{
		// �^�C�}�[�̎������ƂɌĂ΂��
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].move(l, t, w, h); // move ���\�b�h���Ăяo��
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].move(l, t, w, h); // move ���\�b�h���Ăяo��
	}

	function resetVisibleState()
	{
		// ���ׂĂ̌��ʂ� �\���E��\���̏�Ԃ��Đݒ肷��
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].resetVisibleState(); // resetVisibleState ���\�b�h���Ăяo��
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].resetVisibleState(); // resetVisibleState ���\�b�h���Ăяo��
	}

	function onStore(f, elm)
	{
		// �x��ۑ�����Ƃ�
		var dic = f.noises = %[];
		var dic2 = f.pnoises = %[];
		dic.init = timer !== void;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
		dic.noiseCount = noises.count;
        dic.l = l;
        dic.t = t;
        dic.w = w;
        dic.h = h;
		dic2.pnoiseCount = pnoises.count;
	}

	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		var dic = f.noises;
        var dic2 = f.pnoises;
		if(dic === void || !+dic.init)
		{
			// ���ʂ͂łĂ��Ȃ�
			uninit();
		}
		else if(dic !== void && +dic.init)
		{
			// ���ʂ͂łĂ���
			init(dic.noiseCount, dic2.pnoiseCount, %[ forevisible : dic.foreVisible, backvisible : dic.backVisible , left : dic.l , top : dic.t , width : dic.w , height : dic.h ] );
		}
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
		// ���C���̕\���������̃R�s�[
		// ���̃v���O�C���ł̓R�s�[���ׂ����͕\���E��\���̏�񂾂�
		if(toback)
		{
			// �\����
			backVisible = foreVisible;
		}
		else
		{
			// �����\
			foreVisible = backVisible;
		}
		resetVisibleState();
	}

	function onExchangeForeBack()
	{
		// ���ƕ\�̊Ǘ���������
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].exchangeForeBack(); // move ���\�b�h���Ăяo��
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].exchangeForeBack(); // move ���\�b�h���Ăяo��
	}
}

kag.addPlugin(global.oldMovie_object = new OldMoviePlugin(kag));
	// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����

@endscript
@endif
; �}�N���o�^
@macro name="oldMovieinit"
@eval exp="oldMovie_object.init(2, 3, mp)"
; ������2, 3 �̐��l��ς��邱�ƂŁA�\������c���ƃm�C�Y�̐���ύX�ł��܂��B
@endmacro
@macro name="oldMovieuninit"
@eval exp="oldMovie_object.uninit()"
@endmacro
@macro name="oldMovieopt"
@eval exp="oldMovie_object.setOptions(mp)"
@endmacro
@return
