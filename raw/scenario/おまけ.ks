*���܂�
*omake_menu_loop
; �S���b�Z�[�W���C���\��ʁA�S�O�i���C���\��ʂ��\���ɂ���i�ڍׂ́u�E�N���b�N�T�u���[�`������낤�v���Q�Ɓj
[call storage="rclick_subroutine.ks" target=*sub_layernoshow]
;�^�C�g����ʂŃO���t�B�J���{�^����\�����郁�b�Z�[�W���C����
[eval exp="tf.title_message = 'message1'"]
;���b�Z�[�W���C����
[layopt layer=message0 page=fore visible=false]
;�L�^����\���o���Ȃ��l��
[NG]
;�E�N���b�N�𖳌��ɂ���
[rclick enabled=false]
; �^�C�g�����j���[��ʂ�w�i���C���\��ʂɓǂݍ���
[layopt layer=message0  page=back visible=false]
[image layer=base page=fore storage="title.jpg"]
*omake_menu_loop2
;�^�C�g����ʕ\��
[freeimage layer=base page=back]
[trans method=crossfade time=500]
[wt]
[image layer=base page=back storage="omake.jpg"]
[trans method=crossfade time=1000]
[wt]
[ct]
[backlay]

; �^�C�g�����j���[��ʗp���b�Z�[�W���C���̊e��ݒ�
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]
; �m�[�E�F�C�g
[delay speed=nowait]

; ���e���j���[����߂��Ă��郉�x��
*omake_menu_loop
; ���b�Z�[�W���C�����N���A
;���܂����j���[�\��
[er]
; �O���t�B�J���{�^���u�O���t�B�b�N�{���v�`�u�Q�[�����I������v��z�u
[locate x=165 y=120]
[button graphic="album.png" target=*title_menu_album hint="�A���o��"]
[locate x=180 y=180]
[button graphic="endlist.png"target=*END_menu hint="�G���f�B���O���X�g"]
[locate x=165 y=240]
[if eval exp="sf.���܂�==true"]
[button graphic="omaken.png"  hint="web�֔�т܂�" exp="System.shellExecute('http://sukitoki.zouri.jp/ScoNtoLove.html')"]
[endif]
; �u�߂�v�{�^����\��
[locate x=10 y=500]
[button graphic="common_back_bt.png" target="*album_return" hint="�߂�"]
[s]



;
; �u�߂�v���I�����ꂽ
*album_return
[freeimage layer=base page=back]
[trans method=crossfade time=300]
[wt]
[jump storage="first.ks" target="*title_menu"]



*title_menu_album
; �A���o����ʂ�
[jump storage="album.ks" target=*album_menu]

*END_menu
;���b�Z�[�W���C����
[layopt layer=message0 page=fore visible=false]
;�L�^����\���o���Ȃ��l��
[NG]
;�X�`���\��
[freeimage layer=0]
[image storage=endlist.jpg layer=base visible=true page=back]
[trans method=crossfade time=500]
[wt]
; ���b�Z�[�W���C���P�̓f�t�H���g�Ŕ�\���Ȃ̂ŁA�\������
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
[locate x=300 y=150]
[font size=20]
�yEND 1�z
[locate x=300 y=180]
[if eval exp="sf.END1==true"]
���͂ގ�
[endif]
[locate x=300 y=210]
�yEND 2�z
[if eval exp="sf.END2==true"]
[locate x=300 y=240]
��������
[endif]
[locate x=300 y=270]
�yEND 3�z
[if eval exp="sf.END3==true"]
[locate x=300 y=300]
�H�̉Ԍ��t
[endif]
[locate x=300 y=330]
�yEND 4�z
[if eval exp="sf.END4==true"]
[locate x=300 y=360]
�X�L�g�L���L�g�L�X
[endif]
[locate x=300 y=390]
�yEND 5�z
[if eval exp="sf.END5==true"]
[locate x=300 y=420]
�^���̗��l
[endif]
[resetfont]
;---
; �u�߂�v�{�^����\��
[locate x=10 y=500]
[button graphic="common_back_bt.png" target="*ENDmenu_return" hint="�߂�"]
[s]



;
; �u�߂�v���I�����ꂽ
*ENDmenu_return
; �^�C�g����ʂŃO���t�B�J���{�^����\�����郁�b�Z�[�W���C����
[eval exp="tf.title_message = 'message1'"]
;���b�Z�[�W���C����
[layopt layer=message0 page=fore visible=false]
;�L�^����\���o���Ȃ��l��
[NG]
;; �E�N���b�N�𖳌��ɂ���
;[rclick enabled=false]
[freeimage layer=base page=back]
[trans method=crossfade time=300]
[wt]
[jump target="*omake_menu_loop2"]

*atogaki_menu
;�X�`���\��
[freeimage layer=0]
[image storage=atogaki.jpg layer=base visible=true page=back]
[trans method=crossfade time=800]
[wt]
@waitclick
@jump target="*omake_menu_loop2"


