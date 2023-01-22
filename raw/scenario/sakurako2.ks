;END５ルートで追加
;朝　最初
[sakura strage="nurce_st" time=1000]
;---BGM再生
[fadeinbgm storage="soseion" time=3000]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;桜子変化
[立絵表示 file="sakurako02" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「あれ……」[改頁]
*共通シナリオ|シナリオ４前
;菜穂立ち絵表示
[立絵表示 file="naho02" layer="1" pos="left"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]菜穂、ちゃん……？[endindent]」[改頁]
*共通シナリオ|シナリオ４前
;桜子変化
[立絵表示 file="sakurako04" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]どうしてここに……[endindent]）[改頁]
*共通シナリオ|シナリオ４前
;効果音
[playse storage="足音"]
[seopt volume=200]
;立ち絵消去
[立絵消 layer="1"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]あっちは病室が……[endindent]）[改頁]
*共通シナリオ|シナリオ４前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]やっぱり、知ってたの……？[endindent]）[改頁]
*共通シナリオ|シナリオ４前
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;---トランジション
[ブラックアウト time="1500"]
[wait time="2000"]
[背景表示 storage="heya_hiru"]
[トラン２]
[jump storage=シナリオ４.ks target="*桜子独白見た"]


*シナリオ５前
;END５ルートで追加
;朝　病院
[wait time="2000"]
[背景表示 storage="byousitumae001"]
[トラン２]
;---BGM再生
[fadeinbgm storage="soseion" time=3000]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;桜子変化
[立絵表示 file="sakurako04" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]どうしよう……[endindent]）[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;扉開く効果音
[playse storage="ガラガラ"]
[ws canskip=true]
;桜子変化
[立絵表示 file="sakurako02" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「！」[改頁]
*共通シナリオ|シナリオ５前
;明菜変化
[立絵表示 file="big_aki08" layer="1" pos="left"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「あ」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「……あ」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]マネージャー……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]く、紅先輩……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;明菜変化
[立絵表示 file="big_aki01" layer="1" pos="left"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]どうして[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]あ、そ、その……先輩が事故にあったって聞いて……その[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;明菜変化
[立絵表示 file="big_aki09" layer="1" pos="left"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]ありがとう……まさか来てくれるなんて、思わなかったな[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]いえ……もう起き上がって大丈夫なんですか？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]うん。[r]
はは、まだ歩くのが精一杯だけど[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]そう、ですか……良かったです[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]う、うん[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako03" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]どうしよう……菜穂ちゃんのこと、聞かなきゃ[endindent]）[改頁]
*共通シナリオ|シナリオ５前
;明菜変化
[立絵表示 file="big_aki01" layer="1" pos="left"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「……」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako02" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]……あ、あの[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「？」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]菜穂ちゃん、見ませんでしたか？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]え……？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako04" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、同じクラス、だっけ？[nl]
今日はまだ、見てないけど……あ、一緒に来たの？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]やっぱり……[endindent]）[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako01" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]そう、ですか[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]菜穂ちゃん、知ってたんだ……。[nl]
高等部に行って聞いたの？[endindent]）[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]う、うん……？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako04" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]ううん、きっと違う。[nl]
菜穂ちゃん……まさか[endindent]）[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]マネージャー？[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako01" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]！　あ、すみません。[nl]
私、行きます、ね[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]う、うん[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子変化
[立絵表示 file="sakurako02" layer="0" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]お大事にして、ください[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;明菜変化
[立絵表示 file="big_aki09" layer="1" pos="left"]
[クロス time=500]
[font color=0xc53d43]
【明菜】
[resetfont]
[r]
「[indent]あ、ありがとう[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;暗転
;BGMフェードアウト
[fadeoutbgm time=2000]
;効果音停止
[stopse]
;---トランジション
[ブラックアウト time="1500"]
[背景表示 storage="nurce_st"]
[トラン２]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;効果音
[playse storage="足音"]
[seopt volume=200]
;桜子登場
[立絵表示 file="sakurako03" pos="right"]
[クロス time=500]
;---BGM再生
[fadeinbgm storage="soseion" time=3000]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
;桜子登場
[立絵表示 file="sakurako01" pos="right"]
[クロス time=500]
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]菜穂ちゃん……[endindent]」[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
（[indent]あなたが、やったの？[endindent]）[改頁]
*共通シナリオ|シナリオ５前
[font color=0xf5b1aa]
【栗毛色の髪の少女】
[resetfont]
[r]
「[indent]どうして[endindent]」[改頁]
;暗転
[ブラックアウト time="1500"]
;---メッセージレイヤトランジション
[ト書き]
[メニュー]
;効果音停止
[stopse]
;BGMフェードアウト
[fadeoutbgm time=3000]
*共通シナリオ|シナリオ５前
[indent]紅先輩のために、私と友達のふりまでしてたのに。[endindent][改頁]
*共通シナリオ|シナリオ５前
;---トランジション
[ブラックアウト time="1500"]
[wait time="2000"]
;背景表示
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
（[indent]マネージャー、何だか変だったな……[endindent]）[改頁]
*共通シナリオ|５日目
[indent]中等部の陸上部のマネージャー、紅樺桜子。[nl]
何だか様子が変だった。[endindent][改頁]
*共通シナリオ|５日目
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
（[indent]菜穂、来てるんだ……[endindent]）[改頁]
[jump storage="シナリオ５.ks" target="*桜子イベント見た"]
