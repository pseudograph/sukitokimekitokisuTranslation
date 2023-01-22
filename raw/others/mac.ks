;履歴セーブ使用可
[macro name="OK"]
[disablestore store=false restore=false]
[history output=true enabled=true]
[eval exp="f.noStoreCurrentMessage = false"]
[delay speed=user]
[endmacro]


;履歴セーブ使用不可
[macro name="NG"]
[history output=false enabled=false]
[disablestore store=true restore=false]
[rclick enabled=false]
[eval exp="f.noStoreCurrentMessage = true"]
[endmacro]


; 名前表示用マクロ
;*********************************************************************


;↓メニュー関係（ここから）------------------------------

; [メニュー]
[macro name="メニュー"]
[sysbutton graphic="button_skip" top=552 left=540 exp="SysBtn_onSkipButtonClick()" hint="既読スキップ"]
[sysbutton graphic="button_auto" top=552 left=575 exp="SysBtn_onAutoReadButtonClick()" hint="自動的に読み進む"]
[sysbutton graphic="button_x" top=552 left=610 exp="SysBtn_onTextHideButtonClick()" hint="メッセージを消す"]
[sysbutton graphic="button_history" top=552 left=645 exp="SysBtn_onHistoryButtonClick()" hint="履歴"]
[sysbutton graphic="button_config" top=552 left=680 exp="kag.callExtraConductor('Krclick.ks','*krclick_config')" hint="環境設定"]
[sysbutton graphic="button_load" top=552 left=715 exp="kag.callExtraConductor('Krclick.ks','*krclick_load')" hint="ロード"]
[sysbutton graphic="button_save" top=552 left=750 exp="kag.callExtraConductor('Krclick.ks','*krclick_save')" hint="セーブ"]
[endmacro]


; [メニュー非]
[macro name="メニュー非"]
[sysbutton_erase]
[endmacro]


;↑メニュー関係（ここまで）------------------------------



;メッセージレイヤ0・1メニュー非
;[画像前]
[macro name="画像前"]
[layopt layer=message0 page=fore visible=false]
[sysbutton_erase]
[endmacro]


;メッセージレイヤ0・1メニュー表示
;[画像後]
[macro name="画像後"]
[layopt layer=message0 page=fore visible=true]
[メニュー]
[endmacro]



;↓画像関係（ここから）------------------------------

;桜の花びらトランジション
[macro name=sakura]
[clickskip enabled=false cond="kag.skipMode<=1"]
[image storage="pink" layer=base page=back]
[trans time=%time method=universal rule="桜の花びら1" vague=50]
[wt]
[image storage=%strage layer=base page=back]
[trans time=%time method=universal rule="桜の花びら2" vague=50]
[wt]
[clickskip enabled=true]
[endmacro]

;通常マウスクリックでスキップされないが、スキップ状態では飛ばされる
;[wt2]
[macro name=wt2]
[wt canskip=false cond="kag.skipMode<=1"]
[wt]
[endmacro]


;[ブラックアウト time="" ]
[macro name="ブラックアウト"]
[sysbutton_erase]
[stoptrans]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer="0" page="back" visible="false"]
[layopt layer="1" page="back" visible="false"]
[layopt layer="2" page="back" visible="false"]
[image storage="全黒" layer=base page=back]
[trans time="%time|3000" method=crossfade]
[wt2]
[endmacro]


;[背景表示 storage="" rceil="" gceil="" bceil=""]
;この後[クロス]か[トラン]で表示
[macro name="背景表示"]
[stoptrans]
[backlay]
[image storage="%storage|全黒" page="back" layer="base" rceil="%r|255" gceil="%g|255" bceil="%b|255"]
[endmacro]



;[レイヤ表示 layer="" file="" left="" top="" opacity=""]
;背景と同時に表示する用（背景表示の後に入れる）
[macro name="レイヤ表示"]
[image layer="%layer|0" page=back storage="%file" visible=true left="%left|0" top="%top|0" opacity="%op|255"]
[endmacro]


;[レイヤ消 layer=""]
;背景と同時に消す用（背景表示の後に入れる）
[macro name="レイヤ消"]
[layopt layer="%layer|0" page=back visible=false]
[endmacro]



;[トラン rule="" time="" vague=""]
;トランジションで表示（切り替え）
[macro name="トラン"]
[trans method=universal rule="%rule|左から" time="%time|1500" vague="%vague|70" ]
[wt2]
[endmacro]

;[トラン２]
;基本トランジションで表示（切り替え）
[macro name="トラン２"]
[trans method=crossfade time=1000]
[wt]
[endmacro]

;[クロス time=""]
;クロスフェードで表示（切り替え）
[macro name="クロス"]
[trans method=crossfade time="%time|1000"]
[wt2]
[endmacro]


