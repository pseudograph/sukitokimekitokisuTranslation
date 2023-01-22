*album_menu
[eval exp="f.コンプ=0"]
[eval exp="f.特典=0"]
; メッセージ履歴への出力を停止し、表示不可にする
[history output=false enabled=false]
; 栞にはさめなくする
[disablestore store=true]
; 右クリックを無効にする
[rclick enabled=false]
;スチル表示
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; メッセージレイヤ１はデフォルトで非表示なので、表示する
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;スチル１
@if exp="sf.still_1==1"
[locate x=150 y=72]
[button graphic="01_s.png" target="*01"]
@endif
;----
;スチル２
@if exp="sf.still_2==1"
[locate x=423 y=72]
[button graphic="al_b.png" target="*02"]
@endif
;----
;スチル３
@if exp="sf.still_3b==1"
[locate x=150 y=247]
[button graphic="al_c.png" target="*03"]
@endif
;----
;スチル11
@if exp="sf.still_11==1"
[locate x=423 y=247]
[button graphic="al_m.png" target="*11"]
@endif
;----
;スチル4
@if exp="sf.still_4==1"
[locate x=150 y=420]
[button graphic="al_d.png" target="*04"]
@endif
;----
;スチル5
@if exp="sf.still_5==1"
[locate x=423 y=420]
[button graphic="al_e.png" target="*05"]
@endif
;----

[if eval exp="sf.火群プロフ==true"]
[eval exp="f.特典=f.特典+1"]
[endif]
[jump target=*tokuten1 cond="f.特典>=1"]
; 「めくる」ボタンを表示
;----
[locate x=735 y=30]
[button graphic="next.png" target="*2" hint="次のページへ" ]
; 「閉じる」ボタンを表示
;----
[locate x=740 y=230]
[button graphic="return_1.png" storage="おまけ.ks" target="*omake_menu_loop2" hint="アルバムを閉じる" ]
[s]

*tokuten1
[eval exp="sf.tokuten1=true"]
;コンプ
[locate x=423 y=420]\
[if eval exp="sf.tokuten1==true"]
[button graphic="h-1s.png" target="*tc"]
[endif]
; 「めくる」ボタンを表示
[locate x=735 y=30]
[button graphic="next.png" target="*2" hint="次のページへ" ]
; 「閉じる」ボタンを表示
[locate x=740 y=230]
[button graphic="return_1.png" storage="おまけ.ks" target="*omake_menu_loop2" hint="アルバムを閉じる" ]
[s]




