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
	^ {(42.47800064086914@52.98549397786462). (-165.02799606323242@184.58333333333337). (21.202003479003906@308.77901204427087). (51.85099983215332@362.3768513997396). (282.8230037689209@363.3768513997396). (-164.20500373840332@362.3768513997396). (29.22899627685547@183.18117268880212). (40.552001953125@251.18117268880212). (-164.5@251.77901204427087). (280.44799041748047@250.77901204427087). (282.2249927520752@421.97469075520837). (51.46799850463867@117.58333333333337). (-163.5680046081543@118.58333333333337). (281.94800186157227@116.58333333333337). (53.82499885559082@422.97469075520837). (282.2589988708496@287.9854939778646). (-80.6736785082072@82.58333333333337). (-50.989956334651794@82.58333333333337). (161.26305677126857@82.58333333333337). (109.14527439622032@82.58333333333337). (-57.24437334591479@214.18117268880212). (108.74588442211643@338.3768513997396). (173.4247453590247@338.3768513997396). (-44.1598731439729@338.3768513997396). (108.52499580383301@391.97469075520837). (356.9212265577813@392.97469075520837). (-44.5680046081543@198.50411230707226). (109.20330556424382@212.77901204427087). (-30.797996520996094@266.1785041257077). (109.23360201165006@280.77901204427087). (177.85199737548828@265.71720979317337). (-30.797996520996094@266.1785041257077). (177.85199737548828@265.71720979317337). (109.0260129251521@147.18117268880212). (-74.86300155399843@147.18117268880212). (-74.70589959777348@148.18117268880212). (158.53933285474488@146.1597730780413). (133.61137343572346@146.18117268880212). (197.44799041748047@310.17137655920493)}
]
