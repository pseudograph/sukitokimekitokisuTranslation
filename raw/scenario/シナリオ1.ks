*始まり
;最大文字数26　行3（台詞と選択時は4行）
;個別好感度0
[eval exp="f.END1=0"]
[eval exp="f.END2=0"]
[eval exp="f.END3=0"]
[eval exp="f.END4=0"]
[eval exp="f.END5=0"]
[eval exp="f.取り繕う=0"]
[eval exp="f.陥れる=0"]
[eval exp="f.びっくり=0"]
[eval exp="f.陥れ失敗END1=0"]
[eval exp="f.信じる=0"]
[eval exp="f.嘘1=0"]
[eval exp="f.嘘2=0"]
[eval exp="f.仲直りフラグ=0"]
[eval exp="f.仲直り=0"]
[if eval exp="sf.END1==true"]
[eval exp="f.仲直りフラグ=f.仲直りフラグ+1"]
[endif]
[if eval exp="sf.END2==true"]
[eval exp="f.仲直りフラグ=f.仲直りフラグ+1"]
[endif]
[if eval exp="sf.END3==true"]
[eval exp="f.仲直りフラグ=f.仲直りフラグ+1"]
[endif]
[if eval exp="sf.END4==true"]
[eval exp="f.仲直りフラグ=f.仲直りフラグ+1"]
[endif]
[jump target=*true cond="f.仲直りフラグ>=4"]
[jump target=*start2]
*true
[eval exp="sf.仲直りEND=true"]
*start2
;@rclick call=true storage="rclick_tjs2.ks" target="*rclick" enabled=true name="メニュー(&S) ..."
;---
;@cm
[cm]
[メニュー非]
;記録履歴表示出来る様に
[OK]
;ブラックアウト
[背景表示]
[クロス]
[rclick call storage="Krclick.ks" target="*krclick_save" enabled=true]
[背景表示 storage="全黒"]
[トラン]
[メニュー]
*00|プロローグ
;---メッセージレイヤトランジション
[ト書き]
;---BGM再生
[fadeinbgm storage="tsbm" time=2000]
*共通シナリオ|プロローグ
[indent]暗闇の中、唐突に”私”を認識した。[endindent][改頁]
*共通シナリオ|プロローグ
[font color="0xc53d43"]
【？】
[resetfont]
[r]
（[indent]ここは、何処？ 真っ暗……[endindent]）[改頁]
*共通シナリオ|プロローグ

 [indent]深く暗い海の底を漂っているような、[r]
自分が自分でなくなっていくような……[endindent][改頁]
*共通シナリオ|プロローグ

 [indent]ぼんやりと、そんな闇の中を漂っていた私の耳は[r]
