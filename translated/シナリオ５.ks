;---トランジション
[sakura strage="ten" time=1000]
[顔グラあり]
[メニュー]
[playse storage="ガヤ"]
[seopt volume=50]
*共通シナリオ|５日目
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
[fadeinbgm storage="b4_org" time=3000]

[indent]暗い病室で取り留めのない考え事を[r]
していたはずの私だったが、いつの[r]
まにか外は明るく、朝を迎えていた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……今日って何曜日なんだろ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]まだぼうっとした頭でそんなことを[r]
考える。[endindent][改頁]
*共通シナリオ|５日目

[indent]そういえば、病院に来てからカレン[r]
ダーを見ていないことに気付く。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont][r]

（[indent]別にどうでもいいんだけど……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]そんなことをぼんやり考えながら、[r]
天井を眺めていると……[L]
私の脳は嫌でも彼女のことを考えて[r]
しまう。[endindent][改頁]
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
[playse storage="m_kouka01"]

[indent]眠りに落ちる前には確かに答えが出[r]
たはずなのに……。[endindent][改頁]
*共通シナリオ|５日目

[indent]眠りに落ちた後、私の中に戻ってき[r]
た記憶がまた私を揺さぶる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]くそっ[endindent]）[改頁]
*共通シナリオ|５日目
[playse storage="とんと押す"]

いらいらする気持ちのままに、私は[r]
ベッドを叩き付けると……立ち上がっ[r]
た。[改頁]
*共通シナリオ|５日目
[fadeoutbgm time=3000]
[jump  target=*歩く]


*陥れない

[indent]答えのでないまま眠りについたのだ[r]
から、当然といえば当然だった。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]やることがないと……[L]余計なことばっかり考えちゃうんだ[r]
な[endindent]）[改頁]
*共通シナリオ|５日目

[indent]今までは何かに悩んでいても、グラ[r]
ウンドを全速力で走れば全てを忘れ[r]
られた。[endindent][改頁]
*共通シナリオ|５日目

[indent]身体の奥のもやもやとした何かは、[r]
風を切る心地よさの中で消えていっ[r]
た。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[facewin_clear]
[背景表示 storage="全黒"]
[トラン２]
[ト書き]

[indent]目を瞑って私は思い出す。[endindent][改頁]
*共通シナリオ|５日目
[fadeinbgm storage="issho" time=3000]
[oldMovieinit left=0 top=0 width=800 height=600]
[背景表示 storage="koutei"]
[トラン rule="中心から" time="1500"]

[indent]手足を思い切り動かして、土を蹴る[r]
感触。[endindent][改頁]
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

[indent]一日のほぼ全てをベッドの上で過ご[r]
している今の私の中には、もやもや[r]
とした不快な何かが燻るばかりで……。[endindent][改頁]
*共通シナリオ|５日目
[oldMovieuninit]
[背景表示 storage="heya_hiru"]
[トラン rule="中心から" time="1500"]
[fadeoutbgm time=1000]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki08"]
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……！」[改頁]
*共通シナリオ|５日目

[indent]また彼女のことを考え、深みに嵌っ[r]
ていってしまいそうな自分を振り払[r]
うように、私は頭を強く左右に振っ[r]
た。[endindent][改頁]
*共通シナリオ|５日目
[quake time=500 timemode=ms hmax=10 vmax=0]
[wq]
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

[indent]歩けば少しは気が晴れるかもしれな[r]
い。[endindent][改頁]
*共通シナリオ|５日目

[indent]未だぎしぎしと軋む身体を無視して[r]
、私はベッドから起きあがった。[endindent][改頁]
*共通シナリオ|５日目
;---トランジション
[facewin_clear]
[ブラックアウト time="1500"]
[jump target=*陥れ＋4以上（最大7） cond="f.仲直り>=2"]
[jump target=*陥れ＋4以上（最大7） cond="f.陥れる>=5"]
[jump target=*夢を見てない]




*夢を見てない
[背景表示 storage="byousitumae001"]
[トラン２]
[顔グラあり]
[メニュー]
[fadeinbgm storage="b4_org" time=3000]
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

[indent]気晴らしに病室を出たはずなのに、[r]
壁づたいにふらふらと歩きながら、[r]
私は結局……菜穂のことを考えていた。[endindent][改頁]
*共通シナリオ|５日目

[indent]目覚めた時に感じた感情が嘘だった[r]
かのように、私の中の菜穂への感情[r]
は真逆へと反転していた。[endindent][改頁]
*共通シナリオ|５日目

[indent]……[L]いや、元の私に戻ったと言った方が[r]
いいのかもしれない。[endindent][改頁]
*共通シナリオ|５日目

[indent]取り戻した記憶の中の私の笑顔は、[r]
菜穂への嫌悪や不快感を微塵も感じ[r]
させなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]そこにあったのは純粋な好意だけ。[endindent][改頁]
*共通シナリオ|５日目

（[indent]……でも、きっと[endindent]）[改頁]
*共通シナリオ|５日目

[indent]二人の間に何かあったのだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]記憶のなくなった私の中でも生き続[r]
ける位、[r]
強烈な負の感情を持つほどの何かが。[endindent][改頁]
*共通シナリオ|５日目
[背景表示 storage="byouin_kaidan001"]
[トラン time=1500]
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は……[endindent]）[改頁]
*共通シナリオ|５日目
[playse storage="m_kouka01"]

好意。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="m_kouka01"]

嫌悪。[endindent][改頁]
*共通シナリオ|５日目

[indent]そんな相反する裏表を持ってくるく[r]
ると回り続ける己の中のコインを持[r]
て余しながら、よく前も見ず壁をつ[r]
たって歩いていた私の手は[endindent][改頁]
*共通シナリオ|５日目

[indent]不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]

[indent]足が縺れ、バランスを崩した私の手[r]
から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]お、落ちるっ……！[endindent]）[改頁]
*共通シナリオ|５日目
[image storage=全黒 layer=base page=back]
[trans method=crossfade time=500]
[wt]
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

[indent]代わりに、ぐいっと誰かに手を引っ[r]
張られた。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="香り"]
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ……はっ」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho04"]
[クロス time=500]
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
[playse storage="香り"]

[indent]いつもと変わらぬ甘ったるい匂いを[r]
纏いながら、菜穂が心配げに私を見[r]
る。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]落ちそうになったという恐怖を感じ[r]
る前に、[r]
思いの外近くにあった菜穂の綺麗な[r]
顔に釘付けになる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せん、ぱい？」[改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ああ、私は……）[改頁]
*共通シナリオ|５日目
[playse storage="m_kouka01"]

[indent]くるくる回り続けていた私の中のコ[r]
インが、[r]
だんだんとその回転速度を落として[r]
いく。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]当に答えは出ていたのに、目を逸ら[r]
していたことに気付く。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（わたし、は……）[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="for" time=3000]

[indent]菜穂のことが……[L]好きだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]過去に何があったとしても……[nl]
何も覚えていないのだから、なかっ[r]
たのと同じ。[nl]
存在しないことと同じ。[endindent][改頁]
*共通シナリオ|５日目
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

