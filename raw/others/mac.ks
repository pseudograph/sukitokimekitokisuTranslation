;�����Z�[�u�g�p��
[macro name="OK"]
[disablestore store=false restore=false]
[history output=true enabled=true]
[eval exp="f.noStoreCurrentMessage = false"]
[delay speed=user]
[endmacro]


;�����Z�[�u�g�p�s��
[macro name="NG"]
[history output=false enabled=false]
[disablestore store=true restore=false]
[rclick enabled=false]
[eval exp="f.noStoreCurrentMessage = true"]
[endmacro]


; ���O�\���p�}�N��
;*********************************************************************


;�����j���[�֌W�i��������j------------------------------

; [���j���[]
[macro name="���j���["]
[sysbutton graphic="button_skip" top=552 left=540 exp="SysBtn_onSkipButtonClick()" hint="���ǃX�L�b�v"]
[sysbutton graphic="button_auto" top=552 left=575 exp="SysBtn_onAutoReadButtonClick()" hint="�����I�ɓǂݐi��"]
[sysbutton graphic="button_x" top=552 left=610 exp="SysBtn_onTextHideButtonClick()" hint="���b�Z�[�W������"]
[sysbutton graphic="button_history" top=552 left=645 exp="SysBtn_onHistoryButtonClick()" hint="����"]
[sysbutton graphic="button_config" top=552 left=680 exp="kag.callExtraConductor('Krclick.ks','*krclick_config')" hint="���ݒ�"]
[sysbutton graphic="button_load" top=552 left=715 exp="kag.callExtraConductor('Krclick.ks','*krclick_load')" hint="���[�h"]
[sysbutton graphic="button_save" top=552 left=750 exp="kag.callExtraConductor('Krclick.ks','*krclick_save')" hint="�Z�[�u"]
[endmacro]


; [���j���[��]
[macro name="���j���[��"]
[sysbutton_erase]
[endmacro]


;�����j���[�֌W�i�����܂Łj------------------------------



;���b�Z�[�W���C��0�E1���j���[��
;[�摜�O]
[macro name="�摜�O"]
[layopt layer=message0 page=fore visible=false]
[sysbutton_erase]
[endmacro]


;���b�Z�[�W���C��0�E1���j���[�\��
;[�摜��]
[macro name="�摜��"]
[layopt layer=message0 page=fore visible=true]
[���j���[]
[endmacro]



;���摜�֌W�i��������j------------------------------

;���̉Ԃт�g�����W�V����
[macro name=sakura]
[clickskip enabled=false cond="kag.skipMode<=1"]
[image storage="pink" layer=base page=back]
[trans time=%time method=universal rule="���̉Ԃт�1" vague=50]
[wt]
[image storage=%strage layer=base page=back]
[trans time=%time method=universal rule="���̉Ԃт�2" vague=50]
[wt]
[clickskip enabled=true]
[endmacro]

;�ʏ�}�E�X�N���b�N�ŃX�L�b�v����Ȃ����A�X�L�b�v��Ԃł͔�΂����
;[wt2]
[macro name=wt2]
[wt canskip=false cond="kag.skipMode<=1"]
[wt]
[endmacro]


;[�u���b�N�A�E�g time="" ]
[macro name="�u���b�N�A�E�g"]
[sysbutton_erase]
[stoptrans]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer="0" page="back" visible="false"]
[layopt layer="1" page="back" visible="false"]
[layopt layer="2" page="back" visible="false"]
[image storage="�S��" layer=base page=back]
[trans time="%time|3000" method=crossfade]
[wt2]
[endmacro]


;[�w�i�\�� storage="" rceil="" gceil="" bceil=""]
;���̌�[�N���X]��[�g����]�ŕ\��
[macro name="�w�i�\��"]
[stoptrans]
[backlay]
[image storage="%storage|�S��" page="back" layer="base" rceil="%r|255" gceil="%g|255" bceil="%b|255"]
[endmacro]



;[���C���\�� layer="" file="" left="" top="" opacity=""]
;�w�i�Ɠ����ɕ\������p�i�w�i�\���̌�ɓ����j
[macro name="���C���\��"]
[image layer="%layer|0" page=back storage="%file" visible=true left="%left|0" top="%top|0" opacity="%op|255"]
[endmacro]


;[���C���� layer=""]
;�w�i�Ɠ����ɏ����p�i�w�i�\���̌�ɓ����j
[macro name="���C����"]
[layopt layer="%layer|0" page=back visible=false]
[endmacro]



;[�g���� rule="" time="" vague=""]
;�g�����W�V�����ŕ\���i�؂�ւ��j
[macro name="�g����"]
[trans method=universal rule="%rule|������" time="%time|1500" vague="%vague|70" ]
[wt2]
[endmacro]

;[�g�����Q]
;��{�g�����W�V�����ŕ\���i�؂�ւ��j
[macro name="�g�����Q"]
[trans method=crossfade time=1000]
[wt]
[endmacro]

;[�N���X time=""]
;�N���X�t�F�[�h�ŕ\���i�؂�ւ��j
[macro name="�N���X"]
[trans method=crossfade time="%time|1000"]
[wt2]
[endmacro]


;[���G�\�� layer="" file="" pos="" opacity="" rceil="" gceil="" bceil=""]
;���̌�[�N���X]��[�g����]�ŕ\��
[macro name="���G�\��"]
[stoptrans]
[backlay]
[image layer="%layer|0" page=back storage="%file" visible=true pos="%pos|c" opacity="%opacity|255" rceil="%r|255" gceil="%g|255" bceil="%b|255"]
[endmacro]


;[���G�� layer=""]
;���̌�[�N���X]��[�g����]�ŏ�����
[macro name="���G��"]
[stoptrans]
[backlay]
[layopt layer="%layer|0" page=back visible=false]
[endmacro]

;��摜�\���E�B���h�E�֌W

; ��摜�E�B���h�E(=FaceWindowPlugin�Ŏg�p����)
[eval exp="sf.��摜�E�B���h�E     = 3"]

;����E�B���h�E��\������
[macro name="facewin_on"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=true]
[facewin_clear * backlay=false]
[endmacro]


;����E�B���h�E���\���ɂ���
[macro name="facewin_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=false]
[facewin_clear * backlay=false]
[endmacro]


;����E�B���h�E�Ɋ�摜��\������
;[facewin_disp]���g�p���邱��

@macro name="cgv"
[image * layer=base visible=true page=back]
[eval exp="sf[mp.storage]=1"]
[trans method=crossfade time=1500]
[wt]
@endmacro
;---�����܂�


;���摜�֌W�i�����܂Łj------------------------------


;�����b�Z�[�W�֌W�i��������j------------------------------


;[���b�Z�g]
[macro name="���b�Z�g"]
[backlay]
[position layer=message0 page=back left=30 top=394 width="800" height="188" frame="serifuwaku" color=0x999999 opacity=180 marginl=215 margint=20 marginr=8 marginb=10 draggable=false visible=true]
[trans method=crossfade time=%time|500]
[wt]
;[current layer=message0 page=fore]
[endmacro]


;[���b�Z�o]
[macro name="���b�Z�o"]
[backlay]
[position layer=message0 page=back left=30 top=394 width="800" height="188" frame="serifuwaku" color=0x999999 opacity=50 marginl=50 margint=20 marginr=8 marginb=10 draggable=false visible=true]
[trans method=crossfade time=%time|500]
[wt]
[endmacro]

;[���b�Z��]
[macro name="���b�Z��"]
[backlay]
[layopt layer=message0 page=back visible=false]
[trans method=crossfade time=%time|500]
[wt]
[endmacro]


;���䎌�p�i��������j----------------------------------------

;[�� n=""]
;[macro name="��"]
;[backlay]
;[layopt layer=message0  page=back  visible=true]
;[current layer=message0 page=fore]
;[delay speed=nowait]
;[locate x=0 y=-5][ch text="%n|�H�H�H"][delay speed=user][r]�u[indent]
;[endmacro]


;[��]
[macro name="��"]
�v[endindent]
[hr][p][cm]
[endmacro]



;���䎌�p�i�����܂Łj----------------------------------------

;---�}�N���hsentaku�h�ݒ�
[macro name=sentaku]
;---���샌�C�������C���P��
[current layer=message1  page=fore]
;---���C���P��\��
[layopt layer=message1 visible=true]
;---�\���ʒu�ݒ�
[position layer=message1  page=fore  opacity=0  left=0 top=0 width="&kag.scWidth" height="&kag.scHeight"  frame=""  marginl=0 margint=0 marginr=0 marginb=0]
;---�I��������C�ɕ\��
[nowait]
[endmacro]
;---�����܂�

;---�}�N���hendchoice�h�ݒ�
[macro name=endchoice]
[endnowait]
;---���C���P���N���A
[er]
;---���C���P���\��
[layopt layer=message1 visible=false]
;---���샌�C�������C���O��
[current layer=message0]
;---���C��0���N���A
[er]
[endmacro]
;---�����܂�

;���I��p�i��������j----------------------------------------

;[�I text=""]
;[macro name="�I"]
;[backlay]
;[position layer=message0 page=fore left=0 top=315 width="640" height="150" frame="" color=0x999999 opacity=180 marginl=20 margint=0 marginr=0 marginb=0 draggable=false visible=true]
;[current layer=message0 page=fore]
;[delay speed=nowait]
;[style align=center]
;[locate x=0 y=-5][ch text="%text|�@"][r]
;[style align=left][delay speed=user]
;[endmacro]


;[��]
;[macro name="��"]
;[hr][hr][s]
;[endmacro]

;���I��p�i�����܂Łj----------------------------------------



;���g�����p�i��������j----------------------------------------

;[��O������]
[macro name="��O������"]
[���b�Z�g]
[endmacro]

;[�g����]
[macro name="�g����"]
[���b�Z�o]
[endmacro]


;[����]
[macro name="����"]
[hr][p][cm]
[endmacro]

;���g�����p�i�����܂Łj----------------------------------------


;[nl]�@�@���s�N���b�N�҂�
[macro name="nl"]
[l][r]
[endmacro]


;�����b�Z�[�W�֌W�i�����܂Łj------------------------------

[return]
