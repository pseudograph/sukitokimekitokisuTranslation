;---トランジション
[sakura strage="ten" time=1000]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;効果音
[playse storage="ガヤ"]
[seopt volume=50]
*共通シナリオ|５日目
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ん」[改頁]
*共通シナリオ|５日目

[indent]不意に意識が覚醒する。[endindent][改頁]
*共通シナリオ|５日目

[indent]瞼の向こうに眩しさを感じる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……ああ、私寝ちゃったんだ[endindent]）[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="b4_org" time=3000]

[indent]暗い病室で取り留めのない考え事をしていたはずの私だったが、いつのまにか外は明るく、朝を迎えていた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……今日って何曜日なんだろ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]まだぼうっとした頭でそんなことを考える。[endindent][改頁]
*共通シナリオ|５日目

[indent]そういえば、病院に来てからカレンダーを見ていないことに気付く。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont][r]

（[indent]別にどうでもいいんだけど……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]そんなことをぼんやり考えながら、天井を眺めていると……[L]
私の脳は嫌でも彼女のことを考えてしまう。[endindent][改頁]
*共通シナリオ|５日目
[jump  target=*陥れない cond="f.仲直り>=2"]
[jump  target=*陥れる6 cond="f.陥れる>=4"]
[jump  target=*陥れない]


*陥れる6
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……[endindent]）[改頁]
*共通シナリオ|５日目
;コインが転がる音
[playse storage="m_kouka01"]

[indent]眠りに落ちる前には確かに答えが出たはずなのに……。[endindent][改頁]
*共通シナリオ|５日目

[indent]眠りに落ちた後、私の中に戻ってきた記憶がまた私を揺さぶる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]くそっ[endindent]）[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="とんと押す"]

いらいらする気持ちのままに、私はベッドを叩き付けると……立ち上がった。[改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=3000]
[jump  target=*歩く]


*陥れない

[indent]答えのでないまま眠りについたのだから、当然といえば当然だった。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]やることがないと……[L]余計なことばっかり考えちゃうんだな[endindent]）[改頁]
*共通シナリオ|５日目

[indent]今までは何かに悩んでいても、グラウンドを全速力で走れば全てを忘れられた。[endindent][改頁]
*共通シナリオ|５日目

[indent]身体の奥のもやもやとした何かは、風を切る心地よさの中で消えていった。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
;明菜退場
[facewin_clear]
;暗転
[背景表示 storage="全黒"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]

[indent]目を瞑って私は思い出す。[endindent][改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="issho" time=3000]
;---oldMovie
[oldMovieinit left=0 top=0 width=800 height=600]
;背景表示
[背景表示 storage="koutei"]
[トラン rule="中心から" time="1500"]

[indent]手足を思い切り動かして、土を蹴る感触。[endindent][改頁]
*共通シナリオ|５日目

[indent]頬に、額に感じる風の圧力。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……ああ、走りたい[endindent]）[改頁]
*共通シナリオ|５日目

[indent]思い切り走って、発散させたい。[endindent][改頁]
*共通シナリオ|５日目

[indent]一日のほぼ全てをベッドの上で過ごしている今の私の中には、もやもやとした不快な何かが燻るばかりで……。[endindent][改頁]
*共通シナリオ|５日目
[oldMovieuninit]
;背景変更
[背景表示 storage="heya_hiru"]
[トラン rule="中心から" time="1500"]
;BGMフェードアウト
[fadeoutbgm time=1000]
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
「……！」[改頁]
*共通シナリオ|５日目

[indent]また彼女のことを考え、深みに嵌っていってしまいそうな自分を振り払うように、私は頭を強く左右に振った。[endindent][改頁]
*共通シナリオ|５日目
;揺れる効果
[quake time=500 timemode=ms hmax=10 vmax=0]
[wq]
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
*歩く
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]少し、歩こう[endindent]）[改頁]
*共通シナリオ|５日目

[indent]歩けば少しは気が晴れるかもしれない。[endindent][改頁]
*共通シナリオ|５日目

[indent]未だぎしぎしと軋む身体を無視して、私はベッドから起きあがった。[endindent][改頁]
*共通シナリオ|５日目
;暗転
;---トランジション
[facewin_clear]
[ブラックアウト time="1500"]
;フラグ分岐
[jump target=*陥れ＋4以上（最大7） cond="f.仲直り>=2"]
[jump target=*陥れ＋4以上（最大7） cond="f.陥れる>=5"]
[jump target=*夢を見てない]




*夢を見てない
;---トランジション
[背景表示 storage="byousitumae001"]
[トラン２]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;---BGM再生
[fadeinbgm storage="b4_org" time=3000]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]なっちゃん……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]気晴らしに病室を出たはずなのに、壁づたいにふらふらと歩きながら、私は結局……菜穂のことを考えていた。[endindent][改頁]
*共通シナリオ|５日目

[indent]目覚めた時に感じた感情が嘘だったかのように、私の中の菜穂への感情は真逆へと反転していた。[endindent][改頁]
*共通シナリオ|５日目

[indent]……[L]いや、元の私に戻ったと言った方がいいのかもしれない。[endindent][改頁]
*共通シナリオ|５日目

[indent]取り戻した記憶の中の私の笑顔は、菜穂への嫌悪や不快感を微塵も感じさせなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]そこにあったのは純粋な好意だけ。[endindent][改頁]
*共通シナリオ|５日目

（[indent]……でも、きっと[endindent]）[改頁]
*共通シナリオ|５日目

[indent]二人の間に何かあったのだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]記憶のなくなった私の中でも生き続ける位、[r]強烈な負の感情を持つほどの何かが。[endindent][改頁]
*共通シナリオ|５日目
;---トランジション
[背景表示 storage="byouin_kaidan001"]
[トラン time=1500]
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は……[endindent]）[改頁]
*共通シナリオ|５日目
;コインが転がる音
[playse storage="m_kouka01"]

好意。[endindent][改頁]
*共通シナリオ|５日目
;コインが転がる音
[playse storage="m_kouka01"]

嫌悪。[endindent][改頁]
*共通シナリオ|５日目

[indent]そんな相反する裏表を持ってくるくると回り続ける己の中のコインを持て余しながら、よく前も見ず壁をつたって歩いていた私の手は[endindent][改頁]
*共通シナリオ|５日目

[indent]不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
;心臓
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目
;揺れる効果
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]

[indent]足が縺れ、バランスを崩した私の手から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]お、落ちるっ……！[endindent]）[改頁]
*共通シナリオ|５日目
;背景変更
[image storage=全黒 layer=base page=back]
[trans method=crossfade time=500]
[wt]
;効果音　松葉杖が落ちる感じの音
[playse storage="ぶつかる"]
[seopt volume=150]
[ws canskip=true]

[indent]思わず私は目を瞑った。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]！[L] せんぱいっ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]……[L]しかし衝撃は訪れない。[endindent][改頁]
*共通シナリオ|５日目

[indent]代わりに、ぐいっと誰かに手を引っ張られた。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
;背景変更
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ……はっ」[改頁]
*共通シナリオ|５日目
;菜穂登場
[立絵表示 file="naho04"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="sharara" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱ……[L]だいじょぶ、ですか？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……な、菜穂」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]

[indent]いつもと変わらぬ甘ったるい匂いを纏いながら、菜穂が心配げに私を見る。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]落ちそうになったという恐怖を感じる前に、[r]思いの外近くにあった菜穂の綺麗な顔に釘付けになる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せん、ぱい？」[改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ああ、私は……）[改頁]
*共通シナリオ|５日目
;コインが転がる音
[playse storage="m_kouka01"]

[indent]くるくる回り続けていた私の中のコインが、[r]だんだんとその回転速度を落としていく。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]当に答えは出ていたのに、目を逸らしていたことに気付く。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（わたし、は……）[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="for" time=3000]

[indent]菜穂のことが……[L]好きだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]過去に何があったとしても……[nl]
何も覚えていないのだから、なかったのと同じ。[nl]
存在しないことと同じ。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ふふ」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ありがと、菜穂。[nl]
……ううん、なっちゃん[endindent]」[改頁]
*共通シナリオ|５日目
;菜穂登場
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！　はい」[改頁]
*共通シナリオ|５日目

[indent]コインが示したのは……[L]表。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]もう、答えなんて……[L]どうでもいい[endindent]）[改頁]
*共通シナリオ|５日目

