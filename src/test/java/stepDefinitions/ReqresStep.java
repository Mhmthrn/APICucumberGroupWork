
package stepDefinitions;


import hooks.HooksAPI;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import org.junit.Assert;
import utilities.ConfigReader;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;

public class ReqresStep {
    public static String fullPath;


    @Given("Api kullanicisi {string} path parametrelerini set eder")
    public void api_kullanicisi_path_parametrelerini_set_eder(String path) {

        String[] paths = path.split("/");

        StringBuilder tempPath = new StringBuilder("{");

        for(int i = 0; i < paths.length; ++i) {
            String key = "pp" + i;
            String value = paths[i].trim();

            HooksAPI.spec.pathParam(key, value);
            tempPath.append(key).append("}/{");
        }

        tempPath.deleteCharAt(tempPath.lastIndexOf("{"));
        tempPath.deleteCharAt(tempPath.lastIndexOf("/"));
        fullPath = tempPath.toString();

    }

    @Then("Donen Responsun text degerinin {string} oldugunu test eder")
    public void donen_responsun_degerinin_oldugunu_test_eder( String istenilenDeger) {

        Response response=given().spec(HooksAPI.spec).when().get(fullPath);

        JsonPath responseJsonPath=response.jsonPath();


        assertEquals(ConfigReader.getProperty(istenilenDeger),responseJsonPath.getString("support.text"));

    }


    @Then("Donen response {string} {string} {int} {string}  {string} {string} istenilen testleri")
    public void donenResponseIstenilenTestleri(String id, String name, int year, String color, String pantone_value, String url) {

        Response response=given().spec(HooksAPI.spec).when().get(fullPath);

        JsonPath resJspath=response.jsonPath();


        assertEquals(id,resJspath.getString("data.id"));
        assertEquals(name,resJspath.getString("data.name"));
        assertEquals(year,resJspath.getInt("data.year"));
        assertEquals(color,resJspath.getString("data.color"));
        assertEquals(pantone_value,resJspath.getString("data.pantone_value"));
        assertEquals(url,resJspath.getString("support.url"));

        response.prettyPrint();


    }


}
