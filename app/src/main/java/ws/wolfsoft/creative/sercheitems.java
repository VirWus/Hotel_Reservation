package ws.wolfsoft.creative;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.StrictMode;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import adapter.RecycleAdapter_propertylist;
import model.Property;

public class sercheitems extends AppCompatActivity {
    JSONParser jParser = new JSONParser();
    JSONArray hotel = null;
    private static String url_get_data = "http://192.168.43.215/fondoki/searche.php";
    private int image[]= {R.drawable.buidingtwo,R.drawable.buidingtwo,R.drawable.buidingtwo,R.drawable.buidingtwo};

    private static final String TAG_SUCCESS = "success";
    private static final String TAG_D = "fondoki";


    private ArrayList<Property> propertyArrayList;
    private RecyclerView recyclerView;
    private RecycleAdapter_propertylist mAdapter;
    private String days,nben,nbad,vile,id,datedep,datearr;
    Intent i ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sercheitems);
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        recyclerView = (RecyclerView) findViewById(R.id.recyclerview_property);

        propertyArrayList = new ArrayList<>();

        // get the intetn to get the data from the previous activity
        i = getIntent();
        days = i.getStringExtra("days");
        nben = i.getStringExtra("nbenf");
        nbad = i.getStringExtra("nbadult");
        vile = i.getStringExtra("vile");
        datearr = i.getStringExtra("datearr");
        datedep = i.getStringExtra("datedep");


        // aficher la date
        Log.d("dates :  ", datearr+datedep);


        // execute the do in background thread
        new LoadSemuaBukuTamu().execute();

    }

    /**
     * Background Asynctask to display all guestbook list using http request
     * */
    class LoadSemuaBukuTamu extends AsyncTask<String, String, String> {

        /**
         * before doing a thread in the background then run progressdialog
         * */
        @Override
        protected void onPreExecute() {
            super.onPreExecute();

        }

        /**
         * get all products from get url in the background
         * */
        protected String doInBackground(String... args) {

            // create parametres to send them to the php file
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params.add(new BasicNameValuePair("vile", vile));
            params.add(new BasicNameValuePair("days", days));
            params.add(new BasicNameValuePair("nbadulte", nbad));
            params.add(new BasicNameValuePair("nbenfant", nben));


            // send the params
            JSONObject json = jParser.makeHttpRequest(url_get_data, "GET", params);

                try {
                    // check if tag success
                    int success = json.getInt(TAG_SUCCESS);

                    if (success == 1) {
                        // data found
                        // grab an array from your guestbook
                        hotel = json.getJSONArray(TAG_D);



                        // show the recurrence of all products
                        for (int i = 0; i < hotel.length(); i++) {
                            JSONObject c = hotel.getJSONObject(i);

                            // save on variables
                            String name = c.getString("name");
                            float stars = c.getLong("stars");
                            String price = c.getString("price");
                            String adress = c.getString("address");
                            String tripurl = c.getString("tripurl");
                            Double lat = c.getDouble("lat");
                            Double len = c.getDouble("len");
                            String descr = c.getString("descr");
                            String photo = c.getString("photo");


                            Property beanClassForRecyclerView_contacts = new Property(name,stars,tripurl,descr,adress,price,photo,lat,len);

                            propertyArrayList.add(beanClassForRecyclerView_contacts);

                        }
                    } else {
                        // if there is no data
                        // then run add guestbook
                        Intent i = new Intent(getApplicationContext(),
                                Sercheactivity.class);
                        // close all previous processes
                        i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                        startActivity(i);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }





            return null;
        }

        /**
         * if the work behind the screen is finished then stop progress dialog
         * **/
        protected void onPostExecute(String file_url) {
            // stop progress when all data is obtained
            // update the screen
            runOnUiThread(new Runnable() {
                public void run() {

                    // create new recycler adapter with the cntext and the list of hotels and the intent
                    //now the data will be sent to the adapter recycleradapter
                    mAdapter = new RecycleAdapter_propertylist(getApplicationContext(),propertyArrayList,i);

                    RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getApplicationContext());
                    recyclerView.setLayoutManager(mLayoutManager);
                    recyclerView.setItemAnimator(new DefaultItemAnimator());
                    recyclerView.setAdapter(mAdapter);



                }
            });

        }

    }


}