[indent]こんなに綺麗に菜穂が私に笑ってくれるなら……[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂を泣かすような過去なんて……[L]いらない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私は過去を取り戻すことよりも、[r]菜穂の笑顔を選んだ。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;菜穂退場
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[ブラックアウト time="2000"]
;スタッフロール
;;効果音停止
[stopse]
[eval exp="f.END3=f.END3+1"]
[eval exp="sf.END3=true"]
[eval exp="sf.おまけ=true"]
;---END3スチルトランジション
[背景表示 storage="still_end3"]
[トラン２]
[fadeinbgm storage="hakanaki" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]


*END3
;背景変更
[背景表示 storage="hospital"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;効果音
[playse storage="ガヤ"]
[seopt volume=50]
;---BGM再生
[fadeinbgm storage="iza-yoi_en" time=3000]
[font color=0xc89932]
;菜穂登場
[立絵表示 file="naho03"]
[クロス time=500]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、退院おめでとうございます！[endindent]」[改頁]
*共通シナリオ|エピローグ
;明菜登場
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki14"]
;---メッセージレイヤトランジション
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ありがと……[L]わざわざ来てくれたんだ[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！　もちろんですっ！[r]
わたし、いてもたってもいられなくてっ……[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]これで、また一緒に学校にいけますね[endindent]」[改頁]
*共通シナリオ|エピローグ
;顔グラ変化
[facewin_disp storage="aki11"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ふふ、そうだね[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]菜穂から慎ましやかで可憐な花束を受け取る。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]まるで自分のことのように私の退院を喜んでくれる菜穂の姿に、私の頬も緩む。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]この幸せがつかの間のものだとしても……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]未だ私を苛む頭の痛み。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]頭が痛むたびに少しずつ、少しずつ菜穂との思い出が私の中に返ってくる。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]そんな私に、菜穂は言葉には出さないが不安を感じているようだった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]いつか……[L]全てを思い出すのではないかと。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]心配しないで……[endindent]）[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ね、なっちゃん……」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]また約束、しない？[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|エピローグ

[indent]きょとん、と菜穂の大きくまあるい瞳が見開かれる。[endindent][改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ずっと一緒だって……[L]約束[endindent]」[改頁]
*共通シナリオ|エピローグ
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！[nl]
せん、ぱ……い[endindent]」[改頁]
*共通シナリオ|エピローグ
;菜穂退場
[立絵消]
[クロス time=500]
;明菜退場
[facewin_clear]
;スチル表示
[freeimage layer=0]
[cgv storage="still_6"]
;---BGM再生
[fadeinbgm storage="omoide" time=3000]
;---メッセージレイヤトランジション
[ト書き]

[indent]差し出した私の小指。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]それを見つめる菜穂。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]今の私は……[L]約束の重みが分かる[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]あの時の自分とは違う。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]今此処にいる私は己を取り戻すことよりも……[nl]
菜穂を選んだ　紅明菜　なのだから。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]もし、全てを思い出してしまう時がいつか来たなら……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]おどおど、と手を差し出す菜穂を安心させるように私は微笑む。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]頼りなく、でも確かに私たちの小指は絡み合った。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（約束する……）[改頁]
*共通シナリオ|エピローグ

[indent]もし私が私じゃなくなる時が来たなら……[nl]
貴女を傷つける前に、きっと大空に羽ばたいてみせるから。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]それが今の私の精一杯の約束。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]……[L]でもどうか、神様。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]菜穂の中には、この私だけ残して下さい。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]過去の私を……[L]起こさないで。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音停止
[stopse]
;BGMフェードアウト
[fadeoutbgm time=2000]
;END　薊の花言葉
[ブラックアウト time="1500"]
[wc time=20]
;---END１スチルトランジション
[背景表示 storage="end3"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]







*陥れ＋4以上（最大7）
[jump storage=sakurako2.ks target="*シナリオ５前" cond="f.仲直り>=2"]
;仲直りフラグあると途中分岐
[背景表示 storage="byousitumae001"]
[トラン２]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
;---BGM再生
[fadeinbgm storage="m_namida2" time=3000]
*桜子イベント見た
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]気晴らしに病室を出たはずなのに、壁づたいにふらふらと歩きながら、私は結局……[L]菜穂のことを考えていた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]目を瞑っても、もう暗闇は広がらない。[endindent][改頁]
*共通シナリオ|５日目

[indent]私は全てを思い出し、全てを取り戻していた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は紅　明菜。[nl]
全部思い出した……なのに[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私の胸は未だ痼りが残ったように、すっきりとしない。[endindent][改頁]
*共通シナリオ|５日目

[indent]心にひっかかっているもの。[endindent][改頁]
*共通シナリオ|５日目
;効果音停止
[stopse]
;*共通シナリオ|５日目 
[jump target=*選択肢 cond="f.仲直り>=2"]
[jump target=*陥れルート]

*選択肢
それは……
;選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="q.png" target=*陥れルート選択肢]
[locate x=320 y=350]
[button graphic="r.png" target=*仲直りフラグオン]
[s]



*陥れルート選択肢
[endchoice]
*陥れルート
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]私を突き落としたのは菜穂。[endindent][改頁]
*共通シナリオ|５日目

[indent]それは間違いない。[endindent][改頁]
*共通シナリオ|５日目

[indent]全てを思い出したら、私の中にある裏に定まったコインがより確固たる物になるとばかり思っていた。[endindent][改頁]
*共通シナリオ|５日目

なのに……[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……[L]っくそ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]突き落とされた時、私は菜穂に何も言えなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]何の弁解も出来なかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]……自分にも非があると分かってしまっている人間は弱い。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

[indent]私は……[L]弱い。[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女に対して感じる嫌悪に勝るとも劣らない自己嫌悪を感じる。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki05"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂になんて、[nl]
出会わなければ良かった…っ…[endindent]）[改頁]
*共通シナリオ|５日目

[indent]あの桜の下で出会ったのがそもそもの間違い。[endindent][改頁]
*共通シナリオ|５日目

[indent]あの日、あの場所にいなかったなら。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂と同じ学校じゃなかったなら……[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]はっ……[L]馬鹿みたい[endindent]）[改頁]
*共通シナリオ|５日目

[indent]いくら考えても、過去はやり直せない。[endindent][改頁]
*共通シナリオ|５日目

[indent]私の心を塗りつぶした菜穂は……[L]消えない。[endindent][改頁]
*共通シナリオ|５日目

[indent]まるで運命だったかのように菜穂に惹かれた自分は……[L]
なかったことに出来ない。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]じゃあ、どうしたらいい？[endindent]）[改頁]
*共通シナリオ|５日目

[indent]過去が変えられないなら、私はこれからを変えるしかない。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂の思いを受け入れる？[endindent]）[改頁]
*共通シナリオ|５日目
;不穏な効果音_高音
[playse storage="不穏な効果音_高音"]
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ありえない）[改頁]
*共通シナリオ|５日目

[indent]一瞬の思考に、全身が拒絶する。[endindent][改頁]
*共通シナリオ|５日目

[indent]それだけは有り得なかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]突き落とされる前、私は逃げたくて……[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女のべっとりとした想いから逃げたくてたまらなかったのだから。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]菜穂がいるかぎり、きっと私は菜穂に囚われ続ける。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂が……[L]いなくなれば[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私は解放される？[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]

[indent]べたべたと無遠慮に染みついた、[r]幼子のように甘ったるいこの菜穂の匂いから。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;暗転
;---トランジション
[facewin_clear]
[ブラックアウト time="2000"]
[jump target=*階段　落下未遂]
;
;
;
;
*仲直りフラグオン
[endchoice]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]私を突き落としたのは菜穂。[endindent][改頁]
*共通シナリオ|５日目

[indent]それは間違いない。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]でも……[L]菜穂だけが悪かったわけじゃない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私は逃げようとした。[endindent][改頁]
*共通シナリオ|５日目

[indent]ただ菜穂の真っ直ぐすぎる想いが怖いから、と。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

[indent]自分が受け入れたくせに、何の説明もせずに……[L]卑怯にも逃げようとしたのだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]あんなにも自分を慕ってくれていた菜穂を裏切って……。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……あの時、確かに菜穂の気持ちは嬉しかったはずなのに[endindent]）[改頁]
*共通シナリオ|５日目

[indent]いつからまるで鉛のように重くなったんだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]もう元には戻れないんだろうか。[endindent][改頁]
*共通シナリオ|５日目

