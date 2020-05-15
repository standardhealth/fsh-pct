Alias:   USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias:   PrimaryCancerCondition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition
     

//Option 1 is to create a CancerType profile where the valueset for code is a OncoTreeSCTVS, which is a value set that translates the OncoTree cancer type codes into SNOMED codes. The description could also include the fact that OncoTree IDs can be used//
Profile: PCTPrimaryCancerConditionType
Parent: PrimaryCancerCondition
Id: codex-primary-cancer-condition-type
Title: "PCT Primary Cancer Condition Type"
Description: "Records the primary cancer type the person has"
* code from OncoTreeSCTVS (required)


//Option 2 is to use the existing PrimaryCancerCondition profile and to add an extension for cancer type, which uses OncoTree ID codes/
Profile: PCTPrimaryCancerCondition
Parent: PrimaryCancerCondition
Id: codex-primary-cancer-condition
Title: "PCT Primary Cancer Condition"
Description: "Records the primary cancer type the person has"
* extension contains 
    CancerType named CancerType 1..1
* extension[CancerType] MS


//Have a profile for each individual cancer type//
Profile: BreastCancerType
Parent: PrimaryCancerCondition
Id: codex-breast-cancer-type
Title: "PCT Breast Cancer Condition"
Description: "Records the type of breast cancer the person has"
* code from BreastCancerVS (required)



Extension: CancerType
Id: codex-cancer-type
Title: "Cancer-Type"
Description: "A broad description of the primary cancer condition type. The broad cancer types were determined using OncoTree and coded using SNOMED"
* value[x] only CodeableConcept
* valueCodeableConcept from OncoTreeVS


