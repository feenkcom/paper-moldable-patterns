Class {
	#name : #PatternMap,
	#superclass : #Object,
	#category : #PaperMoldablePatterns
}

{ #category : #accessing }
PatternMap >> addItem: label inScenery: scenery [
	^ scenery
		addItem: (GtSceneryItem new
				stencil: (GtSceneryTextStencil new
						text: (label asRopedText
								fontSize: 20;
								bold)))
]

{ #category : #accessing }
PatternMap >> esugMapV0 [
	"The first version of the map used in the ESUG 2023 and Smalltalks 2023 talks."

	<gtExample>
	| scenery moldableObject viewableDataWrapper projectDiary contextualPlayground exampleObject viewableEntity customAction simpleView collectionWrapper |
	scenery := GtScenery new.

	moldableObject := self addItem: 'Moldable Object' inScenery: scenery.
	moldableObject position: 322.00000000000006 @ 194.00000000000003.
	moldableObject extent: 170.20192464192695 @ 39.99999999999997.

	viewableDataWrapper := self addItem: 'Viewable Data Wrapper' inScenery: scenery.
	viewableDataWrapper position: 577 @ 194.
	viewableDataWrapper extent: 215.06197611490893 @ 40.0.

	projectDiary := self addItem: 'Project Diary' inScenery: scenery.
	projectDiary position: 609.0000000000002 @ 258.0000000000001.
	projectDiary extent: 133.14793904622388 @ 40.0.

	contextualPlayground := self
			addItem: 'Contextual Playground'
			inScenery: scenery.
	contextualPlayground position: 296.0 @ 332.0000000000001.
	contextualPlayground extent: 222.93304443359375 @ 40.0.

	exampleObject := self addItem: 'Example Object' inScenery: scenery.
	exampleObject position: 593.0000000000001 @ 332.00000000000006.
	exampleObject extent: 162.92442321777332 @ 40.0.

	viewableEntity := self addItem: 'Viewable Entity' inScenery: scenery.
	viewableEntity position: 326.0 @ 432.00000000000006.
	viewableEntity extent: 165.39362589518248 @ 40.0.

	customAction := self addItem: 'Custom Action' inScenery: scenery.
	customAction position: 522.0000000000001 @ 430.0.
	customAction extent: 162.03145345052087 @ 40.0.

	simpleView := self addItem: 'Simple View' inScenery: scenery.
	simpleView position: 252.00000000000006 @ 543.0.
	simpleView extent: 126.12884521484375 @ 40.0.

	collectionWrapper := self addItem: 'Collection Wrapper' inScenery: scenery.
	collectionWrapper position: 424 @ 543.
	collectionWrapper extent: 185.22221883138013 @ 40.0.


	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: moldableObject
		to: viewableDataWrapper.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: viewableDataWrapper
		to: moldableObject.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: moldableObject
		to: projectDiary.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: projectDiary
		to: exampleObject.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: moldableObject
		to: contextualPlayground.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: contextualPlayground
		to: viewableEntity.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: contextualPlayground
		to: customAction.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: viewableEntity
		to: simpleView.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: viewableEntity
		to: collectionWrapper.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: contextualPlayground
		to: exampleObject.

	^ scenery
]

{ #category : #accessing }
PatternMap >> initialMap [
	"This is an example of an initial map without any layout.
After generating it, it must be manually revised,and then the storeString must be saved."

	<gtExample>
	| labels scenery items edges |
	labels := {'Moldable Object'.
			'Viewable Data Wrapper'.
			'Project Diary'.
			'Contextual Playground'.
			'Example Object'.
			'Viewable Entity'.
			'Custom Action'.
			'Simple View'.
			'Collection Wrapper'}.
	scenery := GtScenery new.
	items := Dictionary new.

	labels
		doWithIndex: [ :label :i | 
			| item |
			item := scenery
					addItem: (GtSceneryItem new
							stencil: (GtSceneryTextStencil new
									text: (label asRopedText
											fontSize: 20;
											bold))).
			item
				position: (i * 100) @ (i * 100);
				extent: 250 @ 40.
			items at: label put: item ].
	items.


	edges := {'Moldable Object' -> 'Viewable Data Wrapper'.
			'Viewable Data Wrapper' -> 'Moldable Object'.
			'Moldable Object' -> 'Project Diary'.
			'Project Diary' -> 'Example Object'.
			'Moldable Object' -> 'Contextual Playground'.
			'Contextual Playground' -> 'Viewable Entity'.
			'Contextual Playground' -> 'Custom Action'.
			'Viewable Entity' -> 'Simple View'.
			'Viewable Entity' -> 'Collection Wrapper'.
			'Contextual Playground' -> 'Example Object'}.
	edges
		do: [ :edge | 
			scenery
				addConnectionWithStencil: GtSceneryLineStencil new
				from: (items at: edge key)
				to: (items at: edge value) ].
	^ scenery
]

{ #category : #accessing }
PatternMap >> mapWithBlindSpotV4 [
	"Change Throwaway Analysis Tool to Blind Spot"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 item8 item9 item10 item11 item12 item13 item14 |
	scenery := GtScenery new.
	item1 := self addItem: 'Custom Search' inScenery: scenery.
	item1 position: 489.0 @ 389.0.
	item1 extent: 143.6255900065106 @ 33.95640055338538.
	item2 := self addItem: 'Moldable Tool' inScenery: scenery.
	item2 position: 104.0 @ 85.0.
	item2 extent: 140.40262858072913 @ 38.42666625976557.
	item3 := self addItem: 'Explainable System' inScenery: scenery.
	item3 position: 276.0000000000001 @ 19.0.
	item3 extent: 187.89250691731763 @ 36.115570068359375.
	item4 := self addItem: 'Tooling Buildup' inScenery: scenery.
	item4 position: 250.0 @ 106.99999999999999.
	item4 extent: 156.53269449869777 @ 39.02511596679689.
	item5 := self addItem: 'Blind Spot' inScenery: scenery.
	item5 position: 417.0000000000001 @ 106.0.
	item5 extent: 104.88530476887968 @ 37.088139851887945.
	item6 := self addItem: 'Moldable Object' inScenery: scenery.
	item6 position: 286.00000000000006 @ 204.00000000000003.
	item6 extent: 170.20192464192695 @ 39.99999999999997.
	item7 := self addItem: 'Moldable Data Wrapper' inScenery: scenery.
	item7 position: 439.00000000000017 @ 268.00000000000006.
	item7 extent: 217.7007548014322 @ 36.67566935221362.
	item8 := self addItem: 'Project Diary' inScenery: scenery.
	item8 position: 545.0000000000002 @ 82.00000000000011.
	item8 extent: 127.29105631510424 @ 36.046040852864564.
	item9 := self addItem: 'Contextual Playground' inScenery: scenery.
	item9 position: 263.99999999999994 @ 303.0000000000001.
	item9 extent: 213.819071451823 @ 40.0.
	item10 := self addItem: 'Example Object' inScenery: scenery.
	item10 position: 547.0000000000001 @ 202.00000000000006.
	item10 extent: 162.92442321777332 @ 40.0.
	item11 := self addItem: 'Custom View' inScenery: scenery.
	item11 position: 142.0 @ 387.0.
	item11 extent: 131.2035115559895 @ 34.149831136067746.
	item12 := self addItem: 'Custom Action' inScenery: scenery.
	item12 position: 301.99999999999994 @ 378.9999999999999.
	item12 extent: 140.5201212565105 @ 40.0.
	item13 := self addItem: 'Simple View' inScenery: scenery.
	item13 position: 133.99999999999994 @ 453.99999999999994.
	item13 extent: 120.50089518229174 @ 40.0.
	item14 := self addItem: 'Moldable Collection Wrapper' inScenery: scenery.
	item14 position: 434.9055989583333 @ 449.0000000000002.
	item14 extent: 267.3453776041669 @ 40.64951578776055.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item2.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item4.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item8.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item5.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item5
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item4
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item10
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item7.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item7
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item9.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item11.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item1.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item12.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item11
		to: item13.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item1
		to: item14.

	^ scenery
]

{ #category : #accessing }
PatternMap >> mapWithCategoriesV5 [
	"Annotate patterns with categories"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 item8 item9 item10 item11 item12 item13 item14 |
	scenery := GtScenery new.
	item1 := self addItem: '(T) Custom Search' inScenery: scenery.
	item1 position: 488.9999999999999 @ 384.99999999999994.
	item1 extent: 174.30882771809945 @ 33.568115234375.
	item2 := self addItem: '(T) Moldable Tool' inScenery: scenery.
	item2 position: 72.0 @ 72.0.
	item2 extent: 164.65789794921892 @ 32.989196777343686.
	item3 := self addItem: 'Explainable System' inScenery: scenery.
	item3 position: 291.0000000000001 @ -1.0.
	item3 extent: 187.89250691731763 @ 36.115570068359375.
	item4 := self addItem: '(P) Tooling Buildup' inScenery: scenery.
	item4 position: 229.0 @ 99.0.
	item4 extent: 181.668701171875 @ 33.5242462158203.
	item5 := self addItem: '(P) Blind Spot' inScenery: scenery.
	item5 position: 432.0000000000002 @ 97.99999999999999.
	item5 extent: 140.1156107584627 @ 37.08813985188796.
	item6 := self addItem: '(M) Moldable Object' inScenery: scenery.
	item6 position: 280.99999999999994 @ 221.0.
	item6 extent: 189.48852539062506 @ 31.275990804036468.
	item7 := self addItem: '(M) Moldable Data Wrapper' inScenery: scenery.
	item7 position: 514.0000000000002 @ 297.0.
	item7 extent: 248.44935099283828 @ 31.978607177734375.
	item8 := self addItem: '(P) Project Diary' inScenery: scenery.
	item8 position: 586.0000000000002 @ 68.00000000000011.
	item8 extent: 155.68618774414074 @ 36.046040852864564.
	item9 := self addItem: '(T) Contextual Playground' inScenery: scenery.
	item9 position: 252.99999999999994 @ 298.0000000000001.
	item9 extent: 245.76268513997405 @ 32.00251261393231.
	item10 := self addItem: '(M) Example Object' inScenery: scenery.
	item10 position: 550.0000000000002 @ 202.00000000000009.
	item10 extent: 181.48948669433594 @ 31.706390380859375.
	item11 := self addItem: '(T) Custom View' inScenery: scenery.
	item11 position: 111.99999999999997 @ 387.0.
	item11 extent: 152.95450846354177 @ 34.149831136067746.
	item12 := self addItem: '(T) Custom Action' inScenery: scenery.
	item12 position: 293.0 @ 384.9999999999997.
	item12 extent: 167.06278483072947 @ 33.38241577148443.
	item13 := self addItem: '(P) Simple View' inScenery: scenery.
	item13 position: 103.0 @ 454.0.
	item13 extent: 149.24997965494794 @ 36.39546712239576.
	item14 := self addItem: '(M) Moldable Collection Wrapper' inScenery: scenery.
	item14 position: 439.90559895833326 @ 450.00000000000017.
	item14 extent: 301.1515045166018 @ 33.128102620442746.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item2.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item4.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item8.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item5.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item5
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item4
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item10
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item7.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item7
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item9.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item11.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item1.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item12.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item11
		to: item13.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item1
		to: item14.
	^ scenery
]

{ #category : #accessing }
PatternMap >> mapWithExplainableSystemsV1 [
	"Added Explainable System"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 item8 item9 item10 item11 item12 item13 item14 |
	scenery := GtScenery new.
	item1 := self addItem: 'Custom Search' inScenery: scenery.
	item1 position: 489.0 @ 389.0.
	item1 extent: 143.6255900065106 @ 33.95640055338538.
	item2 := self addItem: 'Moldable Tool' inScenery: scenery.
	item2 position: 133.0 @ 94.0.
	item2 extent: 140.40262858072913 @ 38.42666625976557.
	item3 := self addItem: 'Explainable System' inScenery: scenery.
	item3 position: 276.0000000000001 @ 19.0.
	item3 extent: 187.89250691731763 @ 36.115570068359375.
	item4 := self addItem: 'Tooling Buildup' inScenery: scenery.
	item4 position: 292.0 @ 92.99999999999999.
	item4 extent: 156.53269449869777 @ 39.02511596679689.
	item5 := self addItem: 'Throwaway Analysis Tool' inScenery: scenery.
	item5 position: 141.00000000000017 @ 240.0.
	item5 extent: 125.99207560221322 @ 59.321212768554574.
	item6 := self addItem: 'Moldable Object' inScenery: scenery.
	item6 position: 286.00000000000006 @ 204.00000000000003.
	item6 extent: 170.20192464192695 @ 39.99999999999997.
	item7 := self addItem: 'Viewable Data Wrapper' inScenery: scenery.
	item7 position: 490 @ 276.
	item7 extent: 214.71745808919263 @ 34.6917724609375.
	item8 := self addItem: 'Project Diary' inScenery: scenery.
	item8 position: 487.0000000000002 @ 93.00000000000011.
	item8 extent: 127.29105631510424 @ 36.046040852864564.
	item9 := self addItem: 'Contextual Playground' inScenery: scenery.
	item9 position: 263.99999999999994 @ 303.0000000000001.
	item9 extent: 213.819071451823 @ 40.0.
	item10 := self addItem: 'Example Object' inScenery: scenery.
	item10 position: 503.0000000000001 @ 205.00000000000006.
	item10 extent: 162.92442321777332 @ 40.0.
	item11 := self addItem: 'Viewable Entity' inScenery: scenery.
	item11 position: 133.99999999999994 @ 383.9999999999999.
	item11 extent: 148.3483378092451 @ 40.0.
	item12 := self addItem: 'Custom Action' inScenery: scenery.
	item12 position: 300.99999999999994 @ 383.9999999999999.
	item12 extent: 140.5201212565105 @ 40.0.
	item13 := self addItem: 'Simple View' inScenery: scenery.
	item13 position: 147.99999999999994 @ 457.99999999999994.
	item13 extent: 120.50089518229174 @ 40.0.
	item14 := self addItem: 'Collection Wrapper' inScenery: scenery.
	item14 position: 470 @ 461.
	item14 extent: 185.22221883138013 @ 40.0.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item2.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item4.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item8.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item5.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item4
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item10
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item7.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item7
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item9.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item11.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item1.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item12.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item11
		to: item13.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item1
		to: item14.

	^ scenery
]

{ #category : #accessing }
PatternMap >> mapWithRenamedCustomViewV2 [
	"Changed Viewable Entity to Custom View"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 item8 item9 item10 item11 item12 item13 item14 |
	scenery := GtScenery new.
	item1 := self addItem: 'Custom Search' inScenery: scenery.
	item1 position: 489.0 @ 389.0.
	item1 extent: 143.6255900065106 @ 33.95640055338538.
	item2 := self addItem: 'Moldable Tool' inScenery: scenery.
	item2 position: 133.0 @ 94.0.
	item2 extent: 140.40262858072913 @ 38.42666625976557.
	item3 := self addItem: 'Explainable System' inScenery: scenery.
	item3 position: 276.0000000000001 @ 19.0.
	item3 extent: 187.89250691731763 @ 36.115570068359375.
	item4 := self addItem: 'Tooling Buildup' inScenery: scenery.
	item4 position: 292.0 @ 92.99999999999999.
	item4 extent: 156.53269449869777 @ 39.02511596679689.
	item5 := self addItem: 'Throwaway Analysis Tool' inScenery: scenery.
	item5 position: 141.00000000000017 @ 240.0.
	item5 extent: 125.99207560221322 @ 59.321212768554574.
	item6 := self addItem: 'Moldable Object' inScenery: scenery.
	item6 position: 286.00000000000006 @ 204.00000000000003.
	item6 extent: 170.20192464192695 @ 39.99999999999997.
	item7 := self addItem: 'Viewable Data Wrapper' inScenery: scenery.
	item7 position: 490 @ 276.
	item7 extent: 214.71745808919263 @ 34.6917724609375.
	item8 := self addItem: 'Project Diary' inScenery: scenery.
	item8 position: 487.0000000000002 @ 93.00000000000011.
	item8 extent: 127.29105631510424 @ 36.046040852864564.
	item9 := self addItem: 'Contextual Playground' inScenery: scenery.
	item9 position: 263.99999999999994 @ 303.0000000000001.
	item9 extent: 213.819071451823 @ 40.0.
	item10 := self addItem: 'Example Object' inScenery: scenery.
	item10 position: 503.0000000000001 @ 205.00000000000006.
	item10 extent: 162.92442321777332 @ 40.0.
	item11 := self addItem: 'Custom View' inScenery: scenery.
	item11 position: 142.0 @ 387.0.
	item11 extent: 131.2035115559895 @ 34.149831136067746.
	item12 := self addItem: 'Custom Action' inScenery: scenery.
	item12 position: 300.99999999999994 @ 383.9999999999999.
	item12 extent: 140.5201212565105 @ 40.0.
	item13 := self addItem: 'Simple View' inScenery: scenery.
	item13 position: 147.99999999999994 @ 457.99999999999994.
	item13 extent: 120.50089518229174 @ 40.0.
	item14 := self addItem: 'Collection Wrapper' inScenery: scenery.
	item14 position: 470 @ 461.
	item14 extent: 185.22221883138013 @ 40.0.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item2.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item4.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item8.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item5.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item4
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item10
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item7.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item7
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item9.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item11.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item1.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item12.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item11
		to: item13.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item1
		to: item14.

	^ scenery
]

{ #category : #accessing }
PatternMap >> mapWithWrappersRenamedV3 [
	"Changed Wrapper patterns to start with Moldable"

	<gtExample>
	| scenery item1 item2 item3 item4 item5 item6 item7 item8 item9 item10 item11 item12 item13 item14 |
	scenery := GtScenery new.
	item1 := self addItem: 'Custom Search' inScenery: scenery.
	item1 position: 489.0 @ 389.0.
	item1 extent: 143.6255900065106 @ 33.95640055338538.
	item2 := self addItem: 'Moldable Tool' inScenery: scenery.
	item2 position: 133.0 @ 94.0.
	item2 extent: 140.40262858072913 @ 38.42666625976557.
	item3 := self addItem: 'Explainable System' inScenery: scenery.
	item3 position: 276.0000000000001 @ 19.0.
	item3 extent: 187.89250691731763 @ 36.115570068359375.
	item4 := self addItem: 'Tooling Buildup' inScenery: scenery.
	item4 position: 292.0 @ 92.99999999999999.
	item4 extent: 156.53269449869777 @ 39.02511596679689.
	item5 := self addItem: 'Throwaway Analysis Tool' inScenery: scenery.
	item5 position: 141.00000000000017 @ 240.0.
	item5 extent: 125.99207560221322 @ 59.321212768554574.
	item6 := self addItem: 'Moldable Object' inScenery: scenery.
	item6 position: 286.00000000000006 @ 204.00000000000003.
	item6 extent: 170.20192464192695 @ 39.99999999999997.
	item7 := self addItem: 'Moldable Data Wrapper' inScenery: scenery.
	item7 position: 509.00000000000006 @ 265.0.
	item7 extent: 134.86546834309883 @ 60.64051310221356.
	item8 := self addItem: 'Project Diary' inScenery: scenery.
	item8 position: 487.0000000000002 @ 93.00000000000011.
	item8 extent: 127.29105631510424 @ 36.046040852864564.
	item9 := self addItem: 'Contextual Playground' inScenery: scenery.
	item9 position: 263.99999999999994 @ 303.0000000000001.
	item9 extent: 213.819071451823 @ 40.0.
	item10 := self addItem: 'Example Object' inScenery: scenery.
	item10 position: 503.0000000000001 @ 205.00000000000006.
	item10 extent: 162.92442321777332 @ 40.0.
	item11 := self addItem: 'Custom View' inScenery: scenery.
	item11 position: 142.0 @ 387.0.
	item11 extent: 131.2035115559895 @ 34.149831136067746.
	item12 := self addItem: 'Custom Action' inScenery: scenery.
	item12 position: 300.99999999999994 @ 383.9999999999999.
	item12 extent: 140.5201212565105 @ 40.0.
	item13 := self addItem: 'Simple View' inScenery: scenery.
	item13 position: 147.99999999999994 @ 457.99999999999994.
	item13 extent: 120.50089518229174 @ 40.0.
	item14 := self addItem: 'Moldable Collection Wrapper' inScenery: scenery.
	item14 position: 469.99999999999994 @ 444.0.
	item14 extent: 181.29394531250006 @ 64.56227620442723.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item2.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item4.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item3
		to: item8.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item2
		to: item5.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item4
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item10
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item7.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item7
		to: item6.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item8
		to: item10.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item6
		to: item9.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item11.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item1.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item9
		to: item12.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item11
		to: item13.
	scenery
		addConnectionWithStencil: GtSceneryLineStencil new
		from: item1
		to: item14.

	^ scenery
]
