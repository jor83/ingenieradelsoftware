!classDefinition: #Green category: #Semaforo!
DenotativeObjectMorph subclass: #Green
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Green class' category: #Semaforo!
Green class
	instanceVariableNames: ''!

!Green class methodsFor: 'morph' stamp: 'js 3/25/2019 20:27:42'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!Green class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 21:09:36'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LightsContainer category: #Semaforo!
DenotativeObjectMorph subclass: #LightsContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LightsContainer class' category: #Semaforo!
LightsContainer class
	instanceVariableNames: ''!

!LightsContainer class methodsFor: 'morph' stamp: 'js 3/25/2019 20:27:58'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!LightsContainer class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 21:09:36'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #Red category: #Semaforo!
DenotativeObjectMorph subclass: #Red
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Red class' category: #Semaforo!
Red class
	instanceVariableNames: ''!

!Red class methodsFor: 'morph' stamp: 'js 3/25/2019 20:27:28'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!Red class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 21:09:36'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #Yellow category: #Semaforo!
DenotativeObjectMorph subclass: #Yellow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Yellow class' category: #Semaforo!
Yellow class
	instanceVariableNames: ''!

!Yellow class methodsFor: 'morph' stamp: 'js 3/25/2019 20:27:01'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!Yellow class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 21:09:36'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #Semaforo category: #Semaforo!
DenotativeObject subclass: #Semaforo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Semaforo class' category: #Semaforo!
Semaforo class
	instanceVariableNames: ''!

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 20:49:05'!
apagar

Yellow color: Color black.
Red color: Color black.
Green color: Color black.! !

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 20:57:32'!
onOff


Yellow color: Color yellow.
(Delay for:1*second) wait. 
Yellow color: Color black.
(Delay for:1*second) wait. ! !

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'js 3/25/2019 20:58:41'!
prender

self onOff.
self onOff.
self onOff.
self onOff.
self onOff.! !

Green initializeAfterFileIn!
LightsContainer initializeAfterFileIn!
Red initializeAfterFileIn!
Yellow initializeAfterFileIn!