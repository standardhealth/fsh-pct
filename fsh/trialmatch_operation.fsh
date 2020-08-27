Alias: PubStat = http://hl7.org/fhir/ValueSet/publication-status
Alias: OpKind = http://hl7.org/fhir/ValueSet/operation-kind
Alias: dataType = http://hl7.org/fhir/ValueSet/all-types

Instance: TrialMatchService
InstanceOf: OperationDefinition
Title: "Trial Match Service"
Usage: #definition
Description: "Operation defintion for clinical trial matching service"
* name = "trialMatchService"
* status = PubStat#draft
* kind = OpKind#query
* system = true
* type = true
* instance = true
* code = #match


* parameter[0].name = #trialMatchInput
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].type = dataType#Bundle // This should be TrialMatchMessageBundle
* parameter[0].documentation = "TrialMatchMessageBundle that contains the MessageHeader, Parameters and mCODE Data for input to the service"

* parameter[1].name = #trialMatchOutput
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].type = dataType#Bundle // This should be TriaLMatchResultsBundle
* parameter[1].documentation = "TrialMatchResultsBundle that contains the results from the Trial Match Service"

/*
* parameter ^slicing.discriminator.type = #profile
* parameter ^slicing.discriminator.path = "parameter.type.resolve()"
* parameter ^slicing.rules = #open
* parameter contains
     trialMatchInput 0..1 and
     trialMatchOutput 0..*

// Input Parameters
* parameter[trialMatchInput].type only TrialMatchMessageBundle
//* parameter[trialMatchInput].name = #trialMatchInput
* parameter[trialMatchInput].use = #in
//* parameter[trialMatchInput].min = 0
//* parameter[trialMatchInput].max = "1"
//* parameter[trialMatchInput].type only TrialMatchMessageBundle
* parameter[trialMatchInput].documentation = "Message that contains the MessageHeader, Parameters and Data for the service"

// Output Parameters
* parameter[trialMatchOutput].type only ResearchStudy
//* parameter[trialMatchOutput].name = #trialMatchOutput
* parameter[trialMatchOutput].use = #out
//* parameter[trialMatchOutput].min = 1
//* parameter[trialMatchOutput].max = "*"
//* parameter[trialMatchOutput].type only ResearchStudy
* parameter[trialMatchOutput].documentation = "List of all applicable clinical trials"
*/