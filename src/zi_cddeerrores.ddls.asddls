@EndUserText.label: 'Cód. de errores'
@AccessControl.authorizationCheck: #NOT_ALLOWED
define view entity ZI_CDDeErrores
  as select from ZERRCODE_AFC
  association to parent ZI_CDDeErrores_S as _CDDeErroresAll on $projection.SingletonID = _CDDeErroresAll.SingletonID
  composition [0..*] of ZI_CDDeErroresText as _CDDeErroresText
{
  key ERROR_CODE as ErrorCode,
  CONFIGDEPRECATION_CODE as ConfigdeprecationCode,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _CDDeErroresAll,
  _CDDeErroresText
}
