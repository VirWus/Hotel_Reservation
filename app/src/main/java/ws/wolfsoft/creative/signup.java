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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import customfonts.EditText_Roboto_Bold;
import customfonts.MyTextView_Roboto_Bold;

public class signup extends AppCompatActivity {

    private ProgressDialog pDialog;

    JSONParser jsonParser = new JSONParser();

    private static final String url_get_ip = "http://192.168.43.215/fondoki/add_user.php";

    private static final String TAG_SUCCESS = "success";
    private static final String TAG_BASE = "fondoki";

    private EditText_Roboto_Bold name;
    private EditText_Roboto_Bold username;
    private EditText_Roboto_Bold email;
    private EditText_Roboto_Bold pass;

    MyTextView_Roboto_Bold signup1;

    Typeface fonts1;

    @SuppressLint("WrongViewCast")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.signup);
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        name = (EditText_Roboto_Bold) findViewById(R.id.name);
        username = (EditText_Roboto_Bold) findViewById(R.id.username);
        email = (EditText_Roboto_Bold) findViewById(R.id.email);
        pass = (EditText_Roboto_Bold) findViewById(R.id.password);


        signup1 = (MyTextView_Roboto_Bold) findViewById(R.id.signup1);

        signup1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new AddUser().execute();
                Intent it = new Intent(signup.this, signin.class);
                startActivity(it);


            }
        });



        fonts1 =  Typeface.createFromAsset(signup.this.getAssets(),
                "fonts/Lato-Regular.ttf");




        MyTextView_Roboto_Bold t1 =(MyTextView_Roboto_Bold) findViewById(R.id.signup1);
        t1.setTypeface(fonts1);




    }


    /**
     * run get all product in background
     * */
    class AddUser extends AsyncTask<String, String, String> {

        /**
         * if start get activity then run progress dialog
         * */
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            pDialog = new ProgressDialog(signup.this);
            pDialog.setMessage("Retrieving Data...");
            pDialog.setIndeterminate(false);
            pDialog.setCancelable(true);
            pDialog.show();
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
                        String nom = name.getText().toString();
                        String user = username.getText().toString();
                        String em = email.getText().toString();
                        String pw = pass.getText().toString();



                        // create paramater
                        List<NameValuePair> params = new ArrayList<NameValuePair>();
                        params.add(new BasicNameValuePair("nom", nom));
                        params.add(new BasicNameValuePair("username", user));
                        params.add(new BasicNameValuePair("email", em));
                        params.add(new BasicNameValuePair("pass", pw));




                        // get details from the list using http request
                        JSONObject json = jsonParser.makeHttpRequest(url_get_ip, "GET", params);

                        // check our logs with json response
                        Log.d("responce", json.toString());

                        // tag success json
                        success = json.getInt(TAG_SUCCESS);
                        if (success == 1) {
                            // success gets detail list
                            JSONArray productObj = json.getJSONArray(TAG_BASE); // JSON
                            // Array

                            // get first list object from json array
                            JSONObject data = productObj
                                    .getJSONObject(0);

                        } else {
                            // pid not found
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
            pDialog.dismiss();

            Intent it = new Intent(signup.this, signin.class);
            startActivity(it);
            finish();

        }
    }
}
