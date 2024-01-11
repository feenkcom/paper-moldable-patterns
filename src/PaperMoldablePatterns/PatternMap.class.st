Class {
	#name : #PatternMap,
	#superclass : #Object,
	#category : #PaperMoldablePatterns
}

{ #category : #accessing }
PatternMap >> default [
	<gtExample>
	^ LepiterMondrianPageMap new
		pageTitles: {'Explainable System'.
				'Moldable Tool'.
				'Contextual Playground'.
				'Custom View'.
				'Custom Search'.
				'Custom Action'.
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
PatternMap >> defaultWithTags [
	<gtExample>
	^ LepiterMondrianPageMap new
		pageTitles: {'Explainable System'.
				'(T) Moldable Tool'.
				'(T) Contextual Playground'.
				'(T) Custom View'.
				'(T) Custom Search'.
				'(T) Custom Action'.
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
							'(P) Project Diary'}.
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
PatternMap >> defaultWithTagsAndPositions [
	<gtExample>
	^ self defaultWithTags
		explicitPositions: {(131.22800064086914@225.068827311198). (-4.277996063232422@323.66666666666674). (112.9520034790039@485.86234537760424). (-15.37299919128418@541.460184733073). (138.5730037689209@544.460184733073). (304.5449962615967@541.460184733073). (132.302001953125@429.2645060221355). (400.25@427.86234537760424). (328.19799041748047@481.86234537760424). (94.9749927520752@606.0580240885417). (410.2179985046387@321.66666666666674). (133.1819953918457@321.66666666666674). (283.69800186157227@321.66666666666674). (-30.39900016784668@607.0580240885417). (-60.99100112915039@404.068827311198). (77.34381134500845@254.66666666666674). (198.54623712660236@254.66666666666674). (219.07797627974423@254.66666666666674). (239.72415592714674@254.66666666666674). (76.27290174307015@353.2645060221355). (83.82931483169233@515.460184733073). (201.19723221478688@515.460184733073). (244.98690753609236@515.460184733073). (28.136208991550603@571.0580240885417). (201.79541264275696@574.0580240885417). (269.6019973754883@443.0134581612896). (200.9841603783245@458.86234537760424). (262.2811281315127@458.86234537760424). (269.6019973754883@443.0134581612896). (262.2811281315127@458.86234537760424). (237.6434663999716@351.2645060221355). (467.18767983820004@351.2645060221355). (199.21672761983086@351.2645060221355). (219.10799805943037@351.2645060221355). (64.47054410093128@433.66666666666674)};
		yourself
]

{ #category : #accessing }
PatternMap >> withPositions [
	<gtExample>
	^ self default
		explicitPositions: {147.85599899291992 @ 263.068827311198.
				84.12199783325195 @ 343.66666666666674.
				127.85199737548828 @ 479.86234537760424.
				29.573993682861328 @ 530.460184733073.
				168.36199569702148 @ 530.460184733073.
				277.11799240112305 @ 530.460184733073.
				173.14398956298828 @ 429.2645060221355.
				418.25 @ 426.86234537760424.
				286.8819808959961 @ 479.86234537760424.
				125.70598983764648 @ 581.0580240885417.
				419.8499946594238 @ 342.66666666666674.
				202.36598587036133 @ 344.66666666666674.
				327.1059913635254 @ 345.66666666666674.
				31.827991485595703 @ 581.0580240885417.
				-22.63500213623047 @ 388.068827311198.
				149.09086528422657 @ 292.6666666666668.
				222.9257735812187 @ 292.6666666666668.
				242.13502293421251 @ 292.6666666666668.
				261.9298342429868 @ 292.6666666666668.
				150.84133005286404 @ 373.2645060221355.
				114.58270707475687 @ 509.460184733073.
				210.86330494321152 @ 509.460184733073.
				242.23835308666088 @ 509.460184733073.
				76.63999176025392 @ 560.0580240885417.
				221.73999404907227 @ 560.0580240885417.
				287.343994140625 @ 442.2072496711477.
				213.3505649137046 @ 458.86234537760424.
				269.9676235166164 @ 458.86234537760424.
				287.343994140625 @ 442.2072496711477.
				269.9676235166164 @ 458.86234537760424.
				270.6981733773149 @ 372.2645060221355.
				468.12425342262134 @ 372.2645060221355.
				235.14070452086227 @ 374.2645060221355.
				254.27232316020465 @ 375.2645060221355.
				85.91478656383653 @ 417.66666666666674};
		yourself
]
