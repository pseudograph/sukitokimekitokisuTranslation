[call storage="ExtSystemButton.ks"]
[call storage="highSpeedLabeler.ks"]
[call storage="ExtHistoryLayer.ks"]
;�X�^�b�t���[�����ȒP�Ɏ������邽�߂�KAG�v���O�C��
[call storage="ExtStaffroll.ks"]
;����E�B���h�E�\���v���O�C��
[call storage="FaceWindowPlugin.ks"]
;macro
[call storage="mac.ks"]
;������
[call storage="sakura.ks"]
;�E�N���b�N
[call storage="Krclick.ks"]
;�Â��f�����
[call storage="oldMovie.ks"]
;�S���̌ۓ�
[call storage="HeartBeatPlugin.ks"]
	;�ȉ������s����ƁA�E�N���b�N���[�`�������p�ł���B
	;[rclick call storage="Krclick.ks" target="*krclick_config" enabled=true]
	;��~����ɂ͈ȉ������s�B
	;[rclick call=false jump=false enabled=false]
;���b�Z�[�W���C����
[layopt layer=message0 page=fore visible=false]
;�L�^����\���o���Ȃ��l��
[NG]

;���T�[�N�����Ƃ��\���i��������j------------------------------
[�w�i�\�� storage="presents"]
[�N���X]
;���ʉ�
[playse storage="���S"]
;3�b�҂�
[wait time=3000]
;�u���b�N�A�E�g
[�w�i�\�� storage="attention"]
[�N���X]
;3�b�҂�
[wait time=3000]
[�w�i�\��]
[�N���X]
;�^�C�g�����y
[playbgm storage="gts"]
;���T�[�N�����Ƃ��\���i�����܂Łj------------------------------


;���߂ɖ߂�p�̃��x��
*title_menu|�^�C�g�����j���[
[startanchor]
;�L�^����\���o���Ȃ��l��
[NG]
;���^�C�g���i��������j-----------------------------------------------
;0,5�b�҂�
[wait time=500]
;�^�C�g����ʕ\��
[�w�i�\�� storage="title"]
[�N���X]


;�^�C�g���p���b�Z�[�W���C���ݒ�
[backlay]
[position layer=message0 page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer=message0 page=fore]

*top
;�^�C�g�����j���[�\��
[locate x=568 y=78]
[button graphic="�n�߂���" target="*start" hint="�Q�[�����͂��߂�"]
[locate x=568 y=130]
[button graphic="��������" exp="kag.callExtraConductor('Krclick.ks','*krclick_load')" hint="�Â�����͂��߂�"]
[locate x=568 y=182]
[button graphic="���ݒ�" exp="kag.callExtraConductor('Krclick.ks','*krclick_config')" hint="���ݒ�"]
[locate x=568 y=234]
[button graphic="omake.png"  target="*title_menu_omake" hint="���܂�"]
[locate x=568 y=286]
[button graphic="�I��" target="*END" hint="�΂��΂�"]
[s]
;
; �u���܂��v���I�����ꂽ
;
*title_menu_omake
[jump storage="���܂�.ks"]
;�I��
*END
[eval exp="kag.closeByScript(%[ask:true])"]
;�L�����Z���������Ɂ@*top�@�ɃW�����v
[jump target=*top]

;���^�C�g���i�����܂Łj---------------------------------------

;�n�߂���
*start
;�{�҂ɃW�����v
;BGM���~
[fadeoutbgm time=2000]
[jump  storage="�V�i���I1.ks"]


