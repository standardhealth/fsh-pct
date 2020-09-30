Profile: TrialMatchResultsBundle
Parent: Bundle
Id: trial-match-results-bundle
Title: "Trial Match Results Bundle"
Description: "The output bundle of results from the Trial Match Service"

* type = #message
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
     trialMatchReturnHeader 0..1 and
     trialMatchResults 0..*

* entry[trialMatchReturnHeader].resource only TrialMatchMessageHeader
* entry[trialMatchResults].resource only TrialMatchResultSet
