<style type="text/css">
  .img-container {
      text-align: center;
      display: block;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<ul>
    <li><a href="#About">About</a></li>
    <li><a href="#mCODE">Relationship to mCODE</a></li>
    <li><a href="#ProjectPlan">Project Plan</a></li>
    <li><a href="codex_extensions.html">CodeX Extensions</a></li>
    <li><a href="#Contacts">Contact Information</a></li>
</ul>


<h3><a name="About">DRAFT: About the CodeX Empowering Patients to Find Clinical Trials Project</a></h3>

<p>The overall goal of the <a href="https://confluence.hl7.org/pages/viewpage.action?pageId=66938394" target="_blank">Empowering Patients to Find Clinical Trials project</a> is to develop open data standards and open APIs that enable interoperable, scalable, and accessible clinical trial matching services using <a href="http://mcodeinitiative.org" target="_blank">mCODE&trade;</a>.</p>

<p>The Empowering Patients to Find Clinical Trials project is a collaboration between The MITRE Corporation, the American Cancer Society - Cancer Action Network (ACS CAN), TrialScope, and Cancer Insights. The project is conducting a pilot to demonstrate the ability of producing high-quality clinical trial matches using mCODE.</p>

<h3><a name="mCODE">Empowering Patients to Find Clinical Trials and mCODE</a></h3>

<p>This implementation guide intends to cover content necessary for Empowering Patients to Find Clinical Trials that is not part of the <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">mCODE v1.0 R4 specification</a>. Implementers should refer directly to mCODE for the specification of all mCODE elements.</p>
<p>The mCODE implementation guide includes information on how to interpret conformance requirements as well as elements marked as "must support". This implementation guide follows those same guidelines.</p>
<p>The actors intended for this implementation guide are health systems, EHRs, clinical trial matching services, and patient portals.</p>

<h3><a name="ProjectPlan">Project Plan</a></h3>

<p>The Empowering Patients to Find Clinical trials strategy is to create a "blue button" functionality that allows patients and providers to send mCODE information to clinical trial matching services directly through the EHR or patient portal. The mCODE information sent is based on the minimum eligibility criteria determined by ACS CAN and their working group. When the mCODE minimum eligibility criteria data is sent, the patient will then receive a short list of potential matches to clinical trials.</p>

<p>The minimum set of eligibility criteria include:</p>
  <ul>
    <li>Cancer type</li>
    <li>Cancer sub-type</li>
    <li>Age</li>
    <li>Presence of metastasis</li>
    <li>Stage</li>
    <li>Biomarkers</li>
    <li>Treatment information</li>
  </ul>

<p>The figure below illustrates the workflow of the Empowering Patients to Find Clinical Trials project.</p>
<span class="img-container">
    <img src="P_CT_M_Diagram.png" alt="Empowering Patients to Find Clinical Trials" width="65%">
</span>
<p>&nbsp;</p>

<p>For details on the CodeX extensions needed for this use case, please consult the <a href="codex_extensions.html"> CodeX extensions</a> page.</p>


<!--
<h1>Known Issues and Limitations</h1>
<p>The profiles in this implementation guide may have dependencies on content in other implementation guides, namely mCODE. These dependencies may not always resolve in the profile.</p>
-->

<h3><a name="Contacts">Contact Information</a></h3>

<p>For inquiries regarding the Empowering Patients to Find Clinical Trials project, contact <a href="mailto:ssemy@mitre.org">Salim Semy</a>.</p>
<!--<p>For questions or issues related to this implementation guide, please use our <a href="https://github.com/standardhealth/fsh-icare/issues">ICAREdata GitHub issue tracker</a>.</p>-->
<p>For questions or issues regarding the content of mCODE implementation guide, please use the <a href="https://github.com/standardhealth/fsh-mcode/issues">mCODE GitHub issue tracker</a>.</p>
    
   </div>