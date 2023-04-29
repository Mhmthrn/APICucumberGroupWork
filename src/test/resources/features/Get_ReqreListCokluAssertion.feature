Feature: Reqres isimli sayfanin Api testlerinin yapilmasi
  @API
  Scenario:  coklu assertion yapmak uzere  https://reqres.in/api/unknown/2 adresine get request gonderilir
  "id": 2, "name": "fuchsia rose","year": 2001, "color": "#C74375", "pantone_value": "17-2031",
  "support":  "url": "https://reqres.in/#support-heading", oldugu test edilir.

    Given Api kullanicisi "api/unknown/2" path parametrelerini set eder

    Then Donen response "2" "fuchsia rose" 2001 "#C74375"  "17-2031" "https://reqres.in/#support-heading" istenilen testleri



























  Scenario: /api/users end pointine post request gonderip yeni bir obje olusturun olusturulan objenin id degerinin 500 den buyuk oldugunu ve staatus codenun 201 oldugunu test edin





  Scenario: /api/register end pintine bir post req gonderip registerin basarili oldugunu ve status code 200 oldugunu test edin




  Scenario:   /api/login post reg gonder ve girisin basraili oldugunu test edin