[indent]こんなに綺麗に菜穂が私に笑ってく[r]
れるなら……[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂を泣かすような過去なんて……[L]いらない[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私は過去を取り戻すことよりも、[r]
菜穂の笑顔を選んだ。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[立絵消]
[クロス time=500]
[facewin_clear]
[ブラックアウト time="2000"]
;;効果音停止
[stopse]
[eval exp="f.END3=f.END3+1"]
[eval exp="sf.END3=true"]
[eval exp="sf.おまけ=true"]
[背景表示 storage="still_end3"]
[トラン２]
[fadeinbgm storage="hakanaki" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]


*END3
[背景表示 storage="hospital"]
[トラン２]
[ト書き]
[メニュー]
[playse storage="ガヤ"]
[seopt volume=50]
[fadeinbgm storage="iza-yoi_en" time=3000]
[font color=0xc89932]
[立絵表示 file="naho03"]
[クロス time=500]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、退院おめでとうございま[r]
す！[endindent]」[改頁]
*共通シナリオ|エピローグ
;顔グラ表示
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki14"]
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ありがと……[L]わざわざ来てくれたんだ[endindent]」[改頁]
*共通シナリオ|エピローグ
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はい！　もちろんですっ！[r]
わたし、いてもたってもいられなく[r]
てっ……[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]これで、また一緒に学校にいけます[r]
ね[endindent]」[改頁]
*共通シナリオ|エピローグ
[facewin_disp storage="aki11"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ふふ、そうだね[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]菜穂から慎ましやかで可憐な花束を[r]
受け取る。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]まるで自分のことのように私の退院[r]
を喜んでくれる菜穂の姿に、私の頬[r]
も緩む。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]この幸せがつかの間のものだとして[r]
も……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]未だ私を苛む頭の痛み。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]頭が痛むたびに少しずつ、少しずつ[r]
菜穂との思い出が私の中に返ってく[r]
る。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]そんな私に、菜穂は言葉には出さな[r]
いが不安を感じているようだった。[endindent][改頁]
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
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|エピローグ

[indent]きょとん、と菜穂の大きくまあるい[r]
瞳が見開かれる。[endindent][改頁]
*共通シナリオ|エピローグ
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ずっと一緒だって……[L]約束[endindent]」[改頁]
*共通シナリオ|エピローグ
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！[nl]
せん、ぱ……い[endindent]」[改頁]
*共通シナリオ|エピローグ
[立絵消]
[クロス time=500]
[facewin_clear]
[freeimage layer=0]
[cgv storage="still_6"]
[fadeinbgm storage="omoide" time=3000]
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

[indent]今此処にいる私は己を取り戻すこと[r]
よりも……[nl]
菜穂を選んだ　紅明菜　なのだから。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]もし、全てを思い出してしまう時が[r]
いつか来たなら……[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]おどおど、と手を差し出す菜穂を安[r]
心させるように私は微笑む。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]頼りなく、でも確かに私たちの小指[r]
は絡み合った。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（約束する……）[改頁]
*共通シナリオ|エピローグ

[indent]もし私が私じゃなくなる時が来たな[r]
ら……[nl]
貴女を傷つける前に、きっと大空に[r]
羽ばたいてみせるから。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]それが今の私の精一杯の約束。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]……[L]でもどうか、神様。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]菜穂の中には、この私だけ残して下[r]
さい。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]過去の私を……[L]起こさないで。[endindent][改頁]
*共通シナリオ|エピローグ
[stopse]
[fadeoutbgm time=2000]
[ブラックアウト time="1500"]
[wc time=20]
[背景表示 storage="end3"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]







*陥れ＋4以上（最大7）
[jump storage=sakurako2.ks target="*シナリオ５前" cond="f.仲直り>=2"]
[背景表示 storage="byousitumae001"]
[トラン２]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[fadeinbgm storage="m_namida2" time=3000]
*桜子イベント見た
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]気晴らしに病室を出たはずなのに、[r]
壁づたいにふらふらと歩きながら、[r]
私は結局……[L]菜穂のことを考えていた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]目を瞑っても、もう暗闇は広がらな[r]
い。[endindent][改頁]
*共通シナリオ|５日目

[indent]私は全てを思い出し、全てを取り戻[r]
していた。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は紅　明菜。[nl]
全部思い出した……なのに[endindent]）[改頁]
*共通シナリオ|５日目

[indent]私の胸は未だ痼りが残ったように、[r]
すっきりとしない。[endindent][改頁]
*共通シナリオ|５日目

[indent]心にひっかかっているもの。[endindent][改頁]
*共通シナリオ|５日目
[stopse]
[jump target=*選択肢 cond="f.仲直り>=2"]
[jump target=*陥れルート]

*選択肢
それは……
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

[indent]全てを思い出したら、私の中にある[r]
裏に定まったコインがより確固たる[r]
物になるとばかり思っていた。[endindent][改頁]
*共通シナリオ|５日目

なのに……[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……[L]っくそ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]突き落とされた時、私は菜穂に何も[r]
言えなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]何の弁解も出来なかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]……自分にも非があると分かってしま[r]
っている人間は弱い。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

[indent]私は……[L]弱い。[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女に対して感じる嫌悪に勝るとも[r]
劣らない自己嫌悪を感じる。[endindent][改頁]
*共通シナリオ|５日目
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

[indent]あの桜の下で出会ったのがそもそも[r]
の間違い。[endindent][改頁]
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

[indent]いくら考えても、過去はやり直せな[r]
い。[endindent][改頁]
*共通シナリオ|５日目

[indent]私の心を塗りつぶした菜穂は……[L]消えない。[endindent][改頁]
*共通シナリオ|５日目

[indent]まるで運命だったかのように菜穂に[r]
惹かれた自分は……[L]
なかったことに出来ない。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]じゃあ、どうしたらいい？[endindent]）[改頁]
*共通シナリオ|５日目

[indent]過去が変えられないなら、私はこれ[r]
からを変えるしかない。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]菜穂の思いを受け入れる？[endindent]）[改頁]
*共通シナリオ|５日目
[playse storage="不穏な効果音_高音"]
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

[indent]突き落とされる前、私は逃げたくて[r]
……[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女のべっとりとした想いから逃げ[r]
たくてたまらなかったのだから。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]菜穂がいるかぎり、きっと私は菜穂[r]
に囚われ続ける。[endindent][改頁]
*共通シナリオ|５日目
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
[playse storage="香り"]

[indent]べたべたと無遠慮に染みついた、[r]
幼子のように甘ったるいこの菜穂の[r]
匂いから。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
;---トランジション
[facewin_clear]
[ブラックアウト time="2000"]
[jump target=*階段　落下未遂]
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

[indent]ただ菜穂の真っ直ぐすぎる想いが怖[r]
いから、と。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]

[indent]自分が受け入れたくせに、何の説明[r]
もせずに……[L]卑怯にも逃げようとしたのだ。[endindent][改頁]
*共通シナリオ|５日目

[indent]あんなにも自分を慕ってくれていた[r]
菜穂を裏切って……。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……あの時、確かに菜穂の気持ちは嬉[r]
しかったはずなのに[endindent]）[改頁]
*共通シナリオ|５日目

[indent]いつからまるで鉛のように重くなっ[r]
たんだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]もう元には戻れないんだろうか。[endindent][改頁]
*共通シナリオ|５日目

[indent]２人で楽しく笑いあった日々には戻[r]
れないんだろうか。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]手遅れ……なの？[endindent]）[改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[facewin_clear]
[ブラックアウト time="2000"]
*階段　落下へジャンプ
[jump target=*階段　落下]




*階段　落下
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]

その時。[改頁]
*共通シナリオ|５日目
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目

[indent]よく前も見ず壁をつたって歩いてい[r]
た私の手は、[r]
不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]

[indent]足が縺れ、バランスを崩した私の手[r]
から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]お、落ちるっ……！[endindent]）[改頁]
*共通シナリオ|５日目
[image storage=全黒 layer=base page=back]
[trans method=crossfade time=500]
[wt]
[playse storage="ぶつかる"]
[seopt volume=150]
[ws canskip=true]
[playse storage="香り"]
[seopt volume=150]

[indent]思わず私は目を瞑った。[endindent][改頁]
*共通シナリオ|５日目
[facewin_clear]
[ト書き]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目
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

