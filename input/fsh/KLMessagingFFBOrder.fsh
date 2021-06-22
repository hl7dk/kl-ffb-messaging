Profile: KLMessagingFFBOrderMessage
Parent: Bundle
Id: kl-messaging-ffb-orderMessage
Title: "OrderMessage"
Description: "Message for sending an order from an authority organization to a provider organization" 
* type MS
* type = #message
* type ^short = "Always message"
* timestamp 1.. MS
* entry MS
* entry.resource 1.. MS

Profile: KLMessagingFFBOrganization
Parent: Organization
Id: kl-messaging-ffb-messagingOrganization
Title: "MessagingOrganization"
Description: "Organization for sending or receiving messages"
* name 1.. MS
// TODO addressing ids

Profile: KLMessagingFFBOrderMessageHeader
Parent: MessageHeader
Id: kl-messaging-ffb-orderMessageHeader
Title: "OrderMessageHeader"
Description: "Message header for an FFB order message"
* eventCoding 1.. MS
* eventCoding = $messageEvent#ffb-order
* focus 1.. MS
* focus only Reference(KLMessagingFFBOrderCarePlan or KLMessagingFFBInformationGathering)
* focus ^type.aggregation = #bundled
* source.endpoint MS
* destination.receiver 1.. MS
* destination.receiver only Reference(KLMessagingFFBOrganization)
* destination.endpoint 1.. MS
* sender MS
* sender only Reference(KLMessagingFFBOrganization)

Profile: KLMessagingFFBOrderCarePlan
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialCarePlan
Id: kl-messaging-ffb-orderCarePlan
Title: "OrderCarePlan"
Description: "FFB care plan being ordered"
* extension contains KLMessagingFFBActingMunicipalityExtension named subjectActingMunicipality 0..1 MS
* status MS
* intent MS
* category MS
* supportingInfo MS // TODO
// supportingInfo only Reference(KLMessagingRelatedCarePlan)
* goal MS
* goal contains citizenObjective 0..* MS
* goal[citizenObjective] only Reference(KLMessagingFFBCitizenObjective)
* goal[fpurpose] only Reference(KLMessagingFFBInterventionPurpose)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* period MS
* created MS 
* author 1.. MS
* author only Reference(KLMessagingFFBRequester)
* careTeam MS
* careTeam only Reference(KLMessagingFFBServicePerformer)
* addresses 1.. MS
* addresses only Reference(KLMessagingFFBTargetGroup)

Profile: KLMessagingFFBIntervention
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialPlannedIntervention
Id: kl-messaging-ffb-intervention
Title: "Intervention"
Description: "Intervention in a ordered care plan"
* basedOn 1.. MS
* basedOn only Reference(KLMessagingFFBOrderCarePlan)
* status MS
* intent MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* created MS
* period MS
* activity MS
* activity.detail 1.. MS
* activity.detail.code 1.. MS
// * activity.detail.code.coding ^slicing.discriminator[0].type = #value
// * activity.detail.code.coding ^slicing.discriminator[0].path = "system"
// * activity.detail.code.coding ^slicing.rules = #open
* activity.detail.code.coding[FFBintervention] MS
* activity.detail.code.coding[FFBintervention] from http://kl.dk/fhir/common/caresocial/ValueSet/KLInterventionsFFB
* activity.detail.status MS

Profile: KLMessagingFFBServicePerformer
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonServicePerformer
Id: kl-messaging-ffb-relatedTeam
Title: "ServicePerformer"
Description: "ServicePerformer information and relevant related persons"
* category MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* participant 1.. MS
* participant.member MS
* participant.member only Reference(RelatedPerson)

Profile: KLMessagingFFBRequester
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonOrganization
Id: kl-messaging-ffb-requester
Title: "Requester"
Description: "Organization placing an order or requesting a service"
* name MS
* contact 1.. MS
* contact.name 1.. MS
* contact.name.family 1.. MS
* contact.name.given 1.. MS
* contact.telecom MS
* contact.telecom.system 1.. MS
* contact.telecom.value 1.. MS
* contact.telecom ^slicing.discriminator[0].type = #value
* contact.telecom ^slicing.discriminator[0].path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom contains phone 1.. MS and email 1.. MS
* contact.telecom[phone].system = #phone
* contact.telecom[email].system = #email