[indent]２人で楽しく笑いあった日々には戻れないんだろうか。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]手遅れ……なの？[endindent]）[改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;---トランジション
[facewin_clear]
[ブラックアウト time="2000"]
*階段　落下へジャンプ
[jump target=*階段　落下]




*階段　落下
;背景変更
[背景表示 storage="byouin_kaidan001"]
[トラン２]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]

その時。[改頁]
*共通シナリオ|５日目
;心臓
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目

[indent]よく前も見ず壁をつたって歩いていた私の手は、[r]不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
;揺れる効果
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]

[indent]足が縺れ、バランスを崩した私の手から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]お、落ちるっ……！[endindent]）[改頁]
*共通シナリオ|５日目
;背景変更
[image storage=全黒 layer=base page=back]
[trans method=crossfade time=500]
[wt]
;効果音　松葉杖が落ちる感じの音
[playse storage="ぶつかる"]
[seopt volume=150]
[ws canskip=true]
;効果音
[playse storage="香り"]
[seopt volume=150]

[indent]思わず私は目を瞑った。[endindent][改頁]
*共通シナリオ|５日目
[facewin_clear]
;メッセージ
[ト書き]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]！　せんぱいっ[endindent]」[改頁]
*共通シナリオ|５日目
[playse storage="衝撃音"]
[ws canskip=true]
[playse storage="ガンッ"]
[seopt volume=60]

[indent]誰かが私を呼ぶ声とともに、私は転げ落ちた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……っつぅ[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]あれ……[L]あんまり痛く、ない[endindent]）[改頁]
*共通シナリオ|５日目
;背景変更
[背景表示 storage="byouin_kaidan000a"]
[トラン２]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki02"]
;菜穂登場
[立絵表示 file="naho04"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="naho_bgm" time=3000]
;メッセージ
[顔グラあり]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せ、んぱ……大丈夫……です、か？……っ[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！？」[改頁]
*共通シナリオ|５日目

[indent]何故か自分の下に人がいること、そして、[r]その人物の正体に私は動揺を隠せなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]その華奢な身体は、私を庇うように下敷きになっていて……。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な、何で……っ！！[endindent]」[改頁]
*共通シナリオ|５日目

[indent]私は慌てて彼女、菜穂の上からどく[endindent]。[改頁]
*共通シナリオ|５日目

[indent]身体のあちこちが痛んだが、そんなことは気にならなかった。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩が、だいじょうぶで……[L]良かった[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]踊り場で仰向けに倒れたまま、菜穂は笑って見せた。[endindent][改頁]
*共通シナリオ|５日目

[indent]膝は擦りむき、体中は打撲しているだろうに[r]涙一つ見せない。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]えへへ、せんぱいと、お揃いっ……です、ね[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な、何で……[L]そ、そんな……[endindent]」[改頁]
*共通シナリオ|５日目

[indent]あの時は突き落としたくせに。[endindent][改頁]
*共通シナリオ|５日目

[indent]どうして今は私を庇うのか。[endindent][改頁]
*共通シナリオ|５日目

[indent]私の心は、またぐちゃぐちゃに掻き回される。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="m_kouka01"]

[indent]コインは、またくるくると回り始める。[endindent][改頁]
*共通シナリオ|５日目

[indent]色々言いたいことがあるはずなのに、唇からは何も出てこなかった。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ば、馬鹿じゃ……[L]ない、の……アンタ[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="sharara" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……そうですね。[nl]
わたし、ばか……です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]彼女の可憐な容姿に似合わない、苦い笑みがその顔に浮かぶ。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]自分で、なくしたくせに今更こんなことしたって……[L]無駄、ですよ、ね[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]えへへ……ほんとう、わたしって……ばか。[nl]
へへ……っ[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho12"]
[クロス time=500]

[indent]ぽろりと大粒の涙が一粒、菜穂のまあるく大きな瞳からこぼれ落ちる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……なほ」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わた、し……ほんとうに、あき先輩が好きで……[L]すきで……[L]なのに……っ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]宙を見つめたまま、菜穂は語る。[endindent][改頁]
*共通シナリオ|５日目

[indent]涙を堪えるその声は震えていた。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho08"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あの時、あき先輩が……[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]だれより、なによりだいすきなあき先輩が……[L]にくらしかったっ[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]じぶんのこと、何にも見えて、なくて……[L][r]
ただせんぱいに気持ち、押しつけて…っ…[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]それで…っ…苦しませた、のに……[L][r]
わたし、わたし…っ…[endindent]」[改頁]
*共通シナリオ|５日目

[indent]菜穂は、不意に黙り込むと……ただ菜穂の言葉を聞いていた私に微笑みかけた。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho13"]
[クロス time=500]
@heartbeat storage="byouin_kaidan000a"  laynum="1" sound="on" soundfile="鼓動"