[indent]誰かが私を呼ぶ声とともに、私は転[r]
げ落ちた。[endindent][改頁]
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
[背景表示 storage="byouin_kaidan000a"]
[トラン２]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki02"]
[立絵表示 file="naho04"]
[クロス time=500]
[fadeinbgm storage="naho_bgm" time=3000]
[顔グラあり]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せ、んぱ……大丈夫……です、か？……[r]
っ[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！？」[改頁]
*共通シナリオ|５日目

[indent]何故か自分の下に人がいること、そ[r]
して、[r]
その人物の正体に私は動揺を隠せな[r]
かった。[endindent][改頁]
*共通シナリオ|５日目

[indent]その華奢な身体は、私を庇うように[r]
下敷きになっていて……。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]な、何で……っ！！[endindent]」[改頁]
*共通シナリオ|５日目

[indent]私は慌てて彼女、菜穂の上からどく[endindent]。[改頁]
*共通シナリオ|５日目

[indent]身体のあちこちが痛んだが、そんな[r]
ことは気にならなかった。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あき先輩が、だいじょうぶで……[L]良かった[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]踊り場で仰向けに倒れたまま、菜穂[r]
は笑って見せた。[endindent][改頁]
*共通シナリオ|５日目

[indent]膝は擦りむき、体中は打撲している[r]
だろうに[r]
涙一つ見せない。[endindent][改頁]
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
「[indent]えへへ、せんぱいと、お揃いっ……で[r]
す、ね[endindent]」[改頁]
*共通シナリオ|５日目
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

[indent]私の心は、またぐちゃぐちゃに掻き[r]
回される。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="m_kouka01"]

[indent]コインは、またくるくると回り始め[r]
る。[endindent][改頁]
*共通シナリオ|５日目

[indent]色々言いたいことがあるはずなのに[r]
、唇からは何も出てこなかった。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ば、馬鹿じゃ……[L]ない、の……アンタ[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[fadeinbgm storage="sharara" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……そうですね。[nl]
わたし、ばか……です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]彼女の可憐な容姿に似合わない、苦[r]
い笑みがその顔に浮かぶ。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]自分で、なくしたくせに今更こんな[r]
ことしたって……[L]無駄、ですよ、ね[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]えへへ……ほんとう、わたしって……[r]
ばか。[nl]
へへ……っ[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho12"]
[クロス time=500]

[indent]ぽろりと大粒の涙が一粒、菜穂のま[r]
あるく大きな瞳からこぼれ落ちる。[endindent][改頁]
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
「[indent]わた、し……ほんとうに、あき先輩が[r]
好きで……[L]すきで……[L]なのに……っ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]宙を見つめたまま、菜穂は語る。[endindent][改頁]
*共通シナリオ|５日目

[indent]涙を堪えるその声は震えていた。[endindent][改頁]
*共通シナリオ|５日目
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
「[indent]だれより、なによりだいすきなあき[r]
先輩が……[L]にくらしかったっ[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]じぶんのこと、何にも見えて、なく[r]
て……[L][r]
ただせんぱいに気持ち、押しつけて[r]
…っ…[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]それで…っ…苦しませた、のに……[L][r]
わたし、わたし…っ…[endindent]」[改頁]
*共通シナリオ|５日目

[indent]菜穂は、不意に黙り込むと……ただ菜[r]
穂の言葉を聞いていた私に微笑みか[r]
けた。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho13"]
[クロス time=500]
@heartbeat storage="byouin_kaidan000a"  laynum="1" sound="on" soundfile="鼓動"

