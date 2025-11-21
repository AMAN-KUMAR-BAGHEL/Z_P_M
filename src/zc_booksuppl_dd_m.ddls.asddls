@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supp Projection View Managed'
@Metadata.allowExtensions: true
define view entity ZC_BOOKSUPPL_DD_M
  as projection on ZI_BOOKSUPPL_DD_M
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      @ObjectModel.text.element: [ 'SupplementId' ]
      SupplementId,
      _SupplementText.Description as SupplemenDesc : localized,
      Price,
      CurrencyCode,
      LastChangedAt,
      /* Associations */
      _Travel  : redirected to ZC_TRAVEL_TECH_M,
      _Booking : redirected to parent ZC_BOOKING_TECH_M,
      _Supplement,
      _SupplementText
}