[indent]その笑顔があまりに綺麗で私の鼓動はとくん、と跳ねる。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、わたし……[L][r]
せんぱいに言いましたっけ？[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱいは、わたしたちが初めて会ったの桜の下だと思っているでしょう？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……ほんとうは、違うんです[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="kirara" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし……[L]入学式の日に、陸上部の練習をしてたあき先輩を見かけたんです[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]その時は、ただ何となく見てただけなんですけど……[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし運動苦手だから、いいなあって……[L]ふふ[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「菜穂……」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]その時、せんぱいが私の方にきて……[L][r]笑ったんです[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|５日目

[indent]思い出に微睡みながら微笑む菜穂とは対照的に、私の中でそんな思い出はなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]いぶかしむ私に、菜穂は可笑しそうに笑う。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、覚えてないのは……当然です。[r]
せんぱいは……[L]わたしの後ろにいた人に笑ってたんです[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]でも、それで十分でした。[r]
一目惚れってあるんだなって……[L]その時思いました[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱいの笑顔が、胸に焼き付いて離れなかった……[L]
音も、何もかもなくなったみたいで[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩しか……[L]見えなくなって、た[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|選択肢「困ったように眉を下げて笑う菜穂に…」

[indent]困ったように眉を下げて笑う菜穂に私は……[endindent]

*共通シナリオ|選択肢「困ったように眉を下げて笑う菜穂に…」
;選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="m.png" target=*焼き付いて離れない思い出……]
[locate x=320 y=350]
[button graphic="n.png" target=*……目を逸らした]
[s]


*焼き付いて離れない思い出……
[endchoice]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]焼き付いて……離れない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私の中にも、そんなものがあることに気付く。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（それは……）[改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
;---BGM再生
[fadeinbgm storage="issho" time=2000]
;---oldMovie
[oldMovieinit left=0 top=0 width=800 height=600]
;---トランジション
[背景表示 storage="still_11"]
[トラン rule="中心から" time="1000"]
;桜
[sakura_init]
[sakura_start forevisible=false backvisible=true]
[trans method=crossfade time=1000][wt]
;---メッセージレイヤトランジション
[ト書き]
;菜穂登場

[indent]舞い落ちる桜の花びら……[L]菜穂との出会いの記憶。[endindent][改頁]
*共通シナリオ|５日目
;---菜穂スチル
[背景表示 storage="still_11b"]
[トラン２]

[indent]こちらに気付いた菜穂の微笑み……[L]一目で心奪われた。[endindent][改頁]
*共通シナリオ|５日目
;暗転
[sakura_opts forevisible=true backvisible=false]
[trans method=crossfade time=1000][wt]
[sakura_stop]
;---トランジション
[ブラックアウト time="1500"]
[oldMovieuninit]
;---トランジション
[背景表示 storage="byouin_kaidan000a"]
[トラン rule="中心から" time="2000"]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki04"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……はははっ」[改頁]
*共通シナリオ|５日目

[indent]回転するコインが止まったのを感じる。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]？　せ、せんぱい？[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……私たちって、そっくりだね[endindent]」[改頁]
*共通シナリオ|５日目
;分岐
;フラグ分岐
[jump target=*陥れ度高い cond="f.陥れる>=6"]
[jump target=*陥れ度低い cond="f.陥れる<=5"]

*陥れ度高い

[indent]あんなにも揺れ惑ったのが嘘のように、私の心は一つの答えを出した。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
;効果音
[playse storage="不穏な効果音_高音"]

[indent]私は彼女を憎らしいほど……[L]愛してる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……私のことしか見えてない貴女がだいすき[endindent]）[改頁]
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[jump target=*共通]



*陥れ度低い

[indent]あんなにも揺れ惑ったのが嘘のように私の心は、一つの答えを出した。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]

[indent]私は彼女を憎らしいほど……[L]愛してる。[endindent][改頁]
*共通
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|５日目

[indent]突然笑い出した私を、菜穂はきょとんとした顔で見上げた。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki10"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……お互い、[L]一目惚れって……こと[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！　せ、先輩……」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]私はアンタを……[L]菜穂を許すよ[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！！」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]菜穂は？[nl]
菜穂は私を許す？　許せる？[endindent]」[改頁]
*共通シナリオ|５日目

[indent]菜穂の好意を当たり前のように享受し……なのに、それを重いと逃げようとした弱く自己中心的な私を。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho07"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わたし、は……」[改頁]
*共通シナリオ|５日目

[indent]大きな瞳を見開いたまま、ごくりっと菜穂の喉が動く。[endindent][改頁]
;---立ち絵変化
[立絵表示 file="naho08"]
[クロス time=500]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わたし、は……」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="iza-yoi_en" time=2000]
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたしは、あき先輩が……[nl]
すき、ですっ……[L]だいすき、ですっ[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……[L]なっちゃん」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho12"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目

[indent]思わず呟いていた彼女のあだ名に、菜穂の瞳から涙が溢れ出る。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい……せん、ぱいっ……[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]泣かないでよ……[nl]
なっちゃんが泣くと私どうしていいか、分からなくなる[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「～っ」[改頁]
*共通シナリオ|５日目

[indent]地べたに投げ出された菜穂の小さく可憐な掌を[r]ぎゅっと握りしめる。[endindent][改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho13"]
[クロス time=500]

[indent]痛いくらいに握り返してきたその掌は、まるで赤ん坊のように熱かった。[endindent][改頁]
*共通シナリオ|５日目
;効果音停止
[stopse]
;６日目へ
;BGMフェードアウト
[fadeoutbgm time=2000]
;菜穂退場
[立絵消]
[クロス time=500]
;暗転
;---トランジション
[facewin_clear]
[ブラックアウト time="1000"]
[背景表示 storage="i_5"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ６.ks]





*……目を逸らした
[endchoice]
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="不穏な効果音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]駄目だ……[L]きっとまた私は同じ事を繰り返す[endindent]）[改頁]
*共通シナリオ|５日目

[indent]一時の感情に流されて、また菜穂を受け入れて……[L]
きっとまた菜穂を裏切る。[endindent][改頁]
*共通シナリオ|５日目

[indent]きっとまた……[L]逃げ出す。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂のまっすぐな想いが、濁りのない純粋な瞳が眩しすぎて。[endindent][改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="m_namida2" time=3000]
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ごめん」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はは……[nl]
謝らないで……くださ、い[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ごめ……」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]は、は……っ[endindent]」[改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消]
[クロス time=500]

[indent]青あざの浮かんだ真白な手で顔を隠しながら、[r]菜穂は一人泣いているようだった。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]掛ける言葉を持たない私は、ただただ横に座り込んでいるしかなかった。[endindent][改頁]
*共通シナリオ|５日目
;---トランジション
[facewin_clear]
;背景変更
[背景表示 storage="全黒"]
[トラン２]
;---トランジション
[ト書き]

[indent]……一度すれ違った二人は、もう元には戻れない。[endindent][改頁]
*共通シナリオ|５日目
;---トランジション
;ＢＡＤＥＮＤ
[ブラックアウト time="1500"]
[wc time=20]
;---END１スチルトランジション
[背景表示 storage="bad_end"]
[トラン２]
[wc time=100]
;BGMフェードアウト
[fadeoutbgm time=2000]
[ブラックアウト time="1000"]
[wc time=20]
;効果音停止
[stopse]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]



*階段　落下未遂
;背景変更
[背景表示 storage="byouin_kaidan000a"]
[トラン２]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
;場面転換　階段
[背景表示 storage="byouin_kaidan001"]
[トラン２]

その時。[改頁]
*共通シナリオ|５日目
;心臓
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目

[indent]よく前も見ず壁をつたって歩いていた手は、[r]不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
;揺れる効果
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]

[indent]足が縺れ、バランスを崩した私の手から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（お、落ちるっ……！）[改頁]
*共通シナリオ|５日目
;背景変更
[image storage=kuro.jpg layer=base page=back]
[trans method=crossfade time=500]
[wt]
;効果音　松葉杖が落ちる感じの音
[playse storage="ぶつかる"]
[seopt volume=150]
[ws canskip=true]

[indent]思わず私は目を瞑った。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]！[L]　せんぱいっ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]……しかし衝撃は訪れない。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]

[indent]代わりに、ぐいっと誰かに手を引っ張られた。[endindent][改頁]
*共通シナリオ|５日目
;背景変更
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ……はっ」[改頁]
*共通シナリオ|５日目
;菜穂登場
[立絵表示 file="naho04"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="naho_bgm" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱ……だいじょぶ、ですか？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……な、菜穂」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]

[indent]いつもと変わらぬ甘ったるい匂いを纏いながら、菜穂が心配げに私を見る。[endindent][改頁]
*共通シナリオ|５日目

私は……

*共通シナリオ|選択肢「菜穂が心配げに私を見る。」
;選択肢
[sentaku]
[locate x=320 y=300]
[button graphic="o.png" target=*手を振り払う]
[locate x=320 y=350]
[button graphic="p.png" target=*手を振り払わない]
[s]




*手を振り払う
;陥れるフラグ－１
[endchoice]
[eval exp="f.陥れる=f.陥れる-5"]
;顔グラ変化
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
;BGMフェードアウト
[fadeoutbgm time=1000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ！[L]　離してっ」[改頁]
*共通シナリオ|手を振り払う
;効果音
[playse storage="とんと押す"]
[ws canskip=true]
;揺れる効果
[quake time=300 timemode=ms hmax=10 vmax=10]
[wq]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|手を振り払う
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（しまった……）[改頁]
*共通シナリオ|手を振り払う

[indent]菜穂に私のことを信用させるつもりだったのに。[endindent][改頁]
*共通シナリオ|手を振り払う

[indent]拒絶を叫ぶ己の心のままに、私は菜穂の白く細い手を振り払っていた。[endindent][改頁]
*共通シナリオ|手を振り払う
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……ご、ごめん。[nl]
だ、大丈夫だから……[endindent]」[改頁]
*共通シナリオ|手を振り払う
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……ばれた？）[改頁]
*共通シナリオ|手を振り払う

[indent]私は全てを思い出していると彼女にばれてしまっただろうか？[endindent][改頁]
*共通シナリオ|手を振り払う
;---立ち絵変化
[立絵表示 file="naho06"]
[クロス time=500]

[indent]そっと菜穂を盗み見る私とは対照的に、彼女の目はまっすぐに私を射抜く。[endindent][改頁]
*共通シナリオ|手を振り払う
;効果音
[playse storage="不穏な効果音_高音"]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|手を振り払う
;---BGM再生
[fadeinbgm storage="k-sishou" time=3000]

[indent]ぞわっと私の肌が粟立つ。[endindent][改頁]
*共通シナリオ|手を振り払う

[indent]あの日のように、菜穂の目は……[nl]私の全てを見通しているようで。[endindent][改頁]
*共通シナリオ|手を振り払う
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]無事で、よかった……です[endindent]」[改頁]
*共通シナリオ|手を振り払う
;顔グラ変化
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]

[indent]弱々しく微笑む菜穂から、私は視線を逸らした。[endindent][改頁]
*共通シナリオ|手を振り払う
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……う、うん[endindent]」[改頁]
*共通シナリオ|手を振り払う

[indent]彼女のまあるい目が私を見る。[endindent][改頁]
*共通シナリオ|手を振り払う

[indent]その中に、菜穂に突き落とされたあの日の……[nl]
見るに耐えない醜い私が映っている気がした。[endindent][改頁]
*共通シナリオ|手を振り払う
;BGMフェードアウト
[fadeoutbgm time=2000]
;菜穂退場
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[ブラックアウト time="1500"]
[jump target=*看護師と会話]


