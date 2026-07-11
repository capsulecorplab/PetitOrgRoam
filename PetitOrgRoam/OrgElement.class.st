"
I represent an element that can link to other elements in an orgroam knowledgebase.
"
Class {
	#name : #OrgElement,
	#superclass : #Object,
	#instVars : [
		'label',
		'id',
		'body',
		'children',
		'linkedIds',
		'backlinks',
		'forwardlinks'
	],
	#category : #PetitOrgRoam
}

{ #category : #'instance creation' }
OrgElement class >> fromOrgHeadingItem: anOrgHeadingItem [

	^ self new parseOrgHeadingItem: anOrgHeadingItem
]

{ #category : #accessing }
OrgElement >> backlinks [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ backlinks
]

{ #category : #accessing }
OrgElement >> body [

	^ body
]

{ #category : #accessing }
OrgElement >> children [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ children
]

{ #category : #accessing }
OrgElement >> forwardlinks [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ forwardlinks
]

{ #category : #accessing }
OrgElement >> id [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ id
]

{ #category : #initialization }
OrgElement >> initialize [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	children := OrderedCollection new.
	backlinks := Set new.
	forwardlinks := Set new
]

{ #category : #accessing }
OrgElement >> label [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ label
]

{ #category : #accessing }
OrgElement >> linkedIds [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ linkedIds
]

{ #category : #parsing }
OrgElement >> parseOrgHeadingItem: anOrgHeadingItem [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| orgHeadingItemBodyAsArrayOfStrings "orgHeadingItemBody" "parsedorgHeadingItemBody" propertiesAsArray indexOfProperties indexOfPropertiesEnd indexOfId bodyAsArrayOfStrings |
	label := anOrgHeadingItem label label.
	orgHeadingItemBodyAsArrayOfStrings := anOrgHeadingItem body collect: [ 
		                                      :orgLine | orgLine line ].
	indexOfProperties := ((1 to: orgHeadingItemBodyAsArrayOfStrings size) 
		                      select: [ :index | 
			                      (orgHeadingItemBodyAsArrayOfStrings at: index)
				                      asString = ':PROPERTIES:' ]) at: 1.
	indexOfPropertiesEnd := ((indexOfProperties to:
	                          orgHeadingItemBodyAsArrayOfStrings size) 
		                         select: [ :index | 
		                         (orgHeadingItemBodyAsArrayOfStrings at:
			                          index) = ':END:' ]) at: 1.
	propertiesAsArray := orgHeadingItemBodyAsArrayOfStrings
		                     copyFrom: indexOfProperties
		                     to: indexOfPropertiesEnd.
	indexOfId := ((indexOfProperties to: indexOfPropertiesEnd) select: [ 
		              :index | 
		              '*ID*' match:
			              (orgHeadingItemBodyAsArrayOfStrings at: index)
				              asString ]) at: 1.

	"id := (propertiesAsArray first splitOn: ':ID:       ') second."
	id := ((orgHeadingItemBodyAsArrayOfStrings at: indexOfId) splitOn:
		       ':ID:       ') second.

	"body := parsedorgHeadingItemBody second."
	bodyAsArrayOfStrings := orgHeadingItemBodyAsArrayOfStrings
		                        copyFrom: indexOfPropertiesEnd + 1
		                        to: orgHeadingItemBodyAsArrayOfStrings size.
	body := String streamContents: [ :stream | 
		        bodyAsArrayOfStrings
			        asStringOn: stream
			        delimiter: String cr , String lf ].

	linkedIds := ((body splitOn: '[[id:') select: [ :item | 
		              '*][*' match: item ]) collect: [ :item | 
		             (item splitOn: '][') first ].

	"recursive logic"
	anOrgHeadingItem subheading items isNotEmpty ifTrue: [ 
		anOrgHeadingItem subheading items do: [ :orgHeadingItem | 
			((orgHeadingItem body collect: [ :orgLine | orgLine line ]) 
				 includes: ':PROPERTIES:') ifTrue: [ 
				children add: (self class new parseOrgHeadingItem: orgHeadingItem) ] ] ].
	children := children asArray.

	^ self
]

{ #category : #printing }
OrgElement >> printOn: aStream [

	"an instance of OrgElement should print its label"

	aStream nextPutAll: self label
]
