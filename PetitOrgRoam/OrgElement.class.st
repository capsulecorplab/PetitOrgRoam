"
I represent an element that can link to other elements in an orgroam knowledgebase.
"
Class {
	#name : 'OrgElement',
	#superclass : 'Object',
	#instVars : [
		'label',
		'id',
		'body',
		'children',
		'linkedIds',
		'backlinks',
		'forwardlinks',
		'orgHeadingItemBodyAsArrayOfStrings',
		'logbook',
		'totalDuration',
		'indexOfProperties',
		'indexOfPropertiesEnd'
	],
	#category : 'PetitOrgRoam',
	#package : 'PetitOrgRoam'
}

{ #category : 'instance creation' }
OrgElement class >> fromOrgHeadingItem: anOrgHeadingItem [

	^ self new parseOrgHeadingItem: anOrgHeadingItem
]

{ #category : 'accessing' }
OrgElement >> backlinks [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ backlinks
]

{ #category : 'accessing' }
OrgElement >> body [

	^ body
]

{ #category : 'accessing' }
OrgElement >> children [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ children
]

{ #category : 'converting' }
OrgElement >> convertOrgModeDateTimeToPharoDateTime: anOrgmodeDateTimeString [

	"helper function for converting orgmode datetime to pharo datetime in UTC"

	| dateTimeAsArray |
	dateTimeAsArray := ((anOrgmodeDateTimeString splitOn: ' ') select: [ 
		                    :item | item size > 3 ]) asOrderedCollection.
	dateTimeAsArray add: 'T' afterIndex: 1.
	^ ('' join: dateTimeAsArray , '-00:00') asDateAndTime
]

{ #category : 'accessing' }
OrgElement >> forwardlinks [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ forwardlinks
]

{ #category : 'accessing' }
OrgElement >> getIndexOf: aRegexString from: startIndex to: endIndex [

	"helper function for getting index of an item in orgHeadingItemBodyAsArrayOfStrings containing the specified string"

	^ ((startIndex to: endIndex) select: [ :index | 
		   aRegexString match: (orgHeadingItemBodyAsArrayOfStrings at: index) ]) 
		  at: 1 
]

{ #category : 'accessing' }
OrgElement >> id [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ id
]

{ #category : 'initialization' }
OrgElement >> initialize [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	children := OrderedCollection new.
	backlinks := Set new.
	forwardlinks := Set new
]

{ #category : 'accessing' }
OrgElement >> label [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ label
]

{ #category : 'accessing' }
OrgElement >> linkedIds [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ linkedIds
]

{ #category : 'accessing' }
OrgElement >> logbook [

	^ logbook
]

{ #category : 'accessing' }
OrgElement >> orgHeadingItemBodyAsArrayOfStrings [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ orgHeadingItemBodyAsArrayOfStrings
]

{ #category : 'parsing' }
OrgElement >> parseLogbook: anOrgHeadingItem [

	| indexOfLogbook indexOfLogbookEnd logbookAsArrayOfStrings logbookAsArrayOfArrayOfDateAndTimeObjects sum |
	indexOfLogbook := self
		                  getIndexOf: ':LOGBOOK:'
		                  from: indexOfPropertiesEnd
		                  to: orgHeadingItemBodyAsArrayOfStrings size.
	indexOfLogbookEnd := self
		                     getIndexOf: ':END:'
		                     from: indexOfLogbook
		                     to: orgHeadingItemBodyAsArrayOfStrings size.
	logbookAsArrayOfStrings := (anOrgHeadingItem body
		                            copyFrom: indexOfLogbook + 1
		                            to: indexOfLogbookEnd - 1) collect: [
		                           :orgLine | orgLine line ].
	logbookAsArrayOfArrayOfDateAndTimeObjects := logbookAsArrayOfStrings
		                                             collect: [ :entry |
				                                             | startDateTime endDateTime duration |
				                                             startDateTime := self
					                                                              convertOrgModeDateTimeToPharoDateTime:
					                                                              ((((entry
						                                                                  splitOn:
						                                                                  'CLOCK: [')
						                                                                 at:
						                                                                 2)
						                                                                splitOn:
						                                                                ']')
						                                                               at:
						                                                               1).
				                                             endDateTime := self
					                                                            convertOrgModeDateTimeToPharoDateTime:
						                                                            ((((((entry
							                                                                  splitOn:
							                                                                  'CLOCK: [')
							                                                                 at:
							                                                                 2)
							                                                                splitOn:
							                                                                ']')
							                                                               at:
							                                                               2)
							                                                              splitOn:
							                                                              '[')
							                                                             at:
							                                                             2).
				                                             duration := endDateTime
				                                                         -
				                                                         startDateTime.
				                                             Dictionary newFrom:
					                                             {
						                                             ('startDateTime'
						                                              -> startDateTime).
						                                             ('endDateTime'
						                                              -> endDateTime).
						                                             ('duration'
						                                              -> duration) } ].

	logbook := logbookAsArrayOfArrayOfDateAndTimeObjects.

	sum := 0 asDuration.
	logbookAsArrayOfArrayOfDateAndTimeObjects do: [ :logbookEntry |
		sum := sum + (logbookEntry at: 'duration') ].

	totalDuration := sum
]

{ #category : 'parsing' }
OrgElement >> parseOrgHeadingItem: anOrgHeadingItem [
	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| propertiesAsArray indexOfId bodyAsArrayOfStrings |
	label := anOrgHeadingItem label label.

	orgHeadingItemBodyAsArrayOfStrings := anOrgHeadingItem body collect: [
		                                      :orgLine | orgLine line ].

	"does body of orglines contain ':PROPERTIES:' ?"
	(orgHeadingItemBodyAsArrayOfStrings includes: ':PROPERTIES:')
		ifTrue: [ "set id"
				indexOfProperties := self
					                     getIndexOf: ':PROPERTIES:'
					                     from: 1
					                     to: orgHeadingItemBodyAsArrayOfStrings size.
				"((1 to: orgHeadingItemBodyAsArrayOfStrings size) 
		                      select: [ :index | 
			                      (orgHeadingItemBodyAsArrayOfStrings at: index)
				                      asString = ':PROPERTIES:' ]) at: 1"
				indexOfPropertiesEnd := self
					                        getIndexOf: ':END:'
					                        from: indexOfProperties + 1
					                        to:
					                        orgHeadingItemBodyAsArrayOfStrings size.
				propertiesAsArray := orgHeadingItemBodyAsArrayOfStrings
					                     copyFrom: indexOfProperties
					                     to: indexOfPropertiesEnd.
				indexOfId := ((indexOfProperties to: indexOfPropertiesEnd)
					              select: [ :index |
						              '*ID*' match:
							              (orgHeadingItemBodyAsArrayOfStrings at: index)
								              asString ]) at: 1.

				id := ((orgHeadingItemBodyAsArrayOfStrings at: indexOfId)
					       splitOn: ':ID:       ') second ].


	"set logbook"
	(orgHeadingItemBodyAsArrayOfStrings includes: ':LOGBOOK:')
		ifTrue: [ self parseLogbook: anOrgHeadingItem ]
		ifFalse: [ logbook := nil ].

	bodyAsArrayOfStrings := (orgHeadingItemBodyAsArrayOfStrings
		                         includes: ':END:')
		                        ifTrue: [
				                        orgHeadingItemBodyAsArrayOfStrings
					                        copyFrom:
					                        (orgHeadingItemBodyAsArrayOfStrings
						                         lastIndexOf: ':END:')
					                        to:
					                        orgHeadingItemBodyAsArrayOfStrings size ]
		                        ifFalse: [
		                        orgHeadingItemBodyAsArrayOfStrings ].
	body := String streamContents: [ :stream |
			        bodyAsArrayOfStrings
				        asStringOn: stream
				        delimiter: String cr , String lf ].

	linkedIds := ((body splitOn: '[[id:') select: [ :item |
		              '*][*' match: item ]) collect: [ :item |
		             (item splitOn: '][') first ].

	"recursive logic"
	anOrgHeadingItem subheading items size > 0 ifTrue: [
			anOrgHeadingItem subheading items do: [ :orgHeading |
				children add: (OrgElement new parseOrgHeadingItem: orgHeading) ] ].
	children := children asArray.

	^ self
]

{ #category : 'printing' }
OrgElement >> printOn: aStream [

	"an instance of OrgElement should print its label"

	aStream nextPutAll: self label
]

{ #category : 'accessing' }
OrgElement >> totalDuration [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ totalDuration
]
