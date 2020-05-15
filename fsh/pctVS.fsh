Alias:  ONCOTREE = http://oncotree.mskcc.org
Alias:   ICD10CM = http://hl7.org/fhir/sid/icd-10-cm 
Alias:   SCT = http://snomed.info/sct


ValueSet: OncoTreeVS
Id: codex-oncotree-vs
Title: "OncoTree Value Set"
Description: "Broad types of primary malignant neoplastic disease. These broad types were decided using OncoTree and then equivalent SNOMED codes were found."
* SCT#93665005      "Primary malignant neoplasm of adrenal gland (disorder)"
* SCT#371967001     "Primary malignant neoplasm of ampulla of Vater (disorder)"
* SCT#371970002     "Primary malignant neoplasm of biliary tract (disorder)"
* SCT#93689003      "Primary malignant neoplasm of bladder (disorder)"
//bladder/urinary tract or separate?//
* SCT#93725000      "Primary malignant neoplasm of bone (disorder)"
//Bowel Cancer//
* SCT#372137005     "Primary malignant neoplasm of breast (disorder)"
* SCT#93727008      "Primary malignant neoplasm of brain (disorder)"
* SCT#372024009     "Primary malignant neoplasm of uterine cervix (disorder)"
* SCT#371984007     "Primary malignant neoplasm of esophagus (disorder)"
* SCT#372014001     "Primary malignant neoplasm of stomach (disorder)"
//stomach/esophagus or separate?//
* SCT#371986009     "Primary malignant neoplasm of eye (disorder)"
* SCT#93824007      "Primary malignant neoplasm of head (disorder)"
* SCT#93922007      "Primary malignant neoplasm of neck (disorder)"
* SCT#93849006      "Primary malignant neoplasm of kidney (disorder)"
* SCT#95214007      "Primary malignant neoplasm of liver (disorder)"
* SCT#93880001      "Primary malignant neoplasm of lung (disorder)"
* SCT#269475001     "Malignant tumor of lymphoid, hemopoietic AND/OR related tissue (disorder)"
//myeloid//
* SCT#93934004      "Primary malignant neoplasm of ovary (disorder)"
* SCT#371987000     "Primary malignant neoplasm of fallopian tube (disorder)" 
//fallopian and ovary together?//
* SCT#372003004     "Primary malignant neoplasm of pancreas (disorder)"
* SCT#372005006     "Primary malignant neoplasm of penis (disorder)"
* SCT#109918005     "Primary malignant neoplasm of peripheral nerves and peripheral autonomic nervous system (disorder)"
* SCT#372016004     "Primary malignant neoplasm of the peritoneum (disorder)"
* SCT#93966009      "Primary malignant neoplasm of pleura (disorder)"
* SCT#93974005      "Primary malignant neoplasm of prostate (disorder)"
* SCT#94047004      "Primary malignant neoplasm of skin (disorder)"
* SCT#372010005     "Primary malignant neoplasm of soft tissues (disorder)"
* SCT#94087009      "Primary malignant neoplasm of testis (disorder)"
* SCT#94096009      "Primary malignant neoplasm of thymus (disorder)"
* SCT#94098005      "Primary malignant neoplasm of thyroid gland (disorder)"
* SCT#10708511000119108 "Primary malignant neoplasm of uterus (disorder)"
* SCT#372025005     "Primary malignant neoplasm of vagina (disorder)"
//vulva and vagina together?//




ValueSet: BreastCancerVS
Id: codex-breast-cancer-vs
Title: "Breast Cancer Value Set"
Description:    "Types of primary malignant neoplastic disease of the breast, coded in SNOMED CT or ICD-10-CM. 

Conformance note: To be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/index.html), ICD-10-CM should only be used if a suitable code is not available from SNOMED.

For SNOMED CT coding, use a code from the disorder hierarchy under SNOMED CT 254837009 'Malignant neoplasm of breast (disorder)' excluding codes descending from SNOMED CT 128462008 'Secondary malignant neoplastic disease (disorder)'. If body location is not precoordinated (i.e., implied by the code), the site of the primary tumor should be specified in the body site attribute. 

For ICD-10-CM coding, use one of the codes given in this value set representing primary malignant neoplasms of the breast and neoplasms of uncertain or unspecified behavior of the breast.

Note that ICD-O-3 specifies morphology and topography, not disorder. If ICD-O-3 is used, the primary cancer disorder code must be specifically be SNOMED CT 254837009  'Malignant neoplasm of breast (disorder)'. The ICD-O-3 morphology and topography codes should be entered in the HistologyMorphologyBehavior and body location fields, respectively."

