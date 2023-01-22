@if exp="typeof global.heartbeatplugin_object == 'undefined'"
@iscript

//*-----------------------------------------------------------------------------------------*
//
//FileName		;	HeartBeatPlugin.ks
//
//Version		:	1.01
//
//Description	:	�S���̌ۓ����Č�����v���O�C��
//					
//					Copyright (C)2006 ���m�X ����
//					���ρE�Ĕz�z���R�ł��B
//
//					���g�p�ɂ������Ă�readme.txt����сAHeartBeatPlugin�戵������.html
//					���悭���ǂ݂��������B
//
//			�^�O�� heartbeat
//			�ۓ��G�t�F�N�g�����s���܂��B
//
//			����		�K�{�H	�����@
//			storage		��	�ۓ�������摜���w��
//			backstorage	�~	�g�����W�V������ɕ\��������摜���w��
//			laynum		�~	��������Ɍۓ�������O�q���C���[��
//								�Ⴆ�΁A"1"�Ǝw�肷��ƁAlayer0�̉摜����������Ɍۓ����܂��B
//			time		�~	�G�t�F�N�g���鎞��
//			color		�~	�w�肵���摜��h��Ԃ��F���w��(�� 0x000000)
//			sound		�~	�S���̉���炷���ǂ������w��
//								(�� sound="on" or "off" sound="on"�ōĐ��Asound="off"�ōĐ����Ȃ�
//			soundfile	�~	�Đ�����T�E���h�t�@�C�����w��
//			opacity		�~	stlay�̓����x��ݒ�
//			repeat		�~	�w�肵���񐔂����A���ۓ�
//			loop		�~	hbend�^�O���s�܂łЂ�����ۓ����J��Ԃ��B �x�ۑ��ɂ��Ή�
//			delay		�~	�ۓ��ƌۓ��̊Ԃ̎��Ԃ�ݒ� repaet�����A�܂���loop������
//							�ݒ肪����ꍇ�̂ݔ��f�B
//			xblur		�~	�u���[�̏c�����͈̔͂��w�肵�܂��B
//			yblur		�~	�u���[�̉������͈̔͂��w�肵�܂��B
//			ud_abs		�~	�A�b�v�_�E�����C���[�̐�Βl
//			ova_abs		�~	�I�[�o�[���C���C���[�̐�Βl
//
//			�^�O�� whb
//			�G�t�F�N�g�I���܂őҋ@���܂��B
//
//			����  �Ȃ�
//
//
//			�^�O�� hbend
//			�ۓ��G�t�F�N�g�������I�����܂��B
//
//			���� �Ȃ�
//
//			������
//			�ꉞ�g�����W�V�����ɑΉ����Ă��܂����A�l�ɂ���Ă͂��܂��g�����W�V��������Ȃ�
//			�ꍇ������܂��B
//*---------------------------------------------------------------------------------------*

class HeartBeatPlugin extends KAGPlugin
{
	var stlay;				// �R�s�[����郌�C���[
	var ndlay;				// �R�s�[���郌�C���[
	var balay;				// �㉺���郌�C���[
	
	var stlay_back;			// �����C���[
	var ndlay_back;			// �����C���[
	var balay_back;			// �����C���[
	
	var window;				// �E�B���h�E�I�u�W�F�N�g�ւ̎Q��

	var HBleft = 0;			// �ŏ��̍��[�ʒu
	var HBtop = 0;			// �ŏ��̏�[�ʒu
	var HBwidth = 0;		// �ŏ��̕�
	var HBheight = 0;		// �ŏ��̍���
	var HBopa = 0;			// �ŏ��̕s�����x
	
	var Fleft = 0;			// �ŏI���[�ʒu
	var Ftop = 0;			// �ŏI��[�ʒu
	var Fwidth = 0;			//�ŏI��
	var Fheigh = 0;			//�ŏI����
	var Fopa = 0;			// �ŏI�s�����x
	
	var storage;			// �摜�t�@�C��
	var storage_back;		// �����̉摜�t�@�C��
	var sound;				// �����Đ����邩
	var soundfile;			// �Đ�����t�@�C����
	var color;				// �h��Ԃ��F
	
	var xvalue = 240;		// x�����̑����� ���p�~ �ݒ肵���������͎��ȐӔC�Łi�L�D�M�G�j
	var yvalue = 180;		// y�����̑����� ���p�~ �ݒ肵���������͎��ȐӔC�Łi�G�L�D�M�j
	
