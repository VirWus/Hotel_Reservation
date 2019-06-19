package ws.wolfsoft.creative;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.StrictMode;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import customfonts.EditText_Roboto_Bold;
import customfonts.MyTextView_Roboto_Bold;

public class signin extends AppCompatActivity {
    private ProgressDialog pDialog;
    public static int gloid ;
    JSONParser jsonParser = new JSONParser();

    private static final String url_get_ip = "http://192.168.43.215/fondoki/login.php";

    private static final String TAG_SUCCESS = "success";
    private static final String TAG_BASE = "fondoki";

    EditText_Roboto_Bold email ;
    EditText_Roboto_Bold pass ;

    MyTextView_Roboto_Bold login;

    Typeface fonts1;


    @SuppressLint("WrongViewCast")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.signin);
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        // link the xml with the button variables
        login = (MyTextView_Roboto_Bold) findViewById(R.id.signin1);
        email = (EditText_Roboto_Bold) findViewById(R.id.email);
        pass = (EditText_Roboto_Bold) findViewById(R.id.password);


        // create on click listner for the login  button
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                // call the do in background thread
                new Login().execute();


            }
        });




        fonts1 =  Typeface.createFromAsset(signin.this.getAssets(),
                "fonts/Lato-Regular.ttf");




        MyTextView_Roboto_Bold t4 =(MyTextView_Roboto_Bold)findViewById(R.id.create);
        t4.setTypeface(fonts1);




    }


    /**
     * run get all product in background
     * */
    class Login extends AsyncTask<String, String, String> {

        /**
         * if start get activity then run progress dialog
         * */
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        /**
         * start run get all list and run in background
         * */
        protected String doInBackground(String... params) {

            // ui updates from threads executed
            runOnUiThread(new Runnable() {
                public void run() {
                    // Check tag success
                    int success;
                    try {

                        // get the variables from the edit text
                        String em = email.getText().toString();
                        String ps = pass.getText().toString();

                        // create paramater
                        List<NameValuePair> params = new ArrayList<NameValuePair>();
                        params.add(new BasicNameValuePair("email", em));
                        params.add(new BasicNameValuePair("pass", ps));

                        // get details from the list using http request
                        JSONObject json = jsonParser.makeHttpRequest(url_get_ip, "GET", params);

                        // check our logs with json response
                        Log.d("responce", json.toString());

                        // tag success json
                        success = json.getInt(TAG_SUCCESS);
                        int id = json.getInt("id");
                        if (success == 1) {

                            //from the singin to the search acvtivity
                            Intent it = new Intent(signin.this, Sercheactivity.class);

                            // put the id of the user to the next avtiçvity with extras
                            gloid = id ;

                            startActivity(it);
                            finish();

                        } else {

                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });

            return null;
        }

        /**
         * If the job in the background is complete then stop progress reply
         * running
         * **/
        protected void onPostExecute(String file_url) {
            // stop progress dialog for get




        }
    }
}