[indent]その笑顔があまりに綺麗で私の鼓動[r]
はとくん、と跳ねる。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい、わたし……[L][r]
せんぱいに言いましたっけ？[endindent]」[改頁]
*共通シナリオ|５日目
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
「[indent]せんぱいは、わたしたちが初めて会[r]
ったの桜の下だと思っているでしょ[r]
う？[endindent]」[改頁]
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
[fadeinbgm storage="kirara" time=3000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし……[L]入学式の日に、陸上部の練習をして[r]
たあき先輩を見かけたんです[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]その時は、ただ何となく見てただけ[r]
なんですけど……[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたし運動苦手だから、いいなあっ[r]
て……[L]ふふ[endindent]」[改頁]
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
「[indent]その時、せんぱいが私の方にきて……[L]笑ったんです[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|５日目

[indent]思い出に微睡みながら微笑む菜穂と[r]
は対照的に、私の中でそんな思い出[r]
はなかった。[endindent][改頁]
*共通シナリオ|５日目

[indent]いぶかしむ私に、菜穂は可笑しそう[r]
に笑う。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、覚えてないのは……当然です。[r]
せんぱいは……[L]わたしの後ろにいた人に笑ってたん[r]
です[endindent]」[改頁]
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
「[indent]せんぱいの笑顔が、胸に焼き付いて[r]
離れなかった……[L]
音も、何もかもなくなったみたいで[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho05"]
[クロス time=500]
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
*共通シナリオ|選択肢「困ったように眉を下げて笑[r]
う菜穂に…」

[indent]困ったように眉を下げて笑う菜穂に[r]
私は……[endindent]

*共通シナリオ|選択肢「困ったように眉を下げて笑[r]
う菜穂に…」
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

[indent]私の中にも、そんなものがあること[r]
に気付く。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（それは……）[改頁]
*共通シナリオ|５日目
[立絵消]
[クロス time=500]
[facewin_clear]
[fadeinbgm storage="issho" time=2000]
[oldMovieinit left=0 top=0 width=800 height=600]
[背景表示 storage="still_11"]
[トラン rule="中心から" time="1000"]
[sakura_init]
[sakura_start forevisible=false backvisible=true]
[trans method=crossfade time=1000][wt]
[ト書き]

[indent]舞い落ちる桜の花びら……[L]菜穂との出会いの記憶。[endindent][改頁]
*共通シナリオ|５日目
[背景表示 storage="still_11b"]
[トラン２]

[indent]こちらに気付いた菜穂の微笑み……[L]一目で心奪われた。[endindent][改頁]
*共通シナリオ|５日目
[sakura_opts forevisible=true backvisible=false]
[trans method=crossfade time=1000][wt]
[sakura_stop]
[ブラックアウト time="1500"]
[oldMovieuninit]
[背景表示 storage="byouin_kaidan000a"]
[トラン rule="中心から" time="2000"]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki04"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……はははっ」[改頁]
*共通シナリオ|５日目

[indent]回転するコインが止まったのを感じ[r]
る。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]？　せ、せんぱい？[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……私たちって、そっくりだね[endindent]」[改頁]
*共通シナリオ|５日目
;フラグ分岐
[jump target=*陥れ度高い cond="f.陥れる>=6"]
[jump target=*陥れ度低い cond="f.陥れる<=5"]

*陥れ度高い

[indent]あんなにも揺れ惑ったのが嘘のよう[r]
に、私の心は一つの答えを出した。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[playse storage="不穏な効果音_高音"]

[indent]私は彼女を憎らしいほど……[L]愛してる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……私のことしか見えてない貴女がだ[r]
いすき[endindent]）[改頁]
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[jump target=*共通]



*陥れ度低い

[indent]あんなにも揺れ惑ったのが嘘のよう[r]
に私の心は、一つの答えを出した。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]

[indent]私は彼女を憎らしいほど……[L]愛してる。[endindent][改頁]
*共通
*共通シナリオ|５日目
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え？」[改頁]
*共通シナリオ|５日目

[indent]突然笑い出した私を、菜穂はきょと[r]
んとした顔で見上げた。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki10"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……お互い、[L]一目惚れって……こと[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！　せ、先輩……」[改頁]
*共通シナリオ|５日目
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

[indent]菜穂の好意を当たり前のように享受[r]
し……なのに、それを重いと逃げよう[r]
とした弱く自己中心的な私を。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho07"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わたし、は……」[改頁]
*共通シナリオ|５日目

[indent]大きな瞳を見開いたまま、ごくりっ[r]
と菜穂の喉が動く。[endindent][改頁]
[立絵表示 file="naho08"]
[クロス time=500]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わたし、は……」[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="iza-yoi_en" time=2000]
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わたしは、あき先輩が……[nl]
すき、ですっ……[L]だいすき、ですっ[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……[L]なっちゃん」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho12"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目

[indent]思わず呟いていた彼女のあだ名に、[r]
菜穂の瞳から涙が溢れ出る。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]せんぱい……せん、ぱいっ……[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]泣かないでよ……[nl]
なっちゃんが泣くと私どうしていい[r]
か、分からなくなる[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「～っ」[改頁]
*共通シナリオ|５日目

[indent]地べたに投げ出された菜穂の小さく[r]
可憐な掌を[r]
ぎゅっと握りしめる。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="naho13"]
[クロス time=500]

[indent]痛いくらいに握り返してきたその掌[r]
は、まるで赤ん坊のように熱かった。[endindent][改頁]
*共通シナリオ|５日目
[stopse]
;BGMフェードアウト
[fadeoutbgm time=2000]
[立絵消]
[クロス time=500]
;---トランジション
[facewin_clear]
[ブラックアウト time="1000"]
[背景表示 storage="i_5"]
[トラン２]
[wait time="2000"]
[jump storage=シナリオ６.ks]





*……目を逸らした
[endchoice]
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
[playse storage="不穏な効果音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]駄目だ……[L]きっとまた私は同じ事を繰り返す[endindent]）[改頁]
*共通シナリオ|５日目

[indent]一時の感情に流されて、また菜穂を[r]
受け入れて……[L]
きっとまた菜穂を裏切る。[endindent][改頁]
*共通シナリオ|５日目

[indent]きっとまた……[L]逃げ出す。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂のまっすぐな想いが、濁りのな[r]
い純粋な瞳が眩しすぎて。[endindent][改頁]
*共通シナリオ|５日目
[fadeinbgm storage="m_namida2" time=3000]
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ごめん」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]はは……[nl]
謝らないで……くださ、い[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ごめ……」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]は、は……っ[endindent]」[改頁]
*共通シナリオ|５日目
[立絵消]
[クロス time=500]

[indent]青あざの浮かんだ真白な手で顔を隠[r]
しながら、[r]
菜穂は一人泣いているようだった。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]掛ける言葉を持たない私は、ただた[r]
だ横に座り込んでいるしかなかった。[endindent][改頁]
*共通シナリオ|５日目
[facewin_clear]
[背景表示 storage="全黒"]
[トラン２]
[ト書き]

[indent]……一度すれ違った二人は、もう元に[r]
は戻れない。[endindent][改頁]
*共通シナリオ|５日目
;ＢＡＤＥＮＤ
[ブラックアウト time="1500"]
[wc time=20]
[背景表示 storage="bad_end"]
[トラン２]
[wc time=100]
[fadeoutbgm time=2000]
[ブラックアウト time="1000"]
[wc time=20]
[stopse]
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]



*階段　落下未遂
[背景表示 storage="byouin_kaidan000a"]
[トラン２]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[背景表示 storage="byouin_kaidan001"]
[トラン２]

その時。[改頁]
*共通シナリオ|５日目
@heartbeat storage="byouin_kaidan001" sound="on" soundfile="鼓動"
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……ぇ？」[改頁]
*共通シナリオ|５日目

[indent]よく前も見ず壁をつたって歩いてい[r]
た手は、[r]
不意に空を掴んだ。[endindent][改頁]
*共通シナリオ|５日目
[quake time=1000 timemode=ms hmax=5 vmax=5]
[wq]

[indent]足が縺れ、バランスを崩した私の手[r]
から松葉杖が離れる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（お、落ちるっ……！）[改頁]
*共通シナリオ|５日目
[image storage=kuro.jpg layer=base page=back]
[trans method=crossfade time=500]
[wt]
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
[playse storage="香り"]

[indent]代わりに、ぐいっと誰かに手を引っ[r]
張られた。[endindent][改頁]
*共通シナリオ|５日目
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ……はっ」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho04"]
[クロス time=500]
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
[playse storage="香り"]

[indent]いつもと変わらぬ甘ったるい匂いを[r]
纏いながら、菜穂が心配げに私を見[r]
る。[endindent][改頁]
*共通シナリオ|５日目

私は……

*共通シナリオ|選択肢「菜穂が心配げに私を見る。」
[sentaku]
[locate x=320 y=300]
[button graphic="o.png" target=*手を振り払う]
[locate x=320 y=350]
[button graphic="p.png" target=*手を振り払わない]
[s]




*手を振り払う
[endchoice]
[eval exp="f.陥れる=f.陥れる-5"]
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[fadeoutbgm time=1000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ！[L]　離してっ」[改頁]
*共通シナリオ|手を振り払う
[playse storage="とんと押す"]
[ws canskip=true]
[quake time=300 timemode=ms hmax=10 vmax=10]
[wq]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「あ……」[改頁]
*共通シナリオ|手を振り払う
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（しまった……）[改頁]
*共通シナリオ|手を振り払う

[indent]菜穂に私のことを信用させるつもり[r]
だったのに。[endindent][改頁]
*共通シナリオ|手を振り払う

[indent]拒絶を叫ぶ己の心のままに、私は菜[r]
穂の白く細い手を振り払っていた。[endindent][改頁]
*共通シナリオ|手を振り払う
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

[indent]私は全てを思い出していると彼女に[r]
ばれてしまっただろうか？[endindent][改頁]
*共通シナリオ|手を振り払う
[立絵表示 file="naho06"]
[クロス time=500]

[indent]そっと菜穂を盗み見る私とは対照的[r]
に、彼女の目はまっすぐに私を射抜[r]
く。[endindent][改頁]
*共通シナリオ|手を振り払う
[playse storage="不穏な効果音_高音"]
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|手を振り払う
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
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]

[indent]弱々しく微笑む菜穂から、私は視線[r]
を逸らした。[endindent][改頁]
*共通シナリオ|手を振り払う
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……う、うん[endindent]」[改頁]
*共通シナリオ|手を振り払う

[indent]彼女のまあるい目が私を見る。[endindent][改頁]
*共通シナリオ|手を振り払う

[indent]その中に、菜穂に突き落とされたあ[r]
の日の……[nl]
見るに耐えない醜い私が映っている[r]
気がした。[endindent][改頁]
*共通シナリオ|手を振り払う
[fadeoutbgm time=2000]
[立絵消]
[クロス time=500]
[facewin_clear]
[ブラックアウト time="1500"]
[jump target=*看護師と会話]


*手を振り払わない
[endchoice]
[eval exp="f.陥れる=f.陥れる+1"]
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……ありがと[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！[L]　いいえ！[r]
先輩が無事で……良かったです[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

[indent]ふんわりと微笑む菜穂に、私も微笑[r]
み返す。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="k-sishou" time=3000]

[indent]菜穂のその笑顔があんまり綺麗で……[nl]私は泣きたくなる。[endindent][改頁]
*共通シナリオ|５日目

[indent]もう、昔の２人には戻れないんだと[r]
……[nl]分かってしまって。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そうだ。[nl]
迷っていたってしょうがない……[L]ホントは、もう心は決まってるんだ[r]
から[endindent]）[改頁]
*共通シナリオ|５日目

[indent]いくら理性で押さえようとしても、[r]
私の中に蠢くどろどろとしたものは[r]
もう……[nl]押さえられない。[endindent][改頁]
*共通シナリオ|５日目

[indent]今か今か、と溢れ出る時を待ってい[r]
る。[endindent][改頁]
*共通シナリオ|５日目

[indent]……きっとあの時の菜穂もそうだった[r]
んだろう。[endindent][改頁]
*共通シナリオ|５日目

[indent]あの時は分からなかったけれど、今[r]
なら分かる。[endindent][改頁]
*共通シナリオ|５日目
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
[立絵消]
[クロス time=500]
[facewin_clear]
[背景表示 storage="全黒"]
[トラン２]
[ト書き]

[indent]だって、[L]あなたをあいしてるから。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[ブラックアウト time="1500"]
[jump target=*看護師と会話]




*看護師と会話
[背景表示 storage="byouin_kaidan001"]
[トラン２]
[ト書き]
[メニュー]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]……！[nl]
大丈夫！？[endindent]」[改頁]
[立絵表示 file="okada02" layer="1" pos="right"]
[クロス time=500]
*共通シナリオ|５日目
[fadeinbgm storage="soseion" time=2000]
[顔グラあり]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki07"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ……岡田さん[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho02" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|５日目

[indent]階段の上で、お互いを支え合うよう[r]
な不自然な格好で立っていた私たち[r]
の元に、心配した様子の岡田さんが[r]
駆け寄ってきた。[endindent][改頁]
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
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう、良かった[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]

[indent]ほっとしたというように柔らかく微[r]
笑む岡田さんにつられ、私も自然と[r]
笑顔になる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]はい……[r]
心配かけてすみません[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="okada01" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そうよ。[r]
まだ明菜ちゃんの身体は本調子じゃ[r]
ないんだから、無茶しちゃ駄目よ！[endindent]」[改頁]
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
「[indent]何処か行きたい時は、私に声をかけ[r]
て。[r]
時間が空いている時は付き添うから[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、有り難うございます[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="okada03" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]ふふ、それじゃあ……部屋までは大丈[r]
夫？[r]
車椅子持ってくる？[endindent]」[改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、いえ。[r]
大丈夫です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]忙しそうな岡田さんの手を煩わせた[r]
くなくて、[r]
私は大丈夫だと微笑んでみせた。[endindent][改頁]
*共通シナリオ|５日目
[立絵表示 file="okada01" layer="1" pos="right"]
[クロス time=500]
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]そう？[r]
あ、あなた……[L]菜穂ちゃん、だったよね[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho04" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「！　は、はい」[改頁]
*共通シナリオ|５日目

[indent]黙って突っ立っていた菜穂の肩が、[r]
びくりと震える。[endindent][改頁]
*共通シナリオ|５日目
[font color=0x80aba9]
【岡田】
[resetfont]
[r]
「[indent]部屋まで付き添ってあげてくれるか[r]
な？[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、私は１人でも[endindent]」[改頁]
*共通シナリオ|５日目
[fadeoutbgm time=500]
[立絵表示 file="naho07" layer="0" pos="left"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]私が付き添います[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|５日目

[indent]思いの外はっきりとした菜穂の声に[r]
、私は少し面食らう。[endindent][改頁]
*共通シナリオ|５日目
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
[立絵消 layer="1"]
[クロス time=500]
*共通シナリオ|５日目

[indent]そして、そのまま立ち去る岡田さん[r]
の背をいつかのようにじっと見つめ[r]
ていたかと思うと、菜穂は私を振り[r]
返った。[endindent][改頁]
*共通シナリオ|５日目
[立絵消 layer="0"]
[クロス time=500]
[立絵表示 file="naho03"]
[クロス time=500]
[fadeinbgm storage="soseion" time=1000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]じゃあ、せんぱい……[L]行きましょうか[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「う、うん」[改頁]
*共通シナリオ|５日目

[indent]私より背の低い菜穂に肩を支えられ[r]
ながら、[r]
私は自分の病室へと向かった。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[立絵消]
[クロス time=500]
[facewin_clear]
[ブラックアウト time="2000"]
[playse storage="ガラガラ"]
[ws canskip=true]
[背景表示 storage="heya_hiru"]
[トラン２]
[メニュー]
[顔グラあり]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ふぅ、ありがと……[L]なにか……っ！？[endindent]」[改頁]
*共通シナリオ|５日目
[playse storage="とんと押す"]
[seopt volume=80]
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[playse storage="香り"]
[seopt volume=150]

[indent]何か飲む？と言うはずだった私の言[r]
葉は、言葉になる前に霧散していく。[endindent][改頁]
*共通シナリオ|５日目
[facewin_clear]
[ト書き]
;スチル表示
[freeimage layer=0]
[cgv storage="still_kiss"]
[fadeinbgm storage="kirara" time=3000]

[indent]一体何が起こっているのか、分から[r]
なかった。[endindent][改頁]
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

[indent]見開いた私の目は、相手の顔を見て[r]
いるはずなのに焦点はまるで合わな[r]
い。[endindent][改頁]
*共通シナリオ|５日目

[indent]頭が混乱する。[endindent][改頁]
*共通シナリオ|５日目
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
;陥れる度分岐
[jump target=*恐怖を感じる cond="f.陥れる<=5"]
[jump target=*嫌悪を感じる cond="f.陥れる>=6"]





*恐怖を感じる
[fadeoutbgm time=1000]
[freeimage layer=0]
[cgv storage="still_kiss嫌悪"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]こ……こ、わ……いっ[endindent]）[改頁]
*共通シナリオ|５日目
[playse storage="ホラー"]

[indent]唇に触れる可憐な少女、菜穂が……[r]
何故か得体の知れない生き物に思え[r]
た。[endindent][改頁]
*共通シナリオ|５日目
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1000"]
[fadeinbgm storage="akuma" time=3000]

[indent]ぎゅっと目を瞑る。[endindent][改頁]
*共通シナリオ|５日目

[indent]目を開けたら……菜穂の大きな瞳に、[r]
食べられてしまいそうな[r]
気がして。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……っ）[改頁]
*共通シナリオ|５日目

[indent]私の小さくちっぽけな心が恐怖で埋[r]
め尽くされる。[endindent][改頁]
*共通シナリオ|５日目
@heartbeat storage="kuro" sound="on" soundfile="鼓動"
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]息が……できっない……っ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]このまま呼気を奪われ、私は死ぬん[r]
だろうか。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]や……[L]やだ……[L]いやだいやだいやだいやだいやだ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]何故こんな目に合わなければならな[r]
いのか。[endindent][改頁]
*共通シナリオ|５日目

[indent]私が何をしたというのか。[endindent][改頁]
*共通シナリオ|５日目

[indent]私だけが悪いのか。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[顔グラあり]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……めっ」[改頁]
*共通シナリオ|５日目
[playse storage="不穏な効果音_高音"]
[立絵表示 file="naho11"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]なんで、わたしを……[L]拒絶するんですか？[endindent]」[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki08"]
[trans method=crossfade time=500]
[wt]
[quake time=1000 timemode=ms hmax=10 vmax=10]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！！」[改頁]
*共通シナリオ|５日目
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

[indent]何もかもを菜穂に擦り付けて、逃げ[r]
ようとした自分が……見える。[endindent][改頁]
*共通シナリオ|５日目
[quake time=2000 timemode=ms hmax=30 vmax=30]
[playse storage="ガンッ"]
[seopt volume=70]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]いやぁあああああああっ[endindent]」[改頁]
*共通シナリオ|５日目

[indent]ありったけの声を出して、私は救い[r]
を求めた。[endindent][改頁]
*共通シナリオ|５日目
[立絵消]
[クロス time=500]
[facewin_clear]
[背景表示 storage="全黒"]
[トラン time=500]
[playse storage="足音"]
[seopt volume=150]
[ト書き]
[indent]遠くで、ばたばたと慌ただしい足音[r]
が聞こえる。[endindent][改頁]
*共通シナリオ|５日目

[indent]その音を聞きながら、私は意識を手[r]
放した。[endindent][改頁]
*共通シナリオ|５日目

[indent]目覚めたら、私を苛む目玉がなくな[r]
っていることを[r]
祈りながら……[endindent][改頁]
*共通シナリオ|５日目
[ブラックアウト time="2000"]
*共通シナリオ|５日目
;効果音停止
[stopse]
[eval exp="f.END2=f.END2+1"]
[eval exp="sf.END2=true"]
[eval exp="sf.おまけ=true"]
[背景表示 storage="still_end2"]
[トラン２]
[fadeinbgm storage="keh" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]

;
*END2
[背景表示 storage="BG00b0_80"]
[トラン２]
[ト書き]
[メニュー]

[indent]その後、私は母に頼んで郊外の病院[r]
へ移った。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]誰にもここを教えないで欲しいと訴[r]
える私のあまりの剣幕に、[r]
母も圧倒されていたようだった。[endindent][改頁]
*共通シナリオ|エピローグ
[背景表示 storage="4-2-02-e"]
[トラン２]
[fadeinbgm storage="b4_org" time=3000]

