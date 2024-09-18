Class {
	#name : #PatternMapExtended,
	#superclass : #Object,
	#category : #PaperMoldablePatterns
}

{ #category : #accessing }
PatternMapExtended >> default [
	<gtExample>
	^ LePageMondrianMap new
		pageTitles: {'Explainable System'.
				'Moldable Tool'.
				'Contextual Playground'.
				'Custom View'.
				'Custom Search'.
				'Custom Action'.
				'Composed Narrative'.
				'Moldable Object'.
				'Example Object'.
				'Moldable Data Wrapper'.
				'Moldable Collection Wrapper'.
				'Project Diary'.
				'Tooling Buildup'.
				'Blind Spot'.
				'Simple View'.
				'Throwaway Analysis Tool'};
		database: LeDatabase gtBook;
		connections: {'Explainable System'
					-> {'Moldable Tool'.
							'Tooling Buildup'.
							'Blind Spot'.
							'Composed Narrative'}.
				'Composed Narrative'
					-> {'Moldable Object'.
							'Project Diary'}.
				'Moldable Tool' -> {'Moldable Object'}.
				'Tooling Buildup' -> {'Moldable Object'}.
				'Blind Spot' -> {'Moldable Object'}.
				'Project Diary'
					-> {'Moldable Object'.
							'Example Object'}.
				'Moldable Object'
					-> {'Example Object'.
							'Contextual Playground'.
							'Moldable Data Wrapper'}.
				'Example Object' -> {'Moldable Object'}.
				'Moldable Data Wrapper' -> {'Moldable Object'}.
				'Contextual Playground'
					-> {'Custom View'.
							'Custom Search'.
							'Custom Action'}.
				'Custom View' -> {'Simple View'}.
				'Custom Search' -> {'Moldable Collection Wrapper'}.
				'Throwaway Analysis Tool' -> {'Contextual Playground'}};
		yourself
]

{ #category : #accessing }
PatternMapExtended >> defaultWithTags [
	<gtExample>
	^ LePageMondrianMap new
		pageTitles: {'Explainable System'.
				'(T) Moldable Tool'.
				'(T) Contextual Playground'.
				'(T) Custom View'.
				'(T) Custom Search'.
				'(T) Custom Action'.
				'(T) Composed Narrative'.
				'(M) Moldable Object'.
				'(M) Example Object'.
				'(M) Moldable Data Wrapper'.
				'(M) Moldable Collection Wrapper'.
				'(P) Project Diary'.
				'(P) Tooling Buildup'.
				'(P) Blind Spot'.
				'(P) Simple View'.
				'(P) Throwaway Analysis Tool'};
		database: LeDatabase gtBook;
		connections: {'Explainable System'
					-> {'(T) Moldable Tool'.
							'(P) Tooling Buildup'.
							'(P) Blind Spot'.
							'(T) Composed Narrative'}.
				'(T) Composed Narrative' -> {'(P) Project Diary'.
							'(M) Moldable Object'}.
				'(T) Moldable Tool' -> {'(M) Moldable Object'}.
				'(P) Tooling Buildup' -> {'(M) Moldable Object'}.
				'(P) Blind Spot' -> {'(M) Moldable Object'}.
				'(P) Project Diary'
					-> {'(M) Moldable Object'.
							'(M) Example Object'}.
				'(M) Moldable Object'
					-> {'(M) Example Object'.
							'(T) Contextual Playground'.
							'(M) Moldable Data Wrapper'}.
				'(M) Example Object' -> {'(M) Moldable Object'}.
				'(M) Moldable Data Wrapper' -> {'(M) Moldable Object'}.
				'(T) Contextual Playground'
					-> {'(T) Custom View'.
							'(T) Custom Search'.
							'(T) Custom Action'}.
				'(T) Custom View' -> {'(P) Simple View'}.
				'(T) Custom Search' -> {'(M) Moldable Collection Wrapper'}.
				'(P) Throwaway Analysis Tool' -> {'(T) Contextual Playground'}};
		yourself
]

{ #category : #accessing }
PatternMapExtended >> defaultWithTagsAndPositions [
	<gtExample>
	^ self defaultWithTags
		explicitPositions: {(18.952007293701172@65.98549397786462). (-141.02799606323242@142.58333333333337). (-5.797996520996094@317.77901204427087). (-122.14900016784668@368.3768513997396). (35.8230037689209@368.3768513997396). (163.79499626159668@368.3768513997396). (234.46799850463867@127.58333333333337). (37.552001953125@267.1811726888021). (306.5@262.77901204427087). (172.44799041748047@317.77901204427087). (-8.775007247924805@418.97469075520837). (309.9420051574707@197.18117268880212). (0.4319953918457031@171.58333333333337). (112.94800186157227@142.58333333333337). (-120.17500114440918@418.97469075520837). (-169.26699447631836@237.98549397786462). (-48.53370553235138@95.58333333333337). (68.9941438803973@95.58333333333337). (100.88415841699828@95.58333333333337). (141.03573014446476@95.58333333333337). (-58.58735852960922@172.1811726888021). (-22.246274013862234@347.3768513997396). (87.14625889269985@347.3768513997396). (124.14162676281475@347.3768513997396). (-65.475004196167@397.97469075520837). (98.80900001525876@397.97469075520837). (325.716644546098@157.18117268880212). (128.27828023687914@157.18117268880212). (174.85199737548834@278.6754142657687). (89.30857272620455@296.77901204427087). (152.11395116616686@296.77901204427087). (174.85199737548834@278.6754142657687). (152.11395116616686@296.77901204427087). (161.43262554796593@226.77901204427087). (368.7789489002856@226.77901204427087). (72.38401298407388@201.18117268880212). (112.85402756010558@172.1811726888021). (-44.991672152788624@267.58333333333337)};
		yourself
]

{ #category : #accessing }
PatternMapExtended >> withPositions [
	<gtExample>
	^ self default
		explicitPositions: {(-11.640007019042969@53.98549397786462). (-109.62800216674805@111.58333333333337). (32.10199737548828@317.77901204427087). (-63.9220085144043@368.3768513997396). (72.61199569702148@368.3768513997396). (181.36799240112305@368.3768513997396). (185.09999465942383@111.58333333333337). (33.39398956298828@247.18117268880212). (283.5@249.77901204427087). (191.1319808959961@317.77901204427087). (29.955989837646484@418.97469075520837). (262.35398864746094@174.18117268880212). (-1.3840141296386719@153.58333333333337). (112.35599136352539@130.58333333333337). (-61.66801071166992@418.97469075520837). (-154.13100814819336@201.98549397786462). (-29.929412140934176@83.58333333333336). (54.65255469491507@83.58333333333336). (74.08123947355796@83.58333333333336). (106.95911256190186@83.58333333333336). (-43.13526092824047@141.18117268880212). (20.427452765911724@347.3768513997397). (115.11330494321156@347.3768513997397). (146.4883530866611@347.3768513997397). (-16.85601043701172@397.97469075520837). (125.98999404907228@397.97469075520837). (108.49930332607966@141.18117268880212). (268.23727111219586@141.18117268880212). (147.593994140625@262.5799000106509). (94.71223171862152@276.77901204427087). (128.1875306868027@276.77901204427087). (147.593994140625@262.5799000106509). (128.1875306868027@276.77901204427087). (134.8860876796328@203.77901204427087). (315.21258790065673@203.77901204427087). (60.1792775998712@183.18117268880212). (98.20251895520533@160.18117268880212). (-45.81128926971343@231.5833333333334)};
		yourself
]
