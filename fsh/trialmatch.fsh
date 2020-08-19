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
* parameter[0].name = #TrialMatchInput /* this is the bundle profile being defined */
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].type = dataType#Bundle
* parameter[0].documentation = "list of profiles to include in the input bundle"

// Output Parameters
* parameter[1].name = #results
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].type = dataType#ResearchStudy
* parameter[1].documentation = "List of all applicable clinical trials"