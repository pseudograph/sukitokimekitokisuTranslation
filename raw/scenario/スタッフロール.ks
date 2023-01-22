*スタッフロール
@call storage=staffroll.ks
@staffrollinit
@font size=30 
@staffrolltext x=30 y=480 text="作った人"
@resetfont
@staffrolltext x=30 y=50 text="企画原案"
@staffrolltext x=40 y=30 text="たてわき・長月詩音"
@staffrolltext x=30 y=50 text="シナリオ"
@staffrolltext x=40 y=30 text="たてわき"
@staffrolltext x=30 y=50 text="原画"
@staffrolltext x=40 y=30 text="長月詩音"
@staffrolltext x=30 y=50 text="スクリプト"
@staffrolltext x=40 y=30 text="たてわき"
@staffrolltext x=30 y=50 text="アイキャッチ絵"
@staffrolltext x=40 y=30 text="たてわき"
@staffrolltext x=30 y=50 text="PV制作"
@staffrolltext x=40 y=30 text="長月詩音"
@font size=30 
@staffrolltext x=30 y=480 text="お借りした素材"
@resetfont
@staffrolltext x=30 y=150 text="背景素材"
@staffrolltext x=40 y=30 text="明宮村（ヴィントドルフ）"
@staffrolltext x=40 y=30 text="F.F.F"
@staffrolltext x=40 y=30 text="きまぐれアフター"
@staffrolltext x=40 y=30 text="cube"
@staffrolltext x=40 y=30 text="aquamary images"
@staffrolltext x=40 y=30 text="Ｋ’ｓＦａｃｔｏｒｙ"
@staffrolltext x=40 y=30 text="空彩"
@staffrolltext x=40 y=30 text="その他フリー背景素材"
@staffrolltext x=30 y=150 text="音楽素材"
@staffrolltext x=40 y=30 text="煉獄庭園"
@staffrolltext x=40 y=30 text="効果音源"
@staffrolltext x=40 y=30 text="WindSphere"
@staffrolltext x=40 y=30 text="音楽　魔王魂"
@staffrolltext x=40 y=30 text="零式マテリアル"
@staffrolltext x=40 y=30 text="その他フリー音楽素材"
@staffrolltext x=30 y=150 text="吉里吉里素材"
@staffrolltext x=40 y=30 text="乙姫の花笠ゲーム開発室"
@staffrolltext x=40 y=30 text="吉里吉里プラグインとかごった煮的配布場所"
@staffrolltext x=30 y=150 text="PV楽曲提供"
@staffrolltext x=40 y=30 text="Trial & Error"
@staffrolltext x=30 y=150 text="デバッグ"
@staffrolltext x=40 y=30 text="ユキ"
@staffrolltext x=40 y=30 text="toki"
@staffrolltext x=40 y=30 text="ミカヅキモ"
@staffrolltext x=30 y=150 text="制作"
@staffrolltext x=40 y=30 text="Tatewaki＆Nagatsuki"
@staffrolltext x=30 y=150 text="Thank you for your playing!"
@staffrollstart height=4000 time=200000
@wait time=250000
@staffrolluninit
;BGMフェードアウト
[fadeoutbgm time=3000]
[jump storage=シナリオ３.ks target=*END1 cond="f.END1>=1"]
[jump storage=シナリオ５.ks target=*END2 cond="f.END2>=1"]
[jump storage=シナリオ５.ks target=*END3 cond="f.END3>=1"]
[jump storage=シナリオ５.ks target=*END4 cond="f.END4>=1"]
[jump storage=シナリオ６.ks target=*END5 cond="f.END5>=1"]
[s]\






















