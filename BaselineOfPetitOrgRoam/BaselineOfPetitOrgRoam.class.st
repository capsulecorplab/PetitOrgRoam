Class {
	#name : #BaselineOfPetitOrgRoam,
	#superclass : #BaselineOf,
	#category : #BaselineOfPetitOrgRoam
}

{ #category : #baselines }
BaselineOfPetitOrgRoam >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Dependencies"
		self orgMode: spec. "Packages"
		spec
			package: 'PetitOrgRoam';
			package: 'PetitOrgRoam-Tests'
			with: [ spec requires: #( 'PetitOrgRoam' ) ] ]
]

{ #category : #'as yet unclassified' }
BaselineOfPetitOrgRoam >> orgMode: spec [

	spec
		baseline: 'OrgMode'
		with: [ 
		spec repository: 'github://capsulecorplab/OrgMode:main/repository' ]
]