不意に誰かの声を聞いた。[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『……っ』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]女の子の声……[endindent]）[改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『[indent]だって……だってだって、せんぱいっ[r]
約束……まもってくれない、からっ[endindent]』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
『[indent]約……束？[endindent]』[改頁]
*共通シナリオ|プロローグ

[indent]聞き覚えのある、けれど誰のものなのかは分からない声色に[r]
私は聞き返す……[L]いや、暗闇を漂っている”私”に声は出ない。[endindent][改頁]
*共通シナリオ|プロローグ

[indent]姿の見えないもう１人の”私”が聞き返す。[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『[indent]そう……[L]せんぱいは私の気持ち、[r]
受け入れてくれたんじゃなかったの！？[endindent] 』[改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『[indent]あの時いいよって言ってくれたのにっ……[r]わたし、わたし、ほんとうに嬉しくてっ……[r]運命だっておも、って[endindent]』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
『[indent]そ、それは……[endindent]』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]それは？[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]確かに”私”の声なのに、私の意志とは関係なくもう１人の私は言葉を紡ぐ。[endindent][改頁]
*共通シナリオ|プロローグ

[indent]その声色は弱々しかった。[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『[indent]……のにっ、それ……なのにっ……！[endindent]』[改頁]
*共通シナリオ|プロローグ

[indent]そして、対照的に女の子の声はしゃくり上げる音と共に段々と高ぶっていく。[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
『[indent]…した、のに……束したのに……約束したのにっ！！！[endindent]』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（！）[改頁]
*共通シナリオ|プロローグ
;振動
[quake time=2000 timemode=ms hmax=10 vmax=10]
;
[font color=0xc89932]
【？】
[resetfont]
[r]
『　　！！』[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]あ……[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]今まで何の感覚もなかった世界で、不意に感じた衝撃。[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]な　まえ……やく……そ　く？[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]”私”が誰かの……きっと”私”に悲痛な声で訴えかける少女の名を呼んだ。[L]
その名は、その声は、一瞬私に甘くて苦い記憶を呼び起こさせようとした……[endindent][改頁]
*共通シナリオ|プロローグ

[indent]けれど、私が彼女の名前を言葉として認識する前に、私は暗闇の中に引きずりこまれていった。[endindent][改頁]
*共通シナリオ|プロローグ
;BGMフェードアウト
[fadeoutbgm time=2000]
;ブラックアウト
;---トランジション
[背景表示]
[クロス time="1000"]
[メニュー非]
[メッセ消]
[背景表示 storage="siro"]
[トラン rule="中心から" time="1000"]
;1秒待ち
[wait time=1000]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki01"]
;
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]うっ……痛……っ……[L]まぶ、し……っ[endindent]）[改頁]
*共通シナリオ|１日目

 [indent]意識の浮上と共に、瞼の向こうに微かに光を認識した。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="ガヤ"]
[seopt volume=100]
[fadeoutse time=10000]

 [indent]頭は霞がかかったようにぼんやりとし、私はしばらく目を閉じたまま横たわっていた。[L]
つん、と鼻につく薬品の匂いが私を包み、遠くから微かに人々の喧噪が聞こえる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]ここは……[L]私は学校にいたんじゃ[endindent]）[改頁]
*共通シナリオ|１日目
[stopse]

 [indent]脳裏に浮かぶのは、黄昏色に染まった校舎。[endindent][改頁]
*共通シナリオ|１日目
;---トランジション
[背景表示 storage="BG14b_80"]
[トラン２]

 [indent]教室。[endindent][改頁]
*共通シナリオ|１日目
;---トランジション
[背景表示 storage="BG26b_80"]
[トラン２]

 [indent]そして……[endindent][改頁]
[wait time="800"]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]あれ？　私、何してたんだっけ？[endindent]）[改頁]
*共通シナリオ|１日目

 [indent]記憶を辿った先にあった風景。[r]
教室に独り立つ自分の姿。[endindent][改頁]
*共通シナリオ|１日目
;---トランジション
[背景表示 storage="image3b"]
[トラン２]

 [indent]何をしていたのか、何をするつもりだったのか全く思い出せない。[endindent][改頁]
*共通シナリオ|１日目

 [indent]そもそも、私は何故学校にいたのか……[L]いつからいたのか。[endindent][改頁]
*共通シナリオ|１日目
;---トランジション
[背景表示 storage="BG00b0_80"]
[トラン２]

 [indent]私……「紅　明菜」の記憶は、教室の窓越しに広がる真っ赤な夕暮れの空の色だけがやけに鮮明で、他のことはまるで分からなかった。[endindent][改頁]
*共通シナリオ|１日目

 [indent]そして、自分のあやふやな記憶に疑問を持つ前に私の身体は酷く倦怠感を訴えはじめ、今にもまた意識は闇の中へと沈んでいきそうで……[endindent][改頁]
;---トランジション
[背景表示 storage="kuro"]
[トラン２]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……？）[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="香り"]

 [indent]その誘惑のままに再び私の意識が暗闇へ沈もうかとした時、ふわりと微かな風がそよぎ甘い匂いが鼻を擽った。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（何の、匂い？……[L]目が）[改頁]
*共通シナリオ|１日目

 [indent]甘い匂いに誘われる蝶のように、[L]蟻のように、[L]私はその匂いが何なのか、気になって仕方がなかった。[endindent][改頁]
*共通シナリオ|１日目

 [indent]確かめようと無意識に瞼に力を込めるが、まるでくっついてしまったかのように開こうとしない。[endindent][改頁]
*共通シナリオ|１日目

 [indent]それどころか、私は瞼を開くという行為に嫌悪感すら感じていた。[L]
