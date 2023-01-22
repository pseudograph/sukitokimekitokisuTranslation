[call storage="ExtSystemButton.ks"]
[call storage="highSpeedLabeler.ks"]
[call storage="ExtHistoryLayer.ks"]
;スタッフロールを簡単に実現するためのKAGプラグイン
[call storage="ExtStaffroll.ks"]
;▼顔ウィンドウ表示プラグイン
[call storage="FaceWindowPlugin.ks"]
;macro
[call storage="mac.ks"]
;桜吹雪
[call storage="sakura.ks"]
;右クリック
[call storage="Krclick.ks"]
;古い映画効果
[call storage="oldMovie.ks"]
;心臓の鼓動
[call storage="HeartBeatPlugin.ks"]
	;以下を実行すると、右クリックルーチンが利用できる。
	;[rclick call storage="Krclick.ks" target="*krclick_config" enabled=true]
	;停止するには以下を実行。
	;[rclick call=false jump=false enabled=false]
;メッセージレイヤ消
[layopt layer=message0 page=fore visible=false]
;記録履歴表示出来ない様に
[NG]

;↓サークル名とか表示（ここから）------------------------------
[背景表示 storage="presents"]
[クロス]
;効果音
[playse storage="ロゴ"]
;3秒待ち
[wait time=3000]
;ブラックアウト
[背景表示 storage="attention"]
[クロス]
;3秒待ち
[wait time=3000]
[背景表示]
[クロス]
;タイトル音楽
[playbgm storage="gts"]
;↑サークル名とか表示（ここまで）------------------------------


;初めに戻る用のラベル
*title_menu|タイトルメニュー
[startanchor]
;記録履歴表示出来ない様に
[NG]
;↓タイトル（ここから）-----------------------------------------------
;0,5秒待ち
[wait time=500]
;タイトル画面表示
[背景表示 storage="title"]
[クロス]


;タイトル用メッセージレイヤ設定
[backlay]
[position layer=message0 page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer=message0 page=fore]

*top
;タイトルメニュー表示
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
;
; 「おまけ」が選択された
;
*title_menu_omake
[jump storage="おまけ.ks"]
;終了
*END
[eval exp="kag.closeByScript(%[ask:true])"]
;キャンセルした時に　*top　にジャンプ
[jump target=*top]

;↑タイトル（ここまで）---------------------------------------

;始めから
*start
;本編にジャンプ
;BGMを停止
[fadeoutbgm time=2000]
[jump  storage="シナリオ1.ks"]


