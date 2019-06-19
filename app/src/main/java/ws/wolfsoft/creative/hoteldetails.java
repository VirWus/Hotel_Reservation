package ws.wolfsoft.creative;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class hoteldetails extends AppCompatActivity {

    JSONParser jsonParser = new JSONParser();

    private static final String url_get_ip = "http://192.168.43.215/fondoki/add_reservation.php";

    private static final String TAG_SUCCESS = "success";
    private static final String TAG_BASE = "fondoki";

    private TextView price, address,descr;
    private ImageView imagev,map,reserver;
    private String strprice, straddress, strdescr, strimage,strname,datedep,datearr,noms,type;
    private int nbadult,nbenf,id;
    private Double  lat, len;
    private Bitmap im ;
    private Dialog myDialog,mdialog2;
    private LinearLayout lad,lenf;
    private double total;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hoteldetails);
        mdialog2 = new Dialog(this);
        mdialog2.setContentView(R.layout.custompopup1);

        Button btnok;
        TextView txtclose1;

        txtclose1 =(TextView) mdialog2.findViewById(R.id.txtclose2);
        btnok = (Button) mdialog2.findViewById(R.id.btnok);



        txtclose1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mdialog2.dismiss();
            }
        });
        btnok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mdialog2.dismiss();
            }
        });
        mdialog2.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        // create a dialog window
        myDialog = new Dialog(this);

        // get the intent and the data
        Intent i = getIntent();
        strprice = i.getStringExtra("price");
        straddress = i.getStringExtra("address");
      //  strbath = i.getStringExtra("stars");
        strdescr = i.getStringExtra("descr");

        datearr = i.getStringExtra("datearr");
        datedep = i.getStringExtra("datedep");

        Bundle b = i.getExtras();
        lat = b.getDouble("lat");
        len = b.getDouble("len");
        nbadult = b.getInt("nbadult");
        nbenf = b.getInt("nbenf");
        id = b.getInt("id");
        total = b.getDouble("price");
        strimage = i.getStringExtra("image");
        type = i.getStringExtra("type");
        strname = i.getStringExtra("name");


        // bind the xml with variables
        price = (TextView) findViewById(R.id.tvprice);
        address = (TextView) findViewById(R.id.tvaddress);
        imagev = (ImageView) findViewById(R.id.imagev);
        descr = (TextView) findViewById(R.id.descr);
        reserver = (ImageView) findViewById(R.id.reserver);

        // on click on reserv button
        reserver.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                // we set the dialog to a custum xml
                myDialog.setContentView(R.layout.custompopup);

                // linear layout id's to separate the adults and the children
                lad = (LinearLayout) myDialog.findViewById(R.id.linearlayoutad) ;
                lenf = (LinearLayout) myDialog.findViewById(R.id.linearlayoutenf) ;

                //create list of edit texts for manipulating them separatly
                final List<EditText> adultlist = new ArrayList<EditText>();
                final List<EditText> enflist = new ArrayList<EditText>();

                // create the edittexts progrmaticly for the adults
                for(int i= 0; i <nbadult ; i++){
                    EditText editText = new EditText(getApplicationContext());
                    editText.setHint("Full Name");
                    editText.setHintTextColor(Color.GRAY);
                    editText.setTextColor(Color.BLACK);
                    lad.addView(editText);
                    adultlist.add(editText);
                }

                // create the edittexts progrmaticly for the childrens
                for(int i= 0; i <nbenf ; i++){
                    EditText editText = new EditText(getApplicationContext());
                    editText.setHint("Full Name");
                    editText.setHintTextColor(Color.GRAY);
                    editText.setTextColor(Color.BLACK);
                    lenf.addView(editText);
                    enflist.add(editText);
                }




                Button btnFollow;
                TextView txtclose;
                txtclose =(TextView) myDialog.findViewById(R.id.txtclose);
                btnFollow = (Button) myDialog.findViewById(R.id.btnfollow);

                // on click for reserver button in the dialog
                btnFollow.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        // set the noms variable to send it to the database
                         noms = "Adults : \n";

                        for(int i= 0; i <nbadult ; i++){
                            noms = noms + i + " --> " +adultlist.get(i).getText()+"\n";
                        }

                        noms = noms + "Enfants : \n";

                        for(int i= 0; i <nbenf ; i++){
                            noms = noms + i + " --> " + enflist.get(i).getText()+"\n";
                        }

                        Log.d("noms", noms);

                        // exceute the reservation php file in background thread
                        new Add_reservation().execute();
                    }
                });
                txtclose.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        myDialog.dismiss();
                    }
                });


                myDialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                myDialog.show();
            }
        });




        // set the variables of hotels detail
        price.setText(strprice);
        address.setText(straddress);
        descr.setText(strdescr);
        // download the image
        try {

            im = BitmapFactory.decodeStream((InputStream) new URL(strimage).getContent());


        }catch (Exception e ){
            e.printStackTrace();

        }

        imagev.setImageBitmap(im);

        // map activity
        map = (ImageView) findViewById(R.id.map);
        map.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent it = new Intent(hoteldetails.this, MapsActivity.class);
                Bundle c = new Bundle();
                c.putDouble("lat", lat);
                c.putDouble("len", len);
                it.putExtras(c);
                startActivity(it);
            }
        });

    }


    /**
     * run get all product in background
     * */
    class Add_reservation extends AsyncTask<String, String, String> {

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

                        // create paramater
                        List<NameValuePair> params = new ArrayList<NameValuePair>();
                        params.add(new BasicNameValuePair("id_user", String.valueOf(id)));
                        params.add(new BasicNameValuePair("date_dep", datedep));
                        params.add(new BasicNameValuePair("date_arr", datearr));
                        params.add(new BasicNameValuePair("prix", String.valueOf(total)));
                        params.add(new BasicNameValuePair("noms", noms));
                        params.add(new BasicNameValuePair("type", type));
                        params.add(new BasicNameValuePair("hotel", strname));

                        Log.d("id",String.valueOf(id) );
                        Log.d("date",datearr+datedep );
                        Log.d("prix",String.valueOf(total) );
                        Log.d("type",type );

                        // get details from the list using http request
                        JSONObject json = jsonParser.makeHttpRequest(url_get_ip, "GET", params);

                        // check our logs with json response
                        Log.d("responce", json.toString());

                        // tag success json
                        success = json.getInt(TAG_SUCCESS);
                        if (success == 1) {
                            // Array
                            myDialog.dismiss();

                            mdialog2.show();
                            Toast.makeText(getApplicationContext(),"Sent succesfuly",Toast.LENGTH_LONG).show();

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
