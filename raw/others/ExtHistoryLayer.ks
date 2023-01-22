; ��d�ǂݍ��݂�h�~
[return cond="typeof(.ExtHistoryLayer) != 'undefined'"]

; ExtHistoryLayer.ks (2014/11/06) by KAICHO ver 1.99k
; ���p�E���ρE�Ĕz�z�͂��D���ɂǂ����B�A�����s�v�B���p�ɑg�ݍ��������̔�
; ���悤���D������ɁB����Ȏ��v������̂��m��񂯂ǁB
; ���ӌ����v�]�o�O�񍐂� s_naray[at]yahoo[dot]co[dot]jp �܂ŁB
; �������A�Ԏ��͊��҂��Ȃ����ƁB
;
; �쐬�ɂ�����A
;// ExHistoryLayer.ks ( 2004/07/04 ) releaced 1.01
;// ���b�Z�[�W�����g���v���O�C�� by �悩�Ђ� / ���ϔz�z���R����
; �����m�X�S�Q�l�ɂ����Ē����܂����B���\���グ�܂��B
;
; �g�p���@
; ExtHistoryLayer.ks�ATJSFunctions.ks�A�\�Ȃ� RenameKAGTag.ks �� eruby.ks ��
; �p�ӂ��Afirst.ks ���ǂ����� [call storage=ExtHistoryLayer.ks] ���邾���B

[call storage=TJSFunctions.ks]

[iscript]


// parent �� onClick �C�x���g�𑗂�{�^�����C��
class LButtonLayer extends ButtonLayer
{
	function LButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onExecute(x, y, button, shift)
	{
		if (enabled && button == mbLeft)
			parent.onButtonClick(this);
		super.onExecute(...);
	}
}


// �������ςȂ��ɂ���ƁA100ms ������ parent �փC�x���g�� ���M����{�^��
class RepeatButtonLayer extends ButtonLayer
{
	var timer;
	var graphic;
	var buttonCaptionColor;

	// �R���X�g���N�^
	function RepeatButtonLayer(window, parent, elm)
	{
		if (elm !== void && elm.captionColor !== void)
			buttonCaptionColor = elm.captionColor;
		super.ButtonLayer(window, parent);
		focusable = false;
		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		setOptions(%[visible:true]);
		setOptions(elm);			// ���f�t�H���g�l
	}

	// �f�X�g���N�^
	function finalize()
	{
		timer.enabled = false;
		invalidate timer;	// ��� invalidate
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void && elm.graphic != "") {
			loadImages(elm.graphic);
			graphic = elm.graphic;
		}
		setOptions_sub(this, elm);
	}

	// ��ԍX�V
	function updateState(enabled)
	{
		this.enabled = enabled;
		if (enabled)
			captionColor = buttonCaptionColor;
		else
			captionColor = color;
		if (graphic !== void && graphic != "")
			loadImages(graphic);
	}

	// �}�E�X���N���b�N���ꂽ��
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (Butt_mouseDown) {	//�{�^����������Ă����
			parent.onButtonClick(this);
			timer.enabled = true;
		}
	}

	// �J��Ԃ��̎�
	function onMouseDownRepeat()
	{
		if (Butt_mouseDown)	// �܂��{�^����������Ă���ΌJ��Ԃ�
			parent.onButtonClick(this);
		else			// ������ĂȂ���ΏI��
			timer.enabled = false;
	}
}


// �X���C�_�[���C���N���X
// �X�N���[���o�[�̈ꕔ�Ȃ̂ŁA�e����width�܂���height���ύX����邱�Ƃɒ���
class Slider extends ButtonLayer
{
	var dragging;
	var clickx, clicky;
	// �X�N���[���o�[�̃O���t�B�b�N(��A���A����g�ݍ��킹�����́A
	// ���͕�1dot�A�ŒZ�X�N���[���o�[�̕��͏�{��
	var graphic;
	var minheight = 16;	// �X�N���[���o�[�̍ŏ�����

	// �R���X�g���N�^
	function Slider(window, parent, elm)
	{
		this.dragging = false;
		focusable     = false;
		super.ButtonLayer(window, parent);
		setOptions(%[visible:true, enabled:true]);
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
//		super.setOptions(elm);	// ����1.23�ȍ~�Œǉ������B�Ӗ��Ȃ�����
// ����A����ς�v���ł���Belm ��`����ĂȂ����B1.24�ō폜
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);

		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// �w�肳�ꂽ�摜��ǂށB��x�摜�w�肳���ƌ��ɖ߂��Ȃ����c������
	function loadImages(graph, key)
	{
		// �N�� Layer ���ă��[�J���ϐ���`���Ă�݂����B
		graphic = new .Layer(window, parent);
		graphic.visible = false;
		graphic.loadImages(graph, key);
		graphic.setImagePos(0, 0);
		graphic.setSizeToImageSize();
		if (parent.verticalView)
			minheight = graphic.width\3-1;	// 1dot = �����T�C�Y
		else
			minheight = graphic.height-1;	// 1dot = �����T�C�Y
		setSize(width, height);
		Butt_imageLoaded = true;
	}

	// �X���C�_�[�T�C�Y���w�肷��
	function setSize(w, h)
	{
		if (!Butt_imageLoaded) {
			super.setSize(w, h);
			return;
		}
		// �摜���ǂ܂�Ă��ꍇ�Agraphic ����摜�����
		var g = graphic, gw = g.width, gh = g.height;
		if (parent.verticalView) {
			// �c�����Ȃ牡�����ɐݒ�
			w = minheight if (w < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			// �������R�s�[
			var ww = (gw/3-1)\2;
			copyRect(w*0,0, g,gw/3*0,0,ww,h);
			copyRect(w*1,0, g,gw/3*1,0,ww,h);
			copyRect(w*2,0, g,gw/3*2,0,ww,h);
			// �E�����R�s�[
			copyRect(w*1-ww,0, g,gw/3*1-ww,0,ww,h);
			copyRect(w*2-ww,0, g,gw/3*2-ww,0,ww,h);
			copyRect(w*3-ww,0, g,gw/3*3-ww,0,ww,h);
			// ���S���R�s�[
			for (var x = w-ww-1; x >= ww; x--) {
				copyRect(x+w*0,0, g,gw/3*0+ww,0,1,h);
				copyRect(x+w*1,0, g,gw/3*1+ww,0,1,h);
				copyRect(x+w*2,0, g,gw/3*2+ww,0,1,h);
			}
		} else {
			// �������Ȃ�c�����ɐݒ�
			h = minheight if (h < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			copyRect(0,0, g, 0,0,gw,(gh-1)\2);
			for (var y = h-(gh-1)\2-1; y >= (gh-1)\2; y--)
				copyRect(0,y, g,0,(gh-1)\2, gw,1);
			copyRect(0,h-(gh-1)\2, g,0,(gh-1)\2+1, gw,(gh-1)\2);
		}
	}

	// ��ԕύX��ݒ�
	function updateState(enabled)
	{
		this.enabled = enabled;
	}

	// �}�E�X�������ꂽ��
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (!enabled || button != mbLeft)
			dragging = false;
		else {
			dragging = true;
			clickx = x;
			clicky = y;
		}
	}

	// �}�E�X�������ꂽ��
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		dragging = false;
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (!dragging)
			return;	// drag���łȂ���ΏI��
		parent.onSliderDragged(x, y, clickx, clicky);
	}

	// �L�[�������ꂽ��
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);	// �e���Ă�
	}
}


// �X�N���[���o�[�̋��ʕ����݂̂����������N���X
class CommonScrollbar extends Layer
{
	var target;			// ���삷��Ώ�(History)
	var prev, next;			// �O�{�^���A���{�^��
	var slider;			// �X���C�_�[����
	var timer;	// �X�N���[���o�[�̃X���C�_�O�����������̃��s�[�g�^�C�}
	var dst;			// ���̖ړI�l
	var graphic;			// �w�i�O���t�B�b�N

	// �R���X�g���N�^
	function CommonScrollbar(window, parent, tgt, elm)
	{
		this.target = tgt;

		super.Layer(window, parent);
		var belm = %[
			color:elm.color,
			captionColor:elm.captionColor
		];
		prev = new RepeatButtonLayer(window, this, belm);
		next = new RepeatButtonLayer(window, this, belm);
		slider = new Slider(window, this, belm);
		hitType      = htMask;
		hitThreshold = 0;

		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		timer.enabled = false;		// �ŏ��� false��

		focusable = true;
		visible = true;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		timer.enabled = false;
		invalidate timer;	// ��� invalidate
		invalidate prev;
		invalidate next;
		invalidate slider;
	}

	// �I�v�V�����ݒ�
	function setOptions(elm, prevelm, nextelm, sliderelm)
	{
		prev.setOptions(prevelm);
		next.setOptions(nextelm);
		slider.setOptions(sliderelm);

		if (elm === void)
			return;
		setOptions_sub(this, elm);
		if (elm.width !== void || elm.height !== void)
			initState();
		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// �T�C�Y��ύX����
	function setSize(w, h)
	{
		width = w, height = h;
		// setSize()���� property width/height ���Ă΂�Ȃ��̂Łc
		// super.setSize(...);
		initState();
	}

	// �X�N���[���o�[�̃X���C�_�O�����������̓���J�n
	// �����̓����������ׂ̎d�g�݁B
	function scrollTo(value)
	{
		dst = value;
		timer.enabled = true;
	}

	// ������Ԃ�ݒ�
	function initState()
	{
		face = dfBoth;
		if (graphic === void)
			fillRect(0, 0, width, height, parent.scrollbarBack);
		else
			loadImages(graphic);
// ���ꂾ��prev/next�̏c���T�C�Y���Ⴄ���̂�ݒ�ł��Ȃ��̂ŁA�O��
//		prev.setSize(width, width);
//		next.setSize(width, width);

		// �ȉ��̓X�N���[���o�[��ɂ���ĈقȂ�̂ŁA��Őݒ肵��������
		// prev.setPos(x, x);
		// next.setPos(x, x);
		// slider.setPos(x, x);
		// slider.setSize(x, x);
	}

	// prev/next/slider�̏�Ԃ��X�V
	function updateState()
	{
		prev.updateState(!target.isHead());
		next.updateState(!target.isTail());
		slider.updateState(!(target.isHead() && target.isTail()));
		update();
	}

	// �X���C�_�O�������ꂽ���̃��s�[�g�֐�(�����͐錾����)
	function onMouseDownRepeat()
	{
	}

	// �{�^�����N���b�N���ꂽ��
	function onButtonClick(src)
	{
		if (src == prev)
			target.prevOne();
		else if (src == next)
			target.nextOne();
	}

	// �}�E�X�������ꂽ��
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		timer.enabled = false;
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
	}

	// �L�[�������ꂽ��
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);
	}
}


// �c�����X�N���[���o�[
class VerticalScrollbar extends CommonScrollbar
{
	var verticalView = false;

	// �R���X�g���N�^
	function VerticalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"��"]);
		next.setOptions(%[caption:"��"]);
		setOptions(elm);
		initState();
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// ���݂̏�Ԃ�ݒ�B�X���C�_�[�̕������̃T�C�Y�ɐݒ�
	function initState()
	{
		super.initState(...);		// ���̒���prev/next�͕ύX�ς�
		prev.setPos(0, 0);		// �{�^���ʒu��ݒ�
		next.setPos(0, height-next.height);

		// slider �̑傫���ƈʒu��ύX
		var tmp = height-next.height-prev.height;
		var h = (tmp/target.pageCount)\1;
		slider.setSize(width, (h>slider.minheight) ? h : slider.minheight);
		var t = prev.height+((tmp-slider.height)*target.position)\1;
		slider.setPos(0, t);
	}

	// ��ԍX�V
	function updateState()
	{
		var size = height-slider.height-next.height-prev.height;
		slider.top = prev.height + (size*target.position)\1;
		super.updateState(...);
	}

	// �X���C�_���h���b�O���ꂽ��
	function onSliderDragged(x, y, clickx, clicky)
	{
		// ���݂̕\�����ׂ��ʒu�����߁A�����Ƃ̍����� diff �Ɋi�[
		var pos = (slider.top-prev.height+(y-clicky))/
				(height-prev.height-next.height-slider.height);
		pos = Math.min(Math.max(0, pos), 1);
		var diff = target.getDispStart(pos) - target.dispStart;
		if (Math.abs(diff) >= target.dispLines) {
			target.drawLinesInThePage(target.getDispStart(pos));
		} else {
			if (diff < 0)
				for (var i = -diff; i > 0; i--)
					target.prevOne();
			else if (diff > 0)
				for (var i = diff; i > 0; i--)
					target.nextOne();
			// �����Ȃ牽�����Ȃ�
		}
		updateState();
	}

	// �X���C�_�������ꂽ���̃��s�[�g�֐�
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.top)
			target.prevPage();
		else if (dst > slider.top + slider.height)
			target.nextPage();
		else
			timer.enabled = false;
	}

	// �}�E�X�������ꂽ��(���̎��͕K���X���C�_�[�O��������Ă���)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (y < slider.top)
			target.prevPage();
		else if (y > slider.top + slider.height)
			target.nextPage();
		scrollTo(y);
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = y;
	}

	// �����ݒ莞�� prev/next �{�^���̑傫����ύX
	property width
	{
		getter
		{
			return super.width;
		}
		
		setter(w)
		{
			super.width = w;
			// �c������ݒ肷�鎞�́A�K�v�Ȃ�prev/next�𐳕��`��
			if (!prev.Butt_imageLoaded)
				prev.width = prev.height = w;
			if (!next.Butt_imageLoaded)
				next.width = next.height = w;
		}
	}
}