それでもなお、甘い匂いは私を誘うのを止めない。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぅ……」[改頁]
*共通シナリオ|１日目

 [indent]どうにかして重い瞼を開こうと、何故か節々に痛みを訴える自分の身体に力を込めると、予期せず声が出た。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（喉が……）[改頁]
*共通シナリオ|１日目

 [indent]随分と長く声を出していなかったような、しゃがれた自分の声が耳に付く。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぁ」[改頁]
;---BGM再生
[fadeinbgm storage="iranai" time=10000]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ぁ……？[endindent]」[nl]
（？　誰か……いる、の？）[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="香り"]

 [indent]唐突に傍らで生じた人の気配、体温……そして微かな息づかい。[L]
私を執拗に誘う甘い匂いも強くなったようだった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（さっきまでは、何も……）[改頁]
*共通シナリオ|１日目

 [indent]いなかったはず。[nl]
それとも、感じ取れなかっただけ？[endindent][改頁]
*共通シナリオ|１日目

 [indent]身体は、私の言う通りに動きそうもない。[L]
感じ取れなかった可能性も否定できなかった。[endindent][改頁]
*共通シナリオ|１日目

 [indent]誰かの存在を感じるのに、何も見えないという不安。[L]
その不安に急き立てられるように、鼓動は徐々に徐々にその速度を増していく。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（こ、のっ……開けっ）[改頁]
*共通シナリオ|１日目

 [indent]私は力の限り瞼に力を込めた。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|１日目
;黒い背景から白い背景へ変化
[背景表示 storage="siro"]
[トラン rule="中心から" time="1000"]

 [indent]辺りは色を無くしたように白く……そして[endindent][改頁]
*共通シナリオ|１日目
;スチル
[freeimage layer=0]
[cgv storage="still_1"]

 [indent]まあるい目玉が私を見ていた。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「いやぁあああああああっ」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「！……せんぱっ」[改頁]
*共通シナリオ|１日目

 [indent]それが人間の目だと理解する前に、私の喉は勝手に叫んでいた。[L]
押さえきれない恐怖、困惑、色々な感情が駆けめぐり……私はやっと、目玉を人間の少女だと認識した。[endindent][改頁]
*共通シナリオ|１日目
;BGMフェードアウト
[fadeoutbgm time=3000]
;---トランジション
[freeimage layer=0]
[背景表示 storage="heya"]
[トラン２]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ……ぁ」[nl]
（女の……子？）[改頁]
*共通シナリオ|１日目
;菜穂登場
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]あき……先輩？[r]
だいじょうぶ……[L]ですか？[endindent]」[改頁]
*共通シナリオ|１日目
;---BGM再生
[fadeinbgm storage="naho_bgm" time=4000]
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぇ」[改頁]
*共通シナリオ|１日目

 [indent]おずおず、といった様子で私に声を掛けてくる女の子……[L]まるでお姫様のように可愛らしい。[endindent][改頁]
*共通シナリオ|１日目

 [indent]そんな彼女とは対照的に、私は目を見開いたまま、彼女を見つめ続けた。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]

 [indent]徐々に収まっていく恐怖と反比例するように、私の中でだんだんと膨らんでいく感情に私は困惑した。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[nl]
（何で……私……）[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]あ、先輩。[r]
ずっと目、さまさなくて……[L]心配しましたっ[endindent] 」[改頁]
*共通シナリオ|１日目

 [indent]えへへ、と誰が見ても可憐に照れ笑いをする彼女から私は目が離せなかった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ど、どう……して…）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「……せん、ぱい？」[改頁]
*共通シナリオ|１日目

 [indent]ことり、と可愛らしく首を傾げる彼女に私の目はただただ釘付けだった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（どうして……こん、な）[改頁]
*共通シナリオ|１日目

 [indent]そう、この気持ちに名前をつけるとしたらきっと誰もがこう名付ける。[endindent][改頁]
