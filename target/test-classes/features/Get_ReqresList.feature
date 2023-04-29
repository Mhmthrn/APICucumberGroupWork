Feature: Reqres isimli sayfanin Api testlerinin yapilmasi
  Scenario: https://reqres.in/api/unknown adresine  get request gonderip ve donen   "text" degerinin :"To keep ReqRes free, contributions towards server costs are appreciated!" oldugunu test edin

    Given Api kullanicisi "api/unknown" path parametrelerini set eder

    Then Donen Responsun text degerinin "istenilenDeger" oldugunu test eder







