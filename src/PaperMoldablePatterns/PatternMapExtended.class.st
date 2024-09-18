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
		explicitPositions: {(16.47800064086914@31.98549397786462). (-209.02799606323242@106.58333333333337). (5.202003479003906@317.77901204427087). (-111.14900016784668@368.3768513997396). (46.8230037689209@368.3768513997396). (174.79499626159668@368.3768513997396). (190.22899627685547@198.18117268880212). (48.552001953125@267.1811726888021). (408.5@226.77901204427087). (183.44799041748047@317.77901204427087). (2.2249927520751953@418.97469075520837). (271.4679985046387@107.58333333333337). (-34.5680046081543@105.58333333333337). (135.94800186157227@102.58333333333337). (-109.17500114440918@418.97469075520837). (-261.7410011291504@232.98549397786462). (-102.66946347264667@61.58333333333337). (41.7536408452882@61.58333333333337). (104.99815363946118@61.5833333333334). (131.7343786875469@61.5833333333334). (-124.2863839274288@136.18117268880215). (-11.246274013862262@347.3768513997396). (98.14625889269988@347.3768513997396). (135.14162676281472@347.3768513997396). (-54.47500419616699@397.9746907552085). (109.80900001525876@397.9746907552085). (-88.5680046081543@134.54897965985276). (150.01828244530788@227.7790120442709). (185.85199737548828@249.1192759554875). (100.30857272620457@296.779012044271). (163.11395116616734@296.779012044271). (185.85199737548828@249.1192759554875). (163.11395116616734@296.779012044271). (279.80710823648775@137.18117268880218). (347.14677836941877@137.18117268880218). (39.066865667465834@135.18117268880212). (198.366332851379@132.18117268880215). (123.3163893988413@132.18117268880215). (-121.11588051031697@262.58333333333337)};
		yourself
]