*共通シナリオ|１日目

 [indent]彼女の存在が[L]　不快　だと。[改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ぃ……き、もち悪い！　気持ち悪い！[r]
い、や……嫌だ、嫌だっ！！[endindent]）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|１日目

 [indent]自覚と共に込み上げてくる嘔吐きにも似た不快感と、鳥肌が立つほどの嫌悪感。[endindent][改頁]

 [indent]自分の中にあったことに驚くくらいの激しいマイナスの感情に、私はただ困惑した。[endindent][改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]先輩？　[L]どうか……しましたか？[endindent]」[改頁]
*共通シナリオ|選択肢「どうか……しましたか？」
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！　あ……」

;---選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="s_1.png" target=*好意的な対応を心がける]
[locate x=320 y=350]
[button graphic="s_2.png" target=*上辺だけでも取り繕う]
[s]


*好意的な対応を心がける
[endchoice]
[eval exp="f.陥れる=f.陥れる-1"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私……おかしくなっちゃったの？[endindent]）[改頁]
*共通シナリオ|好意的な対応を心がける

 [indent]見ず知らずの少女に、こんなにもマイナスの感情を抱く自分に動揺しながら、私はどうにか笑顔だけでも取り繕った。[endindent][改頁]
*共通シナリオ|好意的な対応を心がける
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……な、何でも……[L]あ、あのさ[endindent]」[改頁]
*共通シナリオ|好意的な対応を心がける
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|好意的な対応を心がける

 [indent]私の黒く醜い感情など知りもせず、彼女はにこにこと笑顔を私に向ける。[L]
私はその綺麗な笑顔を受け止められず、目を逸らした。[endindent][改頁]
*共通シナリオ|好意的な対応を心がける
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[jump target=*選択肢終了]


*上辺だけでも取り繕う
[endchoice]
[eval exp="f.取り繕う=f.取り繕う+1"]
[eval exp="f.陥れる=f.陥れる+1"]
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……な、何でも……[L]あ、あのさ[endindent]」[改頁]
*共通シナリオ|上辺だけでも取り繕う
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|上辺だけでも取り繕う

 [indent]どうにか表面的な笑顔を顔に貼り付け、私はこの不愉快な存在に向き直った。[L]
目の前の彼女は、何が楽しいのかにこにこと笑顔を私に向けてくる。[endindent][改頁]
*共通シナリオ|上辺だけでも取り繕う
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[jump target=*選択肢終了]

*選択肢終了
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「アンタ……[L]誰？」[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「え……？」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]

 [indent]動揺を隠せない彼女の様子を視界の片隅で捕らえながら、私は自分の居る場所が分からないことに思い当たった。[endindent][改頁]
*共通シナリオ|１日目
[jump target=*取り繕う cond="f.取り繕う>=1"]
[jump target=*元のルートへ]

*取り繕う
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[jump target=*元のルートへ]

*元のルートへ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そもそも、私……[L]何でこんな所にいるの？[endindent]）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]せ、せんぱい……[L]じょ、冗談は……[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]ぁ……ほんとう、に？[endindent]」[改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]

 [indent]こんなこと嘘など付いてどうするのだ、という思いを込めて見つめていた私に困惑していた彼女だったが、[L]不意にぱっと表情を輝かせた。[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]

 [indent]嬉しそうな笑顔で、噛みしめるように呟く。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（？）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]そっか、そっか。あき先輩……[nl]
何にもおぼえて、ないんですか？[r]
それとも、私だけ？[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……名前は紅　明菜。[L]高校生……っ[endindent]」[改頁]
;効果音
[playse storage="頭痛"]
;BGMフェードアウト
[fadeoutbgm time=3000]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「！[L]　せんぱい！」[改頁]
*共通シナリオ|１日目
;---BGM再生
[fadeinbgm storage="k-sishou" time=3000]
;効果音
[playse storage="頭痛"]

 [indent]自分についてのデータを引きずり出そうとした私の頭に、づきんと痛みが走った……[nl]
そして、鳥肌も。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]！　平気、だから……[L]触んないでっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「あ……[L]ごめん、なさい…」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目

 [indent]思わず、といった風に私の手に触れた彼女の手。[L]
冷たくさらさらとしたその掌に不快に感じる原因などないのに、私は思わず振り払っていた。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]

 [indent]しゅん、とした彼女に私は少しの罪悪感を覚える。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（何で、私……[L]彼女のこと知らないのに）[改頁]
