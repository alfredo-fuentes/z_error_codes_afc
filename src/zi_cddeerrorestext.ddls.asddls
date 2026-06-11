@EndUserText.label: 'Cód. de errores Text'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@ObjectModel.dataCategory: #TEXT
define view entity ZI_CDDeErroresText
  as select from ZERRCODET_AFC
  association [1..1] to ZI_CDDeErrores_S as _CDDeErroresAll on $projection.SingletonID = _CDDeErroresAll.SingletonID
  association to parent ZI_CDDeErrores as _CDDeErrores on $projection.ErrorCode = _CDDeErrores.ErrorCode
  association [0..*] to I_LanguageText as _LanguageText on $projection.Langu = _LanguageText.LanguageCode
{
  @Semantics.language: true
  key LANGU as Langu,
  key ERROR_CODE as ErrorCode,
  @Semantics.text: true
  DESCRIPTION as Description,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _CDDeErroresAll,
  _CDDeErrores,
  _LanguageText
}
