*始まり
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
;---
[cm]
[メニュー非]
[OK]
[背景表示]
[クロス]
[rclick call storage="Krclick.ks" target="*krclick_save" enabled=true]
[背景表示 storage="全黒"]
[トラン]
[メニュー]
*00|プロローグ
[ト書き]
[fadeinbgm storage="tsbm" time=2000]
*共通シナリオ|プロローグ
[indent]Shrouded in darkness, "I" suddenly[r]
become aware of myself.[endindent][改頁]
*共通シナリオ|プロローグ
[font color="0xc53d43"]
【？】
[resetfont]
[r]
（[indent]Where am I? It's pitch-dark...[endindent]）[改頁]
*共通シナリオ|プロローグ

 [indent]As though adrift at the floor of a deep,[r]
dark ocean;[r]
as though my body, alone, were fading[r]
to nothing...[endindent][改頁]
*共通シナリオ|プロローグ

 [indent]As I drifted aimlessly through the[r]
darkness, my ears heard an abrupt[r]
voice.[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"..."[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]The voice of a girl...[endindent]）[改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"[indent]Because... because, Senpai—[r]
you didn't keep your promise—[endindent]"[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
"[indent]Promise...?[endindent]"[改頁]
*共通シナリオ|プロローグ

[indent]A voice I faintly remember but cannot[r]
identify echoes endlessly.[r][L]But the "I" who drifted in the darkness[r]
could not speak.[endindent][改頁]
*共通シナリオ|プロローグ

[indent]The other "me", her figure unseen,[r]
asked me repeatedly.[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"[indent]That's right...[r][L]Senpai, did you not say you would[r]
accept my feelings?![endindent]"[改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"[indent]Even though you said 'okay' to me that[r]
time...[r]
I, I was so happy...[r]
I thought it was our fate.[endindent]"[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
"[indent]That...[endindent]"[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]That?[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]The other "me"—who, despite having a[r]
voice identical to mine—[r]
ensnared me in her words without any[r]
regard for my will.[endindent][改頁]
*共通シナリオ|プロローグ

[indent]Her voice had been frail.[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"[indent]Despite that... despite that...![endindent]"[改頁]
*共通シナリオ|プロローグ

[indent]But in contrast, she now heaved and[r]
sobbed as she spoke,[r]
her voice gradually growing more[r]
frantic.[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc89932]
【？】
[resetfont]
[r]
"[indent]Even though... you promised... you[r]
promised!!![endindent]"[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
(!)[改頁]
*共通シナリオ|プロローグ
[quake time=2000 timemode=ms hmax=10 vmax=10]
[font color=0xc89932]
【？】
[resetfont]
[r]
"!!"[改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]Ah...[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]A sensation filled the world without[r]
warning—[r]
the world that, until now, had been[r]
void and empty.[endindent][改頁]
*共通シナリオ|プロローグ
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]I promised... who?[endindent]）[改頁]
*共通シナリオ|プロローグ

[indent]"I" called her name... which definitely[r]
belonged to the girl pleading with me[r]
in such a depressing voice.[r][L]
That name and that voice, for a[r]
moment, evoked within me bittersweet[r]
memories.[endindent][改頁]
*共通シナリオ|プロローグ

[indent]But before her name could materialise[r]
as words, I was pulled back into the[r]
darkness.[endindent][改頁]
*共通シナリオ|プロローグ
[fadeoutbgm time=2000]
;---トランジション
[背景表示]
[クロス time="1000"]
[メニュー非]
[メッセ消]
[背景表示 storage="siro"]
[トラン rule="中心から" time="1000"]
[wait time=1000]
[顔グラあり]
[メニュー]
[facewin_init layer=2 index=1000500]
[facewin_setopt left=10 top=325 width=273 height=280 transtime=500 visible]
[facewin_disp storage="aki01"]
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]Ah... it hurts...[r][L]Too bright...[endindent]）[改頁]
*共通シナリオ|１日目

 [indent]As I slowly regained[r]
consciousness/awareness, I became[r]
aware of a faint light shining from[r]
across my eyes.[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
(I...)[改頁]
*共通シナリオ|１日目
[playse storage="ガヤ"]
[seopt volume=100]
[fadeoutse time=10000]

 [indent]My head was foggy and I stretched my[r]
body as I opened my eyes.[r][L]
The sickening stench of medicine[r]
surrounded me. From afar I could[r]
faintly hear the bustling of people.[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]This is...[r][L]I'm in school, aren't I?[endindent]）[改頁]
*共通シナリオ|１日目
[stopse]

 [indent]I recall the image of the school building[r]
painted over by twilight.[endindent][改頁]
*共通シナリオ|１日目
[背景表示 storage="BG14b_80"]
[トラン２]

 [indent]The classroom.[endindent][改頁]
*共通シナリオ|１日目
[背景表示 storage="BG26b_80"]
[トラン２]

 [indent]Then...[endindent][改頁]
[wait time="800"]
*共通シナリオ|１日目
[font color=0xc53d43]
【？】
[resetfont]
[r]
（[indent]Huh? What was I doing?[endindent]）[改頁]
*共通シナリオ|１日目

 [indent]A scene surfaced from the deepest[r]
recesses of my memory.[r]
My solitary figure, standing alone in[r]
the classroom.[endindent][改頁]
*共通シナリオ|１日目
[背景表示 storage="image3b"]
[トラン２]

 [indent]I cannot at all remember what I was[r]
there to do.[endindent][改頁]
*共通シナリオ|１日目

 [indent]Why was I even at school to begin[r]
with...?[r][L]And how long was I there?[endindent][改頁]
*共通シナリオ|１日目
[背景表示 storage="BG00b0_80"]
[トラン２]

 [indent]I, Kurenai Akina, could only recall the[r]
scarlet unfurling across the evening[r]
sky through the classroom[r]
window.[l][er][r]
It burned vividly in my mind, but I could[r]
remember nothing else.[endindent][改頁]
*共通シナリオ|１日目

 [indent]Then, before I could suspect my own[r]
uncertain memories, my body began to[r]
feel extremely exhausted.[l][er][r]
It seemed my consciousness would[r]
once again sink into the darkness...[endindent][改頁]
[背景表示 storage="kuro"]
[トラン２]
*共通シナリオ|１日目
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
(...?)[改頁]
*共通シナリオ|１日目
[playse storage="香り"]

 [indent]Just as my consciousness was about to[r]
succumb to the temptation to sink into[r]
the darkness, a faint, gentle wind[r]
bearing a sweet scent tickled my nose.[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
(What is that smell...?[r][L]My eyes—)[改頁]
*共通シナリオ|１日目

 [indent]Like a butterfly drawn to a sweet scent,[L]like an ant,[L]I could not help but wonder what the[r]
source of the scent was.[endindent][改頁]
*共通シナリオ|１日目

 [indent]I unconsciously tried to wrest my[r]
eyelids open in order to find out, but I[r]
could not; it was almost as though they[r]
had been glued shut.[endindent][改頁]
*共通シナリオ|１日目

 [indent]Or rather—I felt an intense revulsion at[r]
the idea of opening my eyelids.[L]
Despite that, the scent did not cease[r]
tempting me.[endindent][改頁]
*共通シナリオ|１日目
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
"Ugh..."[改頁]
*共通シナリオ|１日目

 [indent]I wanted to open my eyes by any[r]
means possible; I mustered the[r]
strength in my body (which ached for[r]
some reason in various joints) and[r]
managed to speak unexpectedly.[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
(My throat...)[改頁]
*共通シナリオ|１日目

 [indent]I sounded hoarse, as though I had not[r]
spoken in a very long time.[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
"...Ah."[改頁]
[fadeinbgm storage="iranai" time=10000]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
"..."[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【Akina】
[resetfont]
[r]
"[indent]Ah...?[endindent]"[r][nl]
(Is someone... there?)[改頁]
*共通シナリオ|１日目
[playse storage="香り"]

 [indent]唐突に傍らで生じた人の気配、体温[r]
……そして微かな息づかい。[L]
私を執拗に誘う甘い匂いも強くなっ[r]
たようだった。[endindent][改頁]
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

 [indent]身体は、私の言う通りに動きそうも[r]
ない。[L]
感じ取れなかった可能性も否定でき[r]
なかった。[endindent][改頁]
*共通シナリオ|１日目

 [indent]誰かの存在を感じるのに、何も見え[r]
ないという不安。[L]
その不安に急き立てられるように、[r]
鼓動は徐々に徐々にその速度を増し[r]
ていく。[endindent][改頁]
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
[背景表示 storage="siro"]
[トラン rule="中心から" time="1000"]

 [indent]辺りは色を無くしたように白く……そ[r]
して[endindent][改頁]
*共通シナリオ|１日目
[freeimage layer=0]
[cgv storage="still_1"]

 [indent]まあるい目玉が私を見ていた。[endindent][改頁]
*共通シナリオ|１日目
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

 [indent]それが人間の目だと理解する前に、[r]
私の喉は勝手に叫んでいた。[L]
押さえきれない恐怖、困惑、色々な[r]
感情が駆けめぐり……私はやっと、目[r]
玉を人間の少女だと認識した。[endindent][改頁]
*共通シナリオ|１日目
[fadeoutbgm time=3000]
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
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]あき……先輩？[r]
だいじょうぶ……[L]ですか？[endindent]」[改頁]
*共通シナリオ|１日目
[fadeinbgm storage="naho_bgm" time=4000]
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「ぇ」[改頁]
*共通シナリオ|１日目

 [indent]おずおず、といった様子で私に声を[r]
掛けてくる女の子……[L]まるでお姫様のように可愛らしい。[endindent][改頁]
*共通シナリオ|１日目

 [indent]そんな彼女とは対照的に、私は目を[r]
見開いたまま、彼女を見つめ続けた。[endindent][改頁]
*共通シナリオ|１日目
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]

 [indent]徐々に収まっていく恐怖と反比例す[r]
るように、私の中でだんだんと膨ら[r]
んでいく感情に私は困惑した。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[nl]
（何で……私……）[改頁]
*共通シナリオ|１日目
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]あ、先輩。[r]
ずっと目、さまさなくて……[L]心配しましたっ[endindent] 」[改頁]
*共通シナリオ|１日目

 [indent]えへへ、と誰が見ても可憐に照れ笑[r]
いをする彼女から私は目が離せなか[r]
った。[endindent][改頁]
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

 [indent]ことり、と可愛らしく首を傾げる彼[r]
女に私の目はただただ釘付けだった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（どうして……こん、な）[改頁]
*共通シナリオ|１日目

 [indent]そう、この気持ちに名前をつけると[r]
したらきっと誰もがこう名付ける。[endindent][改頁]
*共通シナリオ|１日目

 [indent]彼女の存在が[L]　不快　だと。[改頁]
*共通シナリオ|１日目
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

 [indent]自覚と共に込み上げてくる嘔吐きに[r]
も似た不快感と、鳥肌が立つほどの[r]
嫌悪感。[endindent][改頁]

 [indent]自分の中にあったことに驚くくらい[r]
の激しいマイナスの感情に、私はた[r]
だ困惑した。[endindent][改頁]
*共通シナリオ|１日目
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

 [indent]見ず知らずの少女に、こんなにもマ[r]
イナスの感情を抱く自分に動揺しな[r]
がら、私はどうにか笑顔だけでも取[r]
り繕った。[endindent][改頁]
*共通シナリオ|好意的な対応を心がける
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……な、何でも……[L]あ、あのさ[endindent]」[改頁]
*共通シナリオ|好意的な対応を心がける
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|好意的な対応を心がける

 [indent]私の黒く醜い感情など知りもせず、[r]
彼女はにこにこと笑顔を私に向ける。[L]
私はその綺麗な笑顔を受け止められ[r]
ず、目を逸らした。[endindent][改頁]
*共通シナリオ|好意的な対応を心がける
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[jump target=*選択肢終了]


*上辺だけでも取り繕う
[endchoice]
[eval exp="f.取り繕う=f.取り繕う+1"]
[eval exp="f.陥れる=f.陥れる+1"]
[facewin_disp storage="aki09"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]……な、何でも……[L]あ、あのさ[endindent]」[改頁]
*共通シナリオ|上辺だけでも取り繕う
[立絵表示 file="naho03"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「はい」[改頁]
*共通シナリオ|上辺だけでも取り繕う

 [indent]どうにか表面的な笑顔を顔に貼り付[r]
け、私はこの不愉快な存在に向き直[r]
った。[L]
目の前の彼女は、何が楽しいのかに[r]
こにこと笑顔を私に向けてくる。[endindent][改頁]
*共通シナリオ|上辺だけでも取り繕う
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
[立絵表示 file="naho04"]
[クロス time=500]

 [indent]動揺を隠せない彼女の様子を視界の[r]
片隅で捕らえながら、私は自分の居[r]
る場所が分からないことに思い当た[r]
った。[endindent][改頁]
*共通シナリオ|１日目
[jump target=*取り繕う cond="f.取り繕う>=1"]
[jump target=*元のルートへ]

*取り繕う
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
[facewin_disp storage="aki01"]
[trans method=crossfade time=500]
[wt]

 [indent]こんなこと嘘など付いてどうするの[r]
だ、という思いを込めて見つめてい[r]
た私に困惑していた彼女だったが、[L]不意にぱっと表情を輝かせた。[改頁]
*共通シナリオ|１日目
[立絵表示 file="naho03"]
[クロス time=500]

 [indent]嬉しそうな笑顔で、噛みしめるよう[r]
に呟く。[endindent][改頁]
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
[playse storage="頭痛"]
[fadeoutbgm time=3000]
*共通シナリオ|１日目
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「！[L]　せんぱい！」[改頁]
*共通シナリオ|１日目
[fadeinbgm storage="k-sishou" time=3000]
[playse storage="頭痛"]

 [indent]自分についてのデータを引きずり出[r]
そうとした私の頭に、づきんと痛み[r]
が走った……[nl]
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

 [indent]思わず、といった風に私の手に触れ[r]
た彼女の手。[L]
冷たくさらさらとしたその掌に不快[r]
に感じる原因などないのに、私は思[r]
わず振り払っていた。[endindent][改頁]
*共通シナリオ|１日目
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]

 [indent]しゅん、とした彼女に私は少しの罪[r]
悪感を覚える。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（何で、私……[L]彼女のこと知らないのに）[改頁]
*共通シナリオ|１日目

 [indent]項垂れる彼女に頭の片隅では悪いこ[r]
とをしたと思ったが、フォローする[r]
気はなかった。[L]
理由は分からないが、彼女に対して[r]
そんな優しい気持ちにはなれなかっ[r]
た。[endindent][改頁]
*共通シナリオ|１日目

 [indent]項垂れる彼女を放ってもう一度記憶[r]
を探ることにした私だったが、結果[r]
は同じだった。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（痛っ……[L]思い、出せない）[改頁]
*共通シナリオ|１日目

 [indent]年齢や身分など、自分に関するちょ[r]
っとした記憶や一般常識は引き出せ[r]
るが、[r]
自分に関わる人のことは誰１人とし[r]
て思い出せない。[endindent][改頁]
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

 [indent]自分の名前が分かっても、この世界[r]
の仕組みが分かっても、人にとって[r]
……[L]私にとって一番大事なものがごっそ[r]
りと私の中から抜け落ちていた。[endindent][改頁]
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
[fadeoutbgm time=3000]
[立絵表示 file="naho01"]
[クロス time=500]
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]だいじょうぶですっ！　すぐ治りま[r]
すっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]せんぱい、記憶をなくしちゃったか[r]
ら、[r]
ちょっと動揺して気が立ってるだけ[r]
ですよ、ね？[r]
ね？[endindent]」[改頁]
*共通シナリオ|１日目
[fadeinbgm storage="naho_bgm" time=2000]

 [indent]まるで小動物のような可愛らしさで[r]
、[r]
彼女は捲し立てる。[endindent][改頁]
*共通シナリオ|１日目
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
じゃあ、わたし、先輩が思い出せる[r]
ように自己紹介しますねっ！[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「そ、そう……[L]ありがと」[改頁]
*共通シナリオ|１日目
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
一生懸命場を明るくしようとしてい[r]
るらしい彼女の好意に、私は甘える[r]
ことにした。[endindent][改頁]
*共通シナリオ|１日目

　[indent]不安に押し潰されないように[r]
彼女を利用したのだ。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【？】
[resetfont]
[r]
「[indent]わたしは、山吹　菜穂です。[nl]
あき先輩と同じ学校で、中等部の２[r]
年です[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]先輩にはとってもお世話になってて[r]
……[r]
そ、その[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……？」[改頁]
*共通シナリオ|１日目

　[indent]ゆったりとした口調で話し出した彼[r]
女……[nl]
山吹菜穂は何故かさっきよりも顔を[r]
赤くして、しどろもどろになってい[r]
った。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]！　あ、ぁ、あき先輩とは、仲良し[r]
さん……[nl]でした[endindent]」[改頁]
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
なっちゃんって呼んでくれてたんで[r]
す[endindent]」[改頁]
*共通シナリオ|１日目
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

　[indent]見知らぬ……[L]”仲良しさん”だったらしいが、今私[r]
が山吹菜穂に抱いている感情はまる[r]
っきり正反対。[endindent][改頁]
*共通シナリオ|１日目

　[indent]そんな相手を”なっちゃん”と呼ぶよ[r]
うな趣味は今の私にはなかった。[endindent][改頁]
*共通シナリオ|１日目
[立絵表示 file="naho04"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]あ、先輩は……[L]事故に、あったんです[endindent]」[改頁]
*共通シナリオ|１日目
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
学校で……高いところから落ちちゃっ[r]
たみたい、です[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「落ちた……」[改頁]
*共通シナリオ|１日目

　[indent]そこで私は身体が訴える倦怠感、痛[r]
みの正体に気付いた。[L]
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
あき先輩が無事で、ほんとうに良か[r]
ったですっ[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]ぁ、あき先輩がいなくなったら…っ…[r]
わたし、わたしっ[endindent]」[改頁]
*共通シナリオ|１日目
[立絵表示 file="naho05"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|選択肢「泣きそうに歪む山吹菜穂の[r]
綺麗な顔……」

　[indent]泣きそうに歪む山吹菜穂の綺麗な顔[r]
に、[r]
私は
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

　[indent]彼女に感じる不快感はぬぐい去れな[r]
いが、彼女の涙は私の心の一部を酷[r]
くゆさぶる。[endindent][改頁]
*共通シナリオ|信じる

　[indent]山吹菜穂の言葉を、私は信じること[r]
にした。[endindent][改頁]
*共通シナリオ|信じる
[jump target=*選択肢２]




*嘘0
[jump target=*嘘1 cond="f.陥れる>=1"]
[jump target=*嘘2]
;選んでいない場合は陥れフラグ－１

*嘘1
[endchoice]
[eval exp="f.陥れる=f.陥れる+1"]
[eval exp="f.嘘1=f.嘘1+1"]
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

　[indent]彼女のお綺麗な涙に、私はただイラ[r]
イラした。[endindent][改頁]
*共通シナリオ|ウソダ
[facewin_disp storage="aki03"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（目障り……[L]早く泣きやんでよ）[改頁]
*共通シナリオ|ウソダ

　[indent]そう思い口にでかかった言葉を私は[r]
、[r]
はっと飲み込んだ。[endindent][改頁]
*共通シナリオ|ウソダ
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

　[indent]彼女に私が感じている不快感を知ら[r]
しめるチャンスが……[endindent][改頁]
*共通シナリオ|ウソダ
[facewin_disp storage="aki04"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（陥れてやる……）[改頁]
*共通シナリオ|ウソダ

　[indent]何の迷いもなく、何の疑問もなく……[r]
私はそう決心した。[endindent][改頁]
*共通シナリオ|ウソダ
[jump target=*選択肢２]



*嘘2
[endchoice]
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

　[indent]目の前で泣く山吹菜穂の涙に、嘘は[r]
ないように見えた。[endindent][改頁]
*共通シナリオ|嘘？
[facewin_disp storage="aki07"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（私……やっぱり変なんだ）[改頁]
*共通シナリオ|嘘？

　[indent]自分を心配して泣いている彼女の姿[r]
が不快だなんて……。[L]
私は自分の汚い心から目を逸らすよ[r]
うに、彼女からそっと目を逸らした。[endindent][改頁]
*共通シナリオ|嘘？
[jump target=*選択肢２]

*選択肢２
[jump target=*表情1 cond="f.信じる>=1"]
[jump target=*表情2 cond="f.嘘1>=1"]
[jump target=*表情3 cond="f.嘘2>=1"]

*表情1

　[indent]その時。[endindent][改頁]
*共通シナリオ|１日目
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
[立絵表示 file="naho04"]
[クロス time=500]
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
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
[立絵表示 file="naho04"]
[クロス time=500]
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
[playse storage="ドア"]
[seopt volume=200]
*共通シナリオ|１日目
[立絵表示 file="naho04"]
[クロス time=500]
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
[stopse]
[fadeoutbgm time=2000]
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]あ、なっちゃん来てたの……[L]！……あき、な？[endindent]」[改頁]
*共通シナリオ|１日目
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

　[indent]見覚えのない４０代位の女性に、私[r]
は首を傾げる。[endindent][改頁]
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
[立絵消]
[クロス time=500]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「！！」[改頁]
*共通シナリオ|１日目

　[indent]駆け寄ってきた女性にぎゅっと力強[r]
く抱きしめられる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（い、いた……いっ）[改頁]
*共通シナリオ|１日目

　[indent]身体の節々が痛んだが、それを告げ[r]
るのは憚られるような女性の様子に[r]
私はただ身を任せた。[endindent][改頁]
*共通シナリオ|１日目
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
[立絵表示 file="naho02"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|１日目

　[indent]心臓が、まるで素手で掴まれたよう[r]
に痛んだ。[L]
喉が震えた。[endindent][改頁]
*共通シナリオ|１日目

[indent]何処かで嗅いだことのある匂いを、[r]
この女性から感じた。[nl]
……でも、この人が誰なのか私に教え[r]
てはくれない。[endindent][改頁]
*共通シナリオ|１日目

　[indent]薄々は分かっていても……[nl]
本当の意味で教えては、くれなかっ[r]
た。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]私……なんで覚えて、ないんだろっ…[r]
…[nl]
何で、忘れちゃったんだろ[endindent]）[改頁]
*共通シナリオ|１日目

[indent]何より大事なことなのに。[endindent][改頁]
*共通シナリオ|１日目

[indent]こんなにも自分を思ってくれている[r]
彼女が分からない自分が悲しくて、[r]
苦しくて……[L]涙が出た。[endindent][改頁]
*共通シナリオ|１日目
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

[indent]目尻に浮かんだ涙を拭いながら、[r]
女性は山吹菜穂へと振り返る。[nl]
そんな様子を私はただぼんやりと見[r]
ていた。[endindent][改頁]
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
[fadeoutbgm time=2000]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「[indent]……あのね！　先輩、わたしのことも[r]
、おばさんのことも……[L]覚えてない、みたい[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0x555647]
【見知らぬ女性】
[resetfont]
[r]
「[indent]え？[nl]
……や、やだ、なっちゃん。[r]
そんな、悪い冗談は……[endindent]」[改頁]
*共通シナリオ|１日目
[fadeinbgm storage="k-sishou" time=3000]

　[indent]震える声が私の鼓膜を揺らす。[endindent][改頁]
*共通シナリオ|１日目
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

　[indent]何を言ってるの？　と言わんばかり[r]
に私を見る彼女の目が無性に私を苛[r]
立たせた。[endindent][改頁]
*共通シナリオ|１日目
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
お母さんのことも、分からない、の[r]
……？[endindent]」[改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……っ」[改頁]
*共通シナリオ|１日目

　[indent]失望の眼差しで私を見る、女性……[nl]母の視線に耐えきれなくて、私は俯[r]
く。[r]
ぱたぱた、と溢れた涙の雫がシーツ[r]
を濡らす。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（[indent]くそっ……くそうっ[nl]
何で……ど、して……[L]っ……そっ[endindent]）[改頁]
*共通シナリオ|１日目

　[indent]無性に悔しくて、腹立たしくて、私[r]
は唇を噛みしめた。[endindent][改頁]
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

　[indent]ふらふらと立ち上がった母は、弱々[r]
しく微笑んだ。[L]
そんな母を山吹菜穂は心配げに見や[r]
る。[endindent][改頁]
*共通シナリオ|１日目
[font color=0x555647]
【母】
[resetfont]
[r]
「[indent]はや、く……お、お医者さま……[L]呼んで、来なきゃ[endindent]」[改頁]
*共通シナリオ|１日目
[playse storage="close"]
[seopt volume=200]

　[indent]覚束ない足取りでふらふらと部屋を[r]
出ていった母を背中で感じながら、[L]
私はただ苛立ちを持て余すように俯[r]
いていた。[endindent][改頁]
*共通シナリオ|１日目
[立絵表示 file="naho02"]
[クロス time=500]

　[indent]そんな私に山吹菜穂は声を掛けるで[r]
もなく、[r]
ただ私を見下ろしているようで……[L]益々私はいらいらした。[endindent][改頁]
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
（っ……なにか言ったら、どうなのよ[r]
っ）[改頁]
*共通シナリオ|１日目
[fadeoutbgm time=2000]

　[indent]苛立った心のままに、彼女を罵って[r]
やろうと私は顔を上げ……[endindent][改頁]
*共通シナリオ|１日目
[立絵表示 file="naho06"]
[クロス time=500]
[font color=0xc89932]
【菜穂】
[resetfont]
[r]
「約束したのに」[改頁]
*共通シナリオ|１日目
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
[playse storage="頭痛"]
[fadeinbgm storage="hitogo" time=2000]
[facewin_disp storage="aki02"]
[trans method=crossfade time=500]
[wt]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
（頭、がっ……）[改頁]
*共通シナリオ|１日目

　[indent]ぎゅうっと頭を両手で締め付けられ[r]
るような痛み。[endindent][改頁]
*共通シナリオ|１日目

　[indent]記憶を思い出そうとした時とは比べ[r]
物にならない痛さに、じわっと汗が[r]
噴き出てくる。[endindent][改頁]
*共通シナリオ|１日目
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「くっ……」[改頁]
*共通シナリオ|１日目

　[indent]あまりの痛みに、私の顔は歪む。[nl]
私の挙動不審に気付いているはずな[r]
のに、彼女はそれを気にする素振り[r]
もなかった。[endindent][改頁]
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
そのほんの僅かな振動も激痛に変わ[r]
る。[endindent][改頁]
*共通シナリオ|１日目

　[indent]そんな私に、山吹菜穂はわずかに微[r]
笑んだ。[改頁]
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
[立絵消]
[クロス time=500]
[playse storage="香り"]

　[indent]そのままくるり、と背を向けた山吹[r]
菜穂からふわりと甘い匂いが漂う。[endindent][改頁]
*共通シナリオ|１日目
[playse storage="頭痛"]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ぃ、つうっ……！[endindent]」[nl]
（頭が…っ…痛いっ）[改頁]
*共通シナリオ|１日目
[playse storage="ゆっくりしていってね"]
[seopt volume=60]

　[indent]彼女から漂ってきた覚えのある甘い[r]
匂いに、何故か頭痛はさらにその激[r]
しさを増した。[endindent][改頁]
*共通シナリオ|１日目

　[indent]あんなにも執拗に私を誘ったはずの[r]
あの甘い匂いは……[nl]
今はただ不快な匂いでしかなかった。[endindent][改頁]
*共通シナリオ|１日目
[fadeoutbgm time=2000]
[stopse]
[facewin_clear]
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
