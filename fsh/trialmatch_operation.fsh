Alias: PubStat = http://hl7.org/fhir/ValueSet/publication-status
Alias: OpKind = http://hl7.org/fhir/ValueSet/operation-kind
Alias: dataType = http://hl7.org/fhir/ValueSet/all-types

Instance: ClinicalTrialMatchService
InstanceOf: OperationDefinition
Title: "Clinical Trial Match Service"
Usage: #definition
Description: "Operation defintion for clinical trial matching service"
* name = "clinicalTrialMatchService"
* status = PubStat#draft
* kind = OpKind#operation
* system = false
* type = true
* instance = false
* code = #match
* resource = #ResearchStudy


* parameter[0].name = #zipCode
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].type = dataType#string
* parameter[0].documentation = "The zipcode of the area in which to search"

* parameter[1].name = #travelRadius
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].type = dataType#string
* parameter[1].documentation = "The distance from the zipcode to include in the search radius"

* parameter[2].name = #phase
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].type = dataType#string
* parameter[2].documentation = "The phase of the clinical trial"

* parameter[3].name = #recruitmentStatus
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].type = dataType#string
* parameter[3].documentation = "The recruitement status of the clinical trial"

* parameter[4].name = #trialMatchClinicalData
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].type = dataType#Bundle 
* parameter[4].documentation = "TrialMatchDataBundle that contains the mCODE clinical patient data"

* parameter[5].name = #trialMatchOutput
* parameter[5].use = #out
* parameter[5].min = 1
* parameter[5].max = "1"
* parameter[5].type = dataType#Bundle 
* parameter[5].documentation = "TrialMatchResultSet that contains the results from the Clinical Trial Match Service"