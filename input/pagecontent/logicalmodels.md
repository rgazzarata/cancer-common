This section describes the **European Cancer Common Logical Model**, which provides a formal and computable representation of the concepts defined in the [European Cancer Common Conceptual Model](conceptualmodel.html).

While the Conceptual Model introduces the core concepts and their relationships from a functional perspective, the Logical Model focuses on their structural representation, detailing how each concept is expressed in terms of attributes, data types, cardinalities, constraints, and implementation notes.

For this reason, readers are strongly encouraged to first familiarise themselves with the Conceptual Model, which defines the meaning, scope, and relationships of the concepts described here. The full conceptual description is available at [European Cancer Common Conceptual Model](conceptualmodel.html). 

In this page, the Logical Model is presented at a high‑level overview, with the purpose of supporting navigation and understanding of the model structure rather than replacing the detailed specifications. For each entity, this section provides:

*a short descriptive summary of the entity’s role in the cancer journey,
*a schematic graphical representation illustrating its main attributes and relationships,
*and a direct link to the corresponding Logical Model page, where the full and formal specification is available.

The authoritative definitions of all concepts are maintained in the [Glossary](glossary.html). This page does not redefine concepts; instead, it complements the conceptual description with an implementation‑oriented view.

Detailed descriptions of each individual attribute, including clinical meaning, cardinality, data type, terminology bindings, constraints, and notes, are provided in the dedicated **Logical Model** pages linked from each entity.

For ease of consultation and reuse—especially for readers less familiar with FHIR—a complete representation of the Logical Model is also available in Excel format, offering a tabular view of entities, attributes, descriptions, and notes ([Cancer_Common_Logical_Model_20260408.xlsx](https://github.com/hl7-eu/cancer-common/raw/refs/heads/master/_sources/Cancer_Common_Logical_Model_20260408.xlsx)).

### Overview

This section provides an overview of the European Cancer Common Logical Model, highlighting the main entities and their relationships. 

The following diagram illustrates the overall structure of the logical model and the dependencies between entities derived from reference relationships. It shows how patient information, cancer condition data, disease evolution, treatments, response assessments, and follow‑up events are connected within the model.

The diagram is intended to support conceptual orientation and navigation. It does not replace the detailed logical definitions of each entity, which are available in the corresponding Logical Model pages.

<style>
  .uml-diagram svg {
    width: 100% !important;
    height: auto !important;
  }
</style>
<div style="text-align:center;">
  <p></p>
    <figure class="uml-diagram" style="width:95%;">
      {% include CancerLogicalModel_LM_refs.svg %}
      <figcaption>
        <strong>Figure 1: Cancer Common Logical Model Overview</strong>
      </figcaption>
    </figure>
  <p></p>
</div>

### Logical Models

#### CancerConditionAtDiagnosis

Represents the cancer condition as it is first diagnosed, capturing the initial tumour characteristics and the diagnostic context that defines the starting point of the cancer journey.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include CancerConditionAtDiagnosis_LM.svg %}
    <figcaption><strong>Figure 3: CancerConditionAtDiagnosis logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-CancerConditionAtDiagnosis.html](StructureDefinition-CancerConditionAtDiagnosis.html)

#### CancerStage

Represents the stage at first diagnosis and can be clinical or pathological. A clinical stage is always expected and is defined based on imaging evidence. A pathological stage may additionally be recorded, when available, and is defined based on surgical evidence.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include CancerStage_LM.svg %}
    <figcaption><strong>Figure 4: CancerStage logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-CancerStage.html](StructureDefinition-CancerStage.html)

#### Imaging

Represents diagnostic imaging procedures performed to define the diagnosis and the clinical stage.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include Imaging_LM.svg %}
    <figcaption><strong>Figure 5: Imaging logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-Imaging.html](StructureDefinition-Imaging.html)

#### CancerPatient

Represents the patient affected by one or more cancer conditionsand acts as the central subject for all clinical events, treatments, disease assessments, and follow‑up information recorded along the cancer journey.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include Patient_LM.svg %}
    <figcaption><strong>Figure 2: CancerPatient logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-CancerPatient.html](StructureDefinition-CancerPatient.html)

#### Surgery

Represents a surgical treatment episode delivered to the patient, either as part of the initial treatment strategy or in response to disease progression.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include Surgery_LM.svg %}
    <figcaption><strong>Figure 8: Surgery logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-Surgery.html](StructureDefinition-Surgery.html)

#### ActiveSurveillance

Represents a management strategy in which the patient is monitored over time without active treatment, applicable only prior to the occurrence of a documented disease progression.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include ActiveSurveillance_LM.svg %}
    <figcaption><strong>Figure 9: ActiveSurveillance logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-ActiveSurveillance.html](StructureDefinition-ActiveSurveillance.html)

#### Radiotherapy

Represents a radiotherapy treatment course delivered to the patient, including intent, timing, and anatomical target, and potentially linked to a specific disease progression event.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include Radiotherapy_LM.svg %}
    <figcaption><strong>Figure 10: Radiotherapy logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-Radiotherapy.html](StructureDefinition-Radiotherapy.html)

#### SystemicTreatment

Represents a systemic anti‑cancer treatment episode (e.g. chemotherapy, immunotherapy) delivered to the patient, either at diagnosis or following disease evolution, and characterized by start/end date and possible ongoing indication (e.g., immunotherapy).

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include SystemicTreatment_LM.svg %}
    <figcaption><strong>Figure 11: SystemicTreatment logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-SystemicTreatment.html](StructureDefinition-SystemicTreatment.html)

#### OverallCancerTreatmentResponse

Represents the overall assessment of how the cancer condition has responded to one or more treatment episodes ((e.g., progression, stable disease, partial/complete remission)) at a specific time point, based on evidence.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include OverallCancerTreatmentResponse_LM.svg %}
    <figcaption><strong>Figure 12: OverallCancerTreatmentResponse logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-OverallCancerTreatmentResponse.html](StructureDefinition-OverallCancerTreatmentResponse.html)

#### LastFollowUp

Represents the assessment of the patient’s status at a specific follow‑up visit, including vital status and presence or absence of evidence of disease. Each follow-up visit creates a new instance.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include LastFollowUp_LM.svg %}
    <figcaption><strong>Figure 6: LastFollowUp logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-LastFollowUp.html](StructureDefinition-LastFollowUp.html)

#### ClinicalCancerProgression

Represents the evolution of the disease over time, documenting changes in disease status and extent at specific clinical decision points during the cancer journey. Each evaluation creates a new instance.

<div style="text-align:center;">
  <p></p>
  <figure>
    {% include ClinicalCancerProgression_LM.svg %}
    <figcaption><strong>Figure 7: ClinicalCancerProgression logical model</strong></figcaption>
  </figure>
  <p></p>
</div>

FHIR Logical Model: [StructureDefinition-ClinicalCancerProgression.html](StructureDefinition-ClinicalCancerProgression.html)



<!-- ### Models' relationship

<div style="text-align:center;">
  <p></p>
    <figure class="uml-diagram" style="width:95%;">
      {% include CancerLogicalModel_LM_refs.svg %}
      <figcaption>
        <strong>Figure 13: Cancer Common Logical Model (References)</strong>
      </figcaption>
    </figure>
  <p></p>
</div> -->