Profile: KLMessagingFFBInterventionPurpose
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialPurpose
Id: kl-messaging-ffb-interventionPurpose
Title: "InterventionPurpose"
Description: "Purpose of an intervention for a citizen"
* lifecycleStatus MS
* description MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBTargetGroup
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFocusCondition
Id: kl-messaging-ffb-targetGroup
Title: "TargetGroup"
Description: "Target group of a citizen"
* code 1.. MS
* code.coding 1.. MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)