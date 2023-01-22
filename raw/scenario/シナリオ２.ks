;桜トランジション
[sakura strage="kuro" time=1000]
*共通シナリオ|２日目
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;効果音
[playse storage="足音"]
[seopt volume=200]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki01"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」 [改頁]
*共通シナリオ|２日目
;---トランジション
[背景表示 storage="heya_hiru"]
[トラン２]
;---BGM再生
[fadeinbgm storage="b4_org" time=3000]

 [indent]ちちち、と小鳥が囀る朝の歌の代わりに、[r]扉の向こうに聞こえる無機質な音に目を覚ます。[L]
横目で机の時計を見ると、時刻はもうすぐ昼を迎えようとしていた。[endindent] [改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]また寝ちゃったんだ……[endindent]）[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ……つう」[改頁]
*共通シナリオ|２日目
;---トランジション
[背景表示 storage="ten"]
[トラン２]

 [indent]身じろぎすると、みしっと軋むような痛みを感じながら天井を見上げた。[L]
そこには少し薄汚れた白色の天井が広がり、自分が病室にいるのだと否応なく私に認めさせる。[endindent] [改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……記憶喪失、か[endindent]）[改頁]
*共通シナリオ|２日目

 [indent]そんなもの、ドラマの世界の出来事だと思っていたのに。[endindent] [改頁]
*共通シナリオ|２日目

『[indent]記憶が戻る時期は何とも言えません……[r]
すぐ戻る方もいますし、１年経っても何も思い出さない方もいます[endindent]』[改頁]
*共通シナリオ|２日目

 [indent]今朝、主治医が告げた現実味のない、[r]
どこか他人事な台詞を反芻する。[endindent] [改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は……誰なんだろう？[nl]
明菜は何処へ行ったんだろう？[endindent]）[改頁]
*共通シナリオ|２日目

 [indent]自分自身を象っていた大切なことがこぼれ落ち、何も分からない私はきっと明菜ではないんだろう。[endindent] [改頁]
*共通シナリオ|２日目

 [indent]少なくとも、目を覚まして欲しいと願われていたのは”私”じゃない。[endindent] [改頁]
*共通シナリオ|２日目

 [indent]主治医の話を蒼白な顔で聞いていた母の横顔が、不意に脳裏にちらつく。[endindent] [改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]目なんか、覚まさなきゃ良かった……[endindent]）[改頁]
*共通シナリオ|２日目

 [indent]もやもやと、胸の中にたまったものを吐き出すように息をついた時……[endindent][改頁]
*共通シナリオ|２日目
;BGMフェードアウト
[fadeoutbgm time=3000]
;効果音
[playse storage="ドア"]
[seopt volume=200]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せん、ぱい？[nl]
起きてます、か？[endindent]」[改頁]
*共通シナリオ|２日目
;---トランジション
[背景表示 storage="heya_hiru"]
[トラン２]
;菜穂登場
[立絵表示 file="naho01"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="naho_bgm" time=3000]
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ……」 [改頁]
*共通シナリオ|２日目

 [indent]菜穂の姿に、無意識に寄る私の眉。[nl]
昨日も感じた不快感は、今日もまた私を支配しようとする。[endindent][改頁]
*共通シナリオ|２日目
[jump target=*陥れフラグオン cond="f.陥れる>=1"]
[jump target=*陥れフラグオフ]


*陥れフラグオン
 [indent]苛立ちを悟られないように、私は布団の下で手を握りしめた。[nl]
包帯の巻かれた手指は上手く動かず、痛みを訴えるがそんなものは気にならなかった。[endindent][改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

 [indent]昨日、私は決めたのだ。[nl]
理由なんてどうでも良い。[L]
この不快感を菜穂に思い知らせてやると。[endindent] [改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]どうしてくれようか……[endindent]）[改頁]
*共通シナリオ|２日目
[jump target=*ここまで]


*陥れフラグオフ
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]駄目駄目！[r]
私、おかしいよ。[L]いくら苛立ってるからって、私を心配してくれてる菜穂にあたるなんて……[endindent]）[改頁]
*共通シナリオ|２日目

 [indent]私の意志を無視して胸の中で燻る不快感を吐き出すように、大きく深呼吸をする。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]落ち着いて……[L]深呼吸、深呼吸[endindent]）[改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

 [indent]そんな私を不思議そうに見ていた菜穂と目が合い、私は誤魔化すようにぎこちなく微笑んでみせた。[endindent][改頁]
*共通シナリオ|２日目
[jump target=*ここまで]


*ここまで
[jump target=*表情1 cond="f.陥れる>=1"]
[jump target=*元のルートへ]

*表情1
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[jump target=*元のルートへ]

*元のルートへ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ど、どうしたの？[nl]
今日も来て…くれたんだ[endindent]」[改頁]
*共通シナリオ|２日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！[nl]
今日はフルーツとヨーグルトを持ってきたんです[endindent]」[改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩、これがだいすきでいっつも食べてたから[endindent]」[改頁]
*共通シナリオ|２日目
;効果音
[playse storage="ゴソゴソ"]
[seopt volume=100]

　[indent]菜穂はごそごそと鞄から果物ナイフとガラスの容器を取り出すと、脇の机へと置く。[L]
続けてコンビニの袋から菜穂が取り出したのはバナナ、林檎、蜂蜜、そしてプレーンヨーグルトだった。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]今、切りますね！[nl]
買ってきたばっかりだから、冷たくておいしいと思います[endindent]」[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]え、で、でも……[endindent]」[改頁]
*共通シナリオ|２日目
;効果音
[playse storage="ぐー"]

　[indent]その時、私のお腹がきゅるるっと間抜けな音を立てる。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、ちょっとまってて下さい[endindent]」[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、ありがとう……[endindent]」[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

　[indent]ふんわりと笑いながら、菜穂は手際よく果物をカットし、ヨーグルトの中に落とす。[L]
そして、最後に蜂蜜をかけると私に差し出してきた。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！ どうぞ。[L]
あき先輩がいっつも作ってた通りにやったので、味はだいじょうぶです！[endindent]」[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……美味しそう）[改頁]
*共通シナリオ|２日目

　[indent]特に難しい料理というわけではないが、真白なヨーグルトの中の果物。[L]
そして、その上にとろりとかかった蜂蜜は私の食欲を刺激した。[endindent][改頁]
*共通シナリオ|２日目
[jump target=*陥れフラグオンその２ cond="f.陥れる>=1"]
[jump target=*元のルートへその２]

*陥れフラグオンその２
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]

　[indent]脳内では、菜穂がくれるものなど受け取るな！[r]
と訴える自分の声。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]でも、食べ物に罪はないし……[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]その声を私は……[L]無視することにした。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（貰おう）[改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

　[indent]空腹には勝てず、私は心の中で誰にでもなく言い訳をしながら[r]
菜穂が差し出すガラスの器とスプーンを受け取ろうとして、[L]ふと大事なことに気がついた。[endindent][改頁]
*共通シナリオ|２日目
[jump target=*元のルートへその３]

*元のルートへその２

　[indent]差し出されるままスプーンを受け取ろうとして、私はふと大事なことに気がついた。[endindent][改頁]
*共通シナリオ|２日目
*元のルートへその３
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そうだ……[L]私、スプーンが持てない[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]利き腕には真新しい包帯が幾重にも巻かれ、物を持てる状態ではないと今更気付き手を引っ込めるが、もう遅い。[endindent][改頁]
*共通シナリオ|２日目
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]

　[indent]菜穂にばっちり見られてしまった。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ、あき先輩手が……」[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「う、うん……やっぱり」[改頁]
*共通シナリオ|２日目

　[indent]遠慮しておこうと目を逸らした私の目の前には……[L]何故かスプーンがあった。[endindent][改頁]
*共通シナリオ|２日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「はい、あ～ん」[改頁]
*共通シナリオ|２日目
;菜穂退場
[立絵消]
[クロス time=500]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
;顔グラ消去
[facewin_clear]
;スチル表示
[freeimage layer=0]
[cgv storage="still_2"]
[ト書き]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|２日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]私が食べさせてあげます！[nl]
はい、あ～ん[endindent]」[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、そ、その……え？[endindent]」[改頁]
*共通シナリオ|２日目

　[indent]満面の笑みで私を見ながら、スプーンを差し出す菜穂に私は……[endindent]
*共通シナリオ|選択肢「満面の笑みで私を見ながら、スプーンを差し出す菜穂」
[jump target=*選択肢 cond="f.陥れる>=1"]
[jump target=*びっくりする２]
*選択肢

;---選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="e.png" target=*照れてみせる]
[locate x=320 y=350]
[button graphic="f.png" target=*びっくりする]
[s]


*照れてみせる
[endchoice]
[eval exp="f.陥れる=f.陥れる+1"]
;BGMフェードアウト
[fadeoutbgm time=3000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]この子は……何をやってるの？[endindent]）[改頁]
*共通シナリオ|照れてみせる
;---BGM再生
[fadeinbgm storage="tsbm" time=4000]

　[indent]一瞬の驚きの後、すっと頭が冷えていくのを感じた。[nl]
この子は、私が貴女のことをどう思っているのかなど全く知らないのだろう。[endindent][改頁]
*共通シナリオ|照れてみせる

　[indent]無邪気に、何も知らずに、好意を隠すことなく伝えてくる。[nl]
その無邪気さが、私に苛立ちを、不快感を与えているなんて夢にも思っていないのだろう。[endindent][改頁]
*共通シナリオ|照れてみせる

　[indent]自分は良いことをしているという満足感に満たされているに違いない。[endindent][改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……はは、馬鹿みたい[endindent]）[改頁]
*共通シナリオ|照れてみせる

　[indent]内心で彼女を嗤いながら、私は彼女が望んでいるであろう対応をしてあげることにした。[endindent][改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]希望は、期待は多い方がいい[endindent]）[改頁]
*共通シナリオ|照れてみせる

　[indent]幸せの絶頂から真っ逆さまに落下した時、彼女はどんな顔をするだろう？[endindent][改頁]
*共通シナリオ|照れてみせる

　[indent]その顔を見たら、私の中にどろどろと溜まり続ける不快感もいっしょに落ちていくだろうか。[endindent][改頁]
*共通シナリオ|照れてみせる
;BGMフェードアウト
[fadeoutbgm time=3000]
[freeimage layer=0]
[背景表示 storage="heya_hiru"]
[トラン２]
;菜穂登場
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せん、ぱい？[endindent]」[改頁]
*共通シナリオ|照れてみせる
;---BGM再生
[fadeinbgm storage="naho_bgm" time=4000]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki10"]
;---メッセージレイヤトランジション
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]も、もう驚かせないでよ……[nl]
て、照れる[endindent]」[改頁]
*共通シナリオ|照れてみせる
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、照れないで下さい。[nl]
私とあき先輩の仲ですよ！　はい、あ～ん[endindent]」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……あ、あ～ん？」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]美味しいですか？[endindent]」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]う、うん……美味しい、かな？[endindent]」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]かな？ってなんですか～！[r]
もうっ[endindent]」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ご、ゴメン。[nl]
お、美味しいよ[endindent]」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ふふ」[改頁]
*共通シナリオ|照れてみせる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「はは」[改頁]
*共通シナリオ|照れてみせる
;BGMフェードアウト
[fadeoutbgm time=3000]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ははは、ああ楽しい……[endindent]）[改頁]
*共通シナリオ|照れてみせる

　[indent]真っ逆さまに奈落へと転落する彼女を見るのが、楽しみでならない。[nl]
蜂蜜の甘ったるい味を噛みしめながら、私は菜穂に気付かれぬようほくそ笑んだ。[endindent][改頁]
*共通シナリオ|照れてみせる
;菜穂退場
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[メニュー非]
[メッセ消]
[jump target=*暗転桜子]

*びっくりする
[endchoice]
*びっくりする２
[if eval exp="sf.仲直りEND==true"]
[eval exp="f.びっくり=f.びっくり+1"]
[endif]
;陥れ度高い場合
[jump target=*陥れ度高い cond="f.陥れる>=2"]
*陥れ度低い
[eval exp="f.陥れる=f.陥れる-1"]
;陥れフラグ－１
;選択肢出た場合と出なかった場合共通
*陥れ度高い

[indent]ただただ面食らった。[endindent][改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な、何やってるの？[endindent]」[改頁]
*共通シナリオ|びっくりする
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「何って……[L]あ～ん？」[改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]そ、そうじゃなくて……何で[endindent]」[改頁]
*共通シナリオ|びっくりする
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩、手、うごかせないんでしょう？[nl]
だから、私が食べさせてあげます[endindent]」[改頁]
*共通シナリオ|びっくりする

　[indent]えへへ、と照れたような菜穂の笑顔に私は頬が熱くなるのを感じた。[endindent][改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（！　な、なに？）[改頁]
*共通シナリオ|びっくりする

　[indent]彼女に初めてマイナスではない感情を私の心が訴えてきたことに、私は動揺した。[endindent][改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は、彼女のことが…[L]嫌いだったはず[endindent]）[改頁]
*共通シナリオ|びっくりする

　[indent]一目見た時から、私の心は彼女への嫌悪感で一杯だった。[endindent][改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]な、なのに……可愛い、なんて、[L]な、何なの？[endindent]）[改頁]
*共通シナリオ|びっくりする

　[indent]ますます自分の心が分からなくなる。[endindent][改頁]
*共通シナリオ|びっくりする
[freeimage layer=0]
[背景表示 storage="heya_hiru"]
[トラン２]
;菜穂登場
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せん、ぱい？[endindent]」[改頁]
*共通シナリオ|びっくりする
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki08"]
;---メッセージレイヤトランジション
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！　な、何！？」[改頁]
*共通シナリオ|びっくりする
;菜穂立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！[nl]
あ～ん、ですよ？[endindent]」[改頁]
*共通シナリオ|びっくりする
;顔グラ変化
[facewin_disp storage="aki10"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|びっくりする
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ～ん」[改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……あ、あ～ん」[改頁]
*共通シナリオ|びっくりする
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ふふ、良くできました」[改頁]
*共通シナリオ|びっくりする
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（な、何か……悔しい）[改頁]
*共通シナリオ|びっくりする

　[indent]菜穂に差し出されるままに、私はまるで雛鳥が餌付けされているように咀嚼を続ける。[nl]
そんな私の様子に、菜穂はにこにこと幸せそうに笑っている。[endindent][改頁]
*共通シナリオ|びっくりする

　[indent]何だか釈然としないものを感じながらも、果物の爽やかな甘さに頬は自然と緩んでいく。[endindent][改頁]
*共通シナリオ|びっくりする
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……美味しい）[改頁]
*共通シナリオ|びっくりする

　[indent]ぺろりとヨーグルトを食べきった頃には、[r]
ただただ満足感だけが私の中にあった。[endindent][改頁]
*共通シナリオ|びっくりする

　[indent]……これが私の好物だという話は本当らしい。[endindent][改頁]
*共通シナリオ|びっくりする
;BGMフェードアウト
[fadeoutbgm time=3000]
;菜穂退場
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[jump target=*暗転桜子]





*暗転桜子
[ブラックアウト time="1500"]
[jump storage=sakurako.ks]





*暗転
;---トランジション
[背景表示 storage="heya"]
[トラン２]
;---BGM再生
[fadeinbgm storage="b4_org" time=5000]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]

　[indent]明日の来訪を告げて菜穂が去ってから、数時間後。[nl]
辺りは夕闇に包まれ始めていた。[endindent][改頁]
*共通シナリオ|２日目
;---メッセージレイヤトランジション
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki01"]
;
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は高校……３年）[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（菜穂は中等部…２年）[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は陸上部員、エースだった……らしい[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]少しでも記憶の欠片を拾い集めようと、母や菜穂から仕入れた情報を整理していた私はふと違和感に気付く。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は３年。[nl]
後輩も、いるはず[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]でも、昨日も今日もこの病室を尋ねてきたのは母と菜穂の２人だけ。[nl]
もっと色々な人が来てくれれば、無くした記憶を思い出す糸口も増えるかもしれないのに。[endindent][改頁]
*共通シナリオ|２日目

　[indent]机の上に置いてあるスマホは、ロックがかけられていて、電源は切ったままだ。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]パスワード……[L]分からないし[endindent]）[改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そもそも、同じクラスの人も……いる、はず[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]私が入院したのを知らない？[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]まさか……[L]クラスの子には、先生が言うはず[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]２人が嘘をついているんだろうか。[nl]
私は高校生じゃないし、陸上部員でもない。[endindent][改頁]
*共通シナリオ|２日目

　[indent]……でも、制服はある。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]嘘をつく必要なんてないし……[nl]
そういえば[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]私と菜穂はどうして知り合いなの？[nl]
菜穂の鈍くさそうな、のろのろとした喋り方や動作を見るに、陸上部とはとても思えない。[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]それに、菜穂は中等部の生徒……[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]私とはかなり年が違う。[nl]
普通ならすれ違いもしないはず。[endindent][改頁]
*共通シナリオ|２日目

　[indent]頭の中に何か記憶は残っていないか、と目を瞑り探ってみるがそこにはただ闇が広がるだけ。[endindent][改頁]
*共通シナリオ|２日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……駄目だ、何にも思い出せない[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]ふうっと息を吐き、私は窓の外に目をやった。[endindent][改頁]
*共通シナリオ|２日目
;---トランジション
[背景表示 storage="BG00b0_80"]
[トラン２]

　[indent]そこには真っ赤な秋の空が広がっている。[endindent][改頁]
*共通シナリオ|２日目
;効果音
[playse storage="カラス"]
[seopt volume=80]

　[indent]目を覚ました時、いやに鮮明だった真っ赤な[r]夕暮れの空の色。[endindent][改頁]
*共通シナリオ|２日目

　[indent]何か教えてはくれないかと、じっと見つめてみるがただ遠くでカラスの鳴き声がするだけで……[endindent][改頁]
*共通シナリオ|２日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……明日、菜穂に聞いてみよう[endindent]）[改頁]
*共通シナリオ|２日目

　[indent]私は何度目か分からない溜息を吐きながら、[r]
そっと瞼を閉じた。[endindent][改頁]
*共通シナリオ|２日目
;効果音停止
[stopse]
;BGMフェードアウト
[fadeoutbgm time=3000]
;暗転
;---トランジション
[facewin_clear]
;菜穂独白　END5見られる場合追加
[if eval exp="sf.仲直りEND==true"]
[ブラックアウト time="2000"]
[wait time="2000"]
[jump storage=naho2.ks]
[endif]
[ブラックアウト time="1000"]
[背景表示 storage="i_2"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ３.ks]
;二日目終了
