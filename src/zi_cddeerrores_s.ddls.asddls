@EndUserText.label: 'Cód. de errores Singleton'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Semantics.valueRange.maximum: '1'
define root view entity ZI_CDDeErrores_S
  as select from I_Language
    left outer join zerrcode_afc on 0 = 0
  composition [0..*] of ZI_CDDeErrores as _CDDeErrores
{
  key 1 as SingletonID,
  _CDDeErrores,
  max( zerrcode_afc.last_changed_at ) as LastChangedAtMax
}
where I_Language.Language = $session.system_language
