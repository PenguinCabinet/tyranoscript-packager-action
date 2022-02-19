;メッセージレイヤの定義

		[position layer=message0 width=740 height=220 top=340 left=60]
        [position layer=message0 page=fore frame="frame.png" margint="35" marginl="50" marginr="120" marginb="60" opacity=255 ]


		;[ptext name="chara_name_area" layer="message0" color=0xFFFFFF size=26 x=30 y=381 bold="bold" edge="" shadow=""]
        [ptext name="chara_name_area" layer="message0" bold="bold" color="white" edge="0x454D51"  size=22 x=110 y=357]

		;キャラクターの表示モードに関する定義
		;[chara_config ptext="chara_name_area" pos_mode=true time="600" memory="false" anim="true" effect="easeInQuad" pos_change_time="600" ]
        [chara_config ptext="chara_name_area" memory="true" talk_focus="brightness" pos_mode="false"]


		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" ]

		;クリック待ちボタンについて
		[glyph fix="false" left="0" top="0" ]

		

		;CG・回想用の共通項目
		[eval exp="sf._tb_cg_noimage='noimage.png'" ]
		[eval exp="sf._tb_replay_noimage='noimage.png'" ]

		