Extension { #name : #GtHome }

{ #category : #'*PaperMoldablePatterns' }
GtHome >> patternsPaperSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: 'Moldable Patterns';
		description: 'Moldable Development Patterns paper draft for EuroPLoP 2024';
		databaseName: 'feenkcom/paper-moldable-patterns/lepiter';
		startPageName: 'Moldable Development Patterns paper';
		priority: 5
]
