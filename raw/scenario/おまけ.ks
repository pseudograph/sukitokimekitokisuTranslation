*おまけ
*omake_menu_loop
; 全メッセージレイヤ表画面、全前景レイヤ表画面を非表示にする（詳細は「右クリックサブルーチンを作ろう」を参照）
[call storage="rclick_subroutine.ks" target=*sub_layernoshow]
;タイトル画面でグラフィカルボタンを表示するメッセージレイヤ名
[eval exp="tf.title_message = 'message1'"]
;メッセージレイヤ消
[layopt layer=message0 page=fore visible=false]
;記録履歴表示出来ない様に
[NG]
;右クリックを無効にする
[rclick enabled=false]
; タイトルメニュー画面を背景レイヤ表画面に読み込む
[layopt layer=message0  page=back visible=false]
[image layer=base page=fore storage="title.jpg"]
*omake_menu_loop2
;タイトル画面表示
[freeimage layer=base page=back]
[trans method=crossfade time=500]
[wt]
[image layer=base page=back storage="omake.jpg"]
[trans method=crossfade time=1000]
[wt]
[ct]
[backlay]

; タイトルメニュー画面用メッセージレイヤの各種設定
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]
; ノーウェイト
[delay speed=nowait]

; ↓各メニューから戻ってくるラベル
*omake_menu_loop
; メッセージレイヤをクリア
;おまけメニュー表示
[er]
; グラフィカルボタン「グラフィック閲覧」～「ゲームを終了する」を配置
[locate x=165 y=120]
[button graphic="album.png" target=*title_menu_album hint="アルバム"]
[locate x=180 y=180]
[button graphic="endlist.png"target=*END_menu hint="エンディングリスト"]
[locate x=165 y=240]
[if eval exp="sf.おまけ==true"]
[button graphic="omaken.png"  hint="webへ飛びます" exp="System.shellExecute('http://sukitoki.zouri.jp/ScoNtoLove.html')"]
[endif]
; 「戻る」ボタンを表示
[locate x=10 y=500]
[button graphic="common_back_bt.png" target="*album_return" hint="戻る"]
[s]



;
; 「戻る」が選択された
*album_return
[freeimage layer=base page=back]
[trans method=crossfade time=300]
[wt]
[jump storage="first.ks" target="*title_menu"]



*title_menu_album
; アルバム画面へ
[jump storage="album.ks" target=*album_menu]

*END_menu
;メッセージレイヤ消
[layopt layer=message0 page=fore visible=false]
;記録履歴表示出来ない様に
[NG]
;スチル表示
[freeimage layer=0]
[image storage=endlist.jpg layer=base visible=true page=back]
[trans method=crossfade time=500]
[wt]
; メッセージレイヤ１はデフォルトで非表示なので、表示する
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
[locate x=300 y=150]
[font size=20]
【END 1】
[locate x=300 y=180]
[if eval exp="sf.END1==true"]
空を掴む手
[endif]
[locate x=300 y=210]
【END 2】
[if eval exp="sf.END2==true"]
[locate x=300 y=240]
かくれんぼ
[endif]
[locate x=300 y=270]
【END 3】
[if eval exp="sf.END3==true"]
[locate x=300 y=300]
薊の花言葉
[endif]
[locate x=300 y=330]
【END 4】
[if eval exp="sf.END4==true"]
[locate x=300 y=360]
スキトキメキトキス
[endif]
[locate x=300 y=390]
【END 5】
[if eval exp="sf.END5==true"]
[locate x=300 y=420]
運命の恋人
[endif]
[resetfont]
;---
; 「戻る」ボタンを表示
[locate x=10 y=500]
[button graphic="common_back_bt.png" target="*ENDmenu_return" hint="戻る"]
[s]



;
; 「戻る」が選択された
*ENDmenu_return
; タイトル画面でグラフィカルボタンを表示するメッセージレイヤ名
[eval exp="tf.title_message = 'message1'"]
;メッセージレイヤ消
[layopt layer=message0 page=fore visible=false]
;記録履歴表示出来ない様に
[NG]
;; 右クリックを無効にする
;[rclick enabled=false]
[freeimage layer=base page=back]
[trans method=crossfade time=300]
[wt]
[jump target="*omake_menu_loop2"]

*atogaki_menu
;スチル表示
[freeimage layer=0]
[image storage=atogaki.jpg layer=base visible=true page=back]
[trans method=crossfade time=800]
[wt]
@waitclick
@jump target="*omake_menu_loop2"


