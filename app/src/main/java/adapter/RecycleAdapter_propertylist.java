package adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.TextView;

import java.io.InputStream;
import java.net.URL;
import java.util.List;

import model.Property;
import ws.wolfsoft.creative.R;
import ws.wolfsoft.creative.hoteldetails;
import ws.wolfsoft.creative.signin;

/**
 * Created by Rp on 6/14/2016.
 */
public class RecycleAdapter_propertylist extends RecyclerView.Adapter<RecycleAdapter_propertylist.MyViewHolder> {


    Context context;
    List<Property> propertyList;
    Intent intent;
    private Bitmap im ;
    private RadioButton pe,dmp,all;
    private String type ;
    Double total;
    public class MyViewHolder extends RecyclerView.ViewHolder {

        private RadioGroup changeprix;

        ImageView image;
        TextView address, prix,name ;
        RatingBar stars ;

        public MyViewHolder(View view) {
            super(view);


            // bind the xml with the variables
            image = (ImageView) view.findViewById(R.id.image);
            name = (TextView) view.findViewById(R.id.name);
            stars = (RatingBar) view.findViewById(R.id.stars);
            address = (TextView) view.findViewById(R.id.address);
            prix = (TextView) view.findViewById(R.id.prix);

            changeprix = (RadioGroup) view.findViewById(R.id.changeprix);
            pe = (RadioButton) view.findViewById(R.id.pension);
            dmp = (RadioButton) view.findViewById(R.id.dempension);
            all = (RadioButton) view.findViewById(R.id.allin);



        }

    }

// the constrructor of recycler adapter
    public RecycleAdapter_propertylist(Context mainActivityContacts, List<Property> moviesList,Intent i ) {
        this.propertyList = moviesList;
        this.context = mainActivityContacts;
        this.intent = i ;


    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_property, parent, false);

        return new MyViewHolder(itemView);


    }


    @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN)
    @Override
    public void onBindViewHolder(final MyViewHolder holder, int position) {



        final Property movie = propertyList.get(position);

        // the price calculator with multiple choices
        holder.prix.setText(movie.getPrice());
        holder.changeprix.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                int selectedId = radioGroup.getCheckedRadioButtonId();
                Log.d("fdsf", String.valueOf(selectedId));
                int prix =  Integer.parseInt(movie.getPrice());
                switch (selectedId) {
                    case 2131558616:
                        holder.prix.setText(movie.getPrice());
                        total = Double.parseDouble(movie.getPrice());
                        type = "pension";
                        break;
                    case 2131558617:
                        Double dp = prix * 1.5;
                        holder.prix.setText(String.valueOf(dp));
                        total = dp;
                        type = "Demi pension";
                        break;
                    case 2131558618 :
                        Double al = prix * 1.8;
                        holder.prix.setText(String.valueOf(al));
                        total = al;
                        type = "All in";
                        break;
                }
            }
        });



        holder.name.setText(movie.getName());

        holder.address.setText(movie.getAddress());

        // download the image from the link in the database
        try {

            im = BitmapFactory.decodeStream((InputStream) new URL(movie.getImage()).getContent());


        }catch (Exception e ){
            e.printStackTrace();

        }
        holder.image.setImageBitmap(im);




        holder.stars.setRating(movie.getStars());

        // on click on the item we sent the data to the hotelsdetails
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Bundle b = new Bundle();
                Intent i = new Intent(context, hoteldetails.class);
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                b.putDouble("lat", movie.getLat());
                b.putDouble("len", movie.getLen());
                b.putInt("nbenf", Integer.parseInt(intent.getStringExtra("nbenf")));
                b.putInt("nbadult", Integer.parseInt(intent.getStringExtra("nbadult")));
                b.putDouble("price",total);
                b.putInt("id", signin.gloid);

                i.putExtras(b);
                i.putExtra("datedep",intent.getStringExtra("datedep"));
                i.putExtra("datearr",intent.getStringExtra("datearr"));
                i.putExtra("type",type);
                i.putExtra("address",movie.getAddress());
                i.putExtra("stars",movie.getStars());
                i.putExtra("name",movie.getName());
                i.putExtra("image",movie.getImage());
                i.putExtra("tripurl",movie.getTripurl());
                i.putExtra("descr",movie.getDescr());
                context.startActivity(i);

            }
        });


    }

    @Override
    public int getItemCount() {
        return propertyList.size();
    }



}


