This page provides **logical-level example instances** populated according to the [European Cancer Common Logical Model](logicalmodels.html) , following the steps of the [Cancer Patient Journey](journey.html).

The purpose of this section is to show **how the logical model can be populated over time**, by creating concrete instances of its entities at specific moments of the cancer journey, and by explicitly linking these instances to preserve longitudinal traceability.

This page focuses on the **logical level** of the model. It complements:
* the [Conceptual Model](conceptualmodel.html), which defines the meaning and relationships of cancer concepts;
* the [Cancer Patient Journey](journey.html), which describes the clinical narrative;
* the [Data Evolution](journey-data-evolution.html) page, which explains how conceptual entities evolve over time.

Readers are therefore expected to be familiar with those pages before consulting this section.

Compared to the conceptual Data Evolution example, this logical example shows a **more complete population of attributes**, including illustrative terminology codes (e.g. SNOMED CT, ICD-O-3, ICD-10) and additional fields not shown in the conceptual narrative. These codes are provided **for demonstration purposes only**, to illustrate how the logical model can be populated and validated.

**This page shows concrete examples of logical model instances**, highlighting:
* which logical entities are instantiated at each step;
* how multiple instances of the same entity type coexist over time;
* how references between instances are used to preserve consistency and traceability.

The diagrams presented in the following sections use schematic representations based on the Logical Model, and are intended to support implementers in understanding **how the model can be applied in practice**, without prescribing a specific technical implementation.

For ease of consultation and reuse, especially for readers less familiar with FHIR, a complete representation of the exaple is also available in Excel format ([LogicalModelExample.xlsx](https://github.com/hl7-eu/cancer-common/raw/refs/heads/master/_sources/LogicalModelExample_v2.xlsx)).

### Diagnosis + First Treatment (Date 0 - 3)
This section instantiates the logical entities required to represent diagnosis and the initial treatment phase. The example includes instances of CancerPatient, CancerConditionAtDiagnosis, Imaging, CancerStage (clinical and pathological), Surgery and Radiotherapy.

In this logical example, attributes are more fully populated than in the conceptual Data Evolution narrative. For instance, tumour histology and body site are provided using ICD-O-3 codes, and imaging/treatment types are illustrated with terminology codes where available.

<div style="text-align:center;">
  <p></p>
    <figure>
      {% include journey-example-diagnosis.svg %}
      <figcaption><strong>Figure 1 Data evolution: from diagnosis to radiotherapy</strong></figcaption>
    </figure>
  <p></p>
 </div>

### Evidence + Overall Treatment Response (Complete Remission) (Date 4)
This section shows the first post-treatment assessment at the logical level. New instances are created for:
* OverallCancerTreatmentResponse, capturing the response category and assessment date;
* ClinicalCancerProgression, recording the disease status asserted at the same time point;
* LastFollowUp, capturing vital status and evidence of disease for the patient.

In this example, the response and disease status are recorded as Complete Remission, with the follow-up date aligned to the same assessment moment.

### Evidence + Follow-up Visits (Complete Remission) (Date 5)
This section represents a follow-up visit where the previously recorded remission status is confirmed. Even when no clinical change is observed, the logical model captures the follow-up as a distinct event by creating:
* a new ClinicalCancerProgression instance (confirmation of disease status),
* a new LastFollowUp instance (patient status at this date).

### Evidence + Follow-up Visits (Complete Remission) (Date 6) 
This section represents an additional follow-up visit confirming the same disease status. New instances of ClinicalCancerProgression and LastFollowUp are created to preserve temporal traceability across repeated assessments.

### Evidence + Follow-up Visits (Disease Evolution - Recurrence) (Date 7) 
This section represents a disease evolution event identified during follow-up. A new ClinicalCancerProgression instance records Recurrence and the associated extent information. In this example, loco-regional extent is captured and a loco-regional site is provided using an illustrative ICD-O-3 code.

A corresponding LastFollowUp instance records that the patient is alive with evidence of disease at the same time point.

### Second Treatment (Date 8 - 9)
This section represents a new treatment episode initiated following the documented recurrence. A SystemicTreatment instance captures treatment intent, type, and timing, and is explicitly linked to the ClinicalCancerProgression instance representing the recurrence that motivated the treatment.

In this example, the systemic treatment type is illustrated using a SNOMED CT procedure code.

### Evidence + Follow-up Visit (Partial Remission) (Date 10)
This section represents the assessment performed after the systemic treatment course. A new OverallCancerTreatmentResponse instance records the response evaluation and explicitly references the previous recurrence context.

A new ClinicalCancerProgression instance captures the updated disease status (Partial Remission) and associated extent information. A new LastFollowUp instance records patient status at the same follow-up date.

### Evidence + Follow-up Visit (Progression) (Date 11)
This section represents a further disease evolution event. A new ClinicalCancerProgression instance records Progression and metastatic extent, with an illustrative metastatic site code provided in this example.

A corresponding LastFollowUp instance records that the patient remains alive with evidence of disease at the same time point.

### Death
This final section records the patient outcome. A new LastFollowUp instance captures vital status as Dead, the date of death, and (when available) the cause of death.

In this example, the cause of death is illustrated using an ICD-10 code.