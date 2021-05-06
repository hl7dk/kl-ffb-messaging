Profile: KLMessagingFFBServiceRequestMessage
Parent: Bundle
Id: kl-messaging-ffb-serviceRequestMessage
Description: "Message for sending an service request from an authority organization to a provider organization" 
* type MS
* type = #message
* type ^short = "Always message"
* timestamp 1.. MS
* entry MS
* entry.resource 1.. MS

Profile: KLMessagingOrganization
Parent: Organization
Id: kl-messaging-ffb-messagingOrganization
Description: "Organization for sending or receiving messages"
* name 1.. MS
// TODO addressing ids

Profile: KLMessagingFFBServiceRequestMessageHeader
Parent: MessageHeader
Id: kl-messaging-ffb-serviceRequestMessageHeader
Description: "Message header for an FFB service request message"
* eventCoding 1.. MS
* eventCoding = $FFB#ffb-service-request
* focus 1..1 MS
* focus only Reference(KLMessagingFFBServiceRequest)
* focus ^type.aggregation = #bundled
* source.endpoint MS
* destination.receiver 1.. MS
* destination.receiver only Reference(KLMessagingOrganization)
* destination.endpoint 1.. MS
* sender MS
* sender only Reference(KLMessagingOrganization)

Profile: KLMessagingFFBServiceRequest
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialServiceRequest
Id: kl-messaging-ffb-serviceRequest
Description: "FFB service request"
* status MS
* intent MS
* subject 1.. MS
* subject only Reference(http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCitizen)
* authoredOn MS 
* requester 1.. MS
* requester only Reference(KLMessagingFFBRequester)
* extension contains KLMessagingFFBSubjectActingMunicipalityExtension named subjectActingMunicipality 1..1 MS

Extension: KLMessagingFFBSubjectActingMunicipalityExtension
Id: kl-messaging-ffb-subjectActingMunicipality
Title: "KLMessagingFFBSubjectActingMunicipalityExtension"
Description: "Municipality acting for the subject in social matters"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes (required)


Profile: KLMessagingFFBRequester
Parent: Organization
Id: kl-messaging-ffb-requester
Description: "Organization requesting a service"
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