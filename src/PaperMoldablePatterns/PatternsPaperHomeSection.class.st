Class {
	#name : #PatternsPaperHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'PaperMoldablePatterns-Sections'
}

{ #category : #accessing }
PatternsPaperHomeSection >> homeCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'Moldable Patterns';
		description: 'Moldable Development Patterns paper draft for EuroPLoP 2024';
		databaseName: 'feenkcom/paper-moldable-patterns/lepiter';
		pageName: 'Moldable Development Patterns paper';
		priority: 5;
		yourself
]