[indent]……私は記憶をなくす前の望みのまま[r]
に、菜穂から逃げた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]怪我が癒えるのを待って、私は高校[r]
をやめた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]携帯を解約した。菜穂からの贈り物[r]
を燃やした。[nl]
菜穂との写真を切り刻んだ。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]菜穂との繋がりは、全て断ち切りた[r]
かった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]過去の自分の過ちの証拠を消してし[r]
まいたかった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]少しでもなかったことに出来るよう[r]
に……[nl]
あの恐怖を忘れられるように。[endindent][改頁]
*共通シナリオ|エピローグ
[背景表示 storage="12_4_1"]
[トラン２]
[fadeoutbgm time=2000]

[indent]それから数ヶ月の時が過ぎ……[nl]
身体の傷もすっかり癒えた私は両親[r]
の反対を押し切り、誰も私を知らな[r]
い土地で専門学校へと通い始めた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]全てをリセットして、一から全てを[r]
作り直したくて。[endindent][改頁]
*共通シナリオ|エピローグ
[ブラックアウト time="2000"]
[背景表示 storage="4-2-02-i"]
[トラン２]
[メニュー]
[顔グラあり]
[playse storage="ガサガサ"]
[ws canskip=true]
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

[indent]実家から持ってきた荷物を段ボール[r]
から出し切り、私は一息吐いた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]ご飯も食べず作業した甲斐もあって[r]
、何もなかったワンルームの部屋は[r]
どうにか人が住める状況になってい[r]
た。[endindent][改頁]
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
[playse storage="チャイム"]
[ws canskip=true]
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

