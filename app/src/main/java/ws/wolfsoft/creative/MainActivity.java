package ws.wolfsoft.creative;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import customfonts.MyTextView_Roboto_Bold;

public class MainActivity extends AppCompatActivity {
    MyTextView_Roboto_Bold signin;
    MyTextView_Roboto_Bold signup;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        signin = (MyTextView_Roboto_Bold) findViewById(R.id.signin);
        signup = (MyTextView_Roboto_Bold) findViewById(R.id.Signup);

        signup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent it = new Intent(MainActivity.this, signup.class);
                startActivity(it);

            }
        });



        signin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent it = new Intent(MainActivity.this,signin.class);
                startActivity(it);


            }
        });

    }
}
