; ��d�ǂݍ��݂��֎~
[return cond="typeof(global.highspeedlabeler_obj) != 'undefined'"]

[iscript]

// ��V�i���I�t�@�C���ɑ΂�����ǃ��x������N���X
// �R���X�g���N�^�ł̓t�@�C��������Γǂݍ��ށB�ύX������Ύ���Z�[�u����
// �Z�[�u���邪�A�ύX���Ȃ���Ύ���Z�[�u���͒P���ɃX�L�b�v����
class recordLabels
{
	var w;
	var recordfile;		// �Z�[�u����t�@�C����(�t���p�X)
	var labels     = %[];	// ���ǃ��x�������z��
	var needtosave = false;	// �ύX���ꂽ���t���O(�ύX�Ȃ���΃Z�[�u���Ȃ�)

	// �R���X�g���N�^
	function recordLabels(window, storage, uuid)
	{
		w = window;
		// �Z�[�u�t�@�C������ "savedata/record_�V�i���I�t�@�C����.ksd"
		storage = Storages.extractStorageName(Storages.chopStorageExt(storage));
		storage = uuid if (uuid !== void);
		recordfile = w.saveDataLocation+"/record_"+storage+".ksd";
		restore();	// �����f�[�^��ǂݍ��݁Alabels������
	}

	// �f�X�g���N�^
	function finalize()
	{
		// �܂��c���������g�����񂶂�Ȃ����^�ʖڂɏ������Ă��������c�B
		invalidate labels;
	}

	// ���ǃ��x�����ЂƂL�^
	function incRecordLabel(label)
	{
//		labels[label] = (+labels[label]) + 1; // void�̏ꍇ��O.K.
//		needtosave = true;	// ���̊��ǃ��x���̓Z�[�u�K�v�ƃ}�[�N
// Ver 0.2 �ȑO�͏��s���������A�v���̂ق��Z�[�u���d���̂ŁA���ǂ̓J�E���g��
// �ۑ����Ȃ��悤�ɕύX�����B����ł��s�s���͂Ȃ��͂��B
		if (labels[label] === void) {
			labels[label] = 1;
			needtosave = true;
		}
	}

	// ���ǂ��ǂ���
	function isRead(label)
	{
		return +labels[label];	// void �Ȃ�� +void = 0 ���Ԃ�
	}

	// ���ǃ��x���t�@�C���Ƀf�[�^����������
	function store()
	{
		if (needtosave)
			(Dictionary.saveStruct incontextof labels)(recordfile, w.saveDataMode);
		needtosave = false;	// �������ݒ���̓Z�[�u�s�v�ƃ}�[�N
	}

	// ���ǃ��x���t�@�C������f�[�^��ǂݍ���
	function restore()
	{
		if (!Storages.isExistentStorage(recordfile))
			labels = %[];
		else
			labels = Scripts.evalStorage(recordfile);
		needtosave = false;	// �ǂݍ��ݒ���̓Z�[�u�s�v�ƃ}�[�N
	}
}


// �V�i���I�t�@�C���Q�ɑ΂�����ǃ��x���Ǘ��N���X
class highSpeedLabeler extends KAGPlugin
{
	var w;
	var org_setRecordLabel;
	var org_incRecordLabel;
	var org_getCurrentRead;

	// �R���X�g���N�^
	function highSpeedLabeler(window)
	{
		w = window;
		super.KAGPlugin(...);

		// �I���W�i�����ꉞ�ۑ����Ă���
		org_setRecordLabel = w.setRecordLabel;
		org_incRecordLabel = w.incRecordLabel;
		org_getCurrentRead = w.getCurrentRead;

		// ���̃N���X�Œ�`�����֐���kag�̂�����㏑��
		w.setRecordLabel   = setRecordLabel   incontextof w;
		w.incRecordLabel   = incRecordLabel   incontextof w;
		w.getCurrentRead   = getCurrentRead   incontextof w;
		w.initRecordLabels = initRecordLabels incontextof w;

		// kag�ɐV���������o��ǉ�
		// delete w.currentRecordName;�g��Ȃ����ǎc���Ȃ��ƃG���[��
		w.currentRecordStorage = "";	// ���݂̃V�i���I�t�@�C����
		w.currentRecordLabel   = "";	// ���݂̃��x����
		w.recordfiles = %[];		// ���ǃ��x���t�@�C���z��

		// ������UUID���g�����ǂ����̔��f�B�ȉ���s���R�����g�A�E�g
		// ���ăZ�[�u�f�[�^���폜���邱�ƂŁAUUID���g��Ȃ��Ȃ�B
		w.sflags.highSpeedLabeler_uuidhash = %[] if (w.sflags.highSpeedLabeler_uuidhash === void);
	}