// �������X�N���[���o�[
class HorizontalScrollbar extends CommonScrollbar
{
	var verticalView = true;

	// �R���X�g���N�^
	function HorizontalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"��"]);
		next.setOptions(%[caption:"��"]);
		setOptions(elm);
		initState();
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// ���݂̏�Ԃ�ݒ�B�X���C�_�[�̕������̃T�C�Y�ɐݒ�
	function initState()
	{
		super.initState(...);		// ���̒���prev/next�͕ύX�ς�
		prev.setPos(width-prev.width,0); // �{�^���ʒu��ݒ�
		next.setPos(0, 0);

		// slider �̑傫���ƈʒu��ύX
		var tmp = width-next.width-prev.width;
		var w = (tmp/target.pageCount)\1;
		slider.setSize((w>slider.minheight) ? w : slider.minheight, height);
		var t = next.width+((tmp-slider.width)*target.position)\1;
		slider.setPos(t, 0);
	}

	// ��ԍX�V
	function updateState()
	{
		var size = width-slider.width-next.width-prev.width;
		slider.left = next.width + (size*(1-target.position))\1;
		super.updateState(...);
	}

	// �X���C�_���h���b�O���ꂽ��
	function onSliderDragged(x, y, clickx, clicky)
	{
		// ���݂̕\�����ׂ��ʒu�����߁A�����Ƃ̍����� diff �Ɋi�[
		var pos = (slider.left-next.width+(x-clickx))/
				(width-next.width-prev.width-slider.width);
		pos = Math.min(Math.max(0, pos), 1);
		var diff = target.getDispStart(1-pos) - target.dispStart;
		if (Math.abs(diff) >= target.dispLines) {
			target.drawLinesInThePage(target.getDispStart(1-pos));
		} else {
			if (diff < 0)
				for (var i = -diff; i > 0; i--)
					target.prevOne();
			else if (diff > 0)
				for (var i = diff; i > 0; i--)
					target.nextOne();
			// �����Ȃ牽�����Ȃ�
		}
		updateState();
	}

	// �X���C�_�������ꂽ���̃��s�[�g�֐�
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.left)
			target.nextPage();
		else if (dst > slider.left + slider.width)
			target.prevPage();
		else
			timer.enabled = false;
	}

	// �}�E�X�������ꂽ��(���̎��͕K���X���C�_�[�O��������Ă���)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (x < slider.left)
			target.nextPage();
		else if (x > slider.left + slider.width)
			target.prevPage();
		scrollTo(x);
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = x;
	}

	// �c���ݒ莞�� prev/next �{�^���̑傫����ύX
	property height
	{
		getter
		{
			return super.height;
		}
		
		setter(h)
		{
			super.height = h;
			// �c������ݒ肷�鎞�́A�K�v�Ȃ�prev/next�𐳕��`��
			if (!prev.Butt_imageLoaded)
				prev.width = prev.width = h;
			if (!next.Butt_imageLoaded)
				next.width = next.width = h;
		}
	}
}


// �������C�����̂P���C���f�[�^�̃x�[�X�N���X
// CurrentLine�\�z�N���X�A�ÓI���C���N���X�ƕ����邽�߂ɁA�����Ă�����
// �x�[�X�N���X���`����Blinetop �Ƃ����̃N���X���ł͎g��Ȃ��̂ɂˁB
class HistoryLineBase {
	var owner;		// historyLayer
	var elmary = [];	// ���C�����̃^�O�z��B�������[htext]�Œ~��
	// �e�^�O�ɂ� hwidth �Ƃ��������o���ǉ�����A���ꂪ�^�O�̕`�敝��\��
	var linetop = 0;	// �\���J�n�ʒu

	// �R���X�g���N�^
	function HistoryLineBase(owner)
	{
		this.owner = owner;
		clear();
	}

	// �f�X�g���N�^
	function finalize()
	{
		clear();
	}

	// �N���A
	function clear()
	{
		elmary = [];
		linetop = 0;
	}

	// �󂩂ǂ������ׂ�
	function isEmpty()
	{
		return elmary.count === 0;
	}

/* searchTag()�͎g��Ȃ��Ȃ����̂ŗe�ʍ팸�̂��ߍ폜
	// �^�O��T��
	function searchTag(tagname, search_from_back=true)
	{
		if (!search_from_back) {	// �O����T��
			for (var i = 0; i < elmary.count; i++)
				if (elmary[i].tagname == tagname)
					return elmary[i];
		} else {			// ��납��T��
			for (var i = elmary.count-1; i >= 0; i--)
				if (elmary[i].tagname == tagname)
					return elmary[i];
		}
		return void;
	}
�s��*�̓i�V */
	
	// ���̂���^�O���l�����čs�T�C�Y�𒲍����邽�߁AgetTextWidth() ��V��
	// �����font.getTextWidth()��u��������B
	// ���̊֐��́A�K���u�s�擪����v�̃T�C�Y���Ԃ����Ƃɒ��ӁB
	function getTextWidth()
	{
		var width = linetop;
		for (var i = elmary.count-1; i >= 0; i--)
			width += +elmary[i].hwidth;	// �^�O�������v
		return width;
	}

	// �R�s�[��
	function assign(src)
	{
		owner = src.owner;
		elmary.assignStruct(src.elmary);
		linetop = src.linetop;
	}

	// �Z�[�u��
	function store()
	{
		var dic = %[ elmary:[] ];
		dic.elmary.assignStruct(elmary);
		dic.linetop = linetop;
		return dic;
	}

	// ���[�h��
	function restore(dic)
	{
		clear();
		if (dic === void || dic.elmary === void)
			return;
		elmary.assign(dic.elmary);
		linetop = dic.linetop;
	}
};


// �s���̃^�O��ۑ�����X�^�b�N
class TagStack {
	var tagstack;	// �^�O��ۑ�����z��

	// �R���X�g���N�^
	function TagStack()
	{
		tagstack = [];
	}

	// �f�X�g���N�^
	function finalize()
	{
		tagstack = [];
	}

	// ��ɂ���
	function clear()
	{
		tagstack = [];
	}

	// �^�O���X�^�b�N�ɕۑ�����
	function push(elm)
	{
		var dic = %[];
		(Dictionary.assignStruct incontextof dic)(elm);
		tagstack.push(dic);
	}

	// �^�O���X�^�b�N������o��(really == false �Œl�������o��)
	function pop(tagname, really=true)
	{
		if (tagname !== void) {
			if (really)
				return erase(tagname, , false);
			else
				return search(tagname);
		} else {
			if (really)
				return tagstack.pop();
			else
				return tagstack[stack.count-1];
		}
	}

	// ����^�O�̓��葮�����X�^�b�N����T���B������Ȃ����def��Ԃ�
	function search(tagname, key, forward=false, def)
	{
		if (forward) {
			for (var i = 0; i < tagstack.count; i++) {
				var t = tagstack[i];
				if (t.tagname == tagname &&
				    (key === void || t[key] !== void))
					return t[key];
			}
		} else {
			for (var i = tagstack.count-1; i >= 0; i--) {
				var t = tagstack[i];
				if (t.tagname == tagname &&
				    (key === void || t[key] !== void))
					return t[key];
			}
		}
		return def;
	}

	// ����^�O���X�^�b�N����폜����
	function erase(tagname, forward=false, all=true)
	{
		var ret;
		if (forward) {
			for (var i = 0; i < tagstack.count; i++)
				if (tagstack[i].tagname == tagname) {
					var ret = tagstack[i];
					tagstack.erase(i);
					if (!all)
						return ret;
				}
		} else {
			for (var i = tagstack.count-1; i >= 0; i--)
				if (tagstack[i].tagname == tagname) {
					var ret = tagstack[i];
					tagstack.erase(i);
					if (!all)
						return ret;
				}
		}
		return void;
	}

	// �^�O�X�^�b�N�����̂܂ܕԂ�
	function getStack()
	{
		return tagstack;
	}


	// �R�s�[����
	function assign(src)
	{
		tagstack.assignStruct(src.tagstack);
	}

	// �Z�[�u����
	function store()
	{
		var ret = [];
		ret.assignStruct(tagstack);
		return ret;
	}

	// ���[�h����
	function restore(dic)
	{
		tagstack.assignStruct(dic);
	}
};


// �q�X�g���̌��ݍs��ۑ�����N���X
// ������^�O��ǉ����Ĉ�s���Ƃ�elmary���쐬���A�ŏI�I�ɏo���オ�������̂�
// StaticHistoryLine �N���X��assign()���邽�߂̃N���X�B
class CurrentHistoryLine extends HistoryLineBase{
	// �e�^�O�ɂ� hwidth �Ƃ��������o���ǉ�����A���ꂪ�^�O�̕`�敝��\��
	var inrubytag = %[];	// hruby�^�O��str=���w�肳��ĂȂ��������Ɏg�p
	var tagstack;		// �^�O�X�^�b�N(�s���ŏ�Ԃ����ɖ߂����߂Ɏg�p)

	// �R���X�g���N�^
	function CurrentHistoryLine(owner)
	{
		tagstack = new TagStack();
		super.HistoryLineBase(owner);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize();
		invalidate tagstack;
	}

	// ��ɂ���
	function clear(clearstack=true)
	{
		super.clear();
		if (clearstack)
			tagstack.clear();
	}

	// ���r�̊��t���v�Z(elm.startpos �� elm.space)���Aelmary�ɒǉ�
	// ���s���l���A�K�v�Ȃ�elm�𕪊����ĕԂ��B
	function calcRubyPos(elm)
	{
		var of = owner.font;
		var cw = of.getTextWidth(elm.str);
		var fontinfo = owner.getFontInfo();
		owner.setRubyFont();
		var rw = of.getTextWidth(elm.text);
		owner.setFontInfo(fontinfo);

		// �ŏ��ɒ������낦�̎��̒l�����Ă���
		var space = 0, startpos = (cw-rw)/2;
		if (elm.align == 'l')			// �����낦�Ȃ�
			startpos = 0;			// ���[
		else if (elm.align == 'r')		// �E���낦�Ȃ�
			startpos = cw-rw;		// �E�[
		else if (elm.align == 'e' && cw > rw) {	// �ϓ�����Ȃ�
			space    = cw/elm.text.length;
			//startpos = cw/elm.text.length/2 - owner.rubyHeight/2;
			startpos = (cw-((elm.text.length-1)*space+owner.rubyHeight))/2;
			// ���������̂ق��������͂��c�B
		}
		elm.startpos = startpos if (elm.startpos === void);
		elm.space    = space    if (elm.space    === void);
		elm.hwidth   = cw;
		// ����Łu���s���Ȃ��ꍇ�v�̒l�͐ݒ芮��

		if (!owner.autoReturn || elm.noreturn)
			return void; 	// �������s���s��Ȃ��ꍇ�͏I��

		var rcw = owner.relinePos - getTextWidth();
		if (rcw >= cw)
			return void;	// ��s�Ɏ��܂��Ă���ΏI��
		// rcw = �s���܂ł̎c�蕝

		// ���r���ӂ镶���񂪈�s�Ɏ��܂�Ȃ������ꍇ
		var l, scw;
		for (l = elm.str.length; l > 0; l--) {
			scw = of.getTextWidth(elm.str.substr(0, l));
			if (scw <= rcw)
				break;
		}
		scw = 0 if (l <= 0);
		// �����܂ł� l ����s�Ɏ��܂镶�����Ascw�����ۂ̕�����

		var r = 0, srw = 0;
		if (space == 0) { // ���E���������̎�
			var fontinfo = owner.getFontInfo();
			owner.setRubyFont();
			// ���r�͉������𒴂���Ƃ���܂Ŕ킹��
			for (r = 0; r <= elm.text.length; r++) {
				srw = of.getTextWidth(elm.text.substr(0,r));
				if (startpos+srw >= scw)
					break;
			}
			owner.setFontInfo(fontinfo);
		} else { // �ϓ�����̎�
			if (scw - startpos > 0) {
				r = Math.ceil((scw-startpos)/space);
				if (r < 0)
					r = 0;
				srw = r*space;
			}
		}
		// �����܂ł� r ����s�Ɏ��܂郋�r���Asrw�����ۂ̃��r��

		var ret = %[];
		(Dictionary.assign incontextof ret)(elm);

		ret.str      = elm.str.substr(l);
		ret.text     = elm.text.substr(r);
		ret.startpos = startpos + srw - scw;
		ret.hwidth   = elm.hwidth - scw;

		elm.str    = elm.str.substr(0,l);
		elm.text   = elm.text.substr(0,r);
		elm.hwidth = scw;

		// ret.str.length == 0 �ɂȂ邱�Ƃ����肤�邱�Ƃɒ���
		return ret;
	}

