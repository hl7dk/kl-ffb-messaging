Instance: 909e720e-3edb-45b9-aeb2-655a97861f7c
InstanceOf: KLMessagingFFBOrderMessage
Title: "Service request example message"
Description: "Example of a service request from an authority to a seervice provider"
* type = #message
* timestamp = 2021-03-15T13:05:37+01:00
* entry[+].fullUrl = "MessageHeader/da3fe85ebc6147109364d70be0124b18"
* entry[=].resource = da3fe85ebc6147109364d70be0124b18
* entry[+].fullUrl = "Organization/a9e0e18b-dbcb-40a1-9f5e-882365ab52d2" // Sender
* entry[=].resource = a9e0e18b-dbcb-40a1-9f5e-882365ab52d2
* entry[+].fullUrl = "Organization/6d109aab-3803-418b-8e5c-b50ea909623f" // Destination
* entry[=].resource = 6d109aab-3803-418b-8e5c-b50ea909623f
* entry[+].fullUrl = "CarePlan/55602964-b665-45bc-ad84-620c42e1761b"
* entry[=].resource = 55602964-b665-45bc-ad84-620c42e1761b
* entry[+].fullUrl = "Goal/76e873e5-7a07-45b7-8247-ab867f3c98a3" // Purpose
* entry[=].resource = 76e873e5-7a07-45b7-8247-ab867f3c98a3
* entry[+].fullUrl = "Condition/0ed08826-25f6-49be-9878-ac2e31bd5d50" // Target group - Autismespektrum
* entry[=].resource = 0ed08826-25f6-49be-9878-ac2e31bd5d50
* entry[+].fullUrl = "Condition/ec882075-693e-4626-9d29-a3f2292352f3" // Target group - Anden intellektuel/kognitiv forstyrrelse
* entry[=].resource = ec882075-693e-4626-9d29-a3f2292352f3
* entry[+].fullUrl = "Condition/7528df43-6d4d-4cc1-9c78-ff10e1b1fe5c" // Target group - Omsorgssvigt
* entry[=].resource = 7528df43-6d4d-4cc1-9c78-ff10e1b1fe5c
* entry[+].fullUrl = "Condition/e875c9a1-d40b-4c09-9897-ab2086c5f9bf" // Target group - Social isolation
* entry[=].resource = e875c9a1-d40b-4c09-9897-ab2086c5f9bf
* entry[+].fullUrl = "Condition/a4ca3cb0-015d-43e7-81e5-19fde059667b" // Target group - Udadreagerende adfærd
* entry[=].resource = a4ca3cb0-015d-43e7-81e5-19fde059667b
* entry[+].fullUrl = "Organization/b524b7d2-3ee2-425e-a640-c5429596e897" // Author
* entry[=].resource = b524b7d2-3ee2-425e-a640-c5429596e897
* entry[+].fullUrl = "CareTeam/66d6b6a4-c39d-493c-945d-73dffabf2549" // Care team
* entry[=].resource = 66d6b6a4-c39d-493c-945d-73dffabf2549
* entry[+].fullUrl = "Patient/ef88b48e-e664-41e6-b5b1-2ed4f5c86009"
* entry[=].resource = ef88b48e-e664-41e6-b5b1-2ed4f5c86009
* entry[+].fullUrl = "Consent/2ceccbaf-8cb2-4ef1-bec3-42d14fa062d8"
* entry[=].resource = 2ceccbaf-8cb2-4ef1-bec3-42d14fa062d8
* entry[+].fullUrl = "RelatedPerson/ea132916-522d-467f-837e-5acd991e308a" // Mother
* entry[=].resource = ea132916-522d-467f-837e-5acd991e308a
* entry[+].fullUrl = "RelatedPerson/77332be5-4721-4c2e-b72a-ed6593a3016a" // Guardian
* entry[=].resource = 77332be5-4721-4c2e-b72a-ed6593a3016a


Instance: da3fe85ebc6147109364d70be0124b18
InstanceOf: KLMessagingFFBOrderMessageHeader
Title: "Message Header"
Usage: #inline
* focus = Reference(55602964-b665-45bc-ad84-620c42e1761b)
* source.endpoint = "http://xkobing.dk"
* destination.receiver = Reference(6d109aab-3803-418b-8e5c-b50ea909623f)
* destination.endpoint = "http://lillested.dk"
* sender = Reference(a9e0e18b-dbcb-40a1-9f5e-882365ab52d2)

// Sender organization
Instance: a9e0e18b-dbcb-40a1-9f5e-882365ab52d2
InstanceOf: KLMessagingFFBOrganization
Title: "X-Købing kommune"
Usage: #inline
* name = "X-Købing kommune"
// TODO identifiers


// Destination organization
Instance: 6d109aab-3803-418b-8e5c-b50ea909623f
InstanceOf: KLMessagingFFBOrganization
Title: "Bostedet Lillested"
Usage: #inline
* name = "Bostedet Lillested"
// TODO Identifiers