* codes from system SCT where concept is-a #254837009 "Malignant neoplasm of breast (disorder)"
* exclude codes from system SCT where concept is-a #128462008  "Secondary malignant neoplastic disease (disorder)"
* ICD10CM#C4352	    "Malignant melanoma of skin of breast"
* ICD10CM#C4A52	    "Merkel cell carcinoma of skin of breast"
* ICD10CM#C44501    "Unspecified malignant neoplasm of skin of breast"
* ICD10CM#C44511	"Basal cell carcinoma of skin of breast"
* ICD10CM#C44521	"Squamous cell carcinoma of skin of breast"
* ICD10CM#C44591	"Other specified malignant neoplasm of skin of breast"
* ICD10CM#C50011	"Malignant neoplasm of nipple and areola, right female breast"
* ICD10CM#C50012	"Malignant neoplasm of nipple and areola, left female breast"
* ICD10CM#C50019	"Malignant neoplasm of nipple and areola, unspecified female breast"
* ICD10CM#C50021	"Malignant neoplasm of nipple and areola, right male breast"
* ICD10CM#C50022	"Malignant neoplasm of nipple and areola, left male breast"
* ICD10CM#C50029	"Malignant neoplasm of nipple and areola, unspecified male breast"
* ICD10CM#C50111	"Malignant neoplasm of central portion of right female breast"
* ICD10CM#C50112	"Malignant neoplasm of central portion of left female breast"
* ICD10CM#C50119	"Malignant neoplasm of central portion of unspecified female breast"
* ICD10CM#C50121	"Malignant neoplasm of central portion of right male breast"
* ICD10CM#C50122	"Malignant neoplasm of central portion of left male breast"
* ICD10CM#C50129	"Malignant neoplasm of central portion of unspecified male breast"
* ICD10CM#C50211	"Malignant neoplasm of upper-inner quadrant of right female breast"
* ICD10CM#C50212	"Malignant neoplasm of upper-inner quadrant of left female breast"
* ICD10CM#C50219	"Malignant neoplasm of upper-inner quadrant of unspecified female breast"
* ICD10CM#C50221	"Malignant neoplasm of upper-inner quadrant of right male breast"
* ICD10CM#C50222	"Malignant neoplasm of upper-inner quadrant of left male breast"
* ICD10CM#C50229	"Malignant neoplasm of upper-inner quadrant of unspecified male breast"
* ICD10CM#C50311	"Malignant neoplasm of lower-inner quadrant of right female breast"
* ICD10CM#C50312	"Malignant neoplasm of lower-inner quadrant of left female breast"
* ICD10CM#C50319	"Malignant neoplasm of lower-inner quadrant of unspecified female breast"
* ICD10CM#C50321	"Malignant neoplasm of lower-inner quadrant of right male breast"
* ICD10CM#C50322	"Malignant neoplasm of lower-inner quadrant of left male breast"
* ICD10CM#C50329	"Malignant neoplasm of lower-inner quadrant of unspecified male breast"
* ICD10CM#C50411	"Malignant neoplasm of upper-outer quadrant of right female breast"
* ICD10CM#C50412	"Malignant neoplasm of upper-outer quadrant of left female breast"
* ICD10CM#C50419	"Malignant neoplasm of upper-outer quadrant of unspecified female breast"
* ICD10CM#C50421	"Malignant neoplasm of upper-outer quadrant of right male breast"
* ICD10CM#C50422	"Malignant neoplasm of upper-outer quadrant of left male breast"
* ICD10CM#C50429	"Malignant neoplasm of upper-outer quadrant of unspecified male breast"
* ICD10CM#C50511	"Malignant neoplasm of lower-outer quadrant of right female breast"
* ICD10CM#C50512	"Malignant neoplasm of lower-outer quadrant of left female breast"
* ICD10CM#C50519	"Malignant neoplasm of lower-outer quadrant of unspecified female breast"
* ICD10CM#C50521	"Malignant neoplasm of lower-outer quadrant of right male breast"
* ICD10CM#C50522	"Malignant neoplasm of lower-outer quadrant of left male breast"
* ICD10CM#C50529	"Malignant neoplasm of lower-outer quadrant of unspecified male breast"
* ICD10CM#C50611	"Malignant neoplasm of axillary tail of right female breast"
* ICD10CM#C50612	"Malignant neoplasm of axillary tail of left female breast"
* ICD10CM#C50619	"Malignant neoplasm of axillary tail of unspecified female breast"
* ICD10CM#C50621	"Malignant neoplasm of axillary tail of right male breast"
* ICD10CM#C50622	"Malignant neoplasm of axillary tail of left male breast"
* ICD10CM#C50629	"Malignant neoplasm of axillary tail of unspecified male breast"
* ICD10CM#C50811	"Malignant neoplasm of overlapping sites of right female breast"
* ICD10CM#C50812	"Malignant neoplasm of overlapping sites of left female breast"
* ICD10CM#C50819	"Malignant neoplasm of overlapping sites of unspecified female breast"
* ICD10CM#C50821	"Malignant neoplasm of overlapping sites of right male breast"
* ICD10CM#C50822	"Malignant neoplasm of overlapping sites of left male breast"
* ICD10CM#C50829	"Malignant neoplasm of overlapping sites of unspecified male breast"
* ICD10CM#C50911	"Malignant neoplasm of unspecified site of right female breast"
* ICD10CM#C50912	"Malignant neoplasm of unspecified site of left female breast"
* ICD10CM#C50919	"Malignant neoplasm of unspecified site of unspecified female breast"
* ICD10CM#C50921	"Malignant neoplasm of unspecified site of right male breast"
* ICD10CM#C50922	"Malignant neoplasm of unspecified site of left male breast"
* ICD10CM#C50929	"Malignant neoplasm of unspecified site of unspecified male breast"
* ICD10CM#D4860	    "Neoplasm of uncertain behavior of unspecified breast"
* ICD10CM#D4861	    "Neoplasm of uncertain behavior of right breast"
* ICD10CM#D4862	    "Neoplasm of uncertain behavior of left breast"
* ICD10CM#D493	    "Neoplasm of unspecified behavior of breast"