	// ���s�O�����B�^�O�����̂��߁A������Ə����ǉ��B
	// �^�O�́A�K����s���Ŏ��܂�悤�ɐݒ肳���B
	function preReline()
	{
		// �X�^�b�N��� tag �� revtag ���t���� elmary�����ɒǉ�
		// ��s�Ń^�O�̊J�����������邽�߁B
		var ary = tagstack.getStack();
		for (var i = ary.count-1; i >= 0; i--) {
			var getrevtag = tagFuncs[ary[i].tagname].revtag;
			if (getrevtag !== void)
				elmary.add(getrevtag());
		}
	}

	// ���s�㏈���B�O�̍s�̃X�^�b�N�͕ۑ����A������s�擪�ɕt������
	function postReline()
	{
		// reline()��repage()���ƕ�����Ă΂��\������A����
		clear(false);
		// �X�^�b�N���tag�𐳏���elmary�擪�ɋL��
		elmary.assignStruct(tagstack.getStack());
		linetop = owner.indentPos;
	}

	// ������ǉ�(�Ōオ������Ȃ�p���ǉ��A�����łȂ���ΐV�K�ǉ�)
	// ��s�ɒǉ�������Ȃ����������񂪕Ԃ����B�����łȂ���� '' ���Ԃ�
	function addChar(ch, each=false)
	{
		// �ꕶ���Âǉ�����Ƃ��͓��ʈ���
		if (each && ch.length > 1) {
			for (var i = 0; i < ch.length; i++)
				if (addChar(ch[i]) != '')
					return ch.substr(i);
			return '';
		}

		// ��O�̃��r��str=���Ȃ�����(���r��)�Ȃ���ꏈ��
		if (inrubytag.tagname !== void) { // ruby���Ȃ�
			var e = %[];
			inrubytag.str = ch;
			// ������ hruby �^�O�ɕύX����
			(Dictionary.assign incontextof e)(inrubytag);
			return addTag(e) ? '' : ch; 
			// inrubytag �� addTag()����clear�����
		}

		// �q�X�g����A�������[htext]�^�O�Ƃ��Ĉ���
		if (elmary.count <= 0 ||
		    elmary[elmary.count-1].tagname != "htext") {
			// �O�ɕ����񂪂Ȃ���΁A�VTAG�Œǉ�
			var ret = addTag(%[tagname:"htext", text:ch]);
			return ret ? '' : ch;
		}

		// �O���當���񂪑����Ă���΂���ɒǉ�
		var e = elmary[elmary.count-1];	// �ȑO��TAG�ɐڑ�
		e.text += ch;		// �������񒷂��X�V
		e.hwidth = owner.font.getTextWidth(e.text);

		if (WithinALine(ch))
			return '';		// ��s�Ɏ��܂����� O.K.

		// ���܂�Ȃ�������ch���폜
		var e = elmary[elmary.count-1];
		e.text = e.text.substr(0, e.text.length-ch.length);
		if (e.text.length == 0)
			elmary.pop();
		e.hwidth = owner.font.getTextWidth(e.text);
		return ch;
	}

	// �^�O�ǉ� ����elm�͊��ɕ�������Ă���̂ŉ󂵂Ă悢
	// ��s�Ɏ��܂�Ȃ� true ���A���܂�Ȃ��Ȃ� false ���Ԃ�
	function addTag(elm)
	{
		elm.hwidth = 0 if (elm.hwidth === void);  // �����l

		var backup_fontinfo = owner.getFontInfo();// �t�H���g����ۑ�

		var storefunc = tagFuncs[elm.tagname].storefunc;
		if (storefunc !== void)
			if (!storefunc(elm, getTextWidth()))
				return true;
		// �t�H���g��elm.hwidth��storefunc()���Őݒ肳���
		elmary.add(elm);

		if (WithinALine())
			return true;

		// ���܂�Ȃ�������elm���폜
		elmary.pop();
		owner.setFontInfo(backup_fontinfo);	// �t�H���g����߂�
		return false;
	}

	// ���݂̍s����s�Ɏ��܂邩�ǂ����m�F // �^�O�ǉ�����ch===void
	function WithinALine(ch)
	{
		var o = owner;
		if (!o.autoReturn || (ch !== void && ch.length < 1))
			return true; 	// �������s���Ȃ��ꍇ�͏I��

		// �������s���s���ꍇ�s���`�F�b�N ��font.getTextWidth()�ł͂Ȃ�
		var len = getTextWidth();
		if (len <= o.relinePos)
			return true;

		// �^�O��ǉ������Ƃ��́A�Ō�̃^�O���͂ݏo���Ă���
		if (ch === void)
			return false;
		// �K��[htext]�^�O�ł��邱�Ƃ�O��Ƃ��Ă���c�����̂��ȁB
		var txt = elmary[elmary.count-1].text;
		var lastch = (txt.length < 2) ? '' : txt[txt.length-2];

		// �������ǉ������Ƃ�
		if (((lastch == '' || o.wwLeading.indexOf(lastch) == -1) &&
		     o.wwFollowing.indexOf(ch) == -1) ||
		    (lastch != '' && o.wwFollowingWeak.indexOf(lastch) != -1 &&
		     o.wwFollowingWeak.indexOf(ch) != -1) ||
		    (o.wwFollowing.indexOf(ch) == -1 && len > o.limitPos)){
			// �O��̕`�悪�s���֑������łȂ��A
			// ������̕`�悪�s���֑������łȂ��ꍇ�A
			// �܂��͎�֑��������A�����Ă���ꍇ�A
			// �͂��܂�
			// ����̕`�悪���֑������ł͂Ȃ��āA
			// �m���� �E�[(������)�E���[(�c����)���z����ꍇ
			// (���֑������̏ꍇ�͗]���͍l���Ȃ��c�̂ŁA
			// �͂ݏo�����Ƃ�����)
			return false;
		}
		return true;
	}

	// �R�s�[��
//	function assign(src)
//	{
//		super.assign(src);
//		tagstack.assign(src.tagstack);
//		(Dictionary.assign incontextof inrubytag)(src.inrubytag);
//	}

	// �Z�[�u��
	function store()
	{
		var dic = super.store();
		dic.tagstack = tagstack.store();
		dic.inrubytag = %[];
		(Dictionary.assignStruct incontextof dic.inrubytag)(inrubytag);
		return dic;
	}

	// ���[�h��
	function restore(dic)
	{
		super.restore(dic);
		tagstack.restore(dic.tagstack);
		(Dictionary.assign incontextof inrubytag)(dic.inrubytag);
	}

	// �^�O�n���h��
	var tagFuncs = %[
		// �^�O�Ɗ֐��̎����z��B�utagFuncs[�^�O��].�֐��v�Ŏg�p�B
		// �֐��͒�`���Ȃ���Ύ��s����Ȃ�(�G���[�ɂ͂Ȃ�Ȃ�)�B
		// �ЂƂ̃^�O�ɂ��A�ȉ��̓�̊֐����`�\�B
		//
		// storefunc(elm, curwidth)
		//	�V�i���I�{���Ƀ^�O���o���������Ɏ��s�����֐��B
		//	historyLayer.storetag(elm)����Ă΂��
		//	����: elm=�^�O�̎����z��
		//	      curwidth=���̃^�O��`�悷��O�̌��݂܂ł̕�����
		//	�Ԓl: ���̃^�O��elmary�ɒǉ����Ȃ�(ruby��)�ꍇfalse�B
		// revtag(elm)
		//	���̃^�O�̖����^�O([hfont]�ɑ΂�[endhfont]�Ȃ�)�������
		//	�Ԃ��B�`�掞�A�s���őS�^�O���X�^�b�N���珜�����߂Ɏg�p
		//	����: elm=���̃^�O���w�肳�ꂽ���̎���
		//	�Ԓl: �����^�O������

		htext: %[
			storefunc: function(e, curwidth) {
				e.hwidth = owner.font.getTextWidth(e.text);
				return true;
			} incontextof this
		],

		hfont: %[
			storefunc: function(e, curwidth) {
				owner.setFontInfo(e);
				tagstack.push(e);
				return true;
			} incontextof this, 

//�Ȃ��Ă悢�B�Ȃ��ƁA�s����[resethfont]���ȗ��ł���
//			revtag: function(elm) {
//				// [endhfont]�͒��߂��B
//				return %[tagname:'resethfont'];
//			} incontextof this
		],

		resethfont: %[
			storefunc: function(e, curwidth) {
				// �S�Ă� [hfont] ���폜
				tagstack.erase('hfont');
				owner.setDefaultFont();
				return true;
			} incontextof this
		],

		hbutton: %[
			storefunc: function(e, curwidth) {
				var o = owner;
				if (e.hwidth != 0)
					return true;
				// �P���ɕ������߂�
				var hb = new HistoryButtonLayer(o.window, o);
				hb.setOptions(e);
				e.hwidth = o.verticalView ? hb.height:hb.width;
				invalidate hb;
				return true;
			} incontextof this
		],

		hruby: %[
			storefunc: function(e, curwidth) {
				// align ������𓝈ꂵ�Ă���
				e.align = 'l' if (e.align == 'left');
				e.align = 'r' if (e.align == 'right');
				e.align = 'c' if (e.align == 'center');
				e.align = 'e' if (e.align == 'expand');
				if (e.str === void) {
					// str���������͎��̈ꕶ���𓾂邽�߂�
					// ���r���ɂ���
					inrubytag = e; // assign�Ȃ��ł�����H
					return false;
				}
				inrubytag = %[];		// �N���A���Ƃ�
				var next = calcRubyPos(e);	// ���s�`�F�b�N
				if (next !== void) {	// �Ԃŉ��s���K�v�Ȃ�
					if (e.str.length >= 0) { // 0���K�v
						var elm = %[];
						(Dictionary.assign incontextof elm)(e);
						addTag(elm); // ���̃^�O��ǉ�
					}
					(Dictionary.assign incontextof e)(next);
					// ���̌�next(���s��^�O)���X�ɒǉ�����
				}
				return true;
			} incontextof this
		],

		hact: %[
			storefunc: function(e, curwidth) {
				tagstack.push(e);
				return true;
			} incontextof this, 

			revtag: function(elm) {
				return %[tagname:'endhact'];
			} incontextof this
		],

		endhact: %[
			storefunc: function(e, curwidth) {
				tagstack.pop('hact');
				return true;
			} incontextof this
		],

		// [hlocate pos= ipos] �����s�̒��ł����ړ��ł��Ȃ�
		hlocate: %[
			storefunc: function(e, curwidth) {
				// e.pos��e.ipos�ɕϊ�����B
				if (e.pos !== void)
					e.ipos = +e.pos - curwidth;
				e.hwidth = +e.ipos;
				return true;
			} incontextof this
		],

		himage: %[
			storefunc: function(e, curwidth) {
				var o = owner;
				if (e.hwidth != 0)
					return true;
				var hi = new HistoryImageLayer(o.window, o);
				hi.setOptions(e);
				e.hwidth = o.verticalView ? hi.height : hi.width;
				invalidate hi;
				return true;
			} incontextof this
		],

		hhch: %[
			storefunc: function(e, curwidth) {
				if (!owner.verticalView)
					throw new Exception("�������c�������[�h�łȂ���[hhch]�͎g�p�ł��܂���");
				e.hwidth = owner.font.height;
				return true;
			}
			
		]
	];
};


// �������C�����̐ÓI�ȂP���C���f�[�^
class StaticHistoryLine extends HistoryLineBase {
	var savestr = "";	// ����͍������̂��߂ɒǉ��B�Ȃ��ƃ��x�����Ƃ�
				// �Z�[�u���x���̂Ȃ�́B
	// �ȉ��A�`�掞�̃e���|����
	var hbuttons=[], hacts=[], himages=[];	// �{�^���A�A�N�V�����A�摜
	var hactsave;

	// �R���X�g���N�^
	function StaticHistoryLine(owner)
	{
		// �����̒���clear()���Ă΂�hbuttons[]�Ȃǂ͊J�������
		super.HistoryLineBase(owner);
	}

	// �f�X�g���N�^
	function finalize()
	{
		// �����̒���clear()���Ă΂�hbuttons[]�Ȃǂ͊J�������
		super.finalize();
	}

	// ��ɂ���
	function clear()
	{
		super.clear();
		delButtons();
		savestr = "";
		hactsave = %[];
	}