;[立絵表示 layer="" file="" pos="" opacity="" rceil="" gceil="" bceil=""]
;この後[クロス]か[トラン]で表示
[macro name="立絵表示"]
[stoptrans]
[backlay]
[image layer="%layer|0" page=back storage="%file" visible=true pos="%pos|c" opacity="%opacity|255" rceil="%r|255" gceil="%g|255" bceil="%b|255"]
[endmacro]


;[立絵消 layer=""]
;この後[クロス]か[トラン]で消える
[macro name="立絵消"]
[stoptrans]
[backlay]
[layopt layer="%layer|0" page=back visible=false]
[endmacro]

;顔画像表示ウィンドウ関係

; 顔画像ウィンドウ(=FaceWindowPluginで使用する)
[eval exp="sf.顔画像ウィンドウ     = 3"]

;▼顔ウィンドウを表示する
[macro name="facewin_on"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=true]
[facewin_clear * backlay=false]
[endmacro]


;▼顔ウィンドウを非表示にする
[macro name="facewin_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=false]
[facewin_clear * backlay=false]
[endmacro]


;▼顔ウィンドウに顔画像を表示する
;[facewin_disp]を使用すること

@macro name="cgv"
[image * layer=base visible=true page=back]
[eval exp="sf[mp.storage]=1"]
[trans method=crossfade time=1500]
[wt]
@endmacro
;---ここまで


;↑画像関係（ここまで）------------------------------


;↓メッセージ関係（ここから）------------------------------


;[メッセ枠]
[macro name="メッセ枠"]
[backlay]
[position layer=message0 page=back left=30 top=394 width="800" height="188" frame="serifuwaku" color=0x999999 opacity=180 marginl=215 margint=20 marginr=8 marginb=10 draggable=false visible=true]
[trans method=crossfade time=%time|500]
[wt]
;[current layer=message0 page=fore]
[endmacro]


;[メッセ出]
[macro name="メッセ出"]
[backlay]
[position layer=message0 page=back left=30 top=394 width="800" height="188" frame="serifuwaku" color=0x999999 opacity=50 marginl=50 margint=20 marginr=8 marginb=10 draggable=false visible=true]
[trans method=crossfade time=%time|500]
[wt]
[endmacro]

;[メッセ消]
[macro name="メッセ消"]
[backlay]
[layopt layer=message0 page=back visible=false]
[trans method=crossfade time=%time|500]
[wt]
[endmacro]


;↓台詞用（ここから）----------------------------------------

;[台 n=""]
;[macro name="台"]
;[backlay]
;[layopt layer=message0  page=back  visible=true]
;[current layer=message0 page=fore]
;[delay speed=nowait]
;[locate x=0 y=-5][ch text="%n|？？？"][delay speed=user][r]「[indent]
;[endmacro]


;[詞]
[macro name="詞"]
」[endindent]
[hr][p][cm]
[endmacro]



;↓台詞用（ここまで）----------------------------------------

;---マクロ”sentaku”設定
[macro name=sentaku]
;---操作レイヤをレイヤ１に
[current layer=message1  page=fore]
;---レイヤ１を表示
[layopt layer=message1 visible=true]
;---表示位置設定
[position layer=message1  page=fore  opacity=0  left=0 top=0 width="&kag.scWidth" height="&kag.scHeight"  frame=""  marginl=0 margint=0 marginr=0 marginb=0]
;---選択肢を一気に表示
[nowait]
[endmacro]
;---ここまで

;---マクロ”endchoice”設定
[macro name=endchoice]
[endnowait]
;---レイヤ１をクリア
[er]
;---レイヤ１を非表示
[layopt layer=message1 visible=false]
;---操作レイヤをレイヤ０に
[current layer=message0]
;---レイヤ0をクリア
[er]
[endmacro]
;---ここまで

;↓選択用（ここから）----------------------------------------

;[選 text=""]
;[macro name="選"]
;[backlay]
;[position layer=message0 page=fore left=0 top=315 width="640" height="150" frame="" color=0x999999 opacity=180 marginl=20 margint=0 marginr=0 marginb=0 draggable=false visible=true]
;[current layer=message0 page=fore]
;[delay speed=nowait]
;[style align=center]
;[locate x=0 y=-5][ch text="%text|　"][r]
;[style align=left][delay speed=user]
;[endmacro]


;[択]
;[macro name="択"]
;[hr][hr][s]
;[endmacro]

;↑選択用（ここまで）----------------------------------------



;↓ト書き用（ここから）----------------------------------------

;[顔グラあり]
[macro name="顔グラあり"]
[メッセ枠]
[endmacro]

;[ト書き]
[macro name="ト書き"]
[メッセ出]
[endmacro]


;[改頁]
[macro name="改頁"]
[hr][p][cm]
[endmacro]

;↑ト書き用（ここまで）----------------------------------------


;[nl]　　改行クリック待ち
[macro name="nl"]
[l][r]
[endmacro]


;↑メッセージ関係（ここまで）------------------------------

[return]
