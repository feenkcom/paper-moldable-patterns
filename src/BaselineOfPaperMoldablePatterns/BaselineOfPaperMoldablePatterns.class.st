Class {
	#name : #BaselineOfPaperMoldablePatterns,
	#superclass : #BaselineOf,
	#category : #BaselineOfPaperMoldablePatterns
}

{ #category : #loading }
BaselineOfPaperMoldablePatterns class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'paper-moldable-patterns' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfPaperMoldablePatterns >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'PaperMoldablePatterns'
		]
]