	var ndlays = [];		// ��������Ɋg�傳����R�s�[�����C���[
	var stlays = [];		// ��������Ɋg�傳���R�s�[�惌�C���[
	var laynum;				// ��������Ɋg�傳���O�i���C���[��
	
    var time = 0;			// ����

	var laypos;				// ���C���[���ǂꂭ�炢��������

	var StartTick;			// �X�^�[�g�������ԁB
    var tmpTick;			// balay�p��Tick
    var nextStop;			// ���A�~�܂�܂��B
    
    var base;				// kag.fore.base�̂��ƁB
    var base_back;			// kag.back.base�̂��ƁB
    
    var xblur;				// �������̃u���[�͈�
    var yblur;				// �c�����̃u���[�͈�
    
    var balay_abs = 10000-1;	// �A�b�v�_�E�����C���[�̐�Βl
    var stlay_abs = 11000-1;	// �I�[�o�[���C���C���[�̐�Βl
    
    var repeat;					// �J��Ԃ���
    var hbloop;					// ���[�v���邩�B
    var num = 0;				// �J��Ԃ�����
    var delaytime = 0;			// ���s�[�g�܂ł̑҂�����
    var delaytimer;				// �҂����s���^�C�}�[
    
    var doing = false;			// �ۓ����Ă��邩�B




