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
* focus only Reference(KLMessagingFFBOrderCarePlan or KLMessagingFFBInformationGathering or KLMessagingFFBAccount or KLMessagingFFBDocumentReference)
* focus ^type.aggregation = #bundled
* source.endpoint MS
* destination.receiver 1.. MS
* destination.receiver only Reference(KLMessagingFFBOrganization)
* destination.endpoint 1.. MS
* sender MS
* sender only Reference(KLMessagingFFBOrganization)

Profile: KLMessagingFFBIntervention
Parent: http://fhir.kl.dk/core/StructureDefinition/KLCommonCareSocialPlannedIntervention
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
* activity.detail.code.coding[FFBintervention] from http://fhir.kl.dk/term/ValueSet/KLInterventionsFFB
* activity.detail.status MS

Profile: KLMessagingFFBServicePerformer
Parent: http://fhir.kl.dk/core/StructureDefinition/KLCommonServicePerformer
Id: kl-messaging-ffb-servicePerformer
Title: "ServicePerformer"
Description: "ServicePerformer information and relevant related persons"
* category MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* participant 1.. MS
* participant.extension contains KLMessagingFFBParticipationDescriptionExtension named description 0..1 MS
* participant.role MS
* participant.role from KLMessagingFFBParticipantRoleValues
* participant.member MS
* participant.member only Reference(RelatedPerson or KLMessagingFFBParticipatingOrganization)
 