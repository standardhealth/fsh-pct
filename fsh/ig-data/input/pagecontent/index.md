<style type="text/css">
  .img-container {
      text-align: center;
      display: block;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<ul>
    <li><a href="#About">About</a></li>
    <li><a href="#mCODE">Relationship to mCODE&trade;</a></li>
    <li><a href="matching_service_integration.html">Matching Service Integration</a></li>
    <li><a href="#Contacts">Contact Information</a></li>
</ul>


<h3><a name="About">About the CodeX Integrated Trial Matching for Cancer Patients and Providers Project</a></h3>

<span class="img-container">
    <img src="P_CT_Diagram.png" alt="Integrated Trial Matching for Cancer Patients and Providers" width="65%">
</span>
<p>&nbsp;</p>

<p>Presently, there are a number of barriers for patient participation in clinical trials. Matching patients with trials require a challenging amount of manual entry and / or manual review of trials and frequently this is not integrated into existing clinical workflows. As a result, patients eligible to participate in a clinical trial may not be identified or asked to enroll. Secondly, many patients do not have a local trial available for their cancer at the institution where they are being seen,and providers do not have means to easily identify trials for their patients that are conducted outside the treating healthcare institution. Consequently, only about 27% of cancer patients will have the option to enroll in a local clinical trial at the institution they are being treated at. Furthermore, approximately 20% of cancer clinical trials fail due to insufficient patient enrollment.</p>

<p>The MITRE Corporation and the American Cancer Society Cancer Action Network (ACS CAN) are championing this use case on <a href="https://confluence.hl7.org/pages/viewpage.action?pageId=66938394" target="_blank">Integrated Trial Matching for Cancer Patients and Providers</a> under <a href="https://confluence.hl7.org/display/COD/CodeX+Home" target="_blank">CodeX™</a>.This use case aims to make clinical trial participation equitable and easy for all patients and providers. Our approach is to develop mCODE-based open data standards and open APIs that enable interoperable, scalable, and accessible clinical trial matching services that are integrated into existing clinical workflows. This use case will drive awareness of and commitment to use these standards in the industry and improve clinical trial matching for patients and their care teams.</p>

<p>Ultimately, the goal of this use case is to ensure opportunities for patients to consider clinical trial participation regardless of where they are initially treatedand to identify a larger pool of patients eligible to participate in trials. This will enable recruitment of a more diverse set of patients into trials with a cohort representative of the population of cancer patients. It will also enable clinical trials to meet enrollment targets sooner and lead to more clinical trials being completed in a timely, cost effective and efficient manner. This will ultimately result in greater and faster knowledge generation that can lead to better outcomes for all patients with cancer.</p>

<p> In order to meet this goal, the project team aims to develop open standards and open APIs that enable interoperable, scalabale, and accessibile clinical trial matching services. After these standards are developed, the team will drive awareness of and commitment to use these standards in the industry, thereby improving clinical trial matching for patients and their care teams.</p> 

<p>For details on the how trial matching services can become mCODE-enabled, please consult the <a href="matching_service_integration.html">Matching Service Integration</a> page.</p>

<p> For the pilot, only a minimum set of eligibility criteria will be used to filter clinical trials. This minimum set was determined by the ACS CAN working group dedicated to understanding and solving the barriers of patients enrolling in clinical trials. The goal of this minimum set, or optimized patient data, is to narrow down the list of potential trials a patient may match to, so the patient can review the small list of trials with their provider.</p> 

<p>The optimized patient data to filter clincial trials includes:</p>
  <ul>
    <li>Cancer type</li>
    <li>Cancer sub-type</li>
    <li>Age</li>
    <li>Presence of metastasis</li>
    <li>Stage</li>
    <li>Biomarkers</li>
    <li>Treatments</li>
  </ul>

<h3><a name="mCODE">Relationship to mCODE</a></h3>

<p>The <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">minimal Common Oncology Data Elements (mCODE) standard</a> is designed to enable clinicians to capture a critical set of information for each cancer patient in a way that can be collected, analyzed, and shared quickly and more easily by oncology stakeholders. The American Society of Clinical Oncology, CancerLinQ, the Alliance for Clinical Trials in Oncology, the U.S. Food and Drug Administration, and the MITRE Corporation are collaborating to develop and launch mCODE. mCODE is being established as the standard Fast Healthcare Interoperability Resources (FHIR)-based data element set that will be captured for all cancer patients. These elements are essential for analyzing patient characteristics, treatments, and outcomes across patients and practices to improve treatment and care coordination.</p>

<p>While the “m” in mCODE stands for minimal, there are many potential ways to adapt and extend mCODE for specific use cases such as patient data management, registry reporting, payment models, and more. To help identify, prioritize, and implement new use cases, MITRE and HL7 collaboratively launched the CodeX™ FHIR Accelerator. CodeX™ employs a multi-stakeholder process to rapidly address high-priority oncology use cases using mCODE that can be implemented on a national basis.</p>

<p>This implementation guide intends to cover content necessary for Integrated Trial Matching for Cancer Patients and Providers that is not part of the <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">mCODE v1.0 R4 specification</a>. Implementers should refer directly to mCODE for the specification of all mCODE elements.</p>

<p>The actors intended for this implementation guide are health systems, EHRs, clinical trial matching services, and patient portals.</p>

<h3><a name="mCODE">Project Partners</a></h3>
<ul>
    <li>The American Cancer Society Cancer Action Network</li>
    <li>The MITRE Corporation</li>
    <li>Cancer Insights</li>
    <li>TrialScope</li>
    <li>Breastcancertrials.org</li>
  </ul>

<h3><a name="Contacts">Contact Information</a></h3>

<p>For inquiries regarding the Integrated Trial Matching for Cancer Patients and Providers project, contact <a href="mailto:ssemy@mitre.org">Salim Semy</a> or <a href="mailto:cpotteiger@mitre.org">Caroline Potteiger</a>.</p>