[indent]そういえば、母が引越祝いに何か贈[r]
ると言っていた。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="チャイム"]
[ws canskip=true]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「は～い」[改頁]
*共通シナリオ|エピローグ

[indent]急かすように鳴るチャイムの音に誘[r]
われるまま、私は玄関へと急いだ。[endindent][改頁]
*共通シナリオ|エピローグ
[背景表示 storage="4-2-03-a"]
[トラン２]
[facewin_disp storage="aki11"]
[trans method=crossfade time=500]
[wt]
[playse storage="ドア"]
[ws canskip=true]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]はい、どちらさま……！？[endindent]」[改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]
[ws canskip=true]
[facewin_disp storage="aki12"]
[trans method=crossfade time=500]
[wt]

[indent]引越祝いの贈り物の代わりに……[nl]
扉の隙間から真白な手が伸びてきた。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「み～つけた」[改頁]
*共通シナリオ|エピローグ
[playse storage="ガンッ"]
[seopt volume=50]
[image storage=still_1 layer=base page=back]
[trans method=crossfade time=300]
[wt]

[indent]聞き覚えのあるゆったりとしたその[r]
声色に、[r]
扉の隙間からのぞく大きなまあるい[r]
目玉に、[r]
私はただ目を見開いた。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="不穏な効果音"]
[freeimage layer=0]
[facewin_disp storage="aki13"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そ、そんな……[L]う、そ……[endindent]）[改頁]
*共通シナリオ|エピローグ
[freeimage layer=0]
[image storage=still_7 layer=base page=back]
[trans method=crossfade time=500]
[wt]
[fadeinbgm storage="hitogo" time=3000]
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
[背景表示 storage="16_4_1"]
[トラン２]
[立絵表示 file="naho03"]
[クロス time=500]

[indent]目の前に、確かに逃げ出せたはずだ[r]
った少女が[r]
立っていた。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]かくれんぼしたいなら、したいって[r]
言って[r]
下さいよぉ[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]甘ったるい猫なで声が、鼓膜を撫で[r]
る。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふ、[L]子供っぽいから恥ずかしくて言えな[r]
かったんですかぁ？[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あははっ、ほんとうに……[L]せんぱい、可愛い[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]少女は何か話しているようだが、全[r]
く頭には入ってこない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]言葉として認識できない。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぁ……あ」[改頁]
*共通シナリオ|エピローグ
[立絵表示 file="naho11"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]こんどかくれんぼする時は、ちゃん[r]
と言って[r]
下さいね！[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……ふふ、せんぱいを探すの、[r]
なかなか楽しかったですけどっ[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]うふふふふ、と首を傾げながら笑う[r]
少女。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]誰もがその姿を可憐だと表現するだ[r]
ろう。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]でも、私にはそんなもの目に入らな[r]
かった。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]目に入ったのは、彼女のまあるい目[r]
玉……[nl]
その中に映る……醜悪な私だけ。[endindent][改頁]
*共通シナリオ|エピローグ
[quake time=500 timemode=ms hmax=30 vmax=30]
[wq]
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
（[indent]い……な、い……るくない…っ…わ、た[r]
しは……くない[endindent]）[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]わた、しはわるく…な、い……[L]
私は悪くない私は悪くない私は悪く[r]
ない私は悪くない私は悪くない私は[r]
悪くないっ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]いつかも感じた恐怖が、まるで津波[r]
のように押し寄せる。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]がたがたと寒くもないのに身体が震[r]
える。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="足音"]
[seopt volume=100]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ひっ……こ、来ないでっ！！！！[endindent]」[改頁]
*共通シナリオ|エピローグ
[立絵消]
[クロス time=300]

