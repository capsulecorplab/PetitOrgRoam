Class {
	#name : #OrgElementTest,
	#superclass : #TestCase,
	#category : #'PetitOrgRoam-Tests'
}

{ #category : #setup }
OrgElementTest >> orgDocumentAsString [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	^ ':PROPERTIES:
:ID:       3fdb300f-97d5-48e4-a89e-b6154c2aa5ab
:END:
#+title: Multiplanetary Homestead - Solarpunk Construction Set

a minimal collection of [[id:ba869927-e374-437c-8b41-a43c4e5cb132][OSHW]] products and tools for constructing:
- greenhabs
- human habitats
- repair/assembly modules
- science laboratories
- observatories

* [#A] Multiplanetary Homestead - RepRap toolkit         :production:package:
:PROPERTIES:
:ID:       6cb64adf-948a-436c-9f8c-c07f14598bad
:END:

a collection of [[id:bec72b22-32eb-4bea-b42e-54a1cf5f9001][RepRap]] manufacturing & machining tools,
capable of producing components for the [[id:bf5334f2-0701-4838-a50f-72e900b01ce9][Permaculture Toolkit]] as well as itself

# see also
- [[id:d0e7bb12-83fb-4cd5-9a4e-6e4967fc1100][Von Neumann universal constructor]]

** Multiplanetary Homestead - Von Neumann Replicator :production:
:PROPERTIES:
:ID:       8529f10d-98f4-4623-8428-61ef35edb29c
:END:

[[id:424763fc-3e8f-4331-a400-c5153790a002][core-XY]] [[id:9585bc25-52e8-46cb-ba76-5e60652f7b31][RepRap]] [[id:1a19de94-9a68-41f9-afad-9ab07e27bc45][FDM]] [[id:5e16bd5c-c6c5-47e6-99e1-70efbbecd6bd][3D printer]], named after the [[id:d0e7bb12-83fb-4cd5-9a4e-6e4967fc1100][Von Neumann universal constructor]]
with swappable toolhead for configuration as [[id:19a05267-0296-4c03-9f7a-dd9ad775178f][Von Neumann EDM machine/lathe]],
capable of 3D printing all of its printed components, as well as EDM machining all of its linear rods, threaded rods, and fasteners.

Loosely based on the [[id:95882e68-3d68-41c5-a3eb-b34d4acd99b1][Prusa Core One]] and [[id:27974df4-5c19-4b72-90b0-a9f25039391a][Voron Design]] philosophy of ~we build 3d printers with gardening tools~
used to assemble other tools/machines in the [[id:6cb64adf-948a-436c-9f8c-c07f14598bad][Von Neumann Construction Set]] and [[id:3fdb300f-97d5-48e4-a89e-b6154c2aa5ab][Planetary Base Construction Set]],

# core design tenants
- ease of assembly
- ease of maintenance
- ~reliable workhorse~
- open ecosystem
- (mostly?) [[id:3eb02af2-b91c-475b-91e7-f114ef451cd5][self-replicating]] (3D printed bearings and rods?)
- modular
- portable

# parts
- [[id:35995755-2ddc-473a-954b-c92b620df483][stepper motors]]
- [[id:998cf086-acbe-4960-b126-bbb746803c3c][rPET 3d printed]] or [[id:bf73e337-2d17-4c00-a23f-ab06be5be808][generic PLA 3d printed part]]
- [[id:26ecea03-6956-4d34-a1cf-186a51a68b43][generic (wire EDM lathed) (304?) stainless steel part]] (used for screws/fasteners)
- [[id:da43b4e8-80e7-4ea9-bdce-cd9e76c20e5e][3D printer filament extruder]]
- [[id:edbd9f9d-83b6-47ae-845e-4cd95a473438][universal 32-bit single-board computer]]

# tools
- [[id:f2ab587d-2380-42e3-9f5b-2761e4751dbb][generic hand tools]] (hex keys)

# see also
- [[id:bec72b22-32eb-4bea-b42e-54a1cf5f9001][RepRap]]
- [[id:d5d43636-7bf1-4076-970a-357aaa56148a][Prusa i3]]
- [[id:dcecd0b7-d1ef-4540-a38f-283a77bd3dc5][Voron Trident]]
- [[id:538f645a-d386-4789-8197-ab5a2ecfea2d][Voron vs Prusa]]
- [[id:f470b8aa-9e91-4f31-a956-4374f1b50b42][tradestudy of RepRap 3D printers]]

** Multiplanetary Homestead - universal core-xy motion system :intermediateproducts:
:PROPERTIES:
:ID:       719bcd8a-d8bb-42cd-87ff-ae603ace2325
:END:

[[id:9cbe7890-d92e-4962-a486-2362f346bd2c][Core-XY motion system]] w/ swappable toolhead for use in a 3D printer (s.a., [[id:8529f10d-98f4-4623-8428-61ef35edb29c][Von Neumann Replicator]]) or EDM machine (s.a., [[id:19a05267-0296-4c03-9f7a-dd9ad775178f][Von Neumann EDM machine/lathe]])

# see also
- [[id:00844d7f-5f44-4dd2-8807-59fe781f711f][OSE - Universal CNC axis]]

** Multiplanetary Homestead - potato starch            :intermediateproducts:
:PROPERTIES:
:ID:       93cfe911-e8e7-49b5-93ea-8a259c4203c5
:END:

# parts
- [[id:bd592123-bdfe-46a7-89a3-475b915aac17][(sweet) potato]]

# tools
- juicer

** Multiplanetary Homestead - shredded PLA plastic     :intermediateproducts:
:PROPERTIES:
:ID:       8b1f6311-0384-4c51-bce6-c37779eaf49f
:END:

# parts
- [[id:00bd30f7-fe6c-4c86-930b-8d9a47ba1b89][cornstarch]] or [[id:93cfe911-e8e7-49b5-93ea-8a259c4203c5][potato starch]] or tapioca starch
- [[id:b5723472-a886-4703-8aa5-060014aa0b9b][vegetable glycerin]]
- vinegar
- water

# tools
- hot plate or stove top
- glass bowl (designed for heating)
- kitchen towel
- kitchen scale or measuring spoon
- tray or mould
- oven mitt
- pan
- spatula
- [[id:f21dcab2-9159-46e7-a35b-b707ae6c9635][vacuum chamber]]
- [[id:49d68e9e-bd3b-49ff-9243-f22a41713144][vacuum pump]]
- [[id:394d2acf-6a7e-4d4c-8a81-ada29385d571][plastic shredder]]

** Multiplanetary Homestead - PLA 3d printer filament  :intermediateproducts:
:PROPERTIES:
:ID:       9d2751ff-1aae-40a6-9050-906eae3be647
:END:

# parts
- [[id:8b1f6311-0384-4c51-bce6-c37779eaf49f][pla plastic pellets]]

# tools
- [[id:da43b4e8-80e7-4ea9-bdce-cd9e76c20e5e][3D printer filament extruder]]

** Multiplanetary Homestead - stepper motor            :intermediateproducts:
:PROPERTIES:
:ID:       35995755-2ddc-473a-954b-c92b620df483
:END:

# parts
- [[id:26ecea03-6956-4d34-a1cf-186a51a68b43][generic (CNC lathed and/or CNC milled) (304?) stainless steel parts]]
- [[id:cd8230b8-2517-4231-8fd1-dda5a54b3cfb][copper wire]]

** [#B] Multiplanetary Homestead - plastic shredder               :logistics:
:PROPERTIES:
:ID:       394d2acf-6a7e-4d4c-8a81-ada29385d571
:END:

# see also
- [[id:ff338185-7916-4530-81c4-59338f7ac7a0][DIY plastic shredder]]

** [#C] Multiplanetary Homestead - 3D printer filament extruder  :production:
:PROPERTIES:
:ID:       da43b4e8-80e7-4ea9-bdce-cd9e76c20e5e
:END:

# parts
- non-helical parts [[id:26ecea03-6956-4d34-a1cf-186a51a68b43][generic (EDM lathed) (304?) stainless steel part]] or [[id:16cd7364-811b-4dca-a596-23ad337766d4][generic (lost PLA-casted or resin-casted) stainless steel]] or [[id:d90fb11b-b812-491d-aa16-2c78fa2031a9][(PLA-casted or resin-casted) aluminum]] or [[id:8c745a4a-b89d-45ee-b141-8c11ff7f7ba5][die-casted aluminum part]]
- helical parts (s.a., the auger) [[id:26ecea03-6956-4d34-a1cf-186a51a68b43][generic (EDM lathed) (304?) stainless steel part]] or [[id:16cd7364-811b-4dca-a596-23ad337766d4][generic (lost PLA-casted or resin-casted) stainless steel]] or [[id:d90fb11b-b812-491d-aa16-2c78fa2031a9][(PLA-casted or resin-casted) aluminum]] or [[id:8c745a4a-b89d-45ee-b141-8c11ff7f7ba5][die-casted aluminum part]]
- [[id:35995755-2ddc-473a-954b-c92b620df483][Multiplanetary Homestead - stepper motor]]

# tools
- [[id:f2ab587d-2380-42e3-9f5b-2761e4751dbb][generic hand tools]]

# see also
- [[id:2ec5efcb-4dfd-429a-a3e4-88e7aa5ae433][ARTME 3D (extruder)]]
- [[id:7fef62da-04dc-4d30-994a-1de7e6e2f2e7][DIY 3D printer filament extruder]]

** Archived Multiplanetary Homestead - RepRap CNC mill           :production:
CLOSED: [2025-05-14 Wed 10:23]
:PROPERTIES:
:ID:       6a713136-fbdd-4935-a226-ad3efa845cce
:END:

can be used as a [[id:5071891e-f3fc-4765-a881-862ed46a4ea4][CNC mill]] or [[id:a79ff84c-00da-4adc-a088-50e1df63a77a][CNC lathe]], used for fabricating components, s.a.
- metal parts (s.a., augers, gears, fasteners) for the [[id:da43b4e8-80e7-4ea9-bdce-cd9e76c20e5e][3D printer filament extruder]]
- metal parts (s.a., shredders, gears, fasteners) for the [[id:394d2acf-6a7e-4d4c-8a81-ada29385d571][plastic shredder]]
- metal parts (s.a., shredders, gears, fasteners) for the [[id:252e4c85-b6b0-4a6d-ae98-35dfbc71d7dc][chipper / hammermill]]

# parts
- [[id:8c745a4a-b89d-45ee-b141-8c11ff7f7ba5][die-casted aluminum parts]] (used for [[id:f427310c-9486-4d76-97fa-009b1801679a][aluminum extrusions]])
- [[id:26ecea03-6956-4d34-a1cf-186a51a68b43][generic (wire EDM lathed) (304?) stainless steel part]]  used for screws/fasteners
- [[id:7c743dc0-2ff2-436a-a5d7-ad8b8b7c1fe4][generic rPET 3d printed part]] or [[id:bf73e337-2d17-4c00-a23f-ab06be5be808][generic PLA 3d printed part]] (for joints)
- drill bit
- [[id:b6b09b99-0ffa-4bf4-89ca-27c85c981ed1][A/C motor]]

# tools
- [[id:e07f2ee7-6212-4d69-9ebf-64ffed33d309][workbench]]

# see also
- [[id:188e16de-214a-4845-8474-228c99c8dfac][Voron Cascade]]
- [[id:36fa9ca0-e3a2-44b2-a803-2dd52cba16f6][DIY CNC mill]]
- [[id:1455aacd-6024-424a-8a9b-07f3dbbdebf9][tradestudy of DIY CNC routers]]

** [#C] Multiplanetary Homestead - Von Neumann Replicator (EDM machine/lathe configuration)
:PROPERTIES:
:ID:       19a05267-0296-4c03-9f7a-dd9ad775178f
:END:

[[id:8529f10d-98f4-4623-8428-61ef35edb29c][Von Neumann Replicator]] configured for (3-axis rotary) [[id:e05faba2-7206-46ba-a167-d905cf02caa9][DIY EDM]]

can be configured to either be a CNC-style router or lathe, but using [[id:96a68e52-b675-4f40-9172-82334f3cfe6b][wire EDM]]

used for fabricating components, s.a.
- metal parts (s.a., augers, gears, fasteners) for the [[id:da43b4e8-80e7-4ea9-bdce-cd9e76c20e5e][3D printer filament extruder]]
- metal parts (s.a., shredders, gears, fasteners) for the [[id:394d2acf-6a7e-4d4c-8a81-ada29385d571][plastic shredder]]
- metal parts (s.a., shredders, gears, fasteners) for the [[id:252e4c85-b6b0-4a6d-ae98-35dfbc71d7dc][chipper / hammermill]]

# parts
- [[id:8529f10d-98f4-4623-8428-61ef35edb29c][Von Neumann i3 RepRap (FDM 3D printer)]]
- power supply

# tools
- [[id:f2ab587d-2380-42e3-9f5b-2761e4751dbb][generic hand tools]]

# see also
- [[id:69d96f36-4c40-4854-9ecf-069ad7ec4558][DIY wire EDM lathe]]
- [[id:96a68e52-b675-4f40-9172-82334f3cfe6b][wire EDM]]
- [[id:e166f044-0a5d-4fcc-9cd9-b08970c2f791][PowerCore V2]]
'.
]

{ #category : #tests }
OrgElementTest >> testParseOrgHeadingItem [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| orgElement orgDocument orgHeadingItem |
	"DONE peruse OrgMode tests for parsing Org syntax from string to create an OrgDocument object""TODO: use OrgMode parser to instantiate an OrgElement from an OrgHeadingItem"
	orgDocument := OrgParser new parseString: self orgDocumentAsString.

	orgHeadingItem := orgDocument heading items at: 1.

	orgElement := OrgElement new parseOrgHeadingItem: orgHeadingItem.
	"TODO: implement OrgRelation as an 'edge' between two OrgElements"
	"TODO: implement OrgGraph from  End of statement expected ->a collection of OrgRelations"

	self
		assert: orgElement label
		equals:
		'[#A] Multiplanetary Homestead - RepRap toolkit         :production:package:'.
	self
		assert: orgElement id
		equals: '6cb64adf-948a-436c-9f8c-c07f14598bad'.
	self assert: ('*collection of*' match: orgElement body) equals: true.
	self
		assert: orgElement linkedIds first
		equals: 'bec72b22-32eb-4bea-b42e-54a1cf5f9001'.
	self
		assert: orgElement linkedIds second
		equals: 'bf5334f2-0701-4838-a50f-72e900b01ce9'.
	self
		assert: orgElement linkedIds third
		equals: 'd0e7bb12-83fb-4cd5-9a4e-6e4967fc1100'
]

{ #category : #tests }
OrgElementTest >> testParseOrgHeadingItemRecursively [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| orgElement orgDocument orgHeadingItem |
	"DONE peruse OrgMode tests for parsing Org syntax from string to create an OrgDocument object""TODO: use OrgMode parser to instantiate an OrgElement from an OrgHeadingItem"
	orgDocument := OrgParser new parseString: self orgDocumentAsString.

	orgHeadingItem := orgDocument heading items at: 1.

	orgElement := OrgElement new parseOrgHeadingItem: orgHeadingItem.
	"TODO: implement OrgRelation as an 'edge' between two OrgElements"
	"TODO: implement OrgGraph from  End of statement expected ->a collection of OrgRelations"

	self
		assert: (orgElement children at: 1) label
		equals:
		'Multiplanetary Homestead - Von Neumann Replicator :production:'.
	self
		assert: ('*Von Neumann universal constructor*' match:
				 (orgElement children at: 1) body)
		equals: true
]
