Class {
	#name : #PatternMapExtended,
	#superclass : #Object,
	#category : #PaperMoldablePatterns
}

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
							'(P) Project Diary'.}.
				'(T) Moldable Tool' -> {'(M) Moldable Object'}.
				'(P) Tooling Buildup' -> {'(M) Moldable Object'}.
				'(P) Blind Spot' -> {
							'(T) Composed Narrative'.
							'(M) Moldable Object'}.
				'(T) Composed Narrative' -> {
							'(T) Moldable Tool'.
							'(M) Moldable Object'}.
				'(P) Project Diary' ->{
							'(T) Composed Narrative'.
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
		explicitPositions: self explicitPositions;
		yourself
]

{ #category : #'as yet unclassified' }
PatternMapExtended >> explicitPositions [
	^ {(42.47800064086914@52.98549397786462). (282.9720039367676@207.58333333333337). (21.202003479003906@308.77901204427087). (51.85099983215332@362.3768513997396). (282.8230037689209@363.3768513997396). (-164.20500373840332@358.3768513997396). (29.22899627685547@186.18117268880212). (40.552001953125@251.18117268880212). (-164.5@251.77901204427087). (281.44799041748047@249.77901204427087). (277.2249927520752@419.97469075520837). (51.46799850463867@123.58333333333337). (-158.5680046081543@124.58333333333337). (285.94800186157227@126.58333333333337). (53.82499885559082@422.97469075520837). (282.2589988708496@286.9854939778646). (132.07464709545303@82.58333333333337). (-50.94701749481368@82.58333333333337). (155.06471034893383@82.58333333333337). (109.13063270408901@82.58333333333337). (177.85199737548834@233.60403796025503). (108.7500839980114@338.3768513997396). (173.4247453590247@338.3768513997396). (-41.201005935668945@338.3768513997396). (108.52499580383306@391.97469075520837). (356.0065247618615@392.97469075520837). (189.18700408935553@208.29533760182585). (109.20336583654864@215.77901204427087). (-30.797996520996094@266.1785041257077). (109.23360201165013@280.7790120442709). (177.85199737548834@265.06168768085394). (-30.797996520996094@266.1785041257077). (177.85199737548834@265.06168768085394). (109.02855377165616@153.18117268880212). (-73.79653830333555@153.18117268880212). (-69.19538525887577@154.18117268880212). (165.32674346873887@154.3724718899058). (136.0455201110912@156.18117268880215). (197.44799041748053@309.52662971454)}
]