*共通シナリオ|１日目

 [indent]項垂れる彼女に頭の片隅では悪いことをしたと思ったが、フォローする気はなかった。[L]
理由は分からないが、彼女に対してそんな優しい気持ちにはなれなかった。[endindent][改頁]
*共通シナリオ|１日目

 [indent]項垂れる彼女を放ってもう一度記憶を探ることにした私だったが、結果は同じだった。[endindent][改頁]
*共通シナリオ|１日目
;効果音
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（痛っ……[L]思い、出せない）[改頁]
*共通シナリオ|１日目

 [indent]年齢や身分など、自分に関するちょっとした記憶や一般常識は引き出せるが、[r]
自分に関わる人のことは誰１人として思い出せない。[endindent][改頁]
*共通シナリオ|１日目

 [indent]どっと不安が押し寄せてくる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私、私……[L]記憶が、ない？）[改頁]
*共通シナリオ|１日目

 [indent]目の前にいるこの子は誰なのか。[nl]
両親は？　友達は？　私は……[L]誰？[endindent][改頁]
*共通シナリオ|１日目

 [indent]自分の名前が分かっても、この世界の仕組みが分かっても、人にとって……[L]私にとって一番大事なものがごっそりと私の中から抜け落ちていた。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（嘘……）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「せん、ぱい？」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|１日目
;BGMフェードアウト
[fadeoutbgm time=3000]
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]だいじょうぶですっ！　すぐ治りますっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]せんぱい、記憶をなくしちゃったから、[r]
ちょっと動揺して気が立ってるだけですよ、ね？[r]
ね？[endindent]」[改頁]
*共通シナリオ|１日目
;---BGM再生
[fadeinbgm storage="naho_bgm" time=2000]

 [indent]まるで小動物のような可愛らしさで、[r]