// Care plan
Instance: 55602964-b665-45bc-ad84-620c42e1761b
InstanceOf: KLMessagingFFBOrderCarePlan
Title: "Care Plan"
Usage: #inline
* status = #active
* intent = #order
* category = $KLCommon#e459386d-1474-4c31-89c5-c8bc7a25e3d4
* goal = Reference(76e873e5-7a07-45b7-8247-ab867f3c98a3) // Goal - Purpose
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* extension[subjectActingMunicipality].valueCoding = $municipalityCodes#0157
* created = 2021-03-15T13:05:37+01:00
* author = Reference(b524b7d2-3ee2-425e-a640-c5429596e897)
* careTeam = Reference(66d6b6a4-c39d-493c-945d-73dffabf2549)
* addresses[+] = Reference(0ed08826-25f6-49be-9878-ac2e31bd5d50) // Target groups
* addresses[+] = Reference(ec882075-693e-4626-9d29-a3f2292352f3)
* addresses[+] = Reference(7528df43-6d4d-4cc1-9c78-ff10e1b1fe5c)
* addresses[+] = Reference(e875c9a1-d40b-4c09-9897-ab2086c5f9bf)
* addresses[+] = Reference(a4ca3cb0-015d-43e7-81e5-19fde059667b)

// Goal - Purpose
Instance: 76e873e5-7a07-45b7-8247-ab867f3c98a3
InstanceOf: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialPurpose
Title: "InterventionPurpose"
Usage: #inline
* lifecycleStatus = $goalStatus#accepted
* description.text = "At Christian trives i sit hjem og oplever at blive forstået."
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

// Care Team
Instance: 66d6b6a4-c39d-493c-945d-73dffabf2549
InstanceOf: KLMessagingFFBRelatedTeam
Title: "Related Persons"
Usage: #inline
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* participant[+].member = Reference(ea132916-522d-467f-837e-5acd991e308a) // Mother
* participant[+].member = Reference(77332be5-4721-4c2e-b72a-ed6593a3016a) // Guardian

// Target groups
Instance: 0ed08826-25f6-49be-9878-ac2e31bd5d50
InstanceOf: KLMessagingFFBTargetGroup
Title: "Autismespektrum"
Usage: #inline
* code.coding = $FFB#9b3fd322-a75a-4ed8-9b74-425fa1e01c95 "Autismespektrum"
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

Instance: ec882075-693e-4626-9d29-a3f2292352f3
InstanceOf: KLMessagingFFBTargetGroup
Title: "Anden intellektuel/kognitiv forstyrrelse"
Usage: #inline
* code.coding = $FFB#17ce646b-4469-4a73-82a9-9628436f6c70 "Anden intellektuel/kognitiv forstyrrelse"
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

Instance: 7528df43-6d4d-4cc1-9c78-ff10e1b1fe5c
InstanceOf: KLMessagingFFBTargetGroup
Title: "Omsorgssvigt"
Usage: #inline
* code.coding = $FFB#f1f4d709-19d2-48cc-8942-231bf912323d "Omsorgssvigt"
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

Instance: e875c9a1-d40b-4c09-9897-ab2086c5f9bf
InstanceOf: KLMessagingFFBTargetGroup
Title: "Social isolation"
Usage: #inline
* code.coding = $FFB#16075f99-3694-4878-a48d-b2f4b515cb76 "Social isolation"
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

Instance: a4ca3cb0-015d-43e7-81e5-19fde059667b
InstanceOf: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFocusCondition
Title: "Udadreagerende adfærd"
Usage: #inline
* code.coding = $FFB#e1b59a4a-9cc2-4113-a5f1-84af588b02a2 "Udadreagerende adfærd"
* subject = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)

// Author organization
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
* name.use = #official
* name.family = "Christiansen"
* name.given = "Christian"
* contact.relationship = $v2-0131#N 
* contact.relationship.text = "Mor"
* contact.name.family = "Christiansen"
* contact.name.given = "Louise"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "55667788"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "loch@mail.com"

// Consent
Instance: 2ceccbaf-8cb2-4ef1-bec3-42d14fa062d8
InstanceOf: KLMessagingFFBConsent
Title: "Consent to disclose information to mother"
Usage: #inline
* status = #active
* scope = $consentScope#patient-privacy
* category = $v3-ActCode#IDSCL
* category.text = "Christian har givet fuldmagt til, at hans mor, må have fuld indsigt i hans sag og få tilsendt alle oplysninger."
* patient = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* dateTime = 2021-01-07T08:14:21+01:00
* performer = Reference(ea132916-522d-467f-837e-5acd991e308a)
* policyRule = $consentpolicycodes#persondataloven

// Mother
Instance: ea132916-522d-467f-837e-5acd991e308a
InstanceOf: KLMessagingFFBRelatedPerson
Title: "Mother"
Usage: #inline
* patient = Reference(ef88b48e-e664-41e6-b5b1-2ed4f5c86009)
* relationship = $v3-RoleCode#MTH
* name.family = "Christiansen"
* name.given = "Louise"
* telecom[phone].system = #phone
* telecom[phone].value = "55667788"
* telecom[email].system = #email
* telecom[email].value = "loch@mail.com"

// Guardian
Instance: 77332be5-4721-4c2e-b72a-ed6593a3016a
InstanceOf: KLMessagingFFBGuardian
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