	// �f�X�g���N�^�c�܂��g��Ȃ����낤���ǈꉞ
	function finalize()
	{
		var ary = [];
		ary.assign(w.recordfiles);
		for (var i = ary.count-2; i >= 0; i -= 2)
			invalidate ary[i+1];

		w.setRecordLabel = org_setRecordLabel;
		w.incRecordLabel = org_incRecordLabel;
		w.getCurrentRead = org_getCurrentRead;

		delete w.initRecordLabels;
		delete w.currentRecordStorage;
		delete w.currentRecordLabel;

		// kag����ǉ����������o���폜
		delete w.currentRecordStorage;
		delete w.currentRecordLabel;
		delete w.recordfiles;

		super.finalize();
	}

	// ���݂̃X�g���[�W�E���x���Ŋ��ǃ��x���ݒ�(kag��setRecordLabel�㏑��)
	function setRecordLabel(storage, label) // incontextof kag;
	{
		if (!autoRecordPageShowing)
			return;
		if (label != '') {
			if(label[0] == '*') label = label.substring(1);
			if(label[1] == '-') return; // ���[�J�����x��
		}
		storage = Storages.chopStorageExt(Storages.extractStorageName(storage));
		if (storage != "" && recordfiles[storage] === void)
			// ���ǃ��x���\���̂�����or����������ĂȂ�����
			recordfiles[storage] = initRecordLabels(storage);

		// ������ɓ��������Astorage/label��ʂɊǗ�
		currentRecordStorage = storage;
		currentRecordLabel   = label;
		// �����ł͂܂����x���͋L�^���Ȃ��B�L�^����̂�incRecordLabel()
	}

	// ���ǃ��x�����L�^����(kag��incRecordLabel���㏑��)
	function incRecordLabel(count) // incontextof kag;
	{
		// �K�v�Ȃ���� return
		if (!autoRecordPageShowing || 
		    currentRecordStorage == "" || currentRecordLabel == "")
			return;

		if (count) {
			// �����܂łŕK��recordfiles[currentRecordStorage]�͑��݂���
			recordfiles[currentRecordStorage].incRecordLabel(currentRecordLabel);
		}
		currentRecordStorage = "";
		currentRecordLabel   = "";
		// �����ł̓I���W�i���͌ĂׂȂ�
	}

	// ���݂̃��x�������ǔ���
	function getCurrentRead() // incontextof kag;
	{
		// �K�v�Ȃ���� false
		if (!autoRecordPageShowing ||
		    currentRecordStorage == "" || currentRecordLabel == "" ||
		    recordfiles[currentRecordStorage] === void)
			return false;
		return recordfiles[currentRecordStorage].isRead(currentRecordLabel);
		// �����ł̓I���W�i���͌ĂׂȂ�
	}

	// �V�X�e���ϐ����Z�[�u����Ƃ�
	function onSaveSystemVariables()
	{
		var ary = [];
		ary.assign(w.recordfiles);
		for (var i = ary.count-1; i >= 0; i -= 2)
			ary[i].store();
	}

	// �V�������ǃt�@�C���C���X�^���X���쐬
	// ���ɑ��݂��Ă�����̂Əd�����Ă���ꍇ�̓G���[�|�b�v�A�b�v���o��
	function initRecordLabels(storage) // incontextof
	{
		var uuidhash = sflags.highSpeedLabeler_uuidhash;
		if (uuidhash === void)
			return new recordLabels(this, storage);
		var uuid = uuidhash[storage];	// �����Ȃ����UUID�w��
		if (uuid === void) {
			var ary = [];
			ary.assign(uuidhash);
			do { // UUID ���d�����Ȃ��Ȃ�܂Ŗ������[�v
				uuid = System.createUUID();
			} while (ary.find(uuid) >= 0);
			uuidhash[storage] = uuid; // �V�K�Ȃ�V�KUUID��ݒ�
		}
		return new recordLabels(this, storage, uuid);
	}
}


// �C���X�^���X�쐬
global.highspeedlabeler_obj = new highSpeedLabeler(kag);
kag.addPlugin(global.highspeedlabeler_obj);

[endscript]

[return]