	// ���݂�elmary��`�悷��B�K���s�P�ʂŌĂ΂�A�����s�͏������Ȃ�
	function draw(top_x, top_y)
	{
		delButtons();	// �{�^���S�~���c���Ă�����A���Ȃ̂ō폜����
		// �ŏ��f�t�H���g�l�B�s���Ƃɑ����͓Ɨ�����̂ŏ��������Ă悢�B
		owner.setDefaultFont();
		var x = top_x, y = top_y, fs, elm, func;

		// ������������炷���߂ɁA�ŏ���vertical�����f
		if (owner.verticalView) {
			y = top_y += linetop;
			for (var i = 0; i < elmary.count; i++) {
				fs = owner.font.height; // ���I�Ȃ̂ł�����
				elm = elmary[i];
				func = tagFuncs[elm.tagname].drawfunc;
				// �c�����Ȃ�Z���^�����O�A�������Ȃ牺�t��
				var dx = x, dy = y;
				dx -= (owner.lineHeight-fs)/2;
				if (func !== void)
					func(elm, x, y, top_x, top_y, dx, dy);
				y += elm.hwidth;
			}
		} else {
			x = top_x += linetop;
			for (var i = 0; i < elmary.count; i++) {
				fs = owner.font.height; // ���I�Ȃ̂ł�����
				elm = elmary[i];
				func = tagFuncs[elm.tagname].drawfunc;
				// �c�����Ȃ�Z���^�����O�A�������Ȃ牺�t��
				var dx = x, dy = y;
				dy += owner.rubyHeight+owner.fontHeight - fs;
				if (func !== void)
					func(elm, x, y, top_x, top_y, dx, dy);
				x += elm.hwidth;
			}
		}
	}

	// �{�^�������b�Z�[�W�G���A�����H
	function isInMessageArea(b)
	{
// ���ꁫ���ƃ{�^�����S���G���A���ɂ��邩�ǂ��������Ă���
		return (b.top  >= owner.marginT &&
			b.top+b.height <= owner.height-owner.marginB &&
			b.left >= owner.marginL &&
			b.left+b.width <= owner.width-owner.marginR);
// ���ꁫ���ƃ{�^���������ł��G���A���ɂ��邩�ǂ��������Ă���
// �������A���������Ɓu������ʊO�ɏo���{�^���v�����܂ł���������Ȃ�
//		return (b.top+b.height >= owner.marginT &&
//			b.top <= owner.height-owner.marginB &&
//			b.left+b.width >= owner.marginL &&
//			b.left <= owner.width-owner.marginR);
// ��������ɂ́A��s�X�N���[�����邲�ƂɑS�s�̃{�^�����`�F�b�N���邩�A
// �e��Ń{�^�����Ǘ����邵���Ȃ��c�B
	}

	// �{�^���𑊑Έړ�����B�S�{�^�����O�ɏo�Ă���폜����
	function moveButtons(ix, iy)
	{
		var btn_visible = false;
		for (var i = hbuttons.count-1; i >= 0; i--) {
			var b = hbuttons[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		for (var i = hacts.count-1; i >= 0; i--) {
			var b = hacts[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		for (var i = himages.count-1; i >= 0; i--) {
			var b = himages[i];
			b.setPos(b.left+ix, b.top+iy);
			btn_visible = true if (isInMessageArea(b));
		}
		if (!btn_visible) // �S����ʊO�Ȃ�S���폜
			delButtons();
	}

	// �{�^�����J������
	function delButtons()
	{
		for (var i = hbuttons.count-1; i >= 0; i--)
			invalidate hbuttons.pop();
		for (var i = hacts.count-1; i >= 0; i--)
			invalidate hacts.pop();
		for (var i = himages.count-1; i >= 0; i--)
			invalidate himages.pop();
	}

	// CurrentHisroryLine����̃R�s�[��
	function assignFromCurrentHistoryLine(src)
	{
		clear();	// ���̂Ƃ��̓{�^���͍l���s�v�A�폜����΂悢
		super.assign(src);
		if (elmary.count <= 0)
			return;
		// �ŏ����當������쐬���Ă����B����linetop�Œ�
		savestr = "linetop\tpos=" + linetop;
		for (var i = 0; i < elmary.count; i++)
			savestr += "\t\t" + elm2tagstr(elmary[i]);
	}

	// �^�O�����񂩂玫�������B���݂̓p�����[�^����tab���g���Ȃ�
	// str�͑O���'['��']'���폜����Ă��邱�ƁB
	function tagstr2elm(str)
	{
		// tab �����ŕ�������Belm2tagstr�Ń^�O�������Ă���̂ŁB
		var ary = str.split(/\t/,, true);
		var tag = %[ tagname:ary[0] ], s, name, val, idx;
		for (var i = ary.count-1; i >= 1; i--) { // =�̌��TJS���͕s��
			// "param"(=true�Ȃ�)�͐�΂Ȃ����疳�����Ă悢
			s    = ary[i];
			idx  = s.indexOf('=');
			name = s.substr(0,idx);
			val  = s.substr(idx+1);
			// ������val�𐔒l�ɕϊ�����̂͒x���̂ł�߂�
			// ����2000�s�œǂݍ��݂�2�b��10�b���炢������
			// �������Ahwidth �����͐��l�ɕϊ����Ă���
			tag[name] = (name == 'hwidth') ? +val : val;
		}
		return tag;
	}

	// ��������^�O����������B��������tab���g�p�ł��Ȃ�
	function elm2tagstr(elm)
	{
		var str = "";
		var ary = [];
		ary.assign(elm);
		for (var i = 0; i < ary.count; i+=2) {
			if (ary[i] == 'tagname')
				str = ary[i+1] + str;
			else		//��tab���f���~�^�Ƃ��ĕ���
				str += "\t" + ary[i] + "=" + ary[i+1];
		}
		return str;
	}

	// �Z�[�u��
	function store()
	{
		// �x�������̂ŁA�����񂾂��Z�[�u����
		return savestr;
	}

	// ���[�h��
	function restore(str)
	{
		// �����̒��� clear() ���Ă΂��̂Ń{�^���̍폜���s�v
		super.restore(void);	// ������ void �ł悢
		if (str.length <= 0)
			return;
		savestr = str;
		var ary = str.split(/\t\t/,, true);
		// ��str�̍ŏ��͕K�� linetop pos=## �ɂȂ��Ă���͂�
		linetop = +(tagstr2elm(ary[0]).pos);
		for (var i = 1; i < ary.count; i++)
			elmary.add(tagstr2elm(ary[i]));
	}

	// �^�O�n���h��
	// CurrentHistoryLine����g���悤�ɂȂ��Ă��邱�Ƃɒ���
	var tagFuncs = %[
		// �^�O�Ɗ֐��̎����z��B�utagFuncs[�^�O��].�֐��v�Ŏg�p�B
		// �֐��͒�`���Ȃ���Ύ��s����Ȃ�(�G���[�ɂ͂Ȃ�Ȃ�)�B
		// drawfunc(elm, x, y, top_x, top_y, dx, dy)
		//	�^�O�𗚗����C����ɕ`�悷��Ƃ��Ɏ��s�����֐�
		//	����: elm   = �^�O�̎����z��
		//	      x,y   = �������C���ւ̕`��ʒu(drawText()�̈���)
		//	      dx,dy = �������C���ւ̕`��ʒu
		//	      top_x,top_y=���̍s�̐擪�`��ʒu
		//	�Ԓl: �Ȃ�

		htext: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.drawText(dx, dy, e.text);
			} incontextof this
		],

		hfont: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.setFont(e.face, e.size, e.bold, e.color);
			} incontextof this
		],

		resethfont: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				owner.setDefaultFont();	// �F���f�t�H���g�ɖ߂�
			} incontextof this
		],

		hbutton: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				// �������C����Ƀ{�^����\��
				var o = owner;
				var hb = new HistoryButtonLayer(o.window, o);
				hbuttons.add(hb);
				hb.setOptions(e);	// �摜�ǂݍ��݂Ƃ�
				hb.setPos(x, y);
				var i = +e.idx;
				if (o.verticalView) // �c�����Ȃ�Z���^�����O
					hb.left=x-(o.lineHeight+hb.width)/2+i;
				else // �������Ȃ牺���낦
					hb.top =y+o.rubyHeight+o.fontHeight+i-hb.height;
			} incontextof this
		],

		hruby: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
// ToDo: ���s�ɍ��킹�ĕ`�敶����0�����̎��ǂ��Ȃ邩�H
				var o = owner, rx, ry;
				o.drawText(dx, dy, e.str); // �܂�����������

				var s = e.text;
				var fontinfo = o.getFontInfo();
				o.setRubyFont();
				if (o.verticalView) {
					// �c������
					rx = dx + o.rubyHeight + o.rubyOffset;
					ry = dy + +e.startpos;
				} else {
					// ��������
					rx = dx + +e.startpos;
					ry = dy - o.rubyHeight - o.rubyOffset;
				}
				if (+e.space == 0)
					o.drawText(rx, ry, s);
				else {
					for (var i=0; i < s.length; i++) {
						o.drawText(rx, ry, s[i]);
						if (o.verticalView)
							ry += +e.space;
						else
							rx += +e.space;
					}
				}
				o.setFontInfo(fontinfo);
			} incontextof this
		],

		hact: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				e.st_x = x; // ���W�����o���Ƃ�
				e.st_y = y;
				hactsave = e;
			} incontextof this
		],

		endhact: %[
			drawfunc: function(e, x, y, top_x, top_y, dx, dy) {
				var o = owner, size;
				var e = hactsave; //�K���ݒ肳��Ă���͂�

				if (o.verticalView)
					size = y - +e.st_y;
				else 
					size = x - +e.st_x;
				if (size <= 0)	// ���x���̍s����hact���n�܂鎞
					return;	// �������Ȃ�
				var ha = new HistoryActionButtonLayer(o.window,o,e);
				hacts.add(ha);
				ha.setOptions(%[exp:e.exp]);
				if (o.verticalView) {
					ha.setPos(+e.st_x-o.lineHeight,+e.st_y);
					ha.setSize(o.lineHeight, size);
				} else {
					ha.setPos(+e.st_x, +e.st_y);
					ha.setSize(size, o.rubyHeight+o.fontHeight);
				}
			} incontextof this
		],

		// [hlocate pos= ipos] �����s�̒��ł����ړ��ł��Ȃ�
		hlocate: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// �������C����Ŏ��̕\���ʒu�ֈړ�
				return +e.ipos;
			} incontextof this
		],

		himage: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// �������C����ɉ摜��\��
				var o = owner;
				var hi = new HistoryImageLayer(o.window, o);
				himages.add(hi);
				hi.setOptions(e);	// �摜�ǂݍ��݂Ƃ�
				var i = (e.idx === void) ? 0 : +e.idx;
				if (o.verticalView) {
					hi.setPos(x-(o.lineHeight+hi.width)/2+i,y);
					return hi.height; // �Z���^�����O
				} else {
					hi.setPos(x, y+o.rubyHeight+o.fontHeight-hi.height+i);
					return hi.width;  // ������
				}
			} incontextof this
		],

		hhch: %[
			drawfunc: function(e, x,y, t_x,t_y, dx,dy) {
				// �c�����̕`�惋�[�`��
				var fontinfo = owner.getFontInfo();
				if (!owner.verticalView)
					throw new Exception("�������c�������[�h�łȂ���[hhch]�͎g�p�ł��܂���");
				var f = owner.font;
				f.face = f.face.substr(1); // @������
				f.angle = 0;
				// ���������낦�B�E���ɂȂ�C�����Ȃ��ł��Ȃ�
				dx -= (f.height + f.getTextWidth(e.text))/2;
				owner.drawText(dx, dy, e.text);
				owner.setFontInfo(fontinfo);
			} incontextof this
		]
	];
};


// �����̃��b�Z�[�W���C���N���X
class HistoryMessageLayer extends Layer
{
	var antialiased = true;		// �A���`�G�C���A�X�����`����s����
	var verticalView = true;	// �c�������ǂ���
	var everypage = false;		// �y�[�W���̗���\�����s�Ȃ���
	var autoReturn = true;		// �����I�ɉ��s���邩�ǂ���
	var maxLines = 1000;		// �ő�ێ��s��

	var data = [];			// �s�f�[�^ (�����O�o�b�t�@)
	var dataStart = 0;		// �f�[�^�̊J�n�ʒu
	var dataLines = 0;		// �f�[�^���Ɋ܂܂��s�� < maxLines -1
	var dataPos = 0;		// �f�[�^�������݈ʒu

	// "�y�[�W��"�̎��́Adata��2�����Ɏg���Ă���B
	var maxPages = 100;		// �ő�y�[�W��
	var dataPages = 0;		// �f�[�^���̗L���ȃy�[�W��
	var dataPage = 0;		// ���ݏ�������ł���y�[�W

