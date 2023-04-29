Feature:Reqres isimli sayfanin Api testlerinin yapilmasi

  Scenario: api/users end pointine post request gonderip yeni bir obje olusturun olusturulan
  objenin id degerinin 500 den buyuk oldugunu ve staatus codenun 201 oldugunu test edin

    Given Api kullanicisi "api/users" path parametrelerini set eder

    Then Kullanici yeni bir obje olusturur

    And  Donen Responsun id degerinin 500 den buyuk ve status code degerinin 201  oldugunu test eder