*手を振り払わない
;陥れるフラグ＋１
[endchoice]
[eval exp="f.陥れる=f.陥れる+1"]
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……ありがと[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！[L]　いいえ！[r]
先輩が無事で……良かったです[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

[indent]ふんわりと微笑む菜穂に、私も微笑み返す。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="k-sishou" time=3000]

[indent]菜穂のその笑顔があんまり綺麗で……[nl]私は泣きたくなる。[endindent][改頁]
*共通シナリオ|５日目

[indent]もう、昔の２人には戻れないんだと……[nl]分かってしまって。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そうだ。[nl]
迷っていたってしょうがない……[L]ホントは、もう心は決まってるんだから[endindent]）[改頁]
*共通シナリオ|５日目

[indent]いくら理性で押さえようとしても、[r]私の中に蠢くどろどろとしたものはもう……[nl]押さえられない。[endindent][改頁]
*共通シナリオ|５日目

[indent]今か今か、と溢れ出る時を待っている。[endindent][改頁]
*共通シナリオ|５日目

[indent]……きっとあの時の菜穂もそうだったんだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]あの時は分からなかったけれど、今なら分かる。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ごめんね……）[改頁]
*共通シナリオ|５日目

[indent]心の中で私は謝る。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]もう私は決めたから……[nl]
後戻りは、しない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]だって、[L]あなたがにくたらしいから。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……菜穂。[r]
私はあなたを陥れる。[L]私の手で[endindent]）[改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消]
[クロス time=500]
;暗転
[facewin_clear]
;背景変更
[背景表示 storage="全黒"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]

[indent]だって、[L]あなたをあいしてるから。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
[ブラックアウト time="1500"]
[jump target=*看護師と会話]




*看護師と会話
;背景変更
[背景表示 storage="byouin_kaidan001"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]……！[nl]
大丈夫！？[endindent]」[改頁]
;岡田さん立ち絵表示
[立絵表示 file="okada02" layer="1" pos="right"]
[クロス time=500]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="soseion" time=2000]
;---メッセージレイヤトランジション
[顔グラあり]
;明菜登場
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ……岡田さん[endindent]」[改頁]
*共通シナリオ|５日目
;菜穂登場
[立絵表示 file="naho02" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]階段の上で、お互いを支え合うような不自然な格好で立っていた私たちの元に、
心配した様子の岡田さんが駆け寄ってきた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]こんな所でどうしたの！？[r]
二人とも[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、ちょっと落ちそうになって……[nl]
でも、大丈夫です[endindent]」[改頁]
*共通シナリオ|５日目
;岡田さん立ち絵表示
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう、良かった[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

[indent]ほっとしたというように柔らかく微笑む岡田さんにつられ、私も自然と笑顔になる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]はい……[r]
心配かけてすみません[endindent]」[改頁]
*共通シナリオ|５日目
;岡田さん立ち絵表示
[立絵表示 file="okada01" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そうよ。[r]
まだ明菜ちゃんの身体は本調子じゃないんだから、無茶しちゃ駄目よ！[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|５日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]何処か行きたい時は、私に声をかけて。[r]
時間が空いている時は付き添うから[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、有り難うございます[endindent]」[改頁]
*共通シナリオ|５日目
;岡田さん立ち絵表示
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]ふふ、それじゃあ……部屋までは大丈夫？[r]
車椅子持ってくる？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、いえ。[r]
大丈夫です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]忙しそうな岡田さんの手を煩わせたくなくて、[r]私は大丈夫だと微笑んでみせた。[endindent][改頁]
*共通シナリオ|５日目
;岡田さん立ち絵表示
[立絵表示 file="okada01" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう？[r]
あ、あなた……[L]菜穂ちゃん、だったよね[endindent]」[改頁]
*共通シナリオ|５日目
;菜穂立ち絵変化
[立絵表示 file="naho04" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！　は、はい」[改頁]
*共通シナリオ|５日目

[indent]黙って突っ立っていた菜穂の肩が、びくりと震える。[endindent][改頁]
*共通シナリオ|５日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]部屋まで付き添ってあげてくれるかな？[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、私は１人でも[endindent]」[改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=500]
;菜穂立ち絵変化
[立絵表示 file="naho07" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]私が付き添います[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目

[indent]思いの外はっきりとした菜穂の声に、私は少し面食らう。[endindent][改頁]
*共通シナリオ|５日目
;岡田さん立ち絵表示
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「宜しくね」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
;岡田退場
[立絵消 layer="1"]
[クロス time=500]
*共通シナリオ|５日目

[indent]そして、そのまま立ち去る岡田さんの背をいつかのようにじっと見つめていたかと思うと、菜穂は私を振り返った。[endindent][改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消 layer="0"]
[クロス time=500]
;菜穂立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="soseion" time=1000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]じゃあ、せんぱい……[L]行きましょうか[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「う、うん」[改頁]
*共通シナリオ|５日目

[indent]私より背の低い菜穂に肩を支えられながら、[r]私は自分の病室へと向かった。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;暗転
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[ブラックアウト time="2000"]
;効果音
[playse storage="ガラガラ"]
[ws canskip=true]
;背景変更
[背景表示 storage="heya_hiru"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ふぅ、ありがと……[L]なにか……っ！？[endindent]」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="とんと押す"]
[seopt volume=80]
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
;効果音
[playse storage="香り"]
[seopt volume=150]

[indent]何か飲む？と言うはずだった私の言葉は、言葉になる前に霧散していく。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ消去
[facewin_clear]
;---メッセージレイヤトランジション
[ト書き]
;キス　スチル表示
;スチル表示
[freeimage layer=0]
[cgv storage="still_kiss"]
;---BGM再生
[fadeinbgm storage="kirara" time=3000]

[indent]一体何が起こっているのか、分からなかった。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="香り"]
[seopt volume=150]

[indent]分かったのは強い甘い匂いと……[L]唇に感じる柔らかい感触。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（わ、私……）[改頁]
*共通シナリオ|５日目

[indent]キス、[L]されている？[endindent][改頁]
*共通シナリオ|５日目

[indent]誰に。[endindent][改頁]
*共通シナリオ|５日目

[indent]見開いた私の目は、相手の顔を見ているはずなのに焦点はまるで合わない。[endindent][改頁]
*共通シナリオ|５日目

[indent]頭が混乱する。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
[seopt volume=200]

[indent]甘い匂いが強くなった気がした。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]う、そ……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]病室に今いるのは私と……菜穂だけだ。[endindent][改頁]
*共通シナリオ|５日目
;
;陥れる度分岐
[jump target=*恐怖を感じる cond="f.陥れる<=5"]
[jump target=*嫌悪を感じる cond="f.陥れる>=6"]





*恐怖を感じる
;BGMフェードアウト
[fadeoutbgm time=1000]
;スチル表示
[freeimage layer=0]
[cgv storage="still_kiss嫌悪"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]こ……こ、わ……いっ[endindent]）[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="ホラー"]

[indent]唇に触れる可憐な少女、菜穂が……[r]
何故か得体の知れない生き物に思えた。[endindent][改頁]
*共通シナリオ|５日目
;背景変更
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1000"]
;---BGM再生
[fadeinbgm storage="akuma" time=3000]

[indent]ぎゅっと目を瞑る。[endindent][改頁]
*共通シナリオ|５日目

[indent]目を開けたら……菜穂の大きな瞳に、食べられてしまいそうな[r]気がして。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……っ）[改頁]
*共通シナリオ|５日目

[indent]私の小さくちっぽけな心が恐怖で埋め尽くされる。[endindent][改頁]
*共通シナリオ|５日目
;心臓
@heartbeat storage="kuro" sound="on" soundfile="鼓動"
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]息が……できっない……っ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]このまま呼気を奪われ、私は死ぬんだろうか。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]や……[L]やだ……[L]いやだいやだいやだいやだいやだ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]何故こんな目に合わなければならないのか。[endindent][改頁]
*共通シナリオ|５日目

[indent]私が何をしたというのか。[endindent][改頁]
*共通シナリオ|５日目

[indent]私だけが悪いのか。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;明菜登場
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
;
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……めっ」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="不穏な効果音_高音"]
;菜穂登場
[立絵表示 file="naho11"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]なんで、わたしを……[L]拒絶するんですか？[endindent]」[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
;揺れる効果
[quake time=1000 timemode=ms hmax=10 vmax=10]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！！」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="不穏な効果音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]め……が……目、が、めが、目が[endindent]）[改頁]
*共通シナリオ|５日目

[indent]まあるい目玉が私を見てる。[endindent][改頁]
*共通シナリオ|５日目

私を断罪する。[改頁]
*共通シナリオ|５日目

[indent]何もかもを菜穂に擦り付けて、逃げようとした自分が……見える。[endindent][改頁]
*共通シナリオ|５日目
;揺れる効果
[quake time=2000 timemode=ms hmax=30 vmax=30]
;効果音
[playse storage="ガンッ"]
[seopt volume=70]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]いやぁあああああああっ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]ありったけの声を出して、私は救いを求めた。[endindent][改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消]
[クロス time=500]
;明菜退場
[facewin_clear]
;背景変更
[背景表示 storage="全黒"]
[トラン time=500]
;効果音
[playse storage="足音"]
[seopt volume=150]
;
[ト書き]
[indent]遠くで、ばたばたと慌ただしい足音が聞こえる。[endindent][改頁]
*共通シナリオ|５日目

