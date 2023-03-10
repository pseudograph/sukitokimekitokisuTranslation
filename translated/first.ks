[call storage="ExtSystemButton.ks"]
[call storage="highSpeedLabeler.ks"]
[call storage="ExtHistoryLayer.ks"]
[call storage="ExtStaffroll.ks"]
[call storage="FaceWindowPlugin.ks"]
[call storage="mac.ks"]
[call storage="sakura.ks"]
[call storage="Krclick.ks"]
[call storage="oldMovie.ks"]
[call storage="HeartBeatPlugin.ks"]
	;以下を実行すると、右クリックルーチンが利用できる。
	;[rclick call storage="Krclick.ks" target="*krclick_config" enabled=true]
	;停止するには以下を実行。
	;[rclick call=false jump=false enabled=false]
[layopt layer=message0 page=fore visible=false]
[NG]

[背景表示 storage="presents"]
[クロス]
[playse storage="ロゴ"]
[wait time=3000]
[背景表示 storage="attention"]
[クロス]
[wait time=3000]
[背景表示]
[クロス]
[playbgm storage="gts"]


*title_menu|タイトルメニュー
[startanchor]
[NG]
;0,5秒待ち
[wait time=500]
[背景表示 storage="title"]
[クロス]


[backlay]
[position layer=message0 page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer=message0 page=fore]

*top
[locate x=568 y=78]
[button graphic="始めから" target="*start" hint="ゲームをはじめる"]
[locate x=568 y=130]
[button graphic="続きから" exp="kag.callExtraConductor('Krclick.ks','*krclick_load')" hint="つづきからはじめる"]
[locate x=568 y=182]
[button graphic="環境設定" exp="kag.callExtraConductor('Krclick.ks','*krclick_config')" hint="環境設定"]
[locate x=568 y=234]
[button graphic="omake.png"  target="*title_menu_omake" hint="おまけ"]
[locate x=568 y=286]
[button graphic="終了" target="*END" hint="ばいばい"]
[s]
; 「おまけ」が選択された
*title_menu_omake
[jump storage="おまけ.ks"]
*END
[eval exp="kag.closeByScript(%[ask:true])"]
[jump target=*top]


*start
;BGMを停止
[fadeoutbgm time=2000]
[jump  storage="シナリオ1.ks"]


