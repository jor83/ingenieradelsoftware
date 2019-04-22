!classDefinition: #OOStackTest category: #'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:31'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/8/2012 08:20'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:33'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'First'.
	secondPushedObject := 'Second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:35'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:36'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:36'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: #'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'as yet unclassified' stamp: 'js 4/22/2019 15:06:23'!
test01ShouldBeEmptyWhenCreated

	| sentenceFinder |
	
	sentenceFinder := SentenceFinderByPrefix new.
	
	self assert: sentenceFinder isEmpty! !

!SentenceFinderByPrefixTest methodsFor: 'as yet unclassified' stamp: 'js 4/22/2019 15:39:12'!
test02AddStackAndPrefixToSentenceFinder

	| sentenceFinder stack prefix|
	sentenceFinder := SentenceFinderByPrefix new.
	

	stack := OOStack new.
	
	stack push: 'winter is coming'.
	stack push: 'winning is everything'.
	stack push: 'The winds of Winter'.
	stack push: 'Winter is here'.
	stack push: 'jon snow knows nothing'.
	stack push: 'Tormund Giantsbane is a giant-killers'.
	
	prefix:= 'Wint'.
	
	sentenceFinder find: stack with: prefix.
	
	
! !


!classDefinition: #OOStack category: #'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'current'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:48:29'!
initialize

current:=StackBase new.! !

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:20:12'!
isEmpty
^current isEmpty.! !

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:48:57'!
pop
	
	| aPrevious |
	aPrevious:= current cargo.
	current:= current previous.
	^aPrevious.
	! !

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:49:17'!
push: aObject 
	current:= current push: aObject! !

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:43:16'!
size
	^ current size.! !

!OOStack methodsFor: 'operations' stamp: 'js 4/17/2019 18:40:43'!
top
	^current cargo. ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: #'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #SentenceFinderByPrefix category: #'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'searched'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'accessing' stamp: 'js 4/22/2019 15:02:58'!
initialize

searched:=OrderedCollection new.! !

!SentenceFinderByPrefix methodsFor: 'accessing' stamp: 'js 4/22/2019 15:14:51'!
isEmpty
	^true.! !


!SentenceFinderByPrefix methodsFor: 'operating' stamp: 'js 4/22/2019 16:13:57'!
find: anStack with: anPrefix
	"aca se recorreria el stack dentro de un while y se compararia el contenido del item del stack con el prefijo,
	de estar incluido el prefijo en el item se guardaria en searched(lista ordenada) para su posterior devolucion.
	"

	^True.! !


!classDefinition: #StackBase category: #'Stack-Exercise'!
Object subclass: #StackBase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackBase methodsFor: 'operations' stamp: 'js 4/17/2019 18:37:48'!
cargo
	Error signal: OOStack  stackEmptyErrorDescription.! !

!StackBase methodsFor: 'operations' stamp: 'js 4/17/2019 18:04:55'!
push: aObject 
	^ StackElement with: aObject previous: self.
	
	! !


!StackBase methodsFor: 'accessing' stamp: 'js 4/17/2019 18:21:41'!
isEmpty
	^true.! !

!StackBase methodsFor: 'accessing' stamp: 'js 4/17/2019 18:27:10'!
previous
	Error signal: OOStack stackEmptyErrorDescription
	
! !

!StackBase methodsFor: 'accessing' stamp: 'js 4/17/2019 18:47:31'!
size
	^0.
	
! !


!classDefinition: #StackElement category: #'Stack-Exercise'!
Object subclass: #StackElement
	instanceVariableNames: 'cargo previous'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:38:42'!
cargo
	^cargo! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 17:50:40'!
cargo: aObject 
	cargo:= aObject.! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:22:20'!
isEmpty
	^false.! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:18:47'!
previous
	
	^previous.! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:16:29'!
previous: aStackPreviousElement 
	previous:=aStackPreviousElement.! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:11:28'!
push: aObject 
	^StackElement with: aObject previous: self.! !

!StackElement methodsFor: 'accessing' stamp: 'js 4/17/2019 18:46:26'!
size
	^previous size + 1.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackElement class' category: #'Stack-Exercise'!
StackElement class
	instanceVariableNames: ''!

!StackElement class methodsFor: 'instantation' stamp: 'js 4/17/2019 17:48:29'!
with: aObject 
	self new cargo: aObject.! !

!StackElement class methodsFor: 'instantation' stamp: 'js 4/17/2019 18:09:27'!
with: aObject previous: aPreviousObject 
	^self new cargo: aObject; previous: aPreviousObject.! !

