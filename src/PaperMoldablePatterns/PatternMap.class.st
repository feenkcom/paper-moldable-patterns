Class {
	#name : #PatternMap,
	#superclass : #Object,
	#category : #PaperMoldablePatterns
}

{ #category : #accessing }
PatternMap >> mapV0 [
	<gtExample>
	"The first version of the map used in the ESUG 2023 and Smalltalks 2023 talks."
	
| scenery moldableObject viewableDataWrapper projectDiary contextualPlayground exampleObject viewableEntity customAction simpleView collectionWrapper |
	scenery := GtScenery new.

moldableObject := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Moldable Object')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 16; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
moldableObject position: (322.00000000000006@194.00000000000003).
moldableObject extent: (170.20192464192695@39.99999999999997).

viewableDataWrapper := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Viewable Data Wrapper')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 22; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
viewableDataWrapper position: (577@194).
viewableDataWrapper extent: (215.06197611490893@40.0).

projectDiary := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Project Diary')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 14; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
projectDiary position: (609.0000000000002@258.0000000000001).
projectDiary extent: (133.14793904622388@40.0).

contextualPlayground := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Contextual Playground')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 22; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
contextualPlayground position: (296.0@332.0000000000001).
contextualPlayground extent: (222.93304443359375@40.0).

exampleObject := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Example Object')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 15; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
exampleObject position: (593.0000000000001@332.00000000000006).
exampleObject extent: (162.92442321777332@40.0).

viewableEntity := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Viewable Entity')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 16; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
viewableEntity position: (326.0@432.00000000000006).
viewableEntity extent: (165.39362589518248@40.0).

customAction := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Custom Action')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 14; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
customAction position: (522.0000000000001@430.0).
customAction extent: (162.03145345052087@40.0).

simpleView := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Simple View')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 12; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
simpleView position: (252.00000000000006@543.0).
simpleView extent: (126.12884521484375@40.0).

collectionWrapper := scenery addItem: (GtSceneryItem new stencil: (GtSceneryTextStencil new text: (((BlRunRopedText string: 'Collection Wrapper')
attributeRuns: ((BlRunTree basicNew instVarAt: 1 put: (BlRunTreeLeafNode basicNew instVarAt: 1 put: 19; instVarAt: 2 put: ((Array new: 3) at: 1 put: (BlFontSizeAttribute new size: 20); at: 2 put: (BlFontWeightAttribute new weight: 700); at: 3 put: (BlFontFamilyDefaultAttribute new beNotOverwritableByStyler name: 'Source Sans Pro'); yourself); yourself); yourself)))))).
collectionWrapper position: (424@543).
collectionWrapper extent: (185.22221883138013@40.0).


scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: moldableObject to: viewableDataWrapper.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: viewableDataWrapper to: moldableObject.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: moldableObject to: projectDiary.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: projectDiary to: exampleObject.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: moldableObject to: contextualPlayground.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: contextualPlayground to: viewableEntity.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: contextualPlayground to: customAction.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: viewableEntity to: simpleView.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: viewableEntity to: collectionWrapper.
scenery addConnectionWithStencil: (GtSceneryLineStencil new) from: contextualPlayground to: exampleObject.

^ scenery
]