[indent]その音を聞きながら、私は意識を手放した。[endindent][改頁]
*共通シナリオ|５日目

[indent]目覚めたら、私を苛む目玉がなくなっていることを[r]祈りながら……[endindent][改頁]
*共通シナリオ|５日目
;暗転
[ブラックアウト time="2000"]
*共通シナリオ|５日目
;スタッフロール
;効果音停止
[stopse]
[eval exp="f.END2=f.END2+1"]
[eval exp="sf.END2=true"]
[eval exp="sf.おまけ=true"]
;---END2スチルトランジション
[背景表示 storage="still_end2"]
[トラン２]
[fadeinbgm storage="keh" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]

;
;
*END2
;背景　空
[背景表示 storage="BG00b0_80"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]

[indent]その後、私は母に頼んで郊外の病院へ移った。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]誰にもここを教えないで欲しいと訴える私のあまりの剣幕に、[r]母も圧倒されていたようだった。[endindent][改頁]
*共通シナリオ|エピローグ
;背景変化
[背景表示 storage="4-2-02-e"]
[トラン２]
;---BGM再生
[fadeinbgm storage="b4_org" time=3000]

[indent]……私は記憶をなくす前の望みのままに、菜穂から逃げた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]怪我が癒えるのを待って、私は高校をやめた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]携帯を解約した。菜穂からの贈り物を燃やした。[nl]
菜穂との写真を切り刻んだ。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]菜穂との繋がりは、全て断ち切りたかった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]過去の自分の過ちの証拠を消してしまいたかった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]少しでもなかったことに出来るように……[nl]
あの恐怖を忘れられるように。[endindent][改頁]
*共通シナリオ|エピローグ
;背景変化
[背景表示 storage="12_4_1"]
[トラン２]
;BGMフェードアウト
[fadeoutbgm time=2000]

[indent]それから数ヶ月の時が過ぎ……[nl]
身体の傷もすっかり癒えた私は両親の反対を押し切り、誰も私を知らない土地で専門学校へと通い始めた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]全てをリセットして、一から全てを作り直したくて。[endindent][改頁]
*共通シナリオ|エピローグ
;---トランジション
[ブラックアウト time="2000"]
;---トランジション
[背景表示 storage="4-2-02-i"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[顔グラあり]
;効果音
[playse storage="ガサガサ"]
[ws canskip=true]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki11"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ふう」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]荷物はこれで全部かな……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]実家から持ってきた荷物を段ボールから出し切り、私は一息吐いた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]ご飯も食べず作業した甲斐もあって、何もなかったワンルームの部屋はどうにか人が住める状況になっていた。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]もう夜か……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]自分で望んだ引っ越し。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]心地よい疲れが私を包む。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]何か食べようかな……[endindent]）[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="チャイム"]
[ws canskip=true]
;顔グラ変化
[facewin_disp storage="aki14"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]何だろう……宅急便かな[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]そういえば、母が引越祝いに何か贈ると言っていた。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="チャイム"]
[ws canskip=true]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「は～い」[改頁]
*共通シナリオ|エピローグ

[indent]急かすように鳴るチャイムの音に誘われるまま、私は玄関へと急いだ。[endindent][改頁]
*共通シナリオ|エピローグ
;背景変更
[背景表示 storage="4-2-03-a"]
[トラン２]
;顔グラ変化
[facewin_disp storage="aki11"]
[trans method=crossfade time=500]
[wt]
;効果音ドアを開ける
[playse storage="ドア"]
[ws canskip=true]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]はい、どちらさま……！？[endindent]」[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]
[ws canskip=true]
;顔グラ変化
[facewin_disp storage="aki12"]
[trans method=crossfade time=500]
[wt]

[indent]引越祝いの贈り物の代わりに……[nl]
扉の隙間から真白な手が伸びてきた。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「み～つけた」[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="ガンッ"]
[seopt volume=50]
;背景変更
[image storage=still_1 layer=base page=back]
[trans method=crossfade time=300]
[wt]

[indent]聞き覚えのあるゆったりとしたその声色に、[r]扉の隙間からのぞく大きなまあるい目玉に、[r]私はただ目を見開いた。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="不穏な効果音"]
[freeimage layer=0]
;顔グラ変化
[facewin_disp storage="aki13"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そ、そんな……[L]う、そ……[endindent]）[改頁]
*共通シナリオ|エピローグ
;スチル表示
[freeimage layer=0]
;背景変更
[image storage=still_7 layer=base page=back]
[trans method=crossfade time=500]
[wt]
;---BGM再生
[fadeinbgm storage="hitogo" time=3000]
;揺れる効果
[quake time=2000 timemode=ms hmax=50 vmax=50]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あははははははっ！[r]
せんぱい、かくれるの上手ですね！[nl]探すのすっごく大変でしたよぉ？[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な……ほ……[endindent]」[改頁]
*共通シナリオ|エピローグ
;背景変化
[背景表示 storage="16_4_1"]
[トラン２]
;菜穂登場
[立絵表示 file="naho03"]
[クロス time=500]

[indent]目の前に、確かに逃げ出せたはずだった少女が[r]立っていた。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]かくれんぼしたいなら、したいって言って[r]下さいよぉ[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]甘ったるい猫なで声が、鼓膜を撫でる。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、[L]子供っぽいから恥ずかしくて言えなかったんですかぁ？[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あははっ、ほんとうに……[L]せんぱい、可愛い[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]少女は何か話しているようだが、全く頭には入ってこない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]言葉として認識できない。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぁ……あ」[改頁]
*共通シナリオ|エピローグ
;菜穂登場
[立絵表示 file="naho11"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]こんどかくれんぼする時は、ちゃんと言って[r]下さいね！[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……ふふ、せんぱいを探すの、[r]なかなか楽しかったですけどっ[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]うふふふふ、と首を傾げながら笑う少女。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]誰もがその姿を可憐だと表現するだろう。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]でも、私にはそんなもの目に入らなかった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]目に入ったのは、彼女のまあるい目玉……[nl]
その中に映る……醜悪な私だけ。[endindent][改頁]
*共通シナリオ|エピローグ
;揺れる効果
[quake time=500 timemode=ms hmax=30 vmax=30]
[wq]
;効果音
[playse storage="ホラー"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！！！！！」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]い……な、い……るくない…っ…わ、たしは……くない[endindent]）[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]わた、しはわるく…な、い……[L]
私は悪くない私は悪くない私は悪くない私は悪くない私は悪くない私は悪くないっ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]いつかも感じた恐怖が、まるで津波のように押し寄せる。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]がたがたと寒くもないのに身体が震える。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="足音"]
[seopt volume=100]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ひっ……こ、来ないでっ！！！！[endindent]」[改頁]
*共通シナリオ|エピローグ
;菜穂退場
[立絵消]
[クロス time=300]

