Class {
	#name : 'BaselineOfPetitOrgRoam',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPetitOrgRoam',
	#package : 'BaselineOfPetitOrgRoam'
}

{ #category : 'baselines' }
BaselineOfPetitOrgRoam >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Dependencies"
			self orgMode: spec.
			self patternBuffer: spec. "Packages"
			spec
				package: 'PetitOrgRoam';
				package: 'PetitOrgRoam-Tests'
				with: [ spec requires: #( 'PetitOrgRoam' ) ] ]
]

{ #category : 'dependencies' }
BaselineOfPetitOrgRoam >> orgMode: spec [

	spec
		baseline: 'OrgMode'
		with: [ 
		spec repository: 'github://capsulecorplab/OrgMode:main/repository' ]
]

{ #category : 'dependencies' }
BaselineOfPetitOrgRoam >> patternBuffer: spec [
	"baseline for PatternBuffer"

	spec
		baseline: 'PatternBuffer'
		with: [
		spec repository: 'github://capsulecorplab/patternbuffer:v0.6.0/src' ]
]