	// margin[TBRL] �́A�X�N���[���o�[�������������̃}�[�W����\��
	var marginL = 12;		// �������b�Z�[�W�̈捶�]��
	var marginR = 12;		// �������b�Z�[�W�̈�E�]��
	var marginT = 12;		// �������b�Z�[�W�̈��]��
	var marginB = 12;		// �������b�Z�[�W�̈扺�]��
	var fontName = "�l�r �o����";	// �������b�Z�[�Wdefault�t�H���g��
	var fontBold = false;		// �������b�Z�[�Wdefault�����׎�
	var fontHeight = 24;		// �������b�Z�[�Wdefault�t�H���g�T�C�Y
	var lineHeight = 34;		// �������b�Z�[�W�s��
	// ���������Ȃ� >= fontH+rubyH�A�c�����Ȃ� >= fontH+rubyH*2 �K�v
	var relinePos = 0;		// �������b�Z�[�W�̈�̉��s�ʒu
	var limitPos = 0;		// �������b�Z�[�W�̈�̉��[ or �E�[
	var indentPos = 0;		// �C���f���g�ʒu
	var repageLine = 0;		// ���y�[�W�s��

	var historyColor = 0xffffff;	// ���𕶎��F(default)

	var dispStart = 0;		// ���݂̕\���s(dataStart����̋���)
	var dispLines = 0;		// �������b�Z�[�W�\���\�s��
	var canScroll = false;		// ������scroll�\���ǂ���
					// �����s������ʍs���ɖ����Ȃ���΋U
	var currentLine;		// ���݂̍s�̕����ƃ^�O�̕ۑ��N���X

	var storeState = false;		// ��Ԃ�x�ɕۑ����邩

	//	�֑�����
	var wwFollowing = "%),:;]}�B�v�J�K�B�C�A�D�F�G�J�K�R�S�T"
                "�U�X�f�h�j�l�n�p�r�t�v�x�z��������������"; // �s���֑�����
	var wwFollowingWeak="!.?�A�E�@�B�D�F�H�������b�[�E�H�I�[�����������������@�B"
                "�D�F�H�b������������"; // �s��(��)�֑�����
	var wwLeading="\\$([{�u�e�g�i�k�m�o�q�s�u�w�y������"; // �s���֑�����

	wwFollowing += wwFollowingWeak;

// ************** �������܂ŃI���W�i���B�������火�F�X�ǉ� ****************

	var fontcolor;			// ���݂̃q�X�g�������F
//	var fontsize;			// ���݂̃t�H���g�T�C�Y�@(font.*��
//	var fontbold;			// ���݂̃t�H���g������� ���邩��s�v)
//	var fontface;			// ���݂̃t�H���g��

	var shadowLevel   = 0;		// �f�t�H���g�e���x��
	var shadowColor   = 0x000000;	// �f�t�H���g�e�F
	var shadowWidth   = 0;		// �f�t�H���g�e��
	var shadowOffsetX = 0;		// �f�t�H���g�e�I�t�Z�b�gX
	var shadowOffsetY = 0;		// �f�t�H���g�e�I�t�Z�b�gY

	var hbColor = 0x808080;	// �����{�^���F
	var hbCaptionColor = 0xffffff;	// �����{�^���L���v�V�����F

	// �������烋�r�p�ϐ�
	var rubyName = "�l�r �o����";	// ���r�t�H���g��
	var rubyBold = true;		// ���r�����׎�
	var rubyHeight = 10;		// ���r�T�C�Y
//	var rubyColor = 0xffffff;	// ���r�F = �{���F�ɂ��킹��̂ŕs�v
	var rubyOffset = -2;		// -�̒l�Ŗ{���ɋ߂Â�

	// �R���X�g���N�^
	function HistoryMessageLayer(win, par, elm = %[])
	{
		super.Layer(...);
		antialiased = win.chDefaultAntialiased;

		// Config.tjs �̊֐����Ă�ŁA�f�[�^��������
		(HistoryLayer_config incontextof this)();
		if (typeof global.HistoryLayer_config_override != "undefined")
			(HistoryLayer_config_override incontextof this)();

		name = "�������b�Z�[�W���C��";

		visible      = true;
		focusable    = false;
		hitType      = htMask;
		hitThreshold = 1;	// �����������܂ߑS�̂ŃC�x���g���󂯂�

		currentLine = new CurrentHistoryLine(this);
		clear();
		setDefaultFont();

		registerTags();		// ����p�̃^�O��o�^

		// �ݒ肳��Ă��Ȃ���΁A�f�t�H���g�T�C�Y�ƈʒu��ݒ�
		var sch = parent.scrollbarHeight;
		if (elm.left === void)
			elm.left = 0;
		if (elm.top === void)
			elm.top = sch; // ����������������
		if (elm.width === void) {
			elm.width = parent.width;
					// 1.23 �c�������f�t�H���g��scrollbar��
					// close�{�^�����d�Ȃ��Ă���
			elm.width -= sch; // if (!verticalView);
		}
		if (elm.height === void)
			elm.height = parent.height - sch;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �ϐ����N���A
	function clear()
	{
		clearLinesRemaining();	// �s/�y�[�W�f�[�^��S���폜

		dataStart = 0;
		dataLines = 0;
		dataPos   = 0;
		dataPages = 0;
		dataPage  = 0;

		if (everypage)
			data[dataPage] = [];
		else {
			dataLines = 1; // 0 ���ƍŏI�s�������ɕ\������Ȃ�
			data      = [];
		}

		currentLine.clear();

		calcRelinePos();
	}

	// �w�肳�ꂽ�͈͂�data[line��]�܂���data[page��]���c���č폜
	function clearLinesRemaining(lp=0)
	{
		if (everypage) {
			// �y�[�W�̏ꍇ�͎c���y�[�W�̒��g(�s)�͎c���̂Œ���
			// load()�ł͍s���قȂ�ꍇ���`�F�b�N���Ȃ���΂Ȃ�Ȃ�
			var remain_pages = dataPages = lp;
			for (var p = data.count-1; p >= remain_pages; p--) {
				var lines = data.pop();
				if (lines === void)
					continue;
				for (var l = lines.count-1; l >= 0; l--) {
					var d = lines.pop();
					// �̂̋g���g���̂��߂�void�`�F�b�N����
					invalidate d if (d !== void);
				}
			}
		} else {
			var remain_lines = dataLines = lp;
			for (var l = data.count-1; l >= remain_lines; l--) {
				var d = data.pop();
				// �̂̋g���g���̂��߂�void�`�F�b�N����
				invalidate d if (d !== void);
			}
		}
		dataStart = 0;
		dataPos   = 0;
		dataPage  = 0;
	}


	// �Z�[�u���ɓ��e��ۑ�
	function save() {
		if (!storeState)
			return void;
		var dic = %[ data:[], ];
		if (everypage) {
			for (var p = 0; p < data.count; p++) {
				dic.data[p] = [];
				for (var l = 0; l < data[p].count; l++)
					dic.data[p][l] = data[p][l].store();
			}
		} else {
			for (var l = 0; l < data.count; l++)
				dic.data[l] = data[l].store();
		}
		dic.dataStart = dataStart;
		dic.dataPos   = dataPos;
		dic.dataPages = dataPages;
		dic.dataPage  = dataPage;
		dic.dataLines = dataLines;
		dic.currentLine = currentLine.store();
		return dic;
	}

	// ���[�h���ɓ��e�𕜌�
	function load(dic) {
		if (!storeState) {
			clear();// ����Ȃ��ƃ��[�h���ɗ������N���A����Ȃ�
			return;	// ���ۂ�MainWindow����Ă΂�Ȃ�����s�v������
		}
		if (dic === void) {
			clear(); // ����Ȃ��ƃ��[�h���ɗ������N���A����Ȃ�
			return;
		}

		// �������̂��߁A�\�Ȍ���ȑO�̃C���X�^���X���ė��p����
		clearLinesRemaining(dic.data.count);

		if (everypage) {// �y�[�W�P�ʂ̏ꍇ
			for (var p = 0; p < dic.data.count; p++) {
				if (data[p] === void)
					data[p] = [];
				var page = data[p], dicpage = dic.data[p], l;
				for (l = 0; l < dicpage.count; l++) {
					if (page[l] === void)
						page[l] = new StaticHistoryLine(this);
					page[l].restore(dicpage[l]);
				}
				// �s�v�ȍs���폜�BclearLineRemaining()���ł�
				// �폜���Ă��Ȃ����߁B
				for (l=page.count-1; l >= dicpage.count; l--) {
					var d = page.pop();
					// �̂̋g���g���̂��߂�void�`�F�b�N����
					invalidate d if (d !== void);
				}
			}
		} else { // if (!everypage)// �s�P�ʂ̏ꍇ
			for (var l = 0; l < dic.data.count; l++) {
				if (data[l] === void)
					data[l] = new StaticHistoryLine(this);
				data[l].restore(dic.data[l]);
			}
		}

		dataStart = dic.dataStart;
		dataPos   = dic.dataPos;
		dataPages = dic.dataPages;
		dataPage  = dic.dataPage;
		dataLines = dic.dataLines;
		currentLine.restore(dic.currentLine);
		calcRelinePos();
	}

	// ���s�E���y�[�W�̈ʒu����
	function calcRelinePos()
	{
		if (verticalView) {
			var h = height - marginT;
			relinePos  = h - marginB;
			limitPos   = h;
			repageLine = (width-marginL-marginR)\lineHeight;
		} else {
			var w = width - marginL;
			relinePos  = w - marginR;
			limitPos   = w;
			repageLine = (height-marginT-marginB)\lineHeight;
		}
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// �C���[�W�T�C�Y����ʃT�C�Y�ɍ��킹�Ă���
		setImageSize(width, height);

		// dispLines/marginL �� dispInit()�ŏ����������̂�
		// �����ł͐ݒ肵�Ȃ�
	}

	// �ŏI�s�𓾂���ݒ肵���肷�邽�߂� getter/setter
	property lastLine
	{
		getter
		{
			var dp = (everypage) ? data[dataPage] : data;
			return dp[dataPos];
		}

		setter(line)
		{
			var dp = (everypage) ? data[dataPage] : data;
			if (dp[dataPos] === void)
				dp[dataPos] = new StaticHistoryLine(this);
			dp[dataPos].assignFromCurrentHistoryLine(line);
		}
	}

	// �ŏI�s�Ɍ��ݍs��ǉ�����
	// ��dataPos�Ȃǂ͂����ł͕ύX�����Areline()�ȂǂŕύX����
	function addLastLine(curline)
	{
		curline.preReline();	// ���O����
		lastLine = curline;
		curline.postReline();	// ���㏀��
	}

	// n �Ԗڂ̍s�𓾂�
	function getLine(n)
	{
		return data[(n+dataStart)%maxLines];
	}

	// n �Ԗڂ̃y�[�W�𓾂�
	function getPage(n)
	{
		return data[(n+dataStart)%maxPages];
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function setNewAction(action)
	{
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function clearAction()
	{
	}

	// �������C���ɕ����𗭂ߍ��ށB
	// �K�v�Ȃ�s���Ƀ^�O��t���B�^�O����������Ƃ��� elm !== void �ŁA
	// elm �ɂ̓^�O�����������Ă���B
	// drawLine()�ƈ���āA(�ق�)�ꕶ���������Ă���
	function addChar(ch)
	{
		if (currentLine.addChar(ch) != '') {	// ���s�K�v�Ȃ�
			reline();			// ���s����
			addChar(ch);			// ������ǉ����Ȃ���
		}
	}

	// �������C���Ƀ^�O�𗭂ߍ��ށB
	function addTag(elm)
	{
		var e = %[];
		(Dictionary.assign incontextof e)(elm);	// assignStruct()�s�v
		if (!currentLine.addTag(e)) {		// ���s�K�v�Ȃ�
			reline();			// ���s����
			addTag(e);			// �^�O��ǉ����Ȃ���
		}
	}

	// ���y�[�W
	function repage()
	{
		if (!everypage)
			return;

		if (dataPos == 0 && currentLine.isEmpty())
			return; // �s�ɕ\�������Ȃ��ꍇ�A�Ȃɂ����Ȃ�

		// repage()���P�̂ŌĂ΂ꂽ���̂��߂ɂ����ɔz�u
		addLastLine(currentLine);

		dataPage = (dataPage+1)%maxPages;
		dataPos	= 0;

		if (data[dataPage] === void)
			data[dataPage] = [];
		else
			for (var i = data[dataPage].count-1; i >= 0; i--)
				invalidate data[dataPage].pop();

		if (dataPage == dataStart)
			dataStart++;
		if (dataStart >= maxPages)
			dataStart = 0;
		if (dataPages < maxPages-1)
			dataPages++;

// ToDo: ���y�[�W�Ԃ�[hfont]�Ƃ�[hact]�Ƃ����������ꍇ���l������Ă��Ȃ�
// ���݂́A�l������Ă���͂��A�v�`�F�b�N
	}

	// ���s�B�^�O�����̂��߁A������Ə����ǉ��B
	// �^�O�́A�K����s���Ŏ��܂�悤�ɐݒ肳���B
	function reline()
	{
		if (everypage) {
			if (dataPos + 1 >= repageLine)
				repage(); // ���y�[�W���ׂ��s���ɂȂ����Ƃ�
			else {
				addLastLine(currentLine);
				dataPos++;
			}
		} else {
			addLastLine(currentLine);

			dataPos = (dataPos+1)%maxLines;
			if (data[dataPos] !== void)
				data[dataPos].clear();

			if (dataPos == dataStart)
				dataStart++;
			if (dataStart >= maxLines)
				dataStart = 0;
			if (dataLines < maxLines)
				dataLines++;
		}
	}

	// ���݈ʒu�ɃC���f���g��ݒ�
	function beginIndent()
	{
		indentPos = currentLine.getTextWidth();
	}

	// �C���f���g������
	function endIndent()
	{
		indentPos = 0;
	}

	// ������ʂ��N���A����Bn���w�肳����n�s�ڂ���s�����N���A����
	// �w�肳��Ȃ��ƑS��ʁB[hbutton][himage]���N���A���鏈����ǉ�
	function clearBack(n)
	{
		var x=0, y=0, w=width, h=height;
		face = dfAlpha;

		if (n === void) {
			if (everypage) {
				for (var p = data.count-1; p >= 0; p--)
					for (var l=data[p].count-1; l>=0; l--)
						if (data[p][l] !== void)
							data[p][l].delButtons();
			} else {
				for (var l = data.count-1; l >= 0; l--)
					if (data[l] !== void)
						data[l].delButtons();
			}
		} else {
			if (verticalView) {
				x = width-marginR-(n+1)*lineHeight;
				y = 0;
				w = lineHeight;
				if (n == 0)
					// �ŏ��s�͂�����ƍL�߂ɃN���A
					w += marginR;
				if (n == dispLines-1)
					// �ŏI�s�͂�����ƍL�߂ɃN���A
					x -= marginL, w += marginL;
			} else {
				y = n*lineHeight+marginT;
				h = lineHeight;
				if (n == 0)
					// �ŏ��s�͂�����ƍL�߂ɃN���A
					y -= marginT, h += marginT;
				if (n == dispLines-1)
					// �ŏI�s�͂�����ƍL�߂ɃN���A
					h += marginB;
			}
			// ���Y���C��������hbuttons�����������́Ascroll����
			// ��ʊO�ɏo�����̂������悤�ɂ��Ă���̂ŕs�v
	        }
		fillRect(x, y, w, h, 0);	// �����ɂ���
	}

	// ������ʂ��\�����ꂽ���A�Ăяo�����B
	function dispInit()
	{
		lastLine = currentLine;
		// currentLine.clear(); ������\�����̍s�������Ă��܂�����s�v

		// dispLines/marginL/B ��␳����
		if (verticalView) {
			dispLines = (width-marginR-marginL)\lineHeight;
			marginL   = width-marginR-lineHeight*dispLines;
		} else {
			dispLines = (height-marginT-marginB)\lineHeight;
			marginB   = height-marginT-lineHeight*dispLines;
		}

		// �X�N���[���\���ǂ����� canScroll �Ɋi�[
		if (everypage)
			canScroll = (dataPages > 0);
		else
			canScroll = (dataLines > dispLines);
		lastPage();
	}

	// ������ʂ���\���ɂȂ������A�Ăяo�����
	function dispUninit()
	{
		clearBack();	// �O�̂��ߏI������ clearBack() ���Ă���
	}

	// �\���s n(=��ʏ�̍s�ԍ�) �𗚗���ʂɕ`�悷��
	function drawLine(n)
	{
		var line;
		if (everypage)
			line = getPage(dispStart)[n];
		else
			line = getLine(n + dispStart);
		if (line === void || line.isEmpty())
			return;
		var x, y;
		if (verticalView) {
			x = width - marginR - n*lineHeight;
			y = marginT;
		} else {
			x = marginL;
			y = n*lineHeight + marginT;
		}
		line.draw(x, y);
	}

	// ���݂̕\���s������ʕ��𗚗���ʂɕ`�悷��
	// ����������clearBack()�ς݂ł��邱��(��������Ȃ���button�������Ȃ�)
	function drawLinesInThePage(dispstart=dispStart)
	{
		dispStart = dispstart;
		clearBack();
		for (var i =  0; i < dispLines; i++)
			drawLine(i);
		parent.updateButtonState();
	}

	// ���݂̃y�[�W�𗚗���ʂɕ`�悷��(everypage�̎��̂ݎg�p�\)
	function drawPage(dispstart=dispStart)
	{
		dispStart = dispstart;
		clearBack();
		var page = getPage(dispStart);
		var x, y = marginT;
		if (verticalView) {
			x = width - marginR;
			for (var i = 0; i < repageLine; i++) {
				if (page[i] !== void)
					page[i].draw(x, y);
				x -= lineHeight;
			}
		} else {
			x = marginL;
			for (var i = 0; i < repageLine; i++) {
				if (page[i] !== void)
					page[i].draw(x, y);
				y += lineHeight;
			}
		}
		parent.updateButtonState();
	}

	// �O�y�[�W�Ɉړ�
	function prevPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart < 1)
				return;
			drawPage(dispStart-1);
		} else {
			if (dispStart >= dispLines)
				drawLinesInThePage(dispStart-dispLines);
			else
				drawLinesInThePage(0);
		}
	}

