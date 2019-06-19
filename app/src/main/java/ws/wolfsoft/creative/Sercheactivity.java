package ws.wolfsoft.creative;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import customfonts.Button_Roboto_Medium;
import customfonts.EditText_Roboto_Bold;

public class Sercheactivity extends AppCompatActivity implements View.OnClickListener {

    LinearLayout location;
    TextView changeLocation;

    // variables for the calendar pick date
    private TextView mDisplayDatedep,mDisplayDatearr;
    private DatePickerDialog.OnDateSetListener mDateSetListener,mDateSetListener1;
    private static Calendar calstart,calend;

    private Button_Roboto_Medium btn ;
    private EditText_Roboto_Bold nbradult,nbenfant ;
    private String nbad,nben,vile,DateDep,DateArr;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sercheactivity);

        changeLocation = (TextView) findViewById(R.id.changeLocation);
        location =(LinearLayout) findViewById(R.id.location);
        location.setOnClickListener(this);

        nbradult = (EditText_Roboto_Bold)findViewById(R.id.nbradult);
        nbenfant = (EditText_Roboto_Bold)findViewById(R.id.nbrenfant);

        mDisplayDatedep = (TextView) findViewById(R.id.tvDatedep);
        mDisplayDatearr = (TextView) findViewById(R.id.tvDatearr);

        // the serche button after we choosewhat we want to search
        btn = (Button_Roboto_Medium) findViewById(R.id.serche);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                // number of days between the two selected dates
                long daysBetween = daysBetween();
                Log.d("fd", "onDateSet: " + daysBetween);

                // get the number of adults and children
                nbad = nbradult.getText().toString();
                nben = nbenfant.getText().toString();

                // get the intent to recive the data and puth another data to the next activity
                // wich is serch items send the days,nbadult, nbefnant, vile, id from the user , and the dates selected
                Intent g = getIntent();

                Intent i = new Intent(Sercheactivity.this, sercheitems.class);
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                i.putExtra("days",String.valueOf(daysBetween));
                i.putExtra("vile",vile);
                i.putExtra("nbenf",nben);
                i.putExtra("nbadult",nbad);
                i.putExtra("datedep",DateDep);
                i.putExtra("datearr",DateArr);
                startActivity(i);

            }
        });

        mDisplayDatedep.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                calend = Calendar.getInstance();
                int year = calend.get(Calendar.YEAR);
                int month = calend.get(Calendar.MONTH);
                int day = calend.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog dialog = new DatePickerDialog(
                        Sercheactivity.this,
                        android.R.style.Theme_Holo_Light_Dialog_MinWidth,
                        mDateSetListener,
                        year,month,day);
                dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                dialog.show();
            }
        });
        mDisplayDatearr.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                calstart = Calendar.getInstance();
                int year = calstart.get(Calendar.YEAR);
                int month = calstart.get(Calendar.MONTH);
                int day = calstart.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog dialog = new DatePickerDialog(
                        Sercheactivity.this,
                        android.R.style.Theme_Holo_Light_Dialog_MinWidth,
                        mDateSetListener1,
                        year,month,day);
                dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                dialog.show();
            }
        });

        mDateSetListener = new DatePickerDialog.OnDateSetListener() {
            @Override
            public void onDateSet(DatePicker datePicker, int year, int month, int day) {
                month = month + 1;
                Log.d("fd", "onDateSet: mm/dd/yyy: " + month + "/" + day + "/" + year);


                DateDep = year  + "-" + month + "-" + day ;
                try {
                    DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
                    Date date2 = (Date)formatter.parse(DateDep.toString());
                    calend.setTime(date2);
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                mDisplayDatedep.setText(DateDep);
            }
        };

        mDateSetListener1 = new DatePickerDialog.OnDateSetListener() {
            @Override
            public void onDateSet(DatePicker datePicker, int year, int month, int day) {
                month = month + 1;
                Log.d("fd", "onDateSet: mm/dd/yyyy: " + month + "/" + day + "/" + year);

                DateArr =  year + "-" + month + "-" + day;
                try {
                    DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
                    Date date2 = (Date)formatter.parse(DateArr.toString());
                    calstart.setTime(date2);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                mDisplayDatearr.setText(DateArr);

            }
        };

    }


    public static long daysBetween() {
        long daysBetween = 0;
        long diff = calstart.getTimeInMillis() - calend.getTimeInMillis(); //result in millis

        daysBetween = diff / (24 * 60 * 60 * 1000);
        return daysBetween;
    }

    @Override
    public void onClick(View v) {

        final CharSequence[] items = {
                "sousse", "hammamet", "djerba", "monastir", "tabarka", "annaba", "alger"};

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Change Your Location");
        builder.setItems(items, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                // Do something with the selection
                changeLocation.setText(items[item]);
                vile = (String) items[item];
            }
        });
        AlertDialog alert = builder.create();
        alert.show();

    }

}
