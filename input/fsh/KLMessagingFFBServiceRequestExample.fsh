Instance: 909e720e-3edb-45b9-aeb2-655a97861f7c
InstanceOf: KLMessagingFFBServiceRequestMessage
Title: "Service request example message"
Description: "Example of a service request from an authority to a seervice provider"
* type = #message
* timestamp = 2021-03-15T13:05:37+01:00
* entry[+].fullUrl = "MessageHeader/da3fe85ebc6147109364d70be0124b18"
* entry[=].resource = da3fe85ebc6147109364d70be0124b18
* entry[+].fullUrl = "Organization/a9e0e18b-dbcb-40a1-9f5e-882365ab52d2"
* entry[=].resource = a9e0e18b-dbcb-40a1-9f5e-882365ab52d2
* entry[+].fullUrl = "Organization/6d109aab-3803-418b-8e5c-b50ea909623f"
* entry[=].resource = 6d109aab-3803-418b-8e5c-b50ea909623f
* entry[+].fullUrl = "ServiceRequest/55602964-b665-45bc-ad84-620c42e1761b"
* entry[=].resource = 55602964-b665-45bc-ad84-620c42e1761b
* entry[+].fullUrl = "Organization/b524b7d2-3ee2-425e-a640-c5429596e897"
* entry[=].resource = b524b7d2-3ee2-425e-a640-c5429596e897
* entry[+].fullUrl = "Patient/ef88b48e-e664-41e6-b5b1-2ed4f5c86009"
* entry[=].resource = ef88b48e-e664-41e6-b5b1-2ed4f5c86009
* entry[+].fullUrl = "RelatedPerson/77332be5-4721-4c2e-b72a-ed6593a3016a"
* entry[=].resource = 77332be5-4721-4c2e-b72a-ed6593a3016a


Instance: da3fe85ebc6147109364d70be0124b18
InstanceOf: KLMessagingFFBServiceRequestMessageHeader
Title: "Message Header"
Usage: #inline
* eventCoding = $FFB#ffb-service-request
* focus = Reference(55602964-b665-45bc-ad84-620c42e1761b)
* source.endpoint = "http://xkobing.dk"
* destination.receiver = Reference(6d109aab-3803-418b-8e5c-b50ea909623f)
* destination.endpoint = "http://lillested.dk"
* sender = Reference(a9e0e18b-dbcb-40a1-9f5e-882365ab52d2)

// Sender organization
Instance: a9e0e18b-dbcb-40a1-9f5e-882365ab52d2
InstanceOf: Organization
Title: "X-Købing kommune"
Usage: #inline
* name = "X-Købing kommune"
// TODO identifiers


// Destination organization
Instance: 6d109aab-3803-418b-8e5c-b50ea909623f
InstanceOf: Organization
Title: "Bostedet Lillested"
Usage: #inline
* name = "Bostedet Lillested"
// TODO Identifiers

// Service request
Instance: 55602964-b665-45bc-ad84-620c42e1761b
InstanceOf: KLMessagingFFBServiceRequest
Title: "Service request"
Usage: #inline
* status = #active
* intent = #order
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* authoredOn = 2021-03-15T13:05:37+01:00
* requester = Reference(b524b7d2-3ee2-425e-a640-c5429596e897)

// Requester organization
Instance: b524b7d2-3ee2-425e-a640-c5429596e897
InstanceOf: KLMessagingFFBRequester
Title: "Socialrådgivergruppe B"
Usage: #inline
* name = "Socialrådgivergruppe B"
* contact.name.prefix = "Socialrådgiver"
* contact.name.family = "Karlsen"
* contact.name.given = "Karen"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "99775533"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "kaka@x-købing.dk"

// Citizen
Instance: ef88b48e-e664-41e6-b5b1-2ed4f5c86009
InstanceOf: KLMessagingFFBCitizen
Title: "Christian Christiansen"
Usage: #inline
* identifier[cpr].use = #official
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1111111111"
* contact.relationship = $v2-0131#N 
* contact.relationship.text = "Mor"
* contact.name.family = "Christiansen"
* contact.name.given = "Louise"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "55667788"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "loch@mail.com"

// Guardian
Instance: 77332be5-4721-4c2e-b72a-ed6593a3016a
InstanceOf: KLMessaggingFFBGuardian
Title: "Børge Børgesen"
Usage: #inline
* patient = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* relationship = $v3-RoleCode#GUARD
* extension[guardianshipForm].valueCoding = $guardianshipForm#5
* name.family = "Børgesen"
* name.given = "Børge"
* address.line = "Østervej 9"
* address.postalCode = "9999"
* address.city = "Y-borg"
* telecom[phone].system = #phone
* telecom[phone].value = "99112233"
* telecom[email].system = #email
* telecom[email].value = "boeboe@mail.dk"
