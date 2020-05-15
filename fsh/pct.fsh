Alias:   USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition     


Profile: PCTPrimaryCancerCondition
Parent: USCoreCondition
Id: codex-primary-cancer-condition
Title: "PCT Primary Cancer Condition"
Description: "Records the primary cancer type the person has"

* ^abstract = false 
* extension contains 
    CancerType named CancerType 1..1
* extension[CancerType] MS



Extension: CancerType
Id: codex-cancer-type
Title: "Cancer-Type"
Description: "A broad description of the primary cancer condition type. The broad cancer types were determined using OncoTree and coded using SNOMED"
* value[x] only CodeableConcept
* valueCodeableConcept from OncoTreeVS