*01
;スチル表示
[freeimage layer=0]
[image storage=still_1.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*02
;スチル表示
[freeimage layer=0]
[image storage=still_2.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*03
;スチル表示
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
;スチル表示
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
;スチル表示
[freeimage layer=0]
[image storage=still_4.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"

*05
;スチル表示
[freeimage layer=0]
[image storage=still_5.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*album_menu"


*2
[eval exp="f.コンプ=0"]
[eval exp="f.特典=0"]
; メッセージ履歴への出力を停止し、表示不可にする
[history output=false enabled=false]
; 栞にはさめなくする
[disablestore store=true]
; 右クリックを無効にする
[rclick enabled=false]
;スチル表示
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; メッセージレイヤ１はデフォルトで非表示なので、表示する
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;スチル6
@if exp="sf.still_6==1"
[locate x=150 y=72]
[button graphic="al_f.png" target="*06"]
@endif
;----
;スチル７
@if exp="sf.still_7==1"
[locate x=423 y=72]
[button graphic="al_g.png" target="*07"]
@endif
;----
;スチル８
@if exp="sf.still_8f==1"
[locate x=150 y=247]
[button graphic="al_h.png" target="*08"]
@endif
;----
;スチル９
@if exp="sf.still_9==1"
[locate x=423 y=247]
[button graphic="al_i.png" target="*09"]
@endif
;----
;スチルkiss
@if exp="sf.still_kiss==1"
[locate x=150 y=420]
[button graphic="al_n.png" target="*kiss"]
@endif
;スチル１０
@if exp="sf.still_10==1"
[locate x=423 y=420]
[button graphic="al_j.png" target="*10"]
@endif
;----

;おまけ用_旧タイトル絵
;@if exp="sf.END5==1"
;[locate x=423 y=420]
;[button graphic="おまけ用_旧タイトル絵サムネ" target="*おまけ用_旧タイトル絵"]
;@endif

[if eval exp="sf.火群プロフ2==true"]
[eval exp="f.特典=f.特典+1"]
[endif]
; 「めくる」ボタンを表示
[locate x=735 y=30]
[button graphic="next.png" target="*3" hint="次のページへ" ]
[jump target=*tokuten2 cond="f.特典>=1"]
; 「戻る」ボタンを表示
[locate x=730 y=125]
[button graphic="return_0.png" target="*album_menu" hint="前のページへ" ]
; 「閉じる」ボタンを表示
[locate x=740 y=230]
[button graphic="return_1.png" storage="おまけ.ks" target="*omake_menu_loop2" hint="アルバムを閉じる" ]
[s]

*tokuten2
[eval exp="sf.tokuten1=true"]
;コンプ
[locate x=423 y=420]
[if eval exp="sf.tokuten1==true"]
[button graphic="h-1s.png" target="*tc"]
[endif]
; 「めくる」ボタンを表示
[locate x=735 y=30]
[button graphic="next.png" target="*3" hint="次のページへ" ]
; 「戻る」ボタンを表示
[locate x=730 y=125]
[button graphic="return_0.png" target="*album_menu" hint="前のページへ" ]
; 「閉じる」ボタンを表示
[locate x=740 y=230]
[button graphic="return_1.png" storage="おまけ.ks" target="*omake_menu_loop2" hint="アルバムを閉じる" ]
[s]

*06
;スチル表示
[freeimage layer=0]
[image storage=still_6.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*07
;スチル表示
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
;スチル表示
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
;スチル表示
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
;スチル表示
[freeimage layer=0]
[image storage=still_kiss.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_kiss嫌悪.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
[image storage=still_kiss哀れみ.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*2"

*10
;スチル表示
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



;*おまけ用_旧タイトル絵
;;スチル表示
;[freeimage layer=0]
;[image storage=おまけ用_旧タイトル絵 layer=base visible=true page=back]
;[trans method=crossfade time=1000]
;[wt]
;@waitclick
;@jump target="*2"

*3
[eval exp="f.コンプ=0"]
[eval exp="f.特典=0"]
; メッセージ履歴への出力を停止し、表示不可にする
[history output=false enabled=false]
; 栞にはさめなくする
[disablestore store=true]
; 右クリックを無効にする
[rclick enabled=false]
;スチル表示
[freeimage layer=0]
[image storage=album.jpg layer=base visible=true page=back]
[trans method=crossfade time=600]
[wt]
; メッセージレイヤ１はデフォルトで非表示なので、表示する
[layopt layer=message1 page=fore visible=true]
[current layer=message1]
[position layer=message1 page=fore width=800 height=600  left=0 top=0 opacity=0  marginl=0 margint=0 marginr=0 marginb=0  frame=""]
;----
;アイキャッチ１
@if exp="sf.END5==1"
[locate x=150 y=72]
[button graphic="おまけ用_アイキャッチ1" target="*おまけ用_アイキャッチ1"]
@endif
;----
;アイキャッチ2
@if exp="sf.END5==1"
[locate x=423 y=72]
[button graphic="おまけ用_アイキャッチ2" target="*おまけ用_アイキャッチ2"]
@endif
;----
;アイキャッチ3
@if exp="sf.END5==1"
[locate x=150 y=247]
[button graphic="おまけ用_アイキャッチ3" target="*おまけ用_アイキャッチ3"]
@endif
;----
;アイキャッチ4
@if exp="sf.END5==1"
[locate x=423 y=247]
[button graphic="おまけ用_アイキャッチ4" target="*おまけ用_アイキャッチ4"]
@endif
;----
;アイキャッチ5
@if exp="sf.END5==1"
[locate x=150 y=420]
[button graphic="おまけ用_アイキャッチ5" target="*おまけ用_アイキャッチ5"]
@endif
;----
;あとがき
@if exp="sf.END5==1"
[locate x=423 y=420]
[button graphic="al_ato" target="*あとがき"]
@endif
;----
[if eval exp="sf.火群プロフ2==true"]
[eval exp="f.特典=f.特典+1"]
[endif]
[jump target=*tokuten2 cond="f.特典>=1"]
; 「戻る」ボタンを表示
[locate x=730 y=125]
[button graphic="return_0.png" target="*2" hint="前のページへ" ]
; 「閉じる」ボタンを表示
[locate x=740 y=230]
[button graphic="return_1.png" storage="おまけ.ks" target="*omake_menu_loop2" hint="アルバムを閉じる" ]
[s]

*おまけ用_アイキャッチ1
;スチル表示
[freeimage layer=0]
[image storage=i_1.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*おまけ用_アイキャッチ2
;スチル表示
[freeimage layer=0]
[image storage=i_2.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*おまけ用_アイキャッチ3
;スチル表示
[freeimage layer=0]
[image storage=i_3.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*おまけ用_アイキャッチ4
;スチル表示
[freeimage layer=0]
[image storage=i_4.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"

*おまけ用_アイキャッチ5
;スチル表示
[freeimage layer=0]
[image storage=i_5.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"
;

*あとがき
;スチル表示
[freeimage layer=0]
[image storage=atogaki.jpg layer=base visible=true page=back]
[trans method=crossfade time=1000]
[wt]
@waitclick
@jump target="*3"
;
