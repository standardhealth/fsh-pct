Alias:   ClinStatus = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias:   VerStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias:   USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient



Instance: CodeXPrimaryCancerConditionExample01
InstanceOf: PCTPrimaryCancerConditionType
Description: "PCT Example for Primary Cancer Condition Type"
* id = "CodeXPrimaryCancerConditionExample01"
* meta.profile = "http://mcodeinitiative.org/codex/us/patient.clinical.trial.matching/StructureDefinition/codex-primary-cancer-condition-type"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = SCT#64572001 "Disease (disorder)"
* code =  SCT#372137005 "Primary malignant neoplasm of breast (disorder)"
* subject = Reference(CodeXPatientExample01)


Instance: CodeXPrimaryCancerConditionExample02
InstanceOf: PCTPrimaryCancerCondition
Description: "PCT Example for Primary Cancer Condition"
* id = "CodeXPrimaryCancerConditionExample02"
* meta.profile = "http://mcodeinitiative.org/codex/us/patient.clinical.trial.matching/StructureDefinition/codex-primary-cancer-condition"
* extension[CancerType].valueCodeableConcept = ONCOTREE#BREAST "Breast Cancer"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = SCT#64572001 "Disease (disorder)"
* code = SCT#1080201000119101 "Infiltrating ductal carcinoma of lower inner quadrant of right female breast (disorder)" 
* subject = Reference(CodeXPatientExample01)



Instance: CodeXPrimaryCancerConditionExample03
InstanceOf: BreastCancerType
Description: "PCT Example for Breast Cancer Primary Cancer Condition Type"
* id = "CodeXPrimaryCancerConditionExample03"
* meta.profile = "http://mcodeinitiative.org/codex/us/patient.clinical.trial.matching/StructureDefinition/codex-breast-cancer-type"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = SCT#64572001 "Disease (disorder)"
* code = SCT#1080201000119101 "Infiltrating ductal carcinoma of lower inner quadrant of right female breast (disorder)" 
* subject = Reference(CodeXPatientExample01)




Instance: CodeXPatientExample01
InstanceOf: USCorePatient
Description: "PCT Example for Cancer Patient"
* id = "CodeXPatientExample01"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* gender = #male
* birthDate = "1951-01-20"