	// ���y�[�W�Ɉړ�
	function nextPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart >= dataPages-1)
				return;
			drawPage(dispStart+1);
		} else {
			if (dispStart < dataLines - dispLines)
				drawLinesInThePage(dispStart+dispLines);
			if (dispStart > dataLines - dispLines)
				drawLinesInThePage(dataLines-dispLines);
			// ������ == �̔���͕s�v�B�����nextPage()���w���ɂȂ�
		}
	}

	// ���̍s�փX�N���[���A�b�v
	function nextLine()
	{
		if (isTail())	// (dispStart >= dataLines - dispLines)
			return; // �X�N���[���ł��Ȃ��Ȃ�A��

		moveButtons(-1);	// �{�^���ʒu��␳����

		// margin���܂߂đS��ʃR�s�[����
		var w = width, h = height, lh = lineHeight;
		if (verticalView) {
			copyRect(lh, 0, this, 0, 0, w-lh, h);
			fillRect(w-marginR, 0, marginR, h, 0); // marginR����
		} else {
			copyRect(0, 0, this, 0, lh, w, h-lh);
			fillRect(0, 0, w, marginT, 0); // marginT����
		}

		clearBack(dispLines - 1);
		dispStart++;
		drawLine(dispLines - 1);
		parent.updateButtonState();
	}

	// �O�̍s�փX�N���[���_�E��
	function prevLine()
	{
		if (isHead())		// if (dispStart == 0)
			return;

		moveButtons(1);	// �{�^���ʒu��␳����

		// margin���܂߂đS��ʃR�s�[����
		var w = width, h = height, lh = lineHeight;
		if (verticalView) {
			copyRect(0, 0, this, lh, 0, w-lh, h);
			fillRect(0, 0, marginL, h, 0); // marginL����
		} else {
			copyRect(0, lh, this, 0, 0, w, h-lh);
			fillRect(0, h-marginB, w, marginB, 0); // marginB����
		}

		clearBack(0);
		dispStart--;
		drawLine(0);
		parent.updateButtonState();
	}


//////////////////////////////////////////////////////////////////////////
// �� �����܂ł��I���W�i��HistoryLayer�A����������ruby�Ƃ�hfont�Ƃ��̋@�\�ǉ�


	//�ŏ��̃y�[�W�Ɉړ�
	function firstPage()
	{
		if (everypage)
			drawPage(0);
		else
			drawLinesInThePage(0);
	}

	// �Ō�̃y�[�W�Ɉړ�
	function lastPage()
	{
		if (everypage) {
			if (dataPages <= 0)
				drawPage(0);
			else
				drawPage(dataPages - 1);
		} else {
			if (dataLines <= dispLines) // �\���\�͈͓��Ɏ��܂�
				drawLinesInThePage(0);
			else			// �\���\�͈͓��Ɏ��܂�Ȃ�
				drawLinesInThePage(dataLines - dispLines);
		}
	}

	// �ЂƂO��
	function prevOne()
	{
		everypage ? prevPage() : prevLine();
	}

	// �ЂƂ���
	function nextOne()
	{
		everypage ? nextPage() : nextLine();
	}


	// ���݂̃t�H���g����ݒ肷��
	function setFont(face, size, bold, color)
	{
		if (face !== void) {
			if (face[0] == '@')
				face = face.substr(1);	// �ŏ���@������Ύ��
			if (verticalView) {
				font.angle = 2700;
				font.face = '@' + face;
			} else {
				font.angle = 0;
				font.face = face;
			}
		}
		font.height = +size	  if (size  !== void);
		if (font.height > rubyHeight+fontHeight)
			font.height = +rubyHeight+fontHeight;
		font.bold   = +bold       if (bold  !== void);
		fontcolor   = +color      if (color !== void);
	}

	// ���r�t�H���g�ɐݒ肷��
	function setRubyFont()
	{
		setFont(rubyName, rubyHeight, rubyBold);
	}

	// �t�H���g�����f�t�H���g�ɖ߂�
	function setDefaultFont()
	{
		setFont(fontName, fontHeight, fontBold, historyColor);
	}

	// ���݂̃t�H���g���������ŕԂ�
	function getFontInfo()
	{
		return %[ face:font.face, size:font.height,
			  bold:font.bold, color:fontcolor ];
	}

	// �t�H���g���������Őݒ肷��
	function setFontInfo(elm)
	{
		setFont(elm.face, elm.size, elm.bold, elm.color);
	}

	// drawText���������āA�^�O������ǉ�����B�K���s�P�ʂŌĂ΂�A�s��
	// �����Ă͏������Ȃ�(�ł��Ȃ�)
	function drawText(x, y,
			text, color=fontcolor, opa=255, aa=antialiased,
			shadowlevel=shadowLevel, shadowcolor=shadowColor,
			shadowwidth=shadowWidth,
			shadowofsx=shadowOffsetX, shadowofsy=shadowOffsetY)
	{
		super.drawText(x, y, text, color, opa, aa,
				shadowlevel, shadowcolor, shadowwidth,
				shadowofsx, shadowofsy);
	}

	// �^�O�� KAG�}�N���Ƃ��Ďg�p�ł���悤�ɁAkag.tagHandlers�ɓo�^����
	function registerTags()
	{
		var tagfuncs = keys(currentLine.tagFuncs);
		for (var i = tagfuncs.count-1; i >= 0; i--) {
			// �o�^����^�O�́u�V�K�^�O�v�݂̂ł��邱�Ƃɒ���
			window.tagHandlers[tagfuncs[i]] =
				function(elm)
				{
					if (!window.historyWriteEnabled)
						return 0;
					// �^�O������ǉ������� store() ���Ă�
					addTag(elm);
					return 0;	// ����onTag()�ɕK�v
				} incontextof this;
		}
	}

	// �q�X�g����̃{�^������ʏ�� line ���ړ�(�s�v�Ȃ��͍̂폜�����)
	// ������ʂ̃X�N���[�����̏����p
	function moveButtons(lineidx)
	{
		var w = lineHeight * lineidx;
		var lines, startline, endline;

		if (everypage) {
			lines     = getPage(dispStart);
			for (var l = 0; l < dispLines; l++) {
				var line = lines[l];
				if (line === void || line.isEmpty())
					continue;
				if (verticalView)
					line.moveButtons(-w, 0);
				else
					line.moveButtons(0, w);
			}
		} else {
			for (var l = 0; l < dispLines; l++) {
				var line = getLine(dispStart + l);
				if (line === void || line.isEmpty())
					continue;
				if (verticalView)
					line.moveButtons(-w, 0);
				else
					line.moveButtons(0, w);
			}
		}
		// line.moveButtons()���ŁA�ړ����ꂽ�{�^���͂��̍s�̑S�Ă�
		// �{�^������ʊO���ƍ폜�����B�u�s����ʊO�Ń{�^������ʓ��v
		// �̏ꍇ�ɍĕ`�悷��Əd���`��̉\�������邪�A���ۂ�nextLine
		// prevLine/prevPage/nextPage��clearBack()���Ă���̂ŁA
		// (�s�v�ȃ{�^������\�����Ɏc�邱�Ƃ͂��邪)�����͖��Ȃ�
	}

// HEAD :Scrollbar.Target interface��������
	// �q�X�g���͐擪���H
	function isHead()
	{
		return dispStart <= 0;
	}
	// �q�X�g���͖������H
	function isTail()
	{ 
		if (everypage)
			return dispStart >= dataPages-1;
		else
			return dispStart >= dataLines-dispLines;
	}
	// ���݂̈ʒu(pos, 0�`1�̎���)����AdispStart(�����̕\���J�n�ʒu)�𓾂�
	function getDispStart(pos)
	{
		if (everypage)
			return int((dataPages-1)*pos);
		else
			return int((dataLines-dispLines)*pos);
	}
	property pageCount
	{
		getter()
		{
			var res = (everypage)?dataPages:dataLines/repageLine;
			return (res > 1) ? res : 1;
		}
	}
	property position
	{
		getter()
		{
			if (everypage) {
				if (pageCount > 1)
					return dispStart/(pageCount-1);
				else
					return 1;
			} else {
				if (dataLines > dispLines)
					return dispStart/(dataLines-dispLines);
				else return 0;
			}
		}
	}

	// �}�E�X�N���b�N���ꂽ���͑S���e�ɏ�����C����
	function onMouseDown(x, y, button)
	{
		parent.onMouseDown(...);
	}