[indent]力任せに扉を閉めようとするが、そ[r]
れより先に彼女の革靴が隙間に入り[r]
込んだ。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="ガンッ"]
[seopt volume=70]
[ws canskip=true]
[cgv storage="still_7"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ふふふふ、うふふふふふふ。[r]
いたいです……あき先輩[endindent]」[改頁]
*共通シナリオ|エピローグ

[indent]隙間から覗く彼女の目玉があまりに[r]
怖くて、[r]
私は思わず押さえていたドアノブか[r]
ら手を離してしまった。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="突風"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぁ……」[改頁]
*共通シナリオ|エピローグ
[fadeoutbgm time=2000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ないで……[L]見ないでっ……[L]こっち、見ないで見ないで見ないで[r]
見ないで見ないでっ！！！！[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]ただただ後退ることしか出来ない私[r]
に、少女は獲物を追いつめた猫のよ[r]
うに舌なめずりをする。[endindent][改頁]
*共通シナリオ|エピローグ
[facewin_clear]
[ト書き]
[playse storage="翻るカーテン"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ちゃんとせんぱいのこと見つけまし[r]
た……[L]こんどは[endindent]」[改頁]
*共通シナリオ|エピローグ
[cgv storage="still_7b"]
[playse storage="スタンガン"]
[ws canskip=true]
[image storage=siro layer=base page=back]
[trans method=crossfade time=100]
[wt]
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
「[indent]わたしのあそびに付き合って下さい[r]
ね、あき先輩……[endindent]」[改頁]
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

[indent]まるで幼子が謡うようなその声を聞[r]
きながら、私は意識を手放した。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]目覚めたら……きっとそこは[L]地獄。[endindent][改頁]
*共通シナリオ|エピローグ
[fadeoutbgm time=2000]
[ブラックアウト time="1500"]
[wc time=20]
[背景表示 storage="end2"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
[stopse]
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]


*嫌悪を感じる
;明菜退場
[facewin_clear]
[freeimage layer=0]
[cgv storage="still_kiss嫌悪"]
[fadeoutbgm time=1000]
[ト書き]

[indent]私は……[endindent][改頁]
*共通シナリオ|５日目
[playse storage="不穏な効果音_高音"]

[indent]私は……押さえられない嫌悪を感じた。[endindent][改頁]
*共通シナリオ|５日目

[indent]柔らかく、温かいその感触が不快で[r]
たまらなかった。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「っ」[改頁]
*共通シナリオ|５日目
[playse storage="香り"]
[seopt volume=200]

[indent]コロンとは違う、幼い子供に感じる[r]
お菓子のような甘ったるい匂いが私[r]
の鼻を掠める。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]何で……[L]こん、な……っ[endindent]）[改頁]
*共通シナリオ|５日目

[indent]今すぐに菜穂の肩を掴んで引き離し[r]
たい。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「やめ……！」[改頁]
*共通シナリオ|５日目

[indent]けれど、ふと視界に入った菜穂の表[r]
情に私の動きは止まった……[L]今にも泣きそうに眉根を寄せたその[r]
表情。[endindent][改頁]
*共通シナリオ|５日目
[fadeinbgm storage="m_namida2" time=3000]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（ぁ……）[改頁]
*共通シナリオ|５日目
[freeimage layer=0]
[cgv storage="still_kiss哀れみ"]

[indent]今はもう形にもなっていない……[L]けれど未だ何処かに消え残る彼女へ[r]
の好意の欠片が、彼女を突き放そう[r]
と持ち上げた手を掴み止める。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私は……）[改頁]
*共通シナリオ|５日目

[indent]嫌悪と共に感じる確かな悲しみの感[r]
情。[nl]
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

[indent]確かに彼女のことを好きだったはず[r]
なのに。[endindent][改頁]
*共通シナリオ|５日目

[indent]彼女を思うだけで楽しく、側にいれ[r]
ば幸せで……[L]彼女の笑顔に恋をしていたはずなの[r]
に。[endindent][改頁]
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

[indent]私は手を下ろし、強ばった身体の力[r]
を抜き、[r]
目を閉じる。[endindent][改頁]
[fadeoutbgm time=2000]
[背景表示 storage="全黒"]
[トラン rule="中心から" time="1500"]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]……これが、最後だから[endindent]）[改頁]
*共通シナリオ|５日目
[fadeinse storage="セミ" volume=200 loop=true time=2000]
[wait time="5000"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（……蝉の、声？）[改頁]
*共通シナリオ|５日目
[oldMovieinit left=0 top=0 width=800 height=600]
[背景表示 storage="bg1040"]
[トラン２]
[立絵表示 file="naho01"]
[クロス time=500]

[indent]その時一瞬、菜穂が私に告白してく[r]
れた……あの夏の日が見えた気がした。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutse storage="セミ" time=2000]
[立絵消]
[クロス time=500]
[メニュー非]
[メッセ消]
[背景表示 storage="全黒"]
[トラン２]
[oldMovieuninit]
[wait time="500"]
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

[indent]私の中の何かが一緒に流れ落ちてい[r]
くのを感じる。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="香り"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（さよなら……）[改頁]
*共通シナリオ|５日目

[indent]菜穂に恋をしていた私。[endindent][改頁]
*共通シナリオ|５日目
[ブラックアウト time="1500"]
[wait time=1500]
*空
[背景表示 storage="BG00b0_80"]
[トラン２]
[wait time="500"]
;背景変更
[背景表示 storage="heya"]
[トラン２]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……[L]落ち着いた？[endindent]」[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="naho_bgm" time=3000]
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]は、はい。[nl]
ごめんなさい……と、突然[endindent]」[改頁]
*共通シナリオ|５日目

[indent]私に口付けた後、ぽろぽろと泣き出[r]
した菜穂の背を撫でながら、私は菜[r]
穂が落ち着くのを待った。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]いいよ、別に……[endindent]」[改頁]
*共通シナリオ|５日目
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
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！　な、なんでも……ない、です[endindent]」[改頁]
*共通シナリオ|５日目

[indent]ぱっと頬を赤く染め俯く菜穂を、私[r]
は何の感慨もなく見つめる。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]こんな穏やかな気持ちは初めて……[endindent]）[改頁]
*共通シナリオ|５日目

[indent]凪いだ海のように、自分の中にさざ[r]
波一つ感じられない。[endindent][改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]まるで、嵐が来る前みたい……[endindent]）[改頁]
*共通シナリオ|５日目
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ね……」[改頁]
*共通シナリオ|５日目
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
「[indent]うん、この前岡田さんに連れて行っ[r]
てもらったんだけど、なかなか見晴[r]
らしがいいの[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho07"]
[クロス time=500]

[indent]「岡田」という単語に、菜穂の表情[r]
が強ばる。[endindent][改頁]
*共通シナリオ|５日目

[indent]……この提案に彼女はきっと承諾する[r]
と、私は確信していた。[endindent][改頁]
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
「[indent]じゃあ、行こう……[L]あ、車椅子押して貰ってもいい？　[r]
まだ階段は上れないから[endindent]」[改頁]
*共通シナリオ|５日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「はい！」[改頁]
*共通シナリオ|５日目

[indent]何の疑いも持っていない菜穂に、私[r]
も微笑む。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=3000]
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
[立絵消]
[クロス time=500]
[facewin_clear]
[ブラックアウト time="1500"]
[playse storage="ゆっくりしていってね"]
[seopt volume=60]
;背景変更
[背景表示 storage="byousitumae001"]
[トラン time=1500]
[wait time="1000"]
[背景表示 storage="byouin_kaidan000a"]
[トラン time=1500]
[背景表示 storage="school08b"]
[トラン２]
[メニュー]
[ト書き]
[playse storage="カラス"]
[seopt volume=50]
[ws canskip=true]
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]わ～綺麗ですね～[endindent]」[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="sharara" time=5000]
[顔グラあり]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki09"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「うん、綺麗」[改頁]
*共通シナリオ|５日目
[playse storage="カラス"]
[seopt volume=50]

[indent]菜穂に押して貰っていた車椅子から[r]
降りると、[r]
松葉杖をつきながら私は立ち上がる。[endindent][改頁]
*共通シナリオ|５日目

[indent]菜穂は私が立ち上がるのを助けると[r]
、見事な夕焼けに惹かれるようにフ[r]
ェンスへと近寄っていく。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="ガサガサ"]
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

[indent]一カ所だけ、老朽化したフェンスを[r]
取り外し、代わりに柵が置いてある[r]
場所を菜穂は何故か乗り越えた。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="カラス"]
[seopt volume=50]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]へいきですよ！[L][r]
わ～ここからだと下がよく見えます[endindent]」[改頁]
*共通シナリオ|５日目
[playse storage="突風"]

[indent]長い黒髪を秋の冷たい風に遊ばせな[r]
がら、菜穂が下を覗き込む。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「わ～怖いっ」[改頁]
*共通シナリオ|５日目