彼女は捲し立てる。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「そ、そう……かな……」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]ですよね！[nl]
じゃあ、わたし、先輩が思い出せるように自己紹介しますねっ！[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「そ、そう……[L]ありがと」[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]

　[indent]ぱっと彼女の頬が赤く染まる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「！　はいっ」[改頁]
*共通シナリオ|１日目

 [indent]彼女に対する不快感は消えないが、[r]
一生懸命場を明るくしようとしているらしい彼女の好意に、私は甘えることにした。[endindent][改頁]
*共通シナリオ|１日目

　[indent]不安に押し潰されないように[r]
彼女を利用したのだ。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]わたしは、山吹　菜穂です。[nl]
あき先輩と同じ学校で、中等部の２年です[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]先輩にはとってもお世話になってて……[r]そ、その[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……？」[改頁]
*共通シナリオ|１日目

　[indent]ゆったりとした口調で話し出した彼女……[nl]
山吹菜穂は何故かさっきよりも顔を赤くして、しどろもどろになっていった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！　あ、ぁ、あき先輩とは、仲良しさん……[nl]でした[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「そ、そう？」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい、あき先輩はわたしのこと……[nl]
なっちゃんって呼んでくれてたんです[endindent]」[改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……なっちゃん？」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！[nl]
よ、良かったら……[L]呼んで下さい[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「う、うん……[L]考えとく」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「はい！」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「う、うん」[改頁]
*共通シナリオ|１日目

　[indent]見知らぬ……[L]”仲良しさん”だったらしいが、今私が山吹菜穂に抱いている感情はまるっきり正反対。[endindent][改頁]
*共通シナリオ|１日目

　[indent]そんな相手を”なっちゃん”と呼ぶような趣味は今の私にはなかった。[endindent][改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あ、先輩は……[L]事故に、あったんです[endindent]」[改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「事故？」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい……。[nl]
学校で……高いところから落ちちゃったみたい、です[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「落ちた……」[改頁]
*共通シナリオ|１日目

　[indent]そこで私は身体が訴える倦怠感、痛みの正体に気付いた。[L]
身体のあちこちが包帯だらけだ。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（落ちた……[L]何で？）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]何で落ちちゃったのかは……[L]分からないんです[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「そ、そう……」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]で、でも！[nl]
あき先輩が無事で、ほんとうに良かったですっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ぁ、あき先輩がいなくなったら…っ…わたし、わたしっ[endindent]」[改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|選択肢「泣きそうに歪む山吹菜穂の綺麗な顔……」

　[indent]泣きそうに歪む山吹菜穂の綺麗な顔に、[r]私は
;---選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="c" target=*信じる]
[locate x=320 y=350]
[button graphic="d" target=*嘘0]
[s]


*信じる
[endchoice]
[eval exp="f.陥れる=f.陥れる-1"]
[eval exp="f.信じる=f.信じる+1"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（そうか……[L]私は事故で……）[改頁]
*共通シナリオ|信じる
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ひっ……っく」[改頁]
*共通シナリオ|信じる

　[indent]彼女に感じる不快感はぬぐい去れないが、彼女の涙は私の心の一部を酷くゆさぶる。[endindent][改頁]
*共通シナリオ|信じる

　[indent]山吹菜穂の言葉を、私は信じることにした。[endindent][改頁]
*共通シナリオ|信じる
[jump target=*選択肢２]




*嘘0
[jump target=*嘘1 cond="f.陥れる>=1"]
[jump target=*嘘2]
;「上辺だけ～」を選んでいた場合、陥れフラグ＋１
;選んでいない場合は陥れフラグ－１
;顔グラ変化

*嘘1
[endchoice]
[eval exp="f.陥れる=f.陥れる+1"]
[eval exp="f.嘘1=f.嘘1+1"]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ウソだ……）[改頁]
*共通シナリオ|１日目

　[indent]直感的に私はそう確信していた。[endindent][改頁]
*共通シナリオ|ウソダ
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]この子は信用ならない……[nl]きっと、何かあるはず[endindent]）[改頁]
*共通シナリオ|ウソダ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ひっ……っく」[改頁]
*共通シナリオ|ウソダ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|ウソダ

　[indent]彼女のお綺麗な涙に、私はただイライラした。[endindent][改頁]
*共通シナリオ|ウソダ
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（目障り……[L]早く泣きやんでよ）[改頁]
*共通シナリオ|ウソダ

　[indent]そう思い口にでかかった言葉を私は、[r]
はっと飲み込んだ。[endindent][改頁]
*共通シナリオ|ウソダ
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（今は……[L]まだ駄目）[改頁]
*共通シナリオ|ウソダ

　[indent]まだ手足も上手く動かない。[nl]
彼女を怒らせたら、私が負ける。[endindent][改頁]
*共通シナリオ|ウソダ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（きっと……[L]もっとチャンスがある）[改頁]
*共通シナリオ|ウソダ

　[indent]彼女に私が感じている不快感を知らしめるチャンスが……[endindent][改頁]
*共通シナリオ|ウソダ
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（陥れてやる……）[改頁]
*共通シナリオ|ウソダ

　[indent]何の迷いもなく、何の疑問もなく……[r]私はそう決心した。[endindent][改頁]
*共通シナリオ|ウソダ
[jump target=*選択肢２]



*嘘2
[endchoice]
;陥れフラグ－１の場合
[eval exp="f.陥れる=f.陥れる-1"]
[eval exp="f.嘘2=f.嘘2+1"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（嘘だ……[L]でも何でそう思うの？）[改頁]
*共通シナリオ|嘘？
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ひっ……っく」[改頁]

　[indent]目の前で泣く山吹菜穂の涙に、嘘はないように見えた。[endindent][改頁]
*共通シナリオ|嘘？
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私……やっぱり変なんだ）[改頁]
*共通シナリオ|嘘？

　[indent]自分を心配して泣いている彼女の姿が不快だなんて……。[L]
私は自分の汚い心から目を逸らすように、彼女からそっと目を逸らした。[endindent][改頁]
*共通シナリオ|嘘？
[jump target=*選択肢２]

*選択肢２
[jump target=*表情1 cond="f.信じる>=1"]
[jump target=*表情2 cond="f.嘘1>=1"]
[jump target=*表情3 cond="f.嘘2>=1"]

*表情1

　[indent]その時。[endindent][改頁]
*共通シナリオ|１日目
;効果音
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|１日目
[jump target=*母と再会]


*表情2

　[indent]その時。[endindent][改頁]
*共通シナリオ|１日目
;効果音
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|１日目
[jump target=*母と再会]


*表情3

　[indent]その時。[endindent][改頁]
*共通シナリオ|１日目
;効果音
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|１日目
[jump target=*母と再会]


*母と再会
;効果音停止
[stopse]
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]あ、なっちゃん来てたの……[L]！……あき、な？[endindent]」[改頁]
*共通シナリオ|１日目
;---BGM再生
[fadeinbgm storage="sharara" time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あ、おばさん……[L]あのね、あき先輩が[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|１日目

　[indent]見覚えのない４０代位の女性に、私は首を傾げる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（この人は……？　[L]まさか……）[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]明菜っ！！[endindent]」[改頁]
;菜穂退場
[立絵消]
[クロス time=500]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！！」[改頁]
*共通シナリオ|１日目

　[indent]駆け寄ってきた女性にぎゅっと力強く抱きしめられる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（い、いた……いっ）[改頁]
*共通シナリオ|１日目

　[indent]身体の節々が痛んだが、それを告げるのは憚られるような女性の様子に私はただ身を任せた。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]明菜っ！明菜……っ！[nl]
良かったっ……よかっ……たっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|１日目
@heartbeat storage="heya" sound="on" soundfile="鼓動"
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
;菜穂登場
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目

　[indent]心臓が、まるで素手で掴まれたように痛んだ。[L]
喉が震えた。[endindent][改頁]
*共通シナリオ|１日目

[indent]何処かで嗅いだことのある匂いを、この女性から感じた。[nl]
……でも、この人が誰なのか私に教えてはくれない。[endindent][改頁]
*共通シナリオ|１日目

　[indent]薄々は分かっていても……[nl]
本当の意味で教えては、くれなかった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私……なんで覚えて、ないんだろっ……[nl]
何で、忘れちゃったんだろ[endindent]）[改頁]
*共通シナリオ|１日目

[indent]何より大事なことなのに。[endindent][改頁]
*共通シナリオ|１日目

[indent]こんなにも自分を思ってくれている彼女が分からない自分が悲しくて、苦しくて……[L]涙が出た。[endindent][改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……[font size="15"]どうして[resetfont]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]っ……お、おばさん？　[nl]
あ、あの……ね？[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]？　どうしたの？　[L]なっちゃん[endindent]」[改頁]
*共通シナリオ|１日目

[indent]目尻に浮かんだ涙を拭いながら、[r]女性は山吹菜穂へと振り返る。[nl]
そんな様子を私はただぼんやりと見ていた。[endindent][改頁]
*共通シナリオ|１日目

[indent]何も考えたくなかった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あ、あの……[L]その[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あのね！　[L]あき、先輩覚えて……[L]ない、みたいなの……[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]何を？[nl]
……ああ、事故のこと？[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]う、ううん！[nl]
ちが、くて……あの、ね……あの……[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]もう、どうしたの？　なっちゃん？[endindent]」[改頁]
*共通シナリオ|１日目
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……あのね！　先輩、わたしのことも、おばさんのことも……[L]覚えてない、みたい[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]え？[nl]
……や、やだ、なっちゃん。[r]そんな、悪い冗談は……[endindent]」[改頁]
*共通シナリオ|１日目
;---BGM再生
[fadeinbgm storage="k-sishou" time=3000]

　[indent]震える声が私の鼓膜を揺らす。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「冗談なんかじゃ……ないっ」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「あき、な？」[改頁]
*共通シナリオ|１日目

　[indent]何を言ってるの？　と言わんばかりに私を見る彼女の目が無性に私を苛立たせた。[endindent][改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki06"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]私……わかんないっ……[L]
あなたのことっ、わかんないっ……！！[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]明菜……そんな、まさか……[nl]
お母さんのことも、分からない、の……？[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……っ」[改頁]
*共通シナリオ|１日目

　[indent]失望の眼差しで私を見る、女性……[nl]母の視線に耐えきれなくて、私は俯く。[r]
ぱたぱた、と溢れた涙の雫がシーツを濡らす。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]くそっ……くそうっ[nl]
何で……ど、して……[L]っ……そっ[endindent]）[改頁]
*共通シナリオ|１日目

　[indent]無性に悔しくて、腹立たしくて、私は唇を噛みしめた。[endindent][改頁]
*共通シナリオ|１日目
[font color=0x555647]
【母】
[resetfont]
[r]
「[indent]……お、お医者さまを……[L]呼んで来なきゃ……[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「おばさん……」[改頁]
*共通シナリオ|１日目

　[indent]ふらふらと立ち上がった母は、弱々しく微笑んだ。[L]
そんな母を山吹菜穂は心配げに見やる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0x555647]
【母】
[resetfont]
[r]
「[indent]はや、く……お、お医者さま……[L]呼んで、来なきゃ[endindent]」[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="close"]
[seopt volume=200]

　[indent]覚束ない足取りでふらふらと部屋を出ていった母を背中で感じながら、[L]
私はただ苛立ちを持て余すように俯いていた。[endindent][改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]

　[indent]そんな私に山吹菜穂は声を掛けるでもなく、[r]ただ私を見下ろしているようで……[L]益々私はいらいらした。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……っ[endindent]」[nl]
（っ……なにか言ったら、どうなのよっ）[改頁]
*共通シナリオ|１日目
;BGMフェードアウト
[fadeoutbgm time=2000]

　[indent]苛立った心のままに、彼女を罵ってやろうと私は顔を上げ……[endindent][改頁]
*共通シナリオ|１日目
;---立ち絵変化
[立絵表示 file="naho06"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「約束したのに」[改頁]
*共通シナリオ|１日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]

　[indent]しかし、苛立ちは一瞬で消え去った。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「約束……？[L]……つぅっ」[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="頭痛"]
;---BGM再生
[fadeinbgm storage="hitogo" time=2000]
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（頭、がっ……）[改頁]
*共通シナリオ|１日目

　[indent]ぎゅうっと頭を両手で締め付けられるような痛み。[endindent][改頁]
*共通シナリオ|１日目

　[indent]記憶を思い出そうとした時とは比べ物にならない痛さに、じわっと汗が噴き出てくる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「くっ……」[改頁]
*共通シナリオ|１日目

　[indent]あまりの痛みに、私の顔は歪む。[nl]
私の挙動不審に気付いているはずなのに、彼女はそれを気にする素振りもなかった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「また」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]！[r]
……っうっ[endindent]」[改頁]
*共通シナリオ|１日目

　[indent]反射的にびくり、と肩が震える。[nl]
そのほんの僅かな振動も激痛に変わる。[endindent][改頁]
*共通シナリオ|１日目

　[indent]そんな私に、山吹菜穂はわずかに微笑んだ。[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（なん、なの……[L]アン、タ……っ）[改頁]
*共通シナリオ|１日目

　[indent]私に笑顔を返す余裕などはなかった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]くぅっ……[endindent]」[nl]
（私を……笑ってる、の？　[L]いい気味、だって）[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]また……[L]明日、きますね[endindent]」[改頁]
*共通シナリオ|１日目
;菜穂退場
[立絵消]
[クロス time=500]
;効果音
[playse storage="香り"]

　[indent]そのままくるり、と背を向けた山吹菜穂からふわりと甘い匂いが漂う。[endindent][改頁]
*共通シナリオ|１日目
;効果音
[playse storage="頭痛"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ぃ、つうっ……！[endindent]」[nl]
（頭が…っ…痛いっ）[改頁]
*共通シナリオ|１日目
;効果音
[playse storage="ゆっくりしていってね"]
[seopt volume=60]

　[indent]彼女から漂ってきた覚えのある甘い匂いに、何故か頭痛はさらにその激しさを増した。[endindent][改頁]
*共通シナリオ|１日目

　[indent]あんなにも執拗に私を誘ったはずのあの甘い匂いは……[nl]
今はただ不快な匂いでしかなかった。[endindent][改頁]
*共通シナリオ|１日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;---トランジション
[facewin_clear]
;菜穂独白　END5見られる場合追加
[if eval exp="sf.仲直りEND==true"]
[ブラックアウト time="2000"]
[wait time="2000"]
[jump storage=naho1.ks]
[endif]
[ブラックアウト time="1000"]
[背景表示 storage="i_1"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ２.ks]