// TAIL :Scrollbar.Target interface��������
//

}


// ����(�Ƃ�����onwer)���t�F�[�h�C���E�A�E�g������N���X
// �����x��ω������ĕ\���E��\���ɂ���
class ExtHistoryLayerFade {
	var w;
	var owner;			// ExtHistoryLayer
	var time;			// �t�F�[�h�C���E�A�E�g�ɂ����鎞��

	// �ȉ��͈ꎞ�ϐ�
	var kag_showHistory_org;	// kag.showHistory�̃I���W�i��
	var kag_hideHistory_org;	// kag.hideHistory�̃I���W�i��
	var starttime;			// �t�F�[�h�J�n����
	var status;			// �t�F�[�h���
		var STOP=0, FADING_IN=1, FADING_OUT=2;

	// �R���X�g���N�^
	function ExtHistoryLayerFade(owner, time)
	{
		this.owner = owner;
		this.time  = time;
		w = owner.window;

		kag_showHistory_org = w.showHistory;
		kag_hideHistory_org = w.hideHistory;
		w.showHistory = startFadein;	// incontextof.. �͂��Ȃ�
		w.hideHistory = startFadeout;	// ����
	}

	// �f�X�g���N�^
	function finalize()
	{
		var w = owner.window;
		w.showHistory = kag_showHistory_org;
		w.hideHistory = kag_hideHistory_org;
		// �o�^����Ă��� continuousHandler���폜
		// �������Ȃ���fade���ɃQ�[���I���������G���[�ƂȂ�
		if (status == FADING_OUT)
			System.removeContinuousHandler(continueFadeout);
		if (status == FADING_IN)
			System.removeContinuousHandler(continueFadein);
	}

	// fade �����ǂ���
	function isFading()
	{
		return status == FADING_IN || status == FADING_OUT;
	}

	// �t�F�[�h�C���J�n
	function startFadein()
	{
		// �N�������visible=1, opacity=255�Ȃ̂ŁAvisble�m�F�K�v
		if (isFading() || (owner.visible && owner.opacity >= 255))
			return;
		kag_showHistory_org();
		starttime = System.getTickCount();
		owner.opacity = 0;
		status = FADING_IN;
		System.addContinuousHandler(continueFadein);
	}

	// �t�F�[�h�C�����I������
	function stopFadein()
	{
		status = STOP;
		owner.opacity = 255;
		System.removeContinuousHandler(continueFadein);
		w.update();
	}

	// �t�F�[�h�C����������
	function continueFadein()
	{
		var curtime = Math.min(time, System.getTickCount()-starttime);
		if (!isFading() || curtime >= time) {
			stopFade();
			return;
		}
		owner.opacity = Math.round(255*curtime/time);
		w.update();
	}

	// �t�F�[�h�A�E�g�J�n
	function startFadeout()
	{
		// opacity==0�Ȃ�Ȃɂ����Ȃ��悤�ɒǉ����Ƃ��Ȃ��ƁA��s���Ƃ�
		// fadeout�����Ⴄ�B
		// �{����s�\�����Ƃ�onMouseDown��onPrimaryClick��notifyRun��
		// defaultRunHandler��hideHistory��startFadeout���Ă΂�邽��
		if (isFading() || owner.opacity <= 0)
			return;
		starttime = System.getTickCount();
		owner.opacity = 255;
		status = FADING_OUT;
		System.addContinuousHandler(continueFadeout);
	}

	// �t�F�[�h�A�E�g���I������
	function stopFadeout()
	{
		status = STOP;
		w.update();
		owner.opacity = 0;
		System.removeContinuousHandler(continueFadeout);
		kag_hideHistory_org();
	}

	// �t�F�[�h�A�E�g��������
	function continueFadeout()
	{
		var curtime = Math.min(time, System.getTickCount()-starttime);
		if (!isFading() || curtime >= time) {
			stopFadeout();
			return;
		}
		owner.opacity = 255 - Math.round(255*curtime/time);
		w.update();
	}

	// �t�F�[�h���~����
	function stopFade()
	{
		if (status == FADING_IN)
			stopFadein();
		else if (status == FADING_OUT)
			stopFadeout();
	}
};


// �g���������C���N���X
class ExtHistoryLayer extends Layer
{
	// �������g�͔w�i�摜��\������B
	var closeButton;		// �E��̗����I���{�^��
	var scrollbar;			// �X�N���[���o�[�I�u�W�F�N�g
	var meslayer;			// ���b�Z�[�W�\�����C��

	var lastWheelTick; // �Ō�Ƀz�C�[���𑀍삵�� tick count

	// �ȉ��A�g���������C���p�ݒ�B
	// system/Config.tjs �̖����ɁAfunction ExtHistoryLayer_config() ��
	// ��`���āA���̒��Őݒ肷�邱�Ƃ������߂���B

	var bggraphic = "";		// �w�i�摜�t�@�C����
	var prevgraphic = "";		// prev�{�^���̉摜�t�@�C����
	var nextgraphic = "";		// next�{�^���̉摜�t�@�C����
	var slgraphic = "";		// �X���C�_�[�̉摜�t�@�C����
	var closegraphic = "";		// close�{�^���̉摜�t�@�C����

	var buttonColor = 0x808080;	// �{�^���F
	var buttonCaptionColor = 0xffffff;	// �{�^���L���v�V�����F
	var bgColor = 0xc8000000;	// �w�i�F
	var messageTop = Infinity;	// �������b�Z�[�W�E�B���h�E�̍��W
	var messageLeft = Infinity;	// ����(�ǂ��Infinity��default��\��)
	var messageWidth = Infinity;	// �������b�Z�[�W�E�B���h�E�̑傫��
	var messageHeight = Infinity;	// ����
	var closeButtonTop = 0;		// �N���[�Y�{�^���̍��W
	var closeButtonLeft = Infinity;	// ����
	var scrollbarHeight = 16;	// �X�N���[���o�[��(�摜btn�Ȃ疢�g�p)
	var scrollbarBack = 0x80404040;	// �X�N���[���o�[�w�i�F
	var sbbggraphic = "";		// �X�N���[���o�[�w�i�摜�t�@�C����

	var hidemessage = false;	// ����\�����Ƀ��b�Z�[�W���C�����B����

	var fadeobj;
	var fadetime = 200;		// �������t�F�[�h�\�����鎞�̎���

	// �R���X�g���N�^
	function ExtHistoryLayer(win, par, elm)
	{
		super.Layer(...);

		name = "�g���������C��";

		closeButtonLeft = window.scWidth-scrollbarHeight;
		// �ݒ�l�� Config.tjs ���ɂ���ΐݒ�
		if (typeof(.ExtHistoryLayer_config) != 'undefined')
			(.ExtHistoryLayer_config incontextof this)();

		setPos(0, 0);
		setSize(parent.width, parent.height);
		setImageSize(width, height);
		hitType = htMask;
		visible = false;	// �ŏ��͕s��
		face = dfAlpha;	
		fillRect(0,0, width, height, bgColor);	// def = �������̍�
		focusable = true;

		cursor = window.cursorDefault;

		// ���b�Z�[�W���C���쐬
		var meselm = %[];
		if (messageLeft != Infinity)
			meselm.left = messageLeft;
		if (messageTop != Infinity)
			meselm.top = messageTop;
		if (messageWidth != Infinity)
			meselm.width = messageWidth;
		if (messageHeight != Infinity)
			meselm.height = messageHeight;
		meslayer = new HistoryMessageLayer(win, this, meselm);

		// �{�^���Ƃ��쐬�B�����ō쐬����ƁAhistory���g��Ȃ�����
		// ���ʂ����A�q�X�g���\�����Ƀ{�^�����ƁA����܂łɗ�������
		// ������� limitPos �Ȃǂ�������Ԃŉ��s���ςɂȂ����Ⴄ�̂ŁB
		// makeButtons()�֐��́AMainWindow.tjs ����Ă΂��̂ō폜�s�\
		makeButtons();

		// ������fade�\�����邽�߂̃N���X��o�^
		fadeobj = new ExtHistoryLayerFade(this, fadetime);

		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate fadeobj;
		invalidate closeButton;
		invalidate scrollbar;
		invalidate meslayer;
		super.finalize(...);
	}

	// �Z�[�u���ɓ��e��ۑ�
	function save() {
		return meslayer.save(...);
	}

	// ���[�h���ɓ��e�𕜌�
	function load(dic) {
		meslayer.load(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm, ["clear"]);

		// �O���t�B�b�N��ݒ肵���ꍇ�́A�{�^������蒼��
		if (elm.closegraphic !== void || elm.prevgraphic !== void ||
		    elm.nextgraphic !== void || bggraphic !== void)
			makeButtons();
	}

