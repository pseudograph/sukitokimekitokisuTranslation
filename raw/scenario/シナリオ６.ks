;---トランジション
[sakura strage="heya_hiru" time=1000]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;---BGM再生
[fadeinbgm storage="sharara" time=2000]
;岡田さん立ち絵表示
[立絵表示 file="okada01"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]明菜ちゃん、何か良いことあった？[endindent]」[改頁]
*共通シナリオ|６日目
;---メッセージレイヤトランジション
[顔グラあり]
;明菜顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki08"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|６日目

[indent]涼しげな風が窓から吹き込む秋の日。[L][r]
いつも通り岡田さんに包帯を取り替えて貰っていると、岡田さんは不意に微笑みながら声を掛けてきた。[endindent][改頁]
*共通シナリオ|６日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]何だか今日の明菜ちゃん、すっきりしてるっていうか……[L]
なんだろう、昨日までとはちょっと違う感じ[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……そ、そうかな？[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]うん。[L][r]
目が覚めてから、何か悩んでいるみたいだったから……[L]
答えが出たのかな？[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（答え……）[改頁]
*共通シナリオ|６日目

[indent]岡田さんが言っている悩み事が……[L]菜穂のことだとしたなら、答えは出た。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]そうですね。[L][r]
はい、答え……出た気がします[endindent]」[改頁]
*共通シナリオ|６日目
;岡田さん立ち絵表示
[立絵表示 file="okada03"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう、良かった[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

[indent]柔らかく、優しく……慈しむような岡田さんの笑顔に私の頬も緩む。[endindent][改頁]
*共通シナリオ|６日目
;分岐
;フラグ分岐
[jump target=*陥れ度高い cond="f.陥れる>=6"]
[jump target=*陥れ度低い cond="f.陥れる<=5"]




*陥れ度高い
;7以上
;BGMフェードアウト
[fadeoutbgm time=1000]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

[indent]……[L]緩んだその頬は何処か歪な笑顔になった。[endindent][改頁]
*共通シナリオ|６日目
;---BGM再生
[fadeinbgm storage="m_namida2" time=1500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そう……[L]わかったの[endindent]）[改頁]
*共通シナリオ|６日目

[indent]私の願いが。[endindent][改頁]
*共通シナリオ|６日目

[indent]私の望みが。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂を突き落とすことなんかじゃなかった……[L]ははっ[endindent]）[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……？」[改頁]
;退場
[立絵消]
[クロス time=500]
*共通シナリオ|６日目

[indent]不意に私は突き刺さるような視線を感じた。[endindent][改頁]
*共通シナリオ|６日目

[indent]目線だけ動かした先には……[L]ドアの隙間から覗く、菜穂のまあるい目玉。[endindent][改頁]
*共通シナリオ|６日目
;効果音
[playse storage="ガンッ"]
[seopt volume=50]
;一瞬目玉のスチル
;背景変更
[image storage=still_1 layer=base page=back]
[trans method=crossfade time=300]
[wt]
;背景変更
[image storage=heya_hiru layer=base page=back]
[trans method=crossfade time=300]
[wt]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]なっちゃん……ふふっ[endindent]）[改頁]
*共通シナリオ|６日目

[indent]そんなところで何やってるの？[endindent][改頁]
*共通シナリオ|６日目

[indent]私が気になる？[endindent][改頁]
*共通シナリオ|６日目

[indent]岡田さんと何やってるのか気になる？[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ははははっ[endindent]）[改頁]
*共通シナリオ|６日目

楽しい。[改頁]
*共通シナリオ|６日目

嬉しい。[改頁]
*共通シナリオ|６日目

幸せ。[改頁]
*共通シナリオ|６日目

[indent]私は心の底からそう思った。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]なっちゃん……[L]目を逸らさないでね[endindent]）[改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「岡田さん……」[改頁]
*共通シナリオ|６日目
;岡田登場
[立絵表示 file="okada01"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「うん？」[改頁]
*共通シナリオ|６日目
;退場
[立絵消]
[クロス time=500]
[facewin_clear]
[ト書き]

[indent]私は菜穂に気付かない振りをして、岡田さんと歓談する……[L][r]いつもよりずっと親密に。[endindent][改頁]
*共通シナリオ|６日目

[indent]そして心の中で一人ほくそ笑むのだ。[endindent][改頁]
*共通シナリオ|６日目

[indent]菜穂の嫉妬を確信して。[endindent][改頁]
*共通シナリオ|６日目
;暗転
[ブラックアウト time="1500"]
;菜穂登場へ飛ぶ
[jump target=*菜穂登場]



*陥れ度低い
;7以下
;退場
[立絵消]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]岡田さんはいい人だな……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]もし、今何に悩んでいたのかと聞かれたらきっと答えに窮してしまう。[endindent][改頁]
*共通シナリオ|６日目

[indent]でも……[L]岡田さんは軽く微笑むと、静かに黙ってまた包帯を変える作業に戻る。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……心が読めるのかな[endindent]）[改頁]
*共通シナリオ|６日目

[indent]世の中、岡田さんのような人たちばかりだったなら……[L]
私が岡田さんのように人を労れる人間だったなら。[endindent][改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]きっと菜穂を傷つけたりしなかったのに……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]あんなにも菜穂を追いつめ、それを全て菜穂のせいにしていた自分に腹が立つ。[endindent][改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]でも……[L]これからは違う[endindent]）[改頁]
*共通シナリオ|６日目

[indent]もうあんなこと菜穂にさせない。[endindent][改頁]
*共通シナリオ|６日目

[indent]すれ違ってしまった私たちがやっとまた交差出来たんだから……[L]また同じ間違いを繰り返してたまるか。[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|６日目
;効果音
[playse storage="不穏な効果音_高音"]

[indent]そう本当に思っているのに、いるはずなのに……[L]何処か不安が消えない。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]自分が……[L]こんなに信用できないなんて[endindent]）[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
;---BGM再生
[fadeinbgm storage="soseion" time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……っ」[改頁]
*共通シナリオ|６日目
;岡田登場
[立絵表示 file="okada02"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]？[L]　明菜ちゃん、大丈夫？[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、はい。[r]
大丈夫……です[endindent]」[改頁]
*共通シナリオ|６日目

[indent]無意識の内に身体に力が入ってしまったらしい。[endindent][改頁]
*共通シナリオ|６日目

[indent]強く握りしめてしまっていた手の傷が痛む。[endindent][改頁]
*共通シナリオ|６日目
;岡田登場
[立絵表示 file="okada04"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]もう、力入れちゃだめよ……[L][r]あ、くすぐったかった？[endindent]」[改頁]
*共通シナリオ|６日目
;岡田登場
[立絵表示 file="okada02"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、いえ！[L]　そんなことは……[endindent]」[改頁]
*共通シナリオ|６日目
;岡田登場
[立絵表示 file="okada01"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう？[L][r]
包帯、くすぐったかったりしたら言ってね[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「はい」[改頁]
;退場
[立絵消]
[クロス time=500]
*共通シナリオ|６日目

[indent]そう岡田さんに答えながら、私はじっと一点を見つめ自分の心の中を覗く……[endindent][改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ああ、よかった[endindent]）[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]コインは……回ってない[endindent]）[改頁]
*共通シナリオ|６日目

[indent]その事実に酷く私はほっとした。[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;暗転
[facewin_clear]
[ブラックアウト time="1500"]
;菜穂登場へ飛ぶ
[jump target=*菜穂登場]



*菜穂登場
;背景変更
[背景表示 storage="heya_hiru"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]
;岡田登場
[立絵表示 file="okada01"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]……じゃあ、また検診の時にね。[L][r]
何かあったらすぐナースコールしてね[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
;---メッセージレイヤトランジション
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|６日目
;ドア開ける音
[playse storage="ガラガラ"]
[seopt volume=100]
[ws canskip=true]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]…あら、菜穂ちゃん[endindent]」[改頁]
*共通シナリオ|６日目
;効果音
[playse storage="香り"]
[seopt volume=100]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ぁ」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ、菜穂」[改頁]
*共通シナリオ|６日目

[indent]岡田さんの呟き声につられるまま、私は出入り口の方を向いた。[endindent][改頁]
*共通シナリオ|６日目
;退場
[立絵消]
[クロス time=500]
;岡田さん立ち絵表示
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
;菜穂登場
[立絵表示 file="naho02" layer="0" pos="left"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="naho_bgm" time=1000]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]ちょっと通してね[endindent]」[改頁]
*共通シナリオ|６日目
;菜穂登場
[立絵表示 file="naho04" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「は、はい……」[改頁]
;退場
[立絵消 layer="1"]
[クロス time=500]
*共通シナリオ|６日目
;ドア閉まる音
;効果音
[playse storage="ゆっくりしていってね"]
[seopt volume=200]
[ws canskip=true]

[indent]またいつかのように、岡田さんの背をじっと見つめ……こちらを振り返る。[endindent][改頁]
*共通シナリオ|６日目
;退場
[立絵消 layer="0"]
[クロス time=500]
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……？」[改頁]
*共通シナリオ|６日目

[indent]きっと笑っているだろう、と菜穂に微笑もうとした私はそのまま止まる。[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=500]
;菜穂登場
[立絵表示 file="naho07"]
[クロス time=500]

[indent]菜穂は……[L]笑ってなかった。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]どうか、した？[L]……！[endindent]」[改頁]
*共通シナリオ|６日目
;菜穂退場
[立絵消]
[クロス time=500]
;効果音
[playse storage="翻るカーテン"]
;画面揺れる
[quake time=2000 timemode=ms hmax=10 vmax=10]
[wq]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
;背景変更
[image storage=kuro layer=base page=back]
[trans method=crossfade time=500]
[wt]

[indent]見間違いかと思った。[endindent][改頁]
*共通シナリオ|６日目

[indent]勘違いかと思った。[endindent][改頁]
*共通シナリオ|６日目

[indent]菜穂の真白なその手が私の首に伸びて来るだなんて……[L]
何て、悪夢。[endindent][改頁]
*共通シナリオ|６日目
;スチル表示
[freeimage layer=0]
[cgv storage="still_9"]
;---BGM再生
[fadeinbgm storage="hitogo" time=500]
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な…っ……か、はっ[endindent]」[改頁]
*共通シナリオ|６日目
;不穏な効果音_高音
[playse storage="ホラー"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき、せんぱいは……わたしだけ見てればいいのっ……[L]
わたしだけ、見てれば……！！[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]っ、な、何……[L]言って……っ[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふふふ、うふふふふふ[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、分かってます？[r]
あの人、あの看護師さん見る時の目……[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|６日目
[freeimage layer=0]
[cgv storage="still_9b"]
;BGMフェードアウト
[fadeoutbgm time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし……そっくり[endindent]」[改頁]
*共通シナリオ|６日目

[indent]嗤っていたはずの菜穂の顔が歪む。[endindent][改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぇ」[改頁]
*共通シナリオ|６日目
;効果音停止
[stopse]
;---BGM再生
[fadeinbgm storage="m_namida2" time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし、が……あき先輩のこと考えてる時と……[L]
そっくりっ……！！[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし、には……[L]そんな目してくれないのに……[L]
っしてくれないのに！！！！[endindent]」[改頁]
;画面揺れる
[quake time=1000 timemode=ms hmax=10 vmax=10]
[wq]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（くる……っし）[改頁]
*共通シナリオ|６日目

[indent]息苦しさから、何も考えられない。[endindent][改頁]
*共通シナリオ|６日目

[indent]菜穂の声も、言葉も私の中に意味をなして入ってこない。[endindent][改頁]
*共通シナリオ|６日目

[indent]菜穂の白く細い手を引き剥がそうと、私の手は彼女の手に絡まる。[endindent][改頁]
*共通シナリオ|６日目

[indent]爪を立てる。[endindent][改頁]
*共通シナリオ|６日目

[indent]彼女の肉を……[L]抉る。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……っぁ」[改頁]
*共通シナリオ|６日目

[indent]遠のきそうな意識の中、嫌な感触がした。[endindent][改頁]
*共通シナリオ|６日目

[indent]けれど、菜穂は気にした様子もない。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]何で？[L]　なんでなんでなんでなんでっ！！！！[r]
なんでせんぱいは…っ…そんなに……っ[endindent]」[改頁]
*共通シナリオ|６日目

[indent]自由なの。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……じ、[L]ゆう……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]私が？[endindent][改頁]
*共通シナリオ|６日目

[indent]絞り出すように吐き出した彼女のその言葉だけが、私の中に入ってきた。[endindent][改頁]
*共通シナリオ|６日目

[indent]私は……[endindent][改頁]
*共通シナリオ|６日目
;分岐
;フラグ分岐
[jump target=*受け入れる cond="f.陥れる>=6"]
[jump target=*突き飛ばす cond="f.陥れる<=5"]



;7以下
*突き飛ばす
;BGMフェードアウト
[fadeoutbgm time=1000]
;暗転
[facewin_clear]
[ブラックアウト time="1000"]
;効果音
[playse storage="ガンッ"]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;振動
[quake time=2000 timemode=ms hmax=10 vmax=10]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「っきゃ」[改頁]
*共通シナリオ|６日目
;---メッセージレイヤトランジション
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki03"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]っ……はあ……[L]はあはあはあっ[endindent]」[改頁]
*共通シナリオ|６日目

[indent]彼女の言葉の意味を考える前に……[L]私は菜穂を突き飛ばしていた。[endindent][改頁]
*共通シナリオ|６日目
[playse storage="翻るカーテン"]
;背景変更
[背景表示 storage="heya_hiru"]
[トラン２]

[indent]どさっと倒れ込んだ菜穂が私を見上げる……[endindent][改頁]
*共通シナリオ|６日目
[playse storage="ホラー"]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|６日目

[indent]その顔に、その目に私はおののいた。[endindent][改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]わた、し　は……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]言葉もなく、私たちは見つめ合う。[endindent][改頁]
*共通シナリオ|６日目

[indent]菜穂のその目に色は……[L]なかった。[endindent][改頁]
*共通シナリオ|６日目

[indent]ただ酷く顔色の悪い私が映り込み……[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あは……ははは[endindent]」[改頁]
*共通シナリオ|６日目

[indent]いびつに[L]歪んだ。[endindent][改頁]
*共通シナリオ|６日目
;暗転
;---トランジション
[facewin_clear]
[ブラックアウト time="1000"]
;効果音停止
[stopse]
;ＢＡＤＥＮＤ
[wc time=20]
[背景表示 storage="bad_end"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]


;7以上
*受け入れる
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|６日目

[indent]彼女の腕を抉っていた手指を離す。[endindent][改頁]
*共通シナリオ|６日目

そして……[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=3000]
;顔グラ変化
[facewin_disp storage="aki05"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]っは……[L]はは[endindent]」[改頁]
*共通シナリオ|６日目

[indent]笑いが込み上げてきた。[endindent][改頁]
*共通シナリオ|６日目
;---BGM再生
[fadeinbgm storage="bokukao" time=3000]

[indent]絞められた喉からは、笑い声とは言えない聞き苦しい音が漏れる。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]わたし、は自由なんかじゃ…っ…[L]ない、のに……[endindent]）[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]はははは…っ…[endindent]）[改頁]
*共通シナリオ|６日目

[indent]期待以上の菜穂の反応に、私は込み上げてくる笑いが抑えられない。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せんぱ……」[改頁]
*共通シナリオ|６日目
;効果音　香り
[playse storage="香り"]
[seopt volume=200]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]だって、こんなにも……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]私には菜穂の匂いがこびり付いてる。[endindent][改頁]
*共通シナリオ|６日目

[indent]この匂いが消えない限り……[L]私は菜穂に縛り付けられているのだ。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……ふふふ）[改頁]
*共通シナリオ|６日目

[indent]これで菜穂が安心するなら。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（いいよ……）[改頁]
*共通シナリオ|６日目

[indent]これで菜穂の中に私が残るなら……[L][r]
私に菜穂の匂いが染みついて消えないみたいに。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そうしたら……[L]きっと、しあわせ[endindent]）[改頁]
*共通シナリオ|６日目

[indent]自然と笑みが浮かぶ。[endindent][改頁]
*共通シナリオ|６日目

[indent]そんな自分に、頭がおかしくなっちゃったのかな、[r]
なんて考えながら私は身体の力を抜いた。[endindent][改頁]
*共通シナリオ|６日目
[facewin_clear]
;背景変更
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1500"]
[ト書き]

[indent]こんなにも菜穂に想って愛してもらえて幸せだなんて……[L][r]くるってる？[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=1000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……っふふ[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|６日目
[背景表示 storage="heya_hiru"]
[トラン rule="中心から" time="1500"]

[indent]菜穂は驚いたようにばっと手を離し、後退る。[endindent][改頁]
*共通シナリオ|６日目
;菜穂立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せ、せんぱ……[L]なん、でっ[endindent]」[改頁]
*共通シナリオ|６日目
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki10"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]げほげほ、げほっ…！[r]
はっ…はあっ[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]じ、じぶんでやっといて…っ…なんで、[L]はないんじゃない…っ…？[endindent]」[改頁]
*共通シナリオ|６日目

[indent]菜穂の言葉が何だか可笑しくて、私は笑う。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]だ、だって……[L]だってだって[endindent]」[改頁]
*共通シナリオ|６日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ははっ」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|６日目
;---BGM再生
[fadeinbgm storage="kirara" time=2000]

[indent]私は動揺する菜穂を宥めるように抱きしめる。[endindent][改頁]
*共通シナリオ|６日目

[indent]びくりと菜穂の身体は震え、強ばる。[endindent][改頁]
*共通シナリオ|６日目

[indent]けれどそのまま抱きしめていると……[L]菜穂の身体の力が抜けるのを感じた。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「よしよし……」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せん、ぱ……」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ごめんね？[L]　不安にさせて……[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……～っ」[改頁]
*共通シナリオ|６日目
;効果音　香り
[playse storage="香り"]
;菜穂退場
[立絵消]
[クロス time=500]

[indent]その時、されるがままだった菜穂の手が私の背に縋り付いた。[endindent][改頁]
*共通シナリオ|６日目

[indent]痛いくらいの強さで縋り付く菜穂に私は……[L][r]ただただ幸せだった。[endindent][改頁]
*共通シナリオ|６日目

[indent]ぽろぽろと、その大きな瞳から涙を流しているのだろう。[L]
肩がその呼吸に合わせて上下する。[endindent][改頁]
*共通シナリオ|６日目

[indent]その動きすら愛おしい。[endindent][改頁]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;明菜退場
;---トランジション
[facewin_clear]
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1500"]
;効果音
[playse storage="不穏な効果音_高音"]
[ト書き]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ほんとうにゴメンね、[L]なっちゃん[endindent]）[改頁]
*共通シナリオ|６日目

[indent]きっとまた私は貴女を傷つけるけど、許してね。[endindent][改頁]
*共通シナリオ|６日目

[indent]だって貴女が私のために泣きじゃくる姿が、叫びたくなるほど愛らしくて……[endindent][改頁]
*共通シナリオ|６日目

[indent]引き裂きたいくらい……[L]にくらしいから。[endindent][改頁]
*共通シナリオ|６日目

[indent]ふふふ、と私は笑う。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ああ……幸せ[endindent]）[改頁]
*共通シナリオ|６日目

[indent]こんなに菜穂に愛されて。[endindent][改頁]
*共通シナリオ|６日目
;背景変更
[背景表示 storage="heya_hiru"]
[トラン rule="中心から" time="1500"]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]好きだよ……[L]なっちゃん[endindent]」[改頁]
*共通シナリオ|６日目
;菜穂登場
[立絵表示 file="naho05"]
[クロス time=500]
;効果音
[playse storage="香り"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]～っ！[L][r]
わた、しも、わたし、も……ですっ！[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わた、しを嫌わないで…っ…捨てないでっ！[endindent]」[改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]なっちゃん……[endindent]」[改頁]
*共通シナリオ|６日目

[indent]私は困ったように微笑んでみせる。[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;菜穂退場
[立絵消]
[クロス time=500]
;背景変更
[facewin_clear]
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1500"]
[ト書き]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……ふふふ）[改頁]
*共通シナリオ|６日目
;---BGM再生
[fadeinbgm storage="yuh" time=2000]

[indent]嫌うわけがない。[endindent][改頁]
*共通シナリオ|６日目

[indent]捨てるわけがない。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]なっちゃん、私は貴女を突き落とすことだって出来たんだから……[endindent]）[改頁]
*共通シナリオ|６日目

[indent]今更そんなことするはずがない。[endindent][改頁]
*共通シナリオ|６日目

[indent]そう言って菜穂を安心させてあげることも出来た……[L][r]
でも、そんなことはしない。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]だって……[L]不公平でしょう？[endindent]）[改頁]
*共通シナリオ|６日目

[indent]私にばかり菜穂の匂いが染みついているのは。[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（今度は……）[改頁]
*共通シナリオ|６日目

私の番。[改頁]
*共通シナリオ|６日目

[indent]私のことで思い悩んで。[endindent][改頁]
*共通シナリオ|６日目

[indent]気まぐれな私の態度に不安になって。[endindent][改頁]
*共通シナリオ|６日目

[indent]そのまあるい目には私だけ映して。[endindent][改頁]
*共通シナリオ|６日目

[indent]私のことだけ……[L]考えてね？[endindent][改頁]
*共通シナリオ|６日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ふふふ、あはははは[endindent]）[改頁]
*共通シナリオ|６日目

[indent]そうしたら……[L]きっとしあわせ。[endindent][改頁]
*共通シナリオ|６日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;暗転
[facewin_clear]
[ブラックアウト time="1000"]
;効果音停止
[stopse]
[eval exp="f.END5=f.END1+1"]
[eval exp="sf.END5=true"]
[eval exp="sf.おまけ=true"]
;---END5スチルトランジション
[背景表示 storage="still_end5"]
[トラン２]
[fadeinbgm storage="m_genkai" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]
;
;
*END5
;背景変更
[背景表示 storage="BG00a1_80"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
;---BGM再生
[fadeinbgm storage="iza-yoi_en" time=5000]

[indent]抜けるような青い空。[endindent][改頁]
*共通シナリオ|エピローグ
[sakura_init]
[sakura_start forevisible=false backvisible=true]
[trans method=crossfade time=1000][wt]
;背景変更
[背景表示 storage="BG14a_80_0"]
[トラン２]

[indent]今日は、卒業式。[endindent][改頁]
;---トランジション
[ブラックアウト time="1500"]
*共通シナリオ|エピローグ
;背景変更
[背景表示 storage="bg00"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]
;菜穂登場
;菜穂立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、卒業おめでとう御座いますっ[endindent]」[改頁]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki11"]
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]有り難う、なっちゃん[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]卒業証書を片手に持ち替え、私は菜穂から大きな花束を受け取る。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]まあ、卒業っていってもエスカレーターで大学だから、あんまり実感ないんだけどね[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、そうですね……[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]

[indent]私の軽口に微笑んだ後、何故か菜穂は黙り込んだ。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|エピローグ

[indent]不意に黙り込んだ菜穂に私は笑いかける。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]どうしたの？[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho14"]
[クロス time=500]
[wait time="500"]
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！[L]　せ、せんぱいがここにいてくれて……[L][r]嬉しいなって、思って……[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]なっちゃん……[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]本当にそう思っているのだろう。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]言葉より顕著に菜穂の心を教えてくれる彼女の真っ赤なその頬に、私の心はしあわせで満たされる。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……[L]何処かへなんて行くわけがない[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]だって行く必要がないんだから。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]私が欲しいものは……[L]ここにしかない。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ふふふ）[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont][r]

「[indent]もう……[L]相変わらず可愛いなあ、なっちゃんは[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せ、せんぱいっ」[改頁]
*共通シナリオ|エピローグ

;菜穂退場
[立絵消]
[クロス time=500]
;明菜退場
[facewin_clear]
[sakura_opts dencity=50]
;スチル表示
[freeimage layer=0]
[cgv storage="still_10"]
[ト書き]

[indent]照れてじたばたする菜穂を押さえ込むように、私は菜穂を包み込む。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[L]人が、見てます[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]いいじゃん、見せておけば[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……もぅ」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ああ……[L]しあわせ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]暖かい春の日差しと同じくらい暖かい菜穂の温もりに包まれ、[r]私は満たされた思いを感じる。[endindent][改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=1000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（でも……）[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="不穏な効果音_高音"]
[sakura_pause]

[indent]まだ足りない。[endindent][改頁]
*共通シナリオ|エピローグ
[cgv storage="still_10b"]

[indent]私の心は何処までも貪欲で……[L]もっともっとと喚き散らす。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="不穏な効果音_高音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]大学は……少し遠い[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]中学と高校の差以上に、二人の距離は開くだろう。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そうしたら……[L]きっと[endindent]）[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="鼓動"]

[indent]菜穂は不安になる。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="鼓動"]

[indent]菜穂の心は不安定になる。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]きっと菜穂は……[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="不穏な効果音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]あの時みたいな気持ちを私にぶつけてくれる……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]私を想って想って想って想って……[L]私を傷つけてくれる。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]そうして、私の匂いがまた菜穂へ移るのだ。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]
[seopt volume=100]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……[L]ああ、楽しみ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]未来の幸せを瞼の裏に思い描きながら、私は菜穂を抱く手に力を込めた。[endindent][改頁]
*共通シナリオ|エピローグ
[backlay]
[sakura_opts forevisible=true backvisible=false]
[trans method=crossfade time=2000][wt]
[sakura_stop]
[sakura_uninit]
;---トランジション
[ブラックアウト time="1500"]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]
;効果音
[playse storage="ホラー"]

[indent]……だから[L]気付かない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]私は自分のことで一杯で……[L]何にも気付かない。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……[L]ふふ」[改頁]
*共通シナリオ|エピローグ
;菜穂

[indent]満足そうな私を見て、菜穂もまた満足そうに嗤ったことになんか……[L]気付けない。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音　香り
[playse storage="香り"]
[seopt volume=200]

[indent]私の身体からは相変わらず甘い匂いが……[L]菜穂の匂いが漂い続ける。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]身体の芯まで染みついて、洗ったって剥がしたってきっと取れやしない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]あまいあまいその香り……[endindent][改頁]
*共通シナリオ|エピローグ

[indent]捕まったのは……[L]どっち？[endindent][改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;ＥＮＤ５　運命の恋人
[ブラックアウト time="1500"]
[wc time=20]
[背景表示 storage="end5"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]
