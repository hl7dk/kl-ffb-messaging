ValueSet: KLMessagingFFBRelationshipTypeValues
Id: kl-messaging-ffb-relationshipTypeValues
Title: "KLMessagingFFBRelationshipTypeValues"
Description: "Relationship type roles to use in FFB messaging"
* include $v3-RoleCode#GUARD
* include $v3-RoleCode#POWATT
* include codes from system KLMessagingFFBRelationshipTypeCodes
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0131

CodeSystem: KLMessagingFFBRelationshipTypeCodes
Id: kl-messaging-ffb-relationshipTypeCodes
Description: "Relationship type code system for a related person in FFB messaging"
* #advocate "Bisidder"

ValueSet: KLMessagingFFBGuardianshipFormValues
Id: kl-messaging-ffb-guardianshipFormValues
Title: "KLMessaggingFFBGuardianshipForms"
Description: "Guardianship form value set for citizens in FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBGuardianshipFormCodes
Id: kl-messaging-ffb-guardianshipFormCodes
Description: "Guardianship form code system for citizens in FFB messaging"
* #5 "Personlige og/eller økonomiske forhold, værgemålslovens § 5"
* #6 "Fratagelse af retlig handleevne, værgemålslovens § 6"
* #7 "Samværgemål, værgemålslovens § 7"

ValueSet: KLMessagingConsentPolicyValues
Id: kl-messaging-ffb-consentPolicyValues
Title: "KLMessaggingFFBGuardianshipForms"
Description: "Consent policy value set for FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBConsentPolicyCodes
Id: kl-messaging-ffb-consentPolicyCodes
Description: "Consent policy code system for FFB messaging"
* #persondataloven "Persondataloven, §6-8"
