*album_menu
[eval exp="f.�R���v=0"]
[eval exp="f.���T=0"]
; ���b�Z�[�W�����ւ̏o�͂��~���A�\���s�ɂ���
[history output=false enabled=false]
; �x�ɂ͂��߂Ȃ�����
[disablestore store=true]
; �E�N���b�N�𖳌��ɂ���
[rclick enabled=false]
;�X�`���\��
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; ���b�Z�[�W���C���P�̓f�t�H���g�Ŕ�\���Ȃ̂ŁA�\������
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;�X�`���P
@if exp="sf.still_1==1"
[locate x=150 y=72]
[button graphic="01_s.png" target="*01"]
@endif
;----
;�X�`���Q
@if exp="sf.still_2==1"
[locate x=423 y=72]
[button graphic="al_b.png" target="*02"]
@endif
;----
;�X�`���R
@if exp="sf.still_3b==1"
[locate x=150 y=247]
[button graphic="al_c.png" target="*03"]
@endif
;----
;�X�`��11
@if exp="sf.still_11==1"
[locate x=423 y=247]
[button graphic="al_m.png" target="*11"]
@endif
;----
;�X�`��4
@if exp="sf.still_4==1"
[locate x=150 y=420]
[button graphic="al_d.png" target="*04"]
@endif
;----
;�X�`��5
@if exp="sf.still_5==1"
[locate x=423 y=420]
[button graphic="al_e.png" target="*05"]
@endif
;----

[if eval exp="sf.�ΌQ�v���t==true"]
[eval exp="f.���T=f.���T+1"]
[endif]
[jump target=*tokuten1 cond="f.���T>=1"]
; �u�߂���v�{�^����\��
;----
[locate x=735 y=30]
[button graphic="next.png" target="*2" hint="���̃y�[�W��" ]
; �u����v�{�^����\��
;----
[locate x=740 y=230]
[button graphic="return_1.png" storage="���܂�.ks" target="*omake_menu_loop2" hint="�A���o�������" ]
[s]

*tokuten1
[eval exp="sf.tokuten1=true"]
;�R���v
[locate x=423 y=420]\
[if eval exp="sf.tokuten1==true"]
[button graphic="h-1s.png" target="*tc"]
[endif]
; �u�߂���v�{�^����\��
[locate x=735 y=30]
[button graphic="next.png" target="*2" hint="���̃y�[�W��" ]
; �u����v�{�^����\��
[locate x=740 y=230]
[button graphic="return_1.png" storage="���܂�.ks" target="*omake_menu_loop2" hint="�A���o�������" ]
[s]




*01
;�X�`���\��
[freeimage layer=0]
[image storage=still_1.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*02
;�X�`���\��
[freeimage layer=0]
[image storage=still_2.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*03
;�X�`���\��
[freeimage layer=0]
[image storage=still_3.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_3b.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*11
;�X�`���\��
[freeimage layer=0]
[image storage=still_11.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_11b.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*04
;�X�`���\��
[freeimage layer=0]
[image storage=still_4.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*05
;�X�`���\��
[freeimage layer=0]
[image storage=still_5.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"


*2
[eval exp="f.�R���v=0"]
[eval exp="f.���T=0"]
; ���b�Z�[�W�����ւ̏o�͂��~���A�\���s�ɂ���
[history output=false enabled=false]
; �x�ɂ͂��߂Ȃ�����
[disablestore store=true]
; �E�N���b�N�𖳌��ɂ���
[rclick enabled=false]
;�X�`���\��
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; ���b�Z�[�W���C���P�̓f�t�H���g�Ŕ�\���Ȃ̂ŁA�\������
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;�X�`��6
@if exp="sf.still_6==1"
[locate x=150 y=72]
[button graphic="al_f.png" target="*06"]
@endif
;----
;�X�`���V
@if exp="sf.still_7==1"
[locate x=423 y=72]
[button graphic="al_g.png" target="*07"]
@endif
;----
;�X�`���W
@if exp="sf.still_8f==1"
[locate x=150 y=247]
[button graphic="al_h.png" target="*08"]
@endif
;----
;�X�`���X
@if exp="sf.still_9==1"
[locate x=423 y=247]
[button graphic="al_i.png" target="*09"]
@endif
;----
;�X�`��kiss
@if exp="sf.still_kiss==1"
[locate x=150 y=420]
[button graphic="al_n.png" target="*kiss"]
@endif
;�X�`���P�O
@if exp="sf.still_10==1"
[locate x=423 y=420]
[button graphic="al_j.png" target="*10"]
@endif
;----

;���܂��p_���^�C�g���G
;@if exp="sf.END5==1"
;[locate x=423 y=420]
;[button graphic="���܂��p_���^�C�g���G�T���l" target="*���܂��p_���^�C�g���G"]
;@endif

[if eval exp="sf.�ΌQ�v���t2==true"]
[eval exp="f.���T=f.���T+1"]
[endif]
; �u�߂���v�{�^����\��
[locate x=735 y=30]
[button graphic="next.png" target="*3" hint="���̃y�[�W��" ]
[jump target=*tokuten2 cond="f.���T>=1"]
; �u�߂�v�{�^����\��
[locate x=730 y=125]
[button graphic="return_0.png" target="*album_menu" hint="�O�̃y�[�W��" ]
; �u����v�{�^����\��
[locate x=740 y=230]
[button graphic="return_1.png" storage="���܂�.ks" target="*omake_menu_loop2" hint="�A���o�������" ]
[s]

*tokuten2
[eval exp="sf.tokuten1=true"]
;�R���v
[locate x=423 y=420]
[if eval exp="sf.tokuten1==true"]
[button graphic="h-1s.png" target="*tc"]
[endif]
; �u�߂���v�{�^����\��
[locate x=735 y=30]
[button graphic="next.png" target="*3" hint="���̃y�[�W��" ]
; �u�߂�v�{�^����\��
[locate x=730 y=125]
[button graphic="return_0.png" target="*album_menu" hint="�O�̃y�[�W��" ]
; �u����v�{�^����\��
[locate x=740 y=230]
[button graphic="return_1.png" storage="���܂�.ks" target="*omake_menu_loop2" hint="�A���o�������" ]
[s]

*06
;�X�`���\��
[freeimage layer=0]
[image storage=still_6.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*07
;�X�`���\��
[freeimage layer=0]
[image storage=still_7.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_7b.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*08
;�X�`���\��
[freeimage layer=0]
[image storage=still_8f.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_8e.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"


*09
;�X�`���\��
[freeimage layer=0]
[image storage=still_9.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_9b.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*kiss
;�X�`���\��
[freeimage layer=0]
[image storage=still_kiss.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_kiss����.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_kiss�����.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*10
;�X�`���\��
[freeimage layer=0]
[image storage=still_10.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_10b.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"



;*���܂��p_���^�C�g���G
;;�X�`���\��
;[freeimage layer=0]
;[image storage=���܂��p_���^�C�g���G layer=base visible=true page=back]
;[trans method=crossfade time=1000]
;[wt]
;@waitclick
;@jump target="*2"

*3
[eval exp="f.�R���v=0"]
[eval exp="f.���T=0"]
; ���b�Z�[�W�����ւ̏o�͂��~���A�\���s�ɂ���
[history output=false enabled=false]
; �x�ɂ͂��߂Ȃ�����
[disablestore store=true]
; �E�N���b�N�𖳌��ɂ���
[rclick enabled=false]
;�X�`���\��
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; ���b�Z�[�W���C���P�̓f�t�H���g�Ŕ�\���Ȃ̂ŁA�\������
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;�A�C�L���b�`�P
@if exp="sf.END5==1"
[locate x=150 y=72]
[button graphic="���܂��p_�A�C�L���b�`1" target="*���܂��p_�A�C�L���b�`1"]
@endif
;----
;�A�C�L���b�`2
@if exp="sf.END5==1"
[locate x=423 y=72]
[button graphic="���܂��p_�A�C�L���b�`2" target="*���܂��p_�A�C�L���b�`2"]
@endif
;----
;�A�C�L���b�`3
@if exp="sf.END5==1"
[locate x=150 y=247]
[button graphic="���܂��p_�A�C�L���b�`3" target="*���܂��p_�A�C�L���b�`3"]
@endif
;----
;�A�C�L���b�`4
@if exp="sf.END5==1"
[locate x=423 y=247]
[button graphic="���܂��p_�A�C�L���b�`4" target="*���܂��p_�A�C�L���b�`4"]
@endif
;----
;�A�C�L���b�`5
@if exp="sf.END5==1"
[locate x=150 y=420]
[button graphic="���܂��p_�A�C�L���b�`5" target="*���܂��p_�A�C�L���b�`5"]
@endif
;----
;���Ƃ���
@if exp="sf.END5==1"
[locate x=423 y=420]
[button graphic="al_ato" target="*���Ƃ���"]
@endif
;----
[if eval exp="sf.�ΌQ�v���t2==true"]
[eval exp="f.���T=f.���T+1"]
[endif]
[jump target=*tokuten2 cond="f.���T>=1"]
; �u�߂�v�{�^����\��
[locate x=730 y=125]
[button graphic="return_0.png" target="*2" hint="�O�̃y�[�W��" ]
; �u����v�{�^����\��
[locate x=740 y=230]
[button graphic="return_1.png" storage="���܂�.ks" target="*omake_menu_loop2" hint="�A���o�������" ]
[s]

*���܂��p_�A�C�L���b�`1
;�X�`���\��
[freeimage layer=0]
[image storage=i_1.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*���܂��p_�A�C�L���b�`2
;�X�`���\��
[freeimage layer=0]
[image storage=i_2.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*���܂��p_�A�C�L���b�`3
;�X�`���\��
[freeimage layer=0]
[image storage=i_3.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*���܂��p_�A�C�L���b�`4
;�X�`���\��
[freeimage layer=0]
[image storage=i_4.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*���܂��p_�A�C�L���b�`5
;�X�`���\��
[freeimage layer=0]
[image storage=i_5.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"
;

*���Ƃ���
;�X�`���\��
[freeimage layer=0]
[image storage=atogaki.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"
;
