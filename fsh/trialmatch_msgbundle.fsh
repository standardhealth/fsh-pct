Profile: TrialMatchMessageBundle
Parent: Bundle
Id: trial-match-message-bundle
Title: "Trial Match Message Bundle"
Description: "The input message bundle for the Trial Match Service"

* type = #message
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
     trialMatchHeader 0..1 and
     trialMatchParameters 0..1 and
     trialMatchInputData 0..1

* entry[trialMatchHeader].resource only TrialMatchMessageHeader
* entry[trialMatchParameters].resource only Parameters
* entry[trialMatchInputData].resource only TrialMatchDataBundle