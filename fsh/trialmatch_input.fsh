Profile: TrialMatchInput
Parent: Bundle
Id: trial-match-input
Title: "Trial Match Inputs"
Description: "Trial Match Service Input Parameters"

* type = #message
// add all of the message dependent items such as message code, the messages header as the first item in the entry array

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "entry.resource.resolve()"
//SUSHI error this does not exist * entry ^slicing.discriminator.strategy = includes
* entry ^slicing.rules = #open
* entry contains
    matchMessageHeader 0..1 and
    trialMatchParameters 0..1 and
    cancerPatient 0..1 and
    primaryCancer 0..* and
    secondaryCancer 0..* and
    tumorMarker 0..* and 
    clinicalStaging 0..* and
    regionalNodes 0..* and
    cancerGeneticVariant 0..* and
    cancerMedication 0..* and
    cancerRadiation 0..* and
    cancerSurgical 0..*
    
* entry[matchMessageHeader].resource only MessageHeader
* entry[trialMatchParameters].resource only Parameters
* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancer].resource only PrimaryCancerCondition
* entry[secondaryCancer].resource only SecondaryCancerCondition
* entry[tumorMarker].resource only TumorMarker
* entry[clinicalStaging].resource only TNMClinicalStageGroup
* entry[regionalNodes].resource only TNMPathologicalRegionalNodesCategory
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerMedication].resource only CancerRelatedMedicationStatement
* entry[cancerRadiation].resource only CancerRelatedRadiationProcedure
* entry[cancerSurgical].resource only CancerRelatedSurgicalProcedure