[indent]力任せに扉を閉めようとするが、それより先に彼女の革靴が隙間に入り込んだ。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="ガンッ"]
[seopt volume=70]
[ws canskip=true]
;スチル表示
[cgv storage="still_7"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふふふ、うふふふふふふ。[r]いたいです……あき先輩[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]隙間から覗く彼女の目玉があまりに怖くて、[r]
私は思わず押さえていたドアノブから手を離してしまった。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="突風"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぁ……」[改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ないで……[L]見ないでっ……[L]こっち、見ないで見ないで見ないで見ないで見ないでっ！！！！[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]ただただ後退ることしか出来ない私に、少女は獲物を追いつめた猫のように舌なめずりをする。[endindent][改頁]
*共通シナリオ|エピローグ
;明菜退場
[facewin_clear]
;メッセージ
[ト書き]
;効果音
[playse storage="翻るカーテン"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ちゃんとせんぱいのこと見つけました……[L]こんどは[endindent]」[改頁]
*共通シナリオ|エピローグ
;スチル変化
[cgv storage="still_7b"]
;効果音
[playse storage="スタンガン"]
[ws canskip=true]
;背景変更
[image storage=siro layer=base page=back]
[trans method=crossfade time=100]
[wt]
;背景変更
[image storage=全黒 layer=base page=back]
[trans method=crossfade time=100]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ！？」[改頁]
*共通シナリオ|エピローグ

[indent]一瞬の衝撃。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]身体から力が抜ける。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたしのあそびに付き合って下さいね、あき先輩……[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぁ……」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（わたし、は……）[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]つ～かま～えた[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]わるく……[L]な、ぃ……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]まるで幼子が謡うようなその声を聞きながら、私は意識を手放した。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]目覚めたら……きっとそこは[L]地獄。[endindent][改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=2000]
;ＥＮＤ２　かくれんぼ
[ブラックアウト time="1500"]
[wc time=20]
;---END２スチルトランジション
[背景表示 storage="end2"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
;効果音停止
[stopse]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]


*嫌悪を感じる
;陥れ成功ＥＮＤへ
;明菜退場
[facewin_clear]
;スチル表示
[freeimage layer=0]
[cgv storage="still_kiss嫌悪"]
;BGMフェードアウト
[fadeoutbgm time=1000]
[ト書き]

[indent]私は……[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="不穏な効果音_高音"]

[indent]私は……押さえられない嫌悪を感じた。[endindent][改頁]
*共通シナリオ|５日目

[indent]柔らかく、温かいその感触が不快でたまらなかった。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
[seopt volume=200]

[indent]コロンとは違う、幼い子供に感じるお菓子のような甘ったるい匂いが私の鼻を掠める。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]何で……[L]こん、な……っ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]今すぐに菜穂の肩を掴んで引き離したい。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「やめ……！」[改頁]
*共通シナリオ|５日目

[indent]けれど、ふと視界に入った菜穂の表情に私の動きは止まった……[L]今にも泣きそうに眉根を寄せたその表情。[endindent][改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="m_namida2" time=3000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ぁ……）[改頁]
*共通シナリオ|５日目
;スチル表示
[freeimage layer=0]
[cgv storage="still_kiss哀れみ"]

[indent]今はもう形にもなっていない……[L]けれど未だ何処かに消え残る彼女への好意の欠片が、彼女を突き放そうと持ち上げた手を掴み止める。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]嫌悪と共に感じる確かな悲しみの感情。[nl]
嫌で嫌で堪らないのに……[L]とてもとても悲しい。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……っ」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（はは、ホント……っ）[改頁]
*共通シナリオ|５日目

[indent]確かに彼女のことを好きだったはずなのに。[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女を思うだけで楽しく、側にいれば幸せで……[L]彼女の笑顔に恋をしていたはずなのに。[endindent][改頁]
*共通シナリオ|５日目

[indent]何がいけなかったんだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]誰がいけなかったんだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂？[endindent][改頁]
*共通シナリオ|５日目

[indent]私？[endindent][改頁]
*共通シナリオ|５日目

[indent]それとも……[endindent][改頁]
*共通シナリオ|５日目

[indent]私は手を下ろし、強ばった身体の力を抜き、[r]目を閉じる。[endindent][改頁]
;BGMフェードアウト
[fadeoutbgm time=2000]
;---トランジション
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1500"]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……これが、最後だから[endindent]）[改頁]
*共通シナリオ|５日目
;フェードインループ効果音
[fadeinse storage="セミ" volume=200 loop=true time=2000]
[wait time="5000"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……蝉の、声？）[改頁]
*共通シナリオ|５日目
;---oldMovie
[oldMovieinit left=0 top=0 width=800 height=600]
;---トランジション
[背景表示 storage="bg1040"]
[トラン２]
;菜穂登場
[立絵表示 file="naho01"]
[クロス time=500]

[indent]その時一瞬、菜穂が私に告白してくれた……あの夏の日が見えた気がした。[endindent][改頁]
*共通シナリオ|５日目
;フェードアウト効果音
[fadeoutse storage="セミ" time=2000]
;菜穂退場
[立絵消]
[クロス time=500]
;背景変更
[メニュー非]
[メッセ消]
[背景表示 storage="全黒"]
[トラン２]
[oldMovieuninit]
[wait time="500"]
;効果音
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
[playse storage="香り"]
[ws canskip=true]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……）[改頁]
*共通シナリオ|５日目

[indent]不意に、頬に温かいものを感じた。[endindent][改頁]
*共通シナリオ|５日目

[indent]私の中の何かが一緒に流れ落ちていくのを感じる。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（さよなら……）[改頁]
*共通シナリオ|５日目

[indent]菜穂に恋をしていた私。[endindent][改頁]
*共通シナリオ|５日目
;暗転
[ブラックアウト time="1500"]
[wait time=1500]
*空
[背景表示 storage="BG00b0_80"]
[トラン２]
[wait time="500"]
;暗転から復帰
;背景変更
[背景表示 storage="heya"]
[トラン２]
;---メッセージレイヤトランジション
[顔グラあり]
[メニュー]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……[L]落ち着いた？[endindent]」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="naho_bgm" time=3000]
;菜穂登場
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]は、はい。[nl]
ごめんなさい……と、突然[endindent]」[改頁]
*共通シナリオ|５日目

[indent]私に口付けた後、ぽろぽろと泣き出した菜穂の背を撫でながら、私は菜穂が落ち着くのを待った。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]いいよ、別に……[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき……先輩[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ん？」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！　な、なんでも……ない、です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]ぱっと頬を赤く染め俯く菜穂を、私は何の感慨もなく見つめる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]こんな穏やかな気持ちは初めて……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]凪いだ海のように、自分の中にさざ波一つ感じられない。[endindent][改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]まるで、嵐が来る前みたい……[endindent]）[改頁]
*共通シナリオ|５日目
;顔グラ変化
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ね……」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]今日は天気がいいし……[L]屋上に行ってみない？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]おくじょう、ですか？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]うん、この前岡田さんに連れて行ってもらったんだけど、なかなか見晴らしがいいの[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho07"]
[クロス time=500]

[indent]「岡田」という単語に、菜穂の表情が強ばる。[endindent][改頁]
*共通シナリオ|５日目

[indent]……この提案に彼女はきっと承諾すると、私は確信していた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]行きます[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]じゃあ、行こう……[L]あ、車椅子押して貰ってもいい？　まだ階段は上れないから[endindent]」[改頁]
*共通シナリオ|５日目
;---立ち絵変化
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「はい！」[改頁]
*共通シナリオ|５日目

[indent]何の疑いも持っていない菜穂に、私も微笑む。[endindent][改頁]
*共通シナリオ|５日目
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
（もうすぐ……）[改頁]
*共通シナリオ|５日目

[indent]もうすぐ解放される。[endindent][改頁]
*共通シナリオ|５日目
;菜穂退場
[立絵消]
[クロス time=500]
;暗転
[facewin_clear]
[ブラックアウト time="1500"]
;効果音
[playse storage="ゆっくりしていってね"]
[seopt volume=60]
;暗転から復帰
;背景変更
[背景表示 storage="byousitumae001"]
[トラン time=1500]
[wait time="1000"]
;背景変更
[背景表示 storage="byouin_kaidan000a"]
[トラン time=1500]
;背景変更
[背景表示 storage="school08b"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]
;効果音
[playse storage="カラス"]
[seopt volume=50]
[ws canskip=true]
;菜穂登場
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わ～綺麗ですね～[endindent]」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="sharara" time=5000]
;---メッセージレイヤトランジション
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「うん、綺麗」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="カラス"]
[seopt volume=50]

[indent]菜穂に押して貰っていた車椅子から降りると、[r]松葉杖をつきながら私は立ち上がる。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂は私が立ち上がるのを助けると、見事な夕焼けに惹かれるようにフェンスへと近寄っていく。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="ガサガサ"]
;顔グラ変化
[facewin_disp storage="aki10"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、菜穂。[r]
そこは危ないよ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]一カ所だけ、老朽化したフェンスを取り外し、代わりに柵が置いてある場所を菜穂は何故か乗り越えた。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="カラス"]
[seopt volume=50]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]へいきですよ！[L][r]
わ～ここからだと下がよく見えます[endindent]」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="突風"]

[indent]長い黒髪を秋の冷たい風に遊ばせながら、菜穂が下を覗き込む。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わ～怖いっ」[改頁]
*共通シナリオ|５日目

[indent]夕日を浴びながら、無邪気に笑う菜穂はとても綺麗で無防備で……[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="足音"]
;顔グラ変化
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「菜穂」[改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=1000]
;---立ち絵変化
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|５日目

