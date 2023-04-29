Feature: Reqres isimli sayfanin Api testlerinin yapilmasi
  @API
  Scenario: https://reqres.in/api/unknown adresine  get request gonderip ve donen   "text" degerinin :"To keep ReqRes free, contributions towards server costs are appreciated!" oldugunu test edin

    Given Api kullanicisi "api/unknown" path parametrelerini set eder

    Then Donen Responsun text degerinin "istenilenDeger" oldugunu test eder



    Scenario: coklu assertion yapmak uzere  https://reqres.in/api/unknown/2 adresine get request gonderilir
    "id": 2, "name": "fuchsia rose","year": 2001, "color": "#C74375", "pantone_value": "17-2031",
    "support":  "url": "https://reqres.in/#support-heading", oldugu test edilir.



      Scenario: /api/users end pointine post request gonderip yeni bir obje olusturun olusturulan objenin id degerinin 500 den buyuk oldugunu ve staatus codenun 201 oldugunu test edin





        Scenario: /api/register end pintine bir post req gonderip registerin basarili oldugunu ve status code 200 oldugunu test edin




       Scenario:   /api/login post reg gonder ve girisin basraili oldugunu test edin




