Profile: KLMessagingFFBCitizenObjective
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialGoal
Id: kl-messaging-ffb-citizenObjective
Title: "CitizenObjective"
Description: "The overall objective of the citizen"
* lifecycleStatus MS
* category MS
* category = $KLCommon#416fe27d-3ccf-4390-8742-8b52a9d8dc78
* description MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBInterventionPurpose
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialPurpose
Id: kl-messaging-ffb-interventionPurpose
Title: "InterventionPurpose"
Description: "Purpose of an intervention for a citizen"
* lifecycleStatus MS
* description MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBInterventionGoal
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFFBGoal
Id: kl-messaging-ffb-interventionGoal
Title: "InterventionGoal"
Description: "Goal related to an intervention for a citizen"
* lifecycleStatus MS
* description MS
* category MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* target MS
* target[changeValueSlice] MS
* target[changeValueSlice].detailCodeableConcept MS
* target[changeValueSlice].detailCodeableConcept from http://kl.dk/fhir/common/caresocial/ValueSet/KLChangeValueCodesFFB
* target[severitySlice] MS
* target[severitySlice].detailCodeableConcept MS
* target[severitySlice].detailCodeableConcept from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFFB
* addresses MS
* addresses only Reference(KLMessagingFFBCondition)
* addresses.extension[ConditionRank] MS

Profile: KLMessagingFFBTargetGroup
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFocusCondition
Id: kl-messaging-ffb-targetGroup
Title: "TargetGroup"
Description: "Target group of a citizen"
* code 1.. MS
* code.coding 1.. MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBCondition
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialCondition
Id: kl-messaging-ffb-condition
Title: "Condition"
Description: "Condition according to FFB"
* clinicalStatus MS
* severity MS
* severity from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFFB
* code 1.. MS
* code.coding 1..1 MS
* code.coding from http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesFFB (required)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBInformationGathering
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialInformationGathering
Id: kl-messaging-ffb-informationGathering
Title: "InformationGathering"
Description: "Assessment of the citizen"
* finding MS
* finding.itemReference MS
* finding.itemReference only Reference(KLMessagingFFBCondition)
* investigation MS
* investigation.item MS
* investigation.item only Reference(KLMessagingFFBEvaluation)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)


Profile: KLMessagingFFBEvaluation
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialEvaluation
Id: kl-messaging-ffb-evaluation
Title: "Evaluation"
Description: "Støttebehovsvurdering"
* code.coding[klEvaluationCode] = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572 "FFB støttebehovsvurdering"
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* valueCodeableConcept MS