[indent]近付くのは容易かった。[endindent][改頁]
*共通シナリオ|５日目
[stopse]
;菜穂退場
[立絵消]
[クロス time=500]
;効果音
[playse storage="不穏な効果音_高音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「お返し」[改頁]
*共通シナリオ|５日目
;明菜退場
[facewin_clear]
;背景変更
[背景表示 storage="yu-hi"]
[トラン２]
[ws canskip=true]
;---メッセージレイヤトランジション
[ト書き]

[indent]燃えるように真っ赤な夕日。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="香り"]
[seopt volume=200]

[indent]菜穂から漂う甘い香り。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="カラス"]
[seopt volume=50]

[indent]遠くで聞こえるカラスの声……[L]全てがあの時と同じ。[endindent][改頁]
*共通シナリオ|５日目
;効果音
[playse storage="とんと押す"]
[seopt volume=100]
[ws canskip=true]
;スチル表示
[freeimage layer=0]
[cgv storage="still_8a"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え……」[改頁]
*共通シナリオ|５日目
;スチル表示
[cgv storage="still_8b"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]でもここから落ちるのは……[L]私じゃない[endindent]）[改頁]
*共通シナリオ|５日目
;スチル表示
[cgv storage="still_8c"]

[indent]まるでスローモーションのように、菜穂の身体が傾いていく。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]自分から穴に落ちてくれるなんて……[L]優しいね[endindent]」[改頁]
*共通シナリオ|５日目
;---BGM再生
[fadeinbgm storage="huyu-y" time=1000]
;背景変更
[背景表示 storage="yu-hi"]
[トラン２]
[wait time=1000]
;スチル表示
[cgv storage="still_8d"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「ぁ……」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]私はアンタが……[endindent]」[改頁]
*共通シナリオ|５日目

[indent]ありったけの想いを込めて、私は菜穂に笑いかける。[endindent][改頁]
*共通シナリオ|５日目

[indent]”私”を全て彼女が持っていってくれるように祈りながら、私は言葉を吐き出す。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せん、ぱ……」[改頁]
*共通シナリオ|５日目
;スチル表示
[cgv storage="still_8e"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「大嫌い」[改頁]
*共通シナリオ|５日目
;効果音
[playse storage="突風"]
;スチル表示
[cgv storage="still_8f"]

[indent]私の言葉の意味を理解しているのかいないのか、
私が最後に見た菜穂の表情は笑顔でもなく恐怖でもなく悲しみでもなく……[L][r]まるで赤ん坊のような無垢な表情だった。[endindent][改頁]
*共通シナリオ|５日目
;BGMフェードアウト
[fadeoutbgm time=2000]
;暗転
[ブラックアウト time="1500"]
[wait time=1000]
;暗転から復帰
;背景変更
[背景表示 storage="BG00b0_80"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]
;効果音
[playse storage="カラス"]
[seopt volume=50]

[indent]目の前から菜穂の姿が消えても、私はしばらくの間空を眺めていた。[endindent][改頁]
*共通シナリオ|５日目
;---メッセージレイヤトランジション
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki04"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私の中に明菜は……[L]二人いらない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]もうコインは回らない。[endindent][改頁]
*共通シナリオ|５日目

[indent]この身体は……[L]私のものだ。[endindent][改頁]
*共通シナリオ|５日目
;暗転
[facewin_clear]
[ブラックアウト time="1500"]
;効果音停止
[stopse]
[eval exp="f.END4=f.END1+1"]
[eval exp="sf.END4=true"]
[eval exp="sf.おまけ=true"]
;---END4スチルトランジション
[背景表示 storage="still_end4"]
[トラン２]
[fadeinbgm storage="yayk" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]




*END4
;暗い画面
[背景表示 storage="全黒"]
[トラン２]
;---メッセージレイヤトランジション
[メニュー]
[ト書き]

『[indent]被告人紅明菜は、被害者山吹菜穂によって一時昏睡状態に陥り……[endindent]』[改頁]
*共通シナリオ|エピローグ

『[indent]情状酌量の余地が……[endindent]』[改頁]
*共通シナリオ|エピローグ

『[indent]……[L]判決は[endindent]』[改頁]
*共通シナリオ|エピローグ
;背景変更
[背景表示 storage="siro"]
[トラン２]
;背景変更
[背景表示 storage="12_4_1"]
[トラン２]
;場面転換　町中
[font color=0x9ACD32]
【？】
[resetfont]
[r]
「……な」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|エピローグ
[font color=0x9ACD32]
【？】
[resetfont]
[r]
「明菜っ！」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|エピローグ
[font color=0x9ACD32]
【友人】
[resetfont]
[r]
「[indent]どうしたの？[r]
ぼ～っとしちゃって[endindent]」[改頁]
*共通シナリオ|エピローグ
[顔グラあり]
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki11"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、ううん。[r]
何でもない[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0x9ACD32]
【友人】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|エピローグ

[indent]自分を心配げに見る友人に微笑み返しながら、[r]私は空を見上げる。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="カラス"]
[seopt volume=50]
;背景変更
[背景表示 storage="BG00b0_80"]
[トラン２]
;---BGM再生
[fadeinbgm storage="iza-yoi_en" time=3000]

今は秋。[改頁]
*共通シナリオ|エピローグ

[indent]空に広がるのは……あの日のような夕焼け。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]あの日菜穂を突き落とした私は、逮捕され裁判に掛けられた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]刑務所に入ることも覚悟していたが執行猶予が認められ、
私はこうして外を歩けている……[L][r]私を知る人が誰もいないこの土地で。[endindent][改頁]
*共通シナリオ|エピローグ
;背景変更
[背景表示 storage="12_4_1"]
[トラン２]
[font color=0x9ACD32]
【友人】
[resetfont]
[r]
「[indent]こっちこっち！[r]
美味しいクレープ屋さんがあるんだって[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ、待って」[改頁]
*共通シナリオ|エピローグ

[indent]心おきなく話せる友人も出来た。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]私が犯罪者であることを知っても共にいてくれる彼女を大事にしたい。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ああ……幸せ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]私を縛り付けていた全てから解放され、私の心は軽かった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]犠牲にしたものは大きい。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]けれど、後悔はしていない。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は今を……[L]これからを、未来を生きてる[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]菜穂がいる限り、叶わなかった未来にいま自分は立っている。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は……私のもの[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]誰の影も、私の上にはもう落ちない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]忌まわしい過去は、全て消し去ったのだから……[L]
あの日、この手で。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|エピローグ
;爽やかに微笑む明菜

[indent]未来への確かな希望を感じ、爽やかな秋風を頬で受けながら歩き出した……[L]その時。[endindent][改頁]
*共通シナリオ|エピローグ
;BGMフェードアウト
[fadeoutbgm time=300]
[font color=0xc89932]
【？？？】
[resetfont]
[r]
「あき先輩」[改頁]
*共通シナリオ|エピローグ
;心臓
@heartbeat storage="12_4_1" sound="on" soundfile="鼓動"
;顔グラ変化
[facewin_disp storage="aki14"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え」[改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]
[seopt volume=200]

[indent]……甘ったるい、あの香りが私の鼻を擽った。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]そして、鼓膜を撫でる聞き覚えのあるゆったりとした少女の声に、私の鼓動は早くなる。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="鼓動" loop="true"]
[seopt volume=500]
;顔グラ変化
[facewin_disp storage="aki12"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（うそ……）[改頁]
*共通シナリオ|エピローグ

[indent]周りから音は消え、聞こえるのは五月蠅いくらいに鳴り響く自分の心臓の音だけ。[endindent][改頁]
*共通シナリオ|エピローグ
;顔グラ変化
[facewin_disp storage="aki13"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]あり……えな、い[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]足が地面にくっついてしまったように動かない。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]

[indent]立ち止まる私にまとわりつくように、甘い香りは段々と強くなる。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]

[indent]いつかのように私を誘う。[endindent][改頁]
*共通シナリオ|エピローグ
;効果音
[playse storage="香り"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そんな……まさか[endindent]）[改頁]
*共通シナリオ|エピローグ
;明菜退場
[facewin_clear]
[ト書き]

[indent]私は後ろを……[L]振り返った。[endindent]
*共通シナリオ|エピローグ
;効果音
[playse storage="ガンッ"]
[ブラックアウト time="100"]
[wc time=20]
;---END4　スキトキメキトキス
[背景表示 storage="end4"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
;効果音停止
[stopse]
;タイトル音楽
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]