[indent]夕日を浴びながら、無邪気に笑う菜[r]
穂はとても綺麗で無防備で……[endindent][改頁]
*共通シナリオ|５日目
[playse storage="足音"]
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「菜穂」[改頁]
*共通シナリオ|５日目
[fadeoutbgm time=1000]
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
[立絵消]
[クロス time=500]
[playse storage="不穏な効果音_高音"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「お返し」[改頁]
*共通シナリオ|５日目
[facewin_clear]
[背景表示 storage="yu-hi"]
[トラン２]
[ws canskip=true]
[ト書き]

[indent]燃えるように真っ赤な夕日。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="香り"]
[seopt volume=200]

[indent]菜穂から漂う甘い香り。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="カラス"]
[seopt volume=50]

[indent]遠くで聞こえるカラスの声……[L]全てがあの時と同じ。[endindent][改頁]
*共通シナリオ|５日目
[playse storage="とんと押す"]
[seopt volume=100]
[ws canskip=true]
[freeimage layer=0]
[cgv storage="still_8a"]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「え……」[改頁]
*共通シナリオ|５日目
[cgv storage="still_8b"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]でもここから落ちるのは……[L]私じゃない[endindent]）[改頁]
*共通シナリオ|５日目
[cgv storage="still_8c"]

[indent]まるでスローモーションのように、[r]
菜穂の身体が傾いていく。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]自分から穴に落ちてくれるなんて……[L]優しいね[endindent]」[改頁]
*共通シナリオ|５日目
[fadeinbgm storage="huyu-y" time=1000]
[背景表示 storage="yu-hi"]
[トラン２]
[wait time=1000]
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

[indent]ありったけの想いを込めて、私は菜[r]
穂に笑いかける。[endindent][改頁]
*共通シナリオ|５日目

[indent]”私”を全て彼女が持っていってくれ[r]
るように祈りながら、私は言葉を吐[r]
き出す。[endindent][改頁]
*共通シナリオ|５日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「せん、ぱ……」[改頁]
*共通シナリオ|５日目
[cgv storage="still_8e"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「大嫌い」[改頁]
*共通シナリオ|５日目
[playse storage="突風"]
[cgv storage="still_8f"]

[indent]私の言葉の意味を理解しているのか[r]
いないのか、私が最後に見た菜穂の[r]
表情は笑顔でもなく恐怖でもなく悲[r]
しみでもなく……[L]まるで赤ん坊のような無垢な表情だ[r]
った。[endindent][改頁]
*共通シナリオ|５日目
[fadeoutbgm time=2000]
[ブラックアウト time="1500"]
[wait time=1000]
;背景変更
[背景表示 storage="BG00b0_80"]
[トラン２]
[メニュー]
[ト書き]
[playse storage="カラス"]
[seopt volume=50]

[indent]目の前から菜穂の姿が消えても、私[r]
はしばらくの間空を眺めていた。[endindent][改頁]
*共通シナリオ|５日目
[顔グラあり]
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
[facewin_clear]
[ブラックアウト time="1500"]
[stopse]
[eval exp="f.END4=f.END1+1"]
[eval exp="sf.END4=true"]
[eval exp="sf.おまけ=true"]
[背景表示 storage="still_end4"]
[トラン２]
[fadeinbgm storage="yayk" time=2000]
[jump storage=スタッフロール.ks target=*スタッフロール]




*END4
[背景表示 storage="全黒"]
[トラン２]
[メニュー]
[ト書き]

『[indent]被告人紅明菜は、被害者山吹菜穂に[r]
よって一時昏睡状態に陥り……[endindent]』[改頁]
*共通シナリオ|エピローグ

『[indent]情状酌量の余地が……[endindent]』[改頁]
*共通シナリオ|エピローグ

『[indent]……[L]判決は[endindent]』[改頁]
*共通シナリオ|エピローグ
[背景表示 storage="siro"]
[トラン２]
[背景表示 storage="12_4_1"]
[トラン２]
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

[indent]自分を心配げに見る友人に微笑み返[r]
しながら、[r]
私は空を見上げる。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="カラス"]
[seopt volume=50]
[背景表示 storage="BG00b0_80"]
[トラン２]
[fadeinbgm storage="iza-yoi_en" time=3000]

今は秋。[改頁]
*共通シナリオ|エピローグ

[indent]空に広がるのは……あの日のような夕[r]
焼け。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]あの日菜穂を突き落とした私は、逮[r]
捕され裁判に掛けられた。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]刑務所に入ることも覚悟していたが[r]
執行猶予が認められ、私はこうして[r]
外を歩けている……[L]私を知る人が誰もいないこの土地で。[endindent][改頁]
*共通シナリオ|エピローグ
[背景表示 storage="12_4_1"]
[トラン２]
[font color=0x9ACD32]
【友人】
[resetfont]
[r]
「[indent]こっちこっち！[r]
美味しいクレープ屋さんがあるんだ[r]
って[endindent]」[改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ、待って」[改頁]
*共通シナリオ|エピローグ

[indent]心おきなく話せる友人も出来た。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]私が犯罪者であることを知っても共[r]
にいてくれる彼女を大事にしたい。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]ああ……幸せ[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]私を縛り付けていた全てから解放さ[r]
れ、私の心は軽かった。[endindent][改頁]
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

[indent]菜穂がいる限り、叶わなかった未来[r]
にいま自分は立っている。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私は……私のもの[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]誰の影も、私の上にはもう落ちない。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]忌まわしい過去は、全て消し去った[r]
のだから……[L]
あの日、この手で。[endindent][改頁]
*共通シナリオ|エピローグ
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|エピローグ

[indent]未来への確かな希望を感じ、爽やか[r]
な秋風を頬で受けながら歩き出した[r]
……[L]その時。[endindent][改頁]
*共通シナリオ|エピローグ
[fadeoutbgm time=300]
[font color=0xc89932]
【？？？】
[resetfont]
[r]
「あき先輩」[改頁]
*共通シナリオ|エピローグ
@heartbeat storage="12_4_1" sound="on" soundfile="鼓動"
[facewin_disp storage="aki14"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「え」[改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]
[seopt volume=200]

[indent]……甘ったるい、あの香りが私の鼻を[r]
擽った。[endindent][改頁]
*共通シナリオ|エピローグ

[indent]そして、鼓膜を撫でる聞き覚えのあ[r]
るゆったりとした少女の声に、私の[r]
鼓動は早くなる。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="鼓動" loop="true"]
[seopt volume=500]
[facewin_disp storage="aki12"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（うそ……）[改頁]
*共通シナリオ|エピローグ

[indent]周りから音は消え、聞こえるのは五[r]
月蠅いくらいに鳴り響く自分の心臓[r]
の音だけ。[endindent][改頁]
*共通シナリオ|エピローグ
[facewin_disp storage="aki13"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]あり……えな、い[endindent]）[改頁]
*共通シナリオ|エピローグ

[indent]足が地面にくっついてしまったよう[r]
に動かない。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]

[indent]立ち止まる私にまとわりつくように[r]
、甘い香りは段々と強くなる。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]

[indent]いつかのように私を誘う。[endindent][改頁]
*共通シナリオ|エピローグ
[playse storage="香り"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]そんな……まさか[endindent]）[改頁]
*共通シナリオ|エピローグ
[facewin_clear]
[ト書き]

[indent]私は後ろを……[L]振り返った。[endindent]
*共通シナリオ|エピローグ
[playse storage="ガンッ"]
[ブラックアウト time="100"]
[wc time=20]
[背景表示 storage="end4"]
[トラン２]
[wc time=100]
[ブラックアウト time="1000"]
[wc time=20]
[stopse]
[playbgm storage="gts"]
[jump storage=first.ks target=*title_menu]