	//*----------------------------------------------------------------*
	//Name		:	HeartBeatPlugin
	//
	//Purpose	:	�R���X�g���N�^
	//				�I�u�W�F�N�g���������ꂽ�Ƃ��ɌĂ΂��
	//
	//in		:	window	 (�E�B���h�E�I�u�W�F�N�g)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function HeartBeatPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
		
	}




	//*----------------------------------------------------------------*
	//Name		:	finalize
	//
	//Purpose	:	�f�X�g���N�^
	//				�I�u�W�F�N�g�����ł����Ƃ��ɌĂ΂��
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function finalize()
	{
		End();
		super.finalize(...);
	}




	//*----------------------------------------------------------------*
	//Name		:	show
	//
	//Purpose	:	�ϐ��Ƀ��[�U�[�ݒ�l��������
	//				heartbeat�^�O����Ă΂��
	//				�x���烍�[�h���ꂽ�ꍇ�͌Ă΂�Ȃ��B
	//
	//in		:	elm	(�����Ƃ��Đݒ肳�ꂽ�l)
	//
	//out		:	���ꂼ��̕ϐ�
	//*----------------------------------------------------------------*
	function show(elm)
	{
		
		storage = elm.storage; // ���[�h����摜
		storage_back = elm.backstorage; // ���[�h���闠�y�[�W�摜
		
		if(elm.time != void) // �G�t�F�N�g���Ԑݒ�
		{
			time = elm.time;
		}
		else
		{
			time = 500;
		}
		
		if(elm.color != void) // ���C���[�ɂ���F
		{
			color = elm.color;
		}
		else
		{
			color = void;
		}
		
		if(elm.sound != void) // ����炵�܂����H
		{
			sound = elm.sound;
		}
		else
		{
			sound = void;
		}
		
		if(elm.soundfile != void && elm.sound == "on") // �T�E���h�t�@�C����
		{
			soundfile = elm.soundfile;
		}
		else
		{
			soundfile = void;
		}
		
		if(elm.opacity != void) // ���C���[�����x
		{
			HBopa = (int)elm.opacity;
		}
		else
		{
			HBopa = 255;
		}
		
		if(elm.repeat != void) // ����J��Ԃ��܂����H
		{
			repeat = elm.repeat;
		}
		else
		{
			repeat = 1;
		}
		
		if(elm.delay != void) // �ۓ��ƌۓ��̊Ԃ̑҂�����
		{
			delaytime = elm.delay;
		}
		else
		{
			delaytime = void;
		}
		
		if(elm.loop != void) // �����ɌJ��Ԃ��܂��B
		{
			hbloop = elm.loop;
		}
		else
		{
			hbloop = void;
		}
		
		if(elm.xblur != void && elm.yblur != void) // �u���[�͈͂�ݒ�
		{
			xblur = elm.xblur;
			yblur = elm.yblur;
		}
		else
		{
			xblur = 6;
			yblur = 6;
		}
		
		if(elm.laynum != void) // �����Ɍۓ������郌�C���[����
		{
			laynum = (int)elm.laynum;
		}
		else
		{
			laynum = void;
		}
		
		if(elm.ova_abs != void) // �I�[�o�[���C���C���[�̐�Βl
		{
			stlay_abs = elm.ova_abs;
		}
		
		if(elm.ud_abs != void) // �A�b�v�_�E�����C���[�̐�Βl
		{
			balay_abs = elm.ud_abs;
		}
		
		//������
		xvalue = 240;
		yvalue = 180;
		
		// �G�t�F�N�g���s
		StartHB(storage, storage_back, time, color, sound, soundfile, HBopa, repeat, delaytime, hbloop, xblur, yblur, xvalue, yvalue, laynum, balay_abs, stlay_abs);

	}




	//*----------------------------------------------------------------*
	//Name		:	StartHB
	//
	//Purpose	:	�ۓ��G�t�F�N�g���J�n����
	//				�R���e�B�j���[�n���h�����s
	//
	//in		:	�e�����̕ϐ�
	//
	//out		:	�Ȃ�
	//*---------------------------------------------------------------*
	function StartHB(storage, storage_back, time, color, sound, soundfile, HBopa, repeat, delaytime, hbloop, xblur, yblur, xvalue, yvalue, laynum, balay_abs, stlay_abs)
	{
		base = window.fore.base;
		base_back = window.back.base;
		
		HBwidth = base.imageWidth;
		HBheight = base.imageHeight;
		Fleft -= xvalue / 2;
		Ftop -= yvalue / 2;
		Fwidth = base.imageWidth + xvalue;	//�ŏI��
		Fheigh = base.imageHeight + yvalue; //�ŏI����
		
		// ���C���[�쐬
		CreateLay(storage, storage_back, color, xblur, yblur, laynum, balay_abs, stlay_abs); // ���C���[�쐬
		
		
		// ���C���[�\����L���ɂ���
		balay.visible = true;
		stlay.visible = true;
		balay_back.visible = true;
		stlay_back.visible = true;
		
		// �^�C�}�[�쐬
		delaytimer = new Timer(ReStart,'');
		delaytimer.interval = delaytime;
		delaytimer.enabled = false;
		
		laypos = 0;
		
		// �T�E���h�̐ݒ肪����ꍇ�ASE���Đ�����B
		if(sound == 'on')
		{
			kag.se[0].play(%[storage: soundfile, loop: false]);
		}
		
		// �R���e�B�j���[�n���h����o�^
		StartTick = System.getTickCount();
		System.addContinuousHandler(handler);
	}




	//*----------------------------------------------------------------*
	//Name		:	CreateLay
	//
	//Purpose	:	�\���C���[���쐬����
	//				CreateBack�֐����s
	//
	//in		:	storage			(�\�y�[�W�̉摜�t�@�C��)
	//			:	storage_back	(���y�[�W�̉摜�t�@�C��)
	//			:	color			(���C���[�̐F)
	//			:	xblur			(�������̂ڂ����x)
	//			:	yblur			(�c�����̂ڂ����x)
	//			:	laynum			(�G�t�F�N�g��������O�i���C���[��)
	//			:	balay_abs		(�A�b�v�_�E�����C���[�̐�Βl)
	//			:	stlay_abs 		(�I�[�o�[���C���C���[�̐�Βl)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function CreateLay(storage, storage_back, color, xblur, yblur, laynum, balay_abs, stlay_abs)
	{
		if(balay == void) // �㉺���郌�C���[���쐬
		{
			balay = new global.Layer(window, base);
			with(balay)
			{
				.setSize(base.imageWidth, base.imageHeight);// ���C���[�T�C�Y��kag.fore.base�ɂ��킹��
				.loadImages(storage);
				.setSizeToImageSize();
				.absolute = balay_abs; // ���C���[�̐�Βl ���b�Z�[�W���C���[�������C���[�O������
				.focusable = false; // �t�H�[�J�X�ł��Ȃ��悤�ɁB
				.hitType = htMask;
				.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
			}
		}

		if(stlay == void) // �g��R�s�[�惌�C���[���쐬
		{
			stlay = new global.Layer(window, base);
			with(stlay)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.absolute = stlay_abs;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256;// �}�E�X���b�Z�[�W�͑S�擧��
			}
		}


		if(ndlay == void) // �d�ˍ��킹�鑤�̃��C���[(�R�s�[��)
		{
			ndlay = new global.Layer(window, base);
			with(ndlay)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.loadImages(storage);
				.absolute = 12000-1;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
			}
		}
		
		if(laynum != void) // �R�s�[���郌�C���[���쐬
		{
			for(var i = 0; i < laynum; i++)
			{
				var Lays = kag.fore.layers[i];
				if(Lays != void)
				{
					//�I�[�o�[���C���C���[�Ɋg��R�s�[
					ndlay.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
					balay.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
				}
			}
		}
		
		if(color != void)
		{
			ndlay.colorRect(0, 0, base.imageWidth, base.imageHeight, color, 100); // �F���w�肳��Ă����ꍇ�͓h��Ԃ�
		}
			
		ndlay.doBoxBlur(xblur, yblur); // �u���[��������
		
		CreateBack();

	}




	//*----------------------------------------------------------------*
	//Name		:	CreateBack
	//
	//Purpose	:	�����C���[���쐬����
	//
	//in		:	�Ȃ�
	//
	//out		: 	�Ȃ�
	//*----------------------------------------------------------------*
	function CreateBack()
	{
		if(balay_back == void) // �㉺���郌�C���[�̗����C���[���쐬
		{
			balay_back = new global.Layer(window, base_back);
			with(balay_back)
			{
				.setSize(base_back.imageWidth, base_back.imageHeight); // ���C���[�T�C�Y��kag.back.base�ɂ��킹��
				.absolute = balay_abs; // ���C���[�̐�Βl
				.focusable = false; // �t�H�[�J�X�ł��Ȃ��悤�ɁB
				.hitType = htMask;
				.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
			}
			
			if(storage_back != void)
			{
				balay_back.loadImages(storage_back);
			}
			else // �w�肪�Ȃ��Ƃ��́A�\���C���[�Ɠ����摜�����[�h
			{
				balay_back.loadImages(storage);
			}
		}
		
		if(ndlay_back === void) // �d�ˍ��킹�鑤�̃��C���[(�R�s�[��)
		{
			ndlay_back = new global.Layer(window, base_back);
			with(ndlay_back)
			{
				.setSize(base.imageWidth, base.imageHeight);
				.setSizeToImageSize();
				.absolute = 12000-1;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
			}
			
			if(storage_back != void)
			{
				ndlay_back.loadImages(storage_back);
			}
			else // �w�肪�Ȃ��Ƃ��́A�\���C���[�Ɠ����摜�����[�h
			{
				ndlay_back.loadImages(storage);
			}
		}

		if(stlay_back == void) // �g��R�s�[�惌�C���[�̗����C���[���쐬
		{
			stlay_back = new global.Layer(window, base_back);
			with(stlay_back)
			{
				.setSize(base_back.imageWidth, base_back.imageHeight);
				.absolute = stlay_abs;
				.focusable = false;
				.hitType = htMask;
				.hitThreshold = 256; // �}�E�X���b�Z�[�W�͑S�擧��
			}
		}
		
		if(laynum != void) // �R�s�[���郌�C���[���쐬
		{
			for(var i = 0; i < laynum; i++)
			{
				var Lays = kag.back.layers[i];
				if(Lays != void)
				{
					ndlay_back.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);
					balay_back.stretchPile(Lays.left, Lays.top, Lays.width, Lays.height, Lays, 0, 0, Lays.width, Lays.height, 255, stNearest);				
				}
			}
		}
		
		if(color != void)
		{
			ndlay_back.colorRect(0, 0, base.imageWidth, base.imageHeight, color, 100); // �F���w�肳��Ă����ꍇ�͓h��Ԃ�
		}
			
		ndlay_back.doBoxBlur(xblur, yblur); // �u���[��������

	}




	//*----------------------------------------------------------------*
	//Name		:	handler
	//
	//Purpose	:	�R���e�B�j���[�n���h������Ă΂��
	//
	//in		:	tick
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function handler(tick)
	{
		if(nextStop)
		{
			endHB();
			return;
		}
		
		doing = true; // �ۓ����ł��B
				
		// ���Ԃ𓾂�
		tick = System.getTickCount();
		var tm = tick - StartTick;
		var tpm = tm; // move�֐��Ŏg�p
		tm /= time;
		
		if(tm >= 1)
		{
			nextStop = true;
			tm = 1;
		}
		
		// ���ꂼ��̈ʒu���v�Z
		var Mleft = (int)((Fleft - HBleft) * tm + HBleft); 
		var Mtop = (int)((Ftop - HBtop) * tm + HBtop);
		var Mwidth = (int)((Fwidth - HBwidth) * tm + HBwidth);
		var Mheight = (int)((Fheigh - HBheight) * tm + HBheight);
		var Mopa = (int)((Fopa - HBopa) * tm + HBopa);
		
		move(Mleft, Mtop, Mwidth, Mheight, Mopa, tm, tpm); // ���C���[�g��ړ�
	}




	//*----------------------------------------------------------------*
	//Name		:	move
	//
	//Purpose	:	���C���[�ړ��Ɗg��k���\��
	//				handler�֐��Ōv�Z���ꂽ�l�Ŏ��s����
	//
	//in		:	Mleft	(�G�t�F�N�g���̃��C���[�̍��[�ʒu)
	//				Mtop	(�G�t�F�N�g���̃��C���[�̏�[�ʒu)
	//				Mwidoth	(�G�t�F�N�g���̃��C���[�̕�)
	//				Mheight	(�G�t�F�N�g���̃��C���[�̍���)
	//				Mope	(�G�t�F�N�g���̓����x)
	//				tm 		(���Ԍv�Z�̊�ƂȂ�l)
	//				tpm		(���ݎ���)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function move(Mleft, Mtop, Mwidth, Mheight, Mopa, tm, tpm)
	{
		var HTime = time / 2;
		var laypos;
		var lp = -15;
		var sp = 0;
		
	    if(tpm > HTime) // �㉺���郌�C���[�̌��݈ʒu���v�Z time�̔������߂����牺����
		{
		    laypos = (int)((sp - lp) *tm + lp);
		}
		else // ����Ă���
		{
		    laypos = (int)((lp - sp) * tm + sp);
		}
		
		balay.setPos(0, laypos);
		balay_back.setPos(0, laypos);// �������ړ�
		
		stlay.fillRect(0, 0, base.imageWidth, base.imageHeight, 0x00000000); // ��������N���A�[
		stlay_back.fillRect(0, 0, base.imageWidth, base.imageHeight, 0x00000000); // ��������������N���A�[
		
		//�g��R�s�[ ������stretchPile���g���Ă���͈̂ȑO�̃��@�[�W�����Ƃ̌݊��̂���
		stlay.stretchPile(Mleft, Mtop, Mwidth, Mheight, ndlay, 0, 0, base.imageWidth, base.imageHeight, Mopa, stNearest);
		
		//�������g��R�s�[
		stlay_back.stretchPile(Mleft, Mtop, Mwidth, Mheight, ndlay_back, 0, 0, base.imageWidth, base.imageHeight, Mopa, stNearest);
	}




	//*----------------------------------------------------------------*
	//Name		:	endHB
	//
	//Purpose	:	�G�t�F�N�g���I����������ɌĂ΂��
	//				���[�v���L���ꍇ�́A���[�v����������
	//				delaytimer���s
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function endHB()
	{
		System.removeContinuousHandler(handler);
		
		num ++; // num�ɃC���N�������g
			
		if(hbloop == "true" || num < repeat) // loop����
		{
			laypos = 0;
			
			delaytimer.enabled = true;
		}
		else // ��~
		{
			doing = false; // �ۓ���~
			Inv();

			//�ϐ����N���A
			clear();
			num = 0; // �񐔂��N���A
			kag.conductor.trigger("HB_finished"); // �g���K�[������
		}

	}




	//*----------------------------------------------------------------*
	//Name		:	End
	//
	//Purpose	:	hbend�^�O����Ă΂��
	//				�G�t�F�N�g�������I������
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function End()
	{
		if(doing)
		{
			System.removeContinuousHandler(handler);
		}
		
		Inv();
		clear();
		num = 0;
		hbloop = false;
		kag.conductor.trigger("HB_finished"); // �g���K�[������
		
	}




	//*----------------------------------------------------------------*
	//Name		:	Inv
	//
	//Purpose	:	�g�p���Ă������C���[�A�^�C�}�[�I�u�W�F�N�g��
	//				���ׂĔj������
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function Inv()
	{
		//�g�p���Ă������C�����N���A
		invalidate balay if balay != void;
		invalidate stlay if stlay != void;
		invalidate ndlay if ndlay != void;
		
		// �����C���[�𖳌���
		invalidate balay_back if balay_back != void;
		invalidate stlay_back if stlay_back != void;
		invalidate ndlay_back if ndlay_back != void;

		// ���C���[��void�ɐݒ�
		balay = void if balay != void;
		stlay = void if stlay != void;
		ndlay = void if ndlay != void;
		
		// �����C���[��void�ɐݒ�
		balay_back = void if balay_back != void;
		stlay_back = void if stlay_back != void;
		ndlay_back = void if ndlay_back != void;
		
		// �^�C�}�[��j��
		invalidate delaytimer if delaytimer != void;
		delaytimer = void if delaytimer != void;
	}




	//*----------------------------------------------------------------*
	//Name		:	ReStart
	//
	//Purpose	:	���[�v���L���̏ꍇ�Adelaytimer����Ă΂��
	//				�R���e�B�j���[�n���h�����ēo�^
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function ReStart()
	{
		// �^�C�}�[���~
		delaytimer.enabled = false;
		
		clear();
		
		Fleft -= xvalue / 2;
		Ftop -= yvalue / 2;
		
		// �T�E���h�̐ݒ肪����ꍇ�ASE���Đ�����
		if(sound == 'on')
		{
			kag.se[0].play(%[storage: soundfile, loop: false]);
		}
		
		// �R���e�B�j���[�n���h�����ēo�^
		System.addContinuousHandler(handler);
	}




	//*----------------------------------------------------------------*
	//Name		:	clear
	//
	//Purpose	:	�ϐ��̒l������������
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function clear() // �ϐ����N���A�[����
	{
		nextStop = false;
		Fleft = 0;
		Ftop = 0;
		//laynum = 0; // �R�s�[����O�q���C���[�����N���A
        StartTick = System.getTickCount();
	}




	//*----------------------------------------------------------------*
	//Name		:	onStore
	//
	//Purpose	:	�x�̕ۑ������Ƃ��ɌĂ΂��
	//
	//in		:	f		(�ۑ���̞x�f�[�^��\�������z��)
	//						Dictionary�N���X�̃I�u�W�F�N�g
	//
	//				elm		(���s�o�[�W�����ł͎g�p����Ă��Ȃ� ���void)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function onStore(f, elm)
	{
		// 	�x�ɕۑ�����Ƃ� hbloop��true�Ȃ�ۑ�����B
		var dic = f.hb = %[];
		if(hbloop == "true")
		{
			with(dic)
			{
				.storage = storage;
				.time = time;
				.color = color;
				.sound = sound;
				.soundfile = soundfile;
				.opacity = HBopa;
				.repeat = repeat;
				.delaytime = delaytime;
				.hbloop = hbloop;
				.xblur = xblur;
				.yblur = yblur;
				.xvalue = xvalue;
				.yvalue = yvalue;
				.storage_back = storage_back;
				.laynum = laynum;
				.balay_abs = balay_abs;
				.stlay_abs = stlay_abs;
			}
		}
		
	}




	//*----------------------------------------------------------------*
	//Name		:	onRestore
	//
	//Purpose	:	�x��ǂݏo���Ƃ��ɌĂ΂��
	//
	//in		:	f		(�ۑ���̞x�f�[�^��\�������z��)
	//						Dictionary�N���X�̃I�u�W�F�N�g
	//
	//				clear	(���b�Z�[�W���C���[���N���A�[���邩)
	//						tempload���̂�false
	//
	//				elm		(tempload���̃I�v�V����)
	//						tempload���ȊO�͏��void,tempload�̂Ƃ���
	//						Dictionary�N���X�̃I�u�W�F�N�g
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		var dic = f.hb;
		if(dic === void || dic.hbloop === void)
		{
			// �G�t�F�N�g�����s
			End();
		}
		else if(dic != void && dic.hbloop == "true")
		{
			// �ϐ������ꂼ��ǂݏo��
			storage = dic.storage;
			time = dic.time;
			sound = dic.sound;
			soundfile = dic.soundfile;
			HBopa = dic.opacity;
			repeat = dic.repeat;
			delaytime = dic.delaytime;
			hbloop = dic.hbloop;
			xvalue = dic.xvalue;
			yvalue = dic.yvalue;
			xblur = dic.xblur;
			yblur = dic.yblur;
			storage_back = dic.storage_back;
			laynum = dic.laynum;
			balay_abs = dic.balay_abs;
			stlay_abs = dic.stlay_abs;
			
			// loop��true
			StartHB(dic.storage, dic.storage_back, dic.time, dic.color, dic.sound, dic.soundfile, dic.opacity, dic.repeat, dic.delaytime, dic.hbloop, dic.xblur, dic.yblur, dic.xvalue, dic.yvalue, dic.laynum, dic.balay_abs, dic.stlay_abs);
			
		}
	}




	//*----------------------------------------------------------------*
	//Name		:	onStableStateChanged
	//
	//Purpose	:	�u����v���邢�́u���s���v�̏�Ԃ��ς�����Ƃ���
	//				�Ă΂��B
	//
	//in		:	state	(����̂Ƃ���true�A���s���̂Ƃ���false)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function onStableStateChanged(stable)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onMessageHiddenStateChanged
	//
	//Purpose	:	���b�Z�[�W���C���[���B���Ƃ��ƁA���̏�Ԃ��甲����
	//				�Ƃ��ɌĂ΂��B
	//
	//in		:	hidden	(���b�Z�[�W���C���[���B�����Ƃ��Ɂh�^�h�A
	//				 �Ăь����Ƃ��Ɂh�U�h�ƂȂ�B)
	//
	//out		:	�Ȃ�
	//-----------------------------------------------------------------*
	function onMessageHiddenStateChanged(hidden)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onCopyLayer
	//
	//Purpose	:	�ubacklay�v�^�O���邢�́uforelay�v�^�O�����s���ꂽ
	//				�Ƃ��A���邢�̓g�����W�V�����I�����ɁA����ʂ̏���
	//				�\��ʂɃR�s�[����K�v������Ƃ��ɌĂ΂��B
	//
	//in		:	toback	(�u�\�����v�̂Ƃ��Ɂh�^�h�A
	//						�u�����\�v�̂Ƃ��Ɂh�U�h�ɂȂ�B)
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function onCopyLayer(toback)
	{
	}




	//*----------------------------------------------------------------*
	//Name		:	onExchangeForeBack
	//
	//Purpose	: 	�g�����W�V�����̏I���ɂ���āA����ʂƕ\��ʂ̏���
	//				����ւ���K�v������Ƃ��ɌĂ΂��B
	//				���̃��\�b�h���Ă΂ꂽ���_�Ń��C���[�̃c���[�\����
	//				�ς���Ă���B
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//-----------------------------------------------------------------*
	function onExchangeForeBack()
	{
		var stlay_temp = stlay;
		var balay_temp = balay;
		var ndlay_temp = ndlay;
		
		stlay = stlay_back;
		balay = balay_back;
		ndlay = ndlay_back;
		
		stlay_back = stlay_temp;
		balay_back = balay_temp;
		ndlay_back = ndlay_temp;
	}




	//*----------------------------------------------------------------*
	//Name		:	onSaveSystemVariables
	//
	//Purpose	:	�V�X�e���ϐ��ɏ����m���ɕۑ����邽�߂̃^�C�~���O��
	//				�񋟂���B
	//				���̊֐����Łukag.scflags�v�ɉ��������o������A�����ɏ���
	//				�L�^���Ă������Ƃ��ł���B
	//				�ukag.scflags�v�͎����z��I�u�W�F�N�g�ł���B
	//
	//in		:	�Ȃ�
	//
	//out		:	�Ȃ�
	//*----------------------------------------------------------------*
	function onSaveSystemVariables()
	{
	}


}


// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����
kag.addPlugin(global.heartbeatplugin_object = new HeartBeatPlugin(kag));


//----- TJS�X�N���v�g�����܂� -----------------------------------------*
@endscript
@endif

;---------------------------------------------------------------------------*
;�}�N���o�^
;---------------------------------------------------------------------------*
@macro name=heartbeat
@eval cond="kag.skipMode<=1" exp="heartbeatplugin_object.show(mp)"
@endmacro

@macro name=whb
@waittrig name="HB_finished"
@endmacro

@macro name=hbend
@eval exp="heartbeatplugin_object.End()"
@endmacro

@return
