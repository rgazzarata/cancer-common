Instance: LastFollowUp7-Example
InstanceOf: LastFollowUp
Usage: #example

* subject = Reference(CancerPatient1-Example)
* vitalStatus.text = "Dead"
* causeOfDeath.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* causeOfDeath.coding[0].code = #C34
* causeOfDeath.coding[0].display = "Malignant neoplasm of bronchus and lung"
* date = "2020-06-28"
* deathDate = "2020-06-28"