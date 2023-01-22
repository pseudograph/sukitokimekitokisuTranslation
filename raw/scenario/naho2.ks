;ヨーグルト後
*共通シナリオ|菜穂独白2
;---トランジション
[背景表示 storage="eki_yuu"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;---BGM再生
[fadeinbgm storage="m_namida2" time=4000]

[indent]………………[endindent][改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="足音.wav"]
;菜穂登場
[立絵表示 file="naho04" pos="right"]
[クロス time=500]
;効果音
[playse storage="tel_pururu"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|菜穂独白2

『[indent]おかけになった番号は……[endindent]』[改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="tel_pupu"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]せん、ぱい[endindent]）[改頁]
;効果音停止
[stopse]
*共通シナリオ|菜穂独白2
[indent]何度目かのアナウンスを途中で切る。[nl]
何度かけても無機質な女性の声聞こえてくるだけ。[endindent][改頁]
*共通シナリオ|菜穂独白2
[indent]分かってる。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho03" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]わたしって……ほんとうに、ばか……[endindent]）[改頁]
*共通シナリオ|菜穂独白2
[indent]電源が入ってない電話に、繋がるわけなんてないのに。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho04" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]今日だって、会ってきた……でしょ[endindent]）[改頁]
*共通シナリオ|菜穂独白2
[indent]私のことをすっかり忘れてしまった先輩に。[endindent][改頁]
*共通シナリオ|菜穂独白2
;分岐
;びっくりした
[jump target=*びっくりした場合 cond="f.びっくり>=1"]
;陥れ度高い場合
[jump target=*陥れ度高い cond="f.陥れる>=2"]
;それ以外は共通へ
[jump target=*共通]


*陥れ度高い
[eval exp="f.陥れる=f.陥れる+1"]
;BGMフェードアウト
[fadeoutbgm time=3000]
;END1へ行く
;菜穂登場
[立絵表示 file="naho06" pos="right"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="bokukao" time=10000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……あの人は、だあれ[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]あき先輩とおんなじ顔で、おんなじ声で……[L]でも、違う顔で笑うあの人。[endindent][改頁]
;菜穂登場
[立絵表示 file="naho05" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、何処に行っちゃったの……？[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]あの人が何処かへ連れていったの？[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho07" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……返して[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]それとも、あの人の中の何処か奥深くでまだ眠っているの？[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho08" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]起きて下さい、せんぱい[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]罰せられるなら、あの人じゃなくあき先輩、貴女に。[endindent][改頁]
*共通シナリオ|菜穂独白2
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;---トランジション
[ブラックアウト time="1500"]
[wait time="2000"]
[背景表示 storage="i_2"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ３.ks]
;ここまで


*びっくりした場合
;菜穂登場
[立絵表示 file="naho05" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]でも、ヨーグルト……食べてくれた[endindent]）[改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho03" pos="right"]
[クロス time=500]
[indent]びっくりした顔……私の知ってる、あき先輩だった。[nl]
私のことをすっかり忘れていても、やっぱりあの人はあき先輩なんだ。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho05" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]私のことを思い出して。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho12" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……だめ[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]私のことを思い出さないで。[endindent][改頁]
*共通シナリオ|菜穂独白2
[indent]私の中にある二つの気持ちを持て余し、私はぎゅっと携帯電話を握り締めていた。[endindent][改頁]
*共通シナリオ|菜穂独白2
[jump target=*共通]
;ここまで





*共通
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]会いたい、なんて……ほんと、ばか[endindent]）[改頁]
*共通シナリオ|菜穂独白2
[indent]だって、手の届かないところへ行ってしまうせんぱいを此処に留めて置く方法が分からなかった。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho08" pos="right"]
[クロス time=500]
[indent]摘んだお花が誰かのものにならない方法なんて、私の手で枯らすことしか思いつかなかった。[endindent][改頁]
*共通シナリオ|菜穂独白2
[indent]何回電話掛けたかな。[nl]
何回メール送ったかな。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho05" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]いつから繋がる前に切れるようになったかな。[nl]
いつから返信が途切れるようになったかな。[endindent][改頁]
*共通シナリオ|菜穂独白2
;菜穂登場
[立絵表示 file="naho12" pos="right"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]どこで私、間違えたのかな……[endindent]）[改頁]
*共通シナリオ|菜穂独白2
[indent]舞い上がって、何を見落としたんだろう。[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="tel_pururu"]

[indent]もう何度目か分からないリダイアル。[endindent][改頁]
*共通シナリオ|菜穂独白2
[indent]目から何かが溢れ出そうで、思わず空を見上げる。[endindent][改頁]
[背景表示 storage="BG00b0_80"]
[レイヤ消]
[トラン２]
*共通シナリオ|菜穂独白2

[indent]頭上に広がる空は、綺麗な夕暮れ色をしていた。[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]あの日も、こんな綺麗な空だったのかな……[endindent]）[改頁]
*共通シナリオ|菜穂独白2

[indent]落ちていくあき先輩に私の目は釘付けで、空の色なんてまるで覚えていない。[endindent][改頁]
*共通シナリオ|菜穂独白2

[indent]せんぱいが落ちていく一瞬の姿を、私はなんて綺麗だろうと思った。[nl]
桜の花びらが散る姿を綺麗だと思うように。[endindent][改頁]
*共通シナリオ|菜穂独白2

[indent]今、あき先輩は私だけのものだと思った。[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]なのに……[endindent]）[改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="tel_pupu"]

『[indent]おかけになった番号は……[endindent]』[改頁]
*共通シナリオ|菜穂独白2
[indent]繋がらない電話。[nl]
こんなに綺麗な空の色を、私はせんぱいに教えてあげられない。[endindent][改頁]
;効果音停止
[stopse]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]会いたい、です……あき先輩[endindent]」[改頁]
*共通シナリオ|菜穂独白2
[indent]ずっと一緒だって約束したのに。[endindent][改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="tel_pururu"]

[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]

[indent]せんぱい、大好き。[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……ふふ[endindent]」[改頁]

[indent]せんぱいなんて、大嫌い。[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
（[indent]だいきらいです……せんぱい[endindent]）[改頁]
*共通シナリオ|菜穂独白2

[indent]なのに。[nl]
受話器越しに、いつかみたいに笑ってなっちゃんって呼んでほしいなんて……[endindent][改頁]
*共通シナリオ|菜穂独白2
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ…っ…[endindent]」[改頁]
*共通シナリオ|菜穂独白2
;効果音
[playse storage="tel_pupu"]
[indent]あの秋の夕暮れに、私が散らしたのに……ほんとに、ばか。[endindent][改頁]
*共通シナリオ|菜穂独白2
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;---トランジション
[ブラックアウト time="1500"]
[wait time="2000"]
[背景表示 storage="i_2"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ３.ks]
