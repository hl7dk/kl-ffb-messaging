CodeSystem: KLMessagingMessageEventSystem
Id: kl-messaging-ffb-messageEventSystem
Title: "MessageEventSystem"
Description: "Event codes for FFB messages"
* #ffb-order "order"

ValueSet: KLMessagingFFBRelationshipTypeValues
Id: kl-messaging-ffb-relationshipTypeValues
Title: "RelationshipTypes"
Description: "Relationship type roles to use in FFB messaging"
* include $v3-RoleCode#GUARD
* include $v3-RoleCode#POWATT
* include codes from system KLMessagingFFBRelationshipTypeCodes
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0131

CodeSystem: KLMessagingFFBRelationshipTypeCodes
Id: kl-messaging-ffb-relationshipTypeCodes
Title: "RelationshipTypeSystem"
Description: "Relationship type code system for a related person in FFB messaging"
* #advocate "Bisidder"

ValueSet: KLMessagingFFBGuardianshipFormValues
Id: kl-messaging-ffb-guardianshipFormValues
Title: "GuardianshipForms"
Description: "Guardianship form value set for citizens in FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBGuardianshipFormCodes
Id: kl-messaging-ffb-guardianshipFormCodes
Title: "GuardianshipFormSystem"
Description: "Guardianship form code system for citizens in FFB messaging"
* #5 "Personlige og/eller økonomiske forhold, værgemålslovens § 5"
* #6 "Fratagelse af retlig handleevne, værgemålslovens § 6"
* #7 "Samværgemål, værgemålslovens § 7"

ValueSet: KLMessagingConsentPolicyValues
Id: kl-messaging-ffb-consentPolicyValues
Title: "ConsentPolicies"
Description: "Consent policy value set for FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBConsentPolicyCodes
Id: kl-messaging-ffb-consentPolicyCodes
Title: "ConsentPolicySystem"
Description: "Consent policy code system for FFB messaging"
* #persondataloven "Persondataloven, §6-8"

ValueSet: KLMessagingFFBParticipantRoleValues
Id: kl-messaging-ffb-participantRoleValues
Title: "ParticipantRoles"
Description: "Participant roles in a care team for FFB Messaging"
* include codes from system KLMessagingFFBParticipantRoleCodes

CodeSystem: KLMessagingFFBParticipantRoleCodes
Id: kl-messaging-ffb-participantRoleCodes
Title: "ParticipantRoleSystem"
Description: "Participant role code system for FFB messaging"
* #koordinerende-myndighed "Ansvarlig for koordinering af myndighedssamarbejde"
* #samarbejdende-myndighed "Samarbejdende myndighed"
* #koordinerende-udfører "Ansvarlig for koordinering af udførersamarbejde"