	// �{�^���쐬(HistoryLayer.makeButtons()���㏑��)
	function makeButtons()
	{
		if (closeButton !== void)
			invalidate closeButton;	// ���݂���Ȃ�Đݒ�
		closeButton = new LButtonLayer(window, this);
		closeButton.width 	 = scrollbarHeight;
		closeButton.height 	 = scrollbarHeight;
		closeButton.hint         = "���b�Z�[�W���������";
		closeButton.captionColor = buttonCaptionColor;
		closeButton.color        = buttonColor;
		closeButton.caption      = "�~";
		closeButton.visible      = true;
		// �摜������Γǂݍ���
		if (closegraphic != "")
			closeButton.loadImages(closegraphic);
		if (closeButtonTop == Infinity)
			closeButton.top  = 0;
		else
			closeButton.top  = closeButtonTop;
		if (closeButtonLeft == Infinity)
			closeButton.left = window.scWidth - closeButton.width;
		else
			closeButton.left = closeButtonLeft;

		// �X�N���[���o�[�́A��`����Ă���΍Ē�`�͂��Ȃ�
		var scelm = %[
			color:buttonColor,
			captionColor:buttonCaptionColor
		];
		if (meslayer.verticalView) {
			if (scrollbar === void) {
				scrollbar = new HorizontalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
			// �c�����̎��́A�X�N���[���o�[�̓��b�Z�[�W���C����[��
			scrollbar.setSize(meslayer.width, scrollbarHeight);
			scrollbar.setPos(meslayer.left,
					 meslayer.top-scrollbar.height);
		} else {
			if (scrollbar === void) {
				scrollbar = new VerticalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
			// �������̎��́A�X�N���[���o�[�͉E�[��
			scrollbar.setSize(scrollbarHeight, meslayer.height);
			scrollbar.setPos(meslayer.left+meslayer.width,
					 meslayer.top);
		}

		// �摜������Γǂݍ���
		if (prevgraphic != "")
			scrollbar.setOptions(,%[graphic:prevgraphic]);
		if (nextgraphic != "")
			scrollbar.setOptions(,,%[graphic:nextgraphic]);
		if (slgraphic != "")
			scrollbar.setOptions(,,,%[graphic:slgraphic]);
		if (sbbggraphic != "")
			scrollbar.setOptions(%[graphic: sbbggraphic]);
		if (bggraphic != "")
			loadImages(bggraphic);

		scrollbar.initState();
		meslayer.calcRelinePos();
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function setNewAction(action)
	{
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function clearAction()
	{
	}

	// �������C�����N���A����
	function clear()
	{
		meslayer.clear(...);
	}

	// �������C���ɕ����𗭂ߍ��ށB
	function store(ch)
	{
		meslayer.addChar(...);
	}

	// �������C���Ƀ^�O�𗭂ߍ��ށB
	function storeTag(elm)
	{
		meslayer.addTag(...);
	}

	// ���y�[�W
	function repage()
	{
		meslayer.repage(...);
	}

	// ���s
	function reline()
	{
		meslayer.reline(...);
	}

	// ���݈ʒu�ɃC���f���g��ݒ�
	function beginIndent()
	{
		meslayer.beginIndent(...);
	}

	// �C���f���g������
	function endIndent()
	{
		meslayer.endIndent(...);
	}

	// ������ʂ��\�����ꂽ���A�Ăяo�����B
	function dispInit()
	{
		// ���b�Z�[�W���C����\�����Ȃ��Ȃ����
		if (hidemessage && !window.messageLayerHiding)
			window.hideMessageLayerByUser();

		// �S���ĕ`��Ə����ݒ�
		makeButtons();
		meslayer.dispInit();

		opacity = 0;	// fade�̂��ߍŏ��� opacity = 0
		visible = true;
		enabled = true;	// ���ꂪ������ setMode() �ŃG���[�ɂȂ�
		setMode();
		focus();
		lastWheelTick = 0;
	}

	// ������ʂ���\���ɂȂ������A�Ăяo�����
	function dispUninit()
	{
		meslayer.dispUninit();
		visible = false;
		enabled = false;
		removeMode();	// ��ɂ����systembutton�Ƀt�H�[�J�X�����̂�

		// ���b�Z�[�W���C�����������Ă�����\��
		if (hidemessage && window.messageLayerHiding)
			window.showMessageLayerByUser();
	}

	// �S�{�^����Ԃ��X�V
	function updateButtonState()
	{
		scrollbar.updateState();
	}

	// �������B��
	function hide()
	{
		window.hideHistory();
	}

	// �{�^�����N���b�N���ꂽ��
	function onButtonClick(sender)
	{
		if (sender == closeButton)
			hide();
	}

	// �}�E�X�N���b�N���ꂽ��
	function onMouseDown(x, y, button)
	{
		if (fadeobj.isFading()) { // �t�F�[�h���Ȃ�t�F�[�h�I������
			fadeobj.stopFade();
			return;
		}
		if (button == mbRight)
			hide();
		super.onMouseDown(...);
	}

	// �L�[������������ꂽ��
	function onKeyDown(key, shift)
	{
		if (fadeobj.isFading()) { // �t�F�[�h���Ȃ�t�F�[�h�I������
			fadeobj.stopFade();
			return;
		}
		window.hideMouseCursor();
		if (meslayer.canScroll) {
			if (meslayer.verticalView) {
				if (key == VK_DOWN || key == VK_NEXT)
					meslayer.nextPage();
				else if (key == VK_UP || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_LEFT)
					meslayer.nextOne();
				else if (key == VK_RIGHT)
					meslayer.prevOne();
			} else {
				if (key == VK_DOWN)
					meslayer.nextOne();
				else if (key == VK_UP)
					meslayer.prevOne();
				else if (key == VK_LEFT || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_RIGHT || key == VK_NEXT)
					meslayer.nextPage();
			}
		}
		if (key == VK_ESCAPE || key == VK_RETURN || key == VK_SPACE)
			hide();
		else if (key == VK_HOME)
			meslayer.firstPage();
		else if (key == VK_END)
			meslayer.lastPage();
	}

	// �}�E�X�z�C�����܂킵����
	function windowMouseWheel(shift, delta, x, y)
	{
		if (fadeobj.isFading()) { // �t�F�[�h���Ȃ�t�F�[�h�I������
			fadeobj.stopFade();
			lastWheelTick = 0;
			return;
		}

		// �E�B���h�E�̃z�C�[�����상�b�Z�[�W�������ɗ������
		var currenttick = System.getTickCount();
		delta = delta \ 120;
		if (delta > 0) // ��
			while (delta--)
				meslayer.prevOne();
		else if (delta < 0) { // ��O
			if (currenttick - lastWheelTick > 150 &&
			    meslayer.isTail())
				/* ���邭��񂵂Ă��邤���ɂ����Ȃ藚����
				  �����肵�Ȃ��悤�Ȏd�|�� */
				// ���ɍŏI������\�����Ă���
				hide();
			else {
				delta = -delta;
				while (delta--)
					meslayer.nextOne();
			}
		}
		lastWheelTick = currenttick;
	}

	// historyLayer.everypage �� MainWindow.ks ���痘�p�����̂Ń��b�p�[
	property everypage
	{
		getter
		{
			return meslayer.everypage;
		}
		
		setter(val)
		{
			meslayer.everypage = val;
		}
	}

	// historyLayer.storeState �� MainWindow.ks ���痘�p�����̂Ń��b�p�[
	property storeState
	{
		getter
		{
			return meslayer.storeState;
		}
		
		setter(val)
		{
			meslayer.storeState = val;
		}
	}
};


// ������ɕ\������{�^�����C��
class HistoryButtonLayer extends ButtonLayer
{
	var exp = "";		// �N���b�N���Ɏ��s�����TJS��

	// �R���X�g���N�^
	function HistoryButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		//�f�t�H���g�l�ݒ�
		// �{�^���T�C�Y�͗����t�H���g�T�C�Y���f�t�H���g�Ƃ���
		setSize(parent.fontHeight, parent.fontHeight);
		setOptions(%[caption:"��",
			     captionColor:parent.hbCaptionColor,
			     color:parent.hbColor,
			     visible:true, enabled:true]);
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void)
			loadImages(elm.graphic);
		setOptions_sub(this, elm);
	}

	// �}�E�X���N���b�N����A�����ꂽ��
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
};


// [hact]�{�^���B���͓����ȃ{�^���ŁA���̕������B�������B����ŁA
// [hact]���̕����̑傫���E�F�ύX�E���r�ɑΉ��ł���B
class HistoryActionButtonLayer extends ButtonLayer
{
	// ������ var next; // �����s�ɕ������ꂽ���́A���̃{�^��(�Ȃ����void)
	var exp = "";	// �N���b�N���ꂽ���Ɏ��s�����TJS��

	// �R���X�g���N�^
	function HistoryActionButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(...);
		visible = true;
		face    = dfAlpha;
		Butt_imageLoaded = true;	// �C���[�W�{�^���Ƃ���B
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �T�C�Y�ύX�B[hact]�̂��߂́A�����E�������{�^�����쐬
	// ���� width/height �� setter �����Ă� setSize()�����Ƃ���ʂ���̂�
	function setSize(w, h)
	{
		super.setSize(w, h);
		setImageSize(w*(Butt_showFocusImage ? 4 : 3), h);
		fillRect(0, 0, w, h, 0x00000000);
		var c = parent.historyColor;
		// �c���������������Ȃ̂ŁA���F��fill���邱�ƂɕύX�B�����̂���
		fillRect(0,  0, w,h, 0x30000000|c);
		fillRect(w,  0, w,h, 0x90000000|c);	// �����ꂽ��
		fillRect(w*2,0, w,h, 0x60000000|c);	// �t�H�[�J�X1
		if (Butt_showFocusImage) {
			fillRect(w*3,0, w,h, 0x60000000|c); //�t�H�[�J�X2
			fillRect(w*3+1,1, w-2,h-2,0x00000000);
		}
		Butt_imageLoaded = true;	// �����I�ɃC���[�W�{�^���ɂ���
		// ���{���� setter ���Ē�`����΂����񂾂��ǁc
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;

		setOptions_sub(this, elm);

		// width/height���w�肳�ꂽ��A�����E�������{�^���쐬
		if (elm.width !== void || elm.height !== void)
			setSize(width, height);
	}

	// �}�E�X���N���b�N����A�����ꂽ��
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
};


// ������ɕ\������{�^�����C��
class HistoryImageLayer extends Layer
{
	var graphic;	// �\������摜

	// �R���X�g���N�^
	function HistoryImageLayer(window, parent, elm)
	{
		super.Layer(window, parent);
		focusable = false;
		//�f�t�H���g�l�ݒ�
		visible = true;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);
		if (elm.graphic !== void) {
			loadImages(elm.graphic);
			setSizeToImageSize();
		}
	}
};


// KAG �̃q�X�g�����C���u������
if (kag.historyLayer instanceof "HistoryLayer") {
	// �f�t�H���g��������
	kag.remove(kag.historyLayer);
	invalidate kag.historyLayer if (kag.historyLayer !== void);
	kag.historyLayer = new ExtHistoryLayer(kag, kag.fore.base);
	kag.add(kag.historyLayer);
}


// tagname��u���������q�X�g���^�O�𗚗��ɏ�������
function storeTag(tagname, tagmp=%[])
{
	if ((f.transhistorytag !== void && !f.transhistorytag) ||
	    tagmp.nohistory || !kag.historyWriteEnabled)
		return;		// ���s���Ȃ��Ȃ炵�Ȃ��B

	var elm = %[];
	(Dictionary.assign incontextof elm)(tagmp);
	elm.tagname = tagname;
	kag.historyLayer.storeTag(elm);
}



// ����� false �ɂ���ƃ��b�Z�[�W��ʂ�[font]�Ƃ����q�X�g���ɔ��f���Ȃ��Ȃ�B
// �f�t�H���g�� enabled.
// �O���[�o���ϐ��ɂ����Ⴄ�̂͂�����Ɖ������A���ꂾ���̂��߂�KAGPlugin
// �g���̂��J�b�R�����̂ŃO���[�o���ϐ��ɁB
// void �ł� true �ƈ����悤�ɂ��Ă���̂ŁA[clearver]���� void �ɂȂ��Ă�
// ���v�B�ł��A���̌��[history historytag=true]�Ƃ����Ƃ����������S�B
f.transhistorytag = true;


// [history]�^�O��u�������Ahistorytag= �� clear= ����ǉ��B
// bggraphic/prevgraphic/nextgraphic/closegraphic/slgraphic/sbbggraphic ��
// �����I�ɐݒ肳���
kag.tagHandlers.history_org_for_exthistorylayer = kag.tagHandlers.history;
kag.tagHandlers.history = function (elm) {
	tagHandlers.history_org_for_exthistorylayer(elm);
	f.transhistorytag = +elm.historytag if (elm.historytag !== void);
	// �������N���A������� "clear=true" ��ǉ�
	historyLayer.clear() if (elm.clear);
	return 0;
} incontextof kag;


// [font]�^�O��������A[hfont]�������ɑ���悤�ɂ���
// [font]�^�O��u�������Ă���A�V�K��[font]�^�O���`
kag.tagHandlers.font_org_for_exthistorylayer = kag.tagHandlers.font;
kag.tagHandlers.font = function (elm) {
	tagHandlers.font_org_for_exthistorylayer(elm);
	storeTag('hfont', elm);
	return 0;
} incontextof kag;

// [ruby]�^�O��u��������
kag.tagHandlers.ruby_org_for_exthistorylayer = kag.tagHandlers.ruby;
kag.tagHandlers.ruby = function (elm) {
	tagHandlers.ruby_org_for_exthistorylayer(elm);
	storeTag('hruby', elm);
	return 0;
} incontextof kag;


// [resetfont]�^�O��u��������
kag.tagHandlers.resetfont_org_for_exthistorylayer = kag.tagHandlers.resetfont;
kag.tagHandlers.resetfont = function (elm) {
	tagHandlers.resetfont_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;


// [ct][cm][er]�^�O��u��������B��������������������Z�b�g(resetfont�Ɠ���)
kag.tagHandlers.cm_org_for_exthistorylayer = kag.tagHandlers.cm;
kag.tagHandlers.cm = function (elm) {
	tagHandlers.cm_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

kag.tagHandlers.ct_org_for_exthistorylayer = kag.tagHandlers.ct;
kag.tagHandlers.ct = function (elm) {
	tagHandlers.ct_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

kag.tagHandlers.er_org_for_exthistorylayer = kag.tagHandlers.er;
kag.tagHandlers.er = function (elm) {
	tagHandlers.er_org_for_exthistorylayer(elm);
	storeTag('resethfont', elm);
	return 0;
} incontextof kag;

/*
// [hact]�^�O��u��������(�Ƃ���������)
kag.tagHandlers.hact = function (elm) {
	storeTag('hact', elm);
	return 0;
} incontextof kag;


// [endhact]�^�O��u��������(�Ƃ���������)
kag.tagHandlers.endhact = function (elm) {
	storeTag('endhact', elm);
	return 0;
} incontextof kag;
�擪�ɒ��� */

kag.tagHandlers.hch_org_for_exthistorylayer = kag.tagHandlers.hch;
kag.tagHandlers.hch = function (elm) {
	// �����ɏ�����[hhch]�Ɠ�d�ɏ�����Ă��܂��̂ŁA�����������݂��֎~����
	var he_save = historyWriteEnabled;
	historyWriteEnabled = false;
	tagHandlers.hch_org_for_exthistorylayer(elm);
	historyWriteEnabled = he_save;
	storeTag('hhch', elm);
	return 0;
} incontextof kag;

// [graph]�^�O��������A[himage]�������ɑ���悤�ɂ���
// �������Achar=�͖������Ă��܂��B
kag.tagHandlers.graph_org_for_exthistorylayer = kag.tagHandlers.graph;
kag.tagHandlers.graph = function (elm) {
	tagHandlers.graph_org_for_exthistorylayer(elm);
	if (elm.alt === void)
		storeTag('himage', %[graphic:elm.storage, key:elm.key]);
	return 0;
} incontextof kag;


[endscript]


; eruby ������Γǂݍ���Ŋg��
[if exp="Storages.isExistentStorage('eruby.ks')"]
	; [renamemacro]�̂��߂ɕK�v�������c
	[call storage=RenameKAGTag.ks]

	[call storage=eruby.ks]
	[renamemacro from=eruby to=eruby_exthistorylayer_org]
	[macro name="eruby"]
	; �q�X�g���L������ eruby ���ɂ������������ɏo�͂����̂ňꎞ��~
	[eval exp="mp.historyWriteEnabled_save = kag.historyWriteEnabled"]
	[history output=false]
	[eruby_exthistorylayer_org *]
	[history output=true cond="mp.historyWriteEnabled_save"]
	; �ŁA�f�t�H���g align ��ǉ�����hruby���o��
	[eval exp="mp.align = 'e'" cond="mp.align === void"]
	[eval exp="storeTag('hruby', mp)"]
	[endmacro]
[endif]



[return]
