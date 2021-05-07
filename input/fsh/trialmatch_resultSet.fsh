Profile: TrialMatchResultSet
Parent: Bundle
Id: trial-match-result-set
Title: "Trial Match Result Set"
Description: "Resulting bundle of clinical trials from the Trial Match Service"

* type = #searchset
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
     trialMatchResultSet 0..*
* entry[trialMatchResultSet].resource only ResearchStudy