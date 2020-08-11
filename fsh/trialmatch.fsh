Alias: PubStat = http://hl7.org/fhir/ValueSet/publication-status
Alias: OpKind = http://hl7.org/fhir/ValueSet/operation-kind
Alias: dataType = http://hl7.org/fhir/ValueSet/all-types

Instance: TrialMatch
InstanceOf: OperationDefinition
Title: "Trial Match"
Usage: #definition
Description: "Operation defintion for clinical trial matching service"
* name = "trialMatch"
* status = PubStat#draft
* kind = OpKind#query
* system = true
* type = true
* instance = true
* code = #match

// Input Parameters
* parameter[0].name = #zipCode
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].type = dataType#string
* parameter[0].documentation = "zip code of area to search"

* parameter[1].name = #travelRadius
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].type = dataType#string
* parameter[1].documentation = "travel distance from zip code to search"

* parameter[2].name = #phase
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].type = dataType#string
* parameter[2].documentation = "Phase of clinical trial"

* parameter[3].name = #recruitmentStatus
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].type = dataType#string
* parameter[3].documentation = "Recruitment status of clinical trial"

// This should be Cancer Patient
* parameter[4].name = #Patient
* parameter[4].use = #in
* parameter[4].min = 1
* parameter[4].max = "1"
* parameter[4].type = dataType#Patient
//* paramter[4].type = dataType#Reference
//* parameter[4].targetProfile = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient
* parameter[4].documentation = "The cancer patient that is being matched against trials"

* parameter[5].name = #Condition
* parameter[5].use = #in
* parameter[5].min = 1
* parameter[5].max = "*"
* parameter[5].type = dataType#Condition
* parameter[5].documentation = "Data about the patient's cancer condition(s)"

* parameter[6].name = #Immunization
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "*"
* parameter[6].type = dataType#Immunization
* parameter[6].documentation = "Data about the patient's immunization(s)"

* parameter[7].name = #Encounter
* parameter[7].use = #in
* parameter[7].min = 0
* parameter[7].max = "*"
* parameter[7].type = dataType#Encounter
* parameter[7].documentation = "Data about the patient's encounter(s)"

// Output Parameters
* parameter[8].name = #results
* parameter[8].use = #out
* parameter[8].min = 1
* parameter[8].max = "*"
* parameter[8].type = dataType#ResearchStudy
* parameter[8].documentation = "List of all applicable clinical trials"