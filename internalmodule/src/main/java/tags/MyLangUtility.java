package tags;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyLangUtility {
    public static String getExchangeRage(String currency) throws Exception {
        String response= getResponse(currency);
        response = response.substring(1, response.length() - 1);
        JSONObject jsonObject = new JSONObject(response);
        return jsonObject.get("rate").toString();
    }
    private static String getResponse(String valuta) throws Exception {
        Date dateNow = new Date();
        SimpleDateFormat formatForDateNow = new SimpleDateFormat("yyyyMMdd");
        String today = formatForDateNow.format(dateNow);
        String url = "https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?valcode=" + valuta + "&date=" + today + "&json";
        HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
        int responseCode = con.getResponseCode();
        if (responseCode != 200) {
            throw new Exception("responseCode = " + Integer.toString(responseCode));
        }
        System.out.println("\nSending 'GET' request to URL : " + url);
        System.out.println("Response Code : " + responseCode);
        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuilder response = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();
        con.disconnect();
        return(response.toString());
    }
}
