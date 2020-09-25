package com.resbite.aestheticxd;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;

import com.airbnb.lottie.LottieAnimationView;

public class MainActivity extends AppCompatActivity {
    boolean isSwitchOn =false;
    RelativeLayout ralativeLayout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        this.getWindow().getDecorView().setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                        | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                        | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_FULLSCREEN
                        | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);





        TextView textView = (TextView) findViewById(R.id.myTxtView);
        textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.icon, 0, 0, 0);

        VideoView videoView2=(VideoView)findViewById(R.id.videoView);
        Uri path2 =Uri.parse("android.resource://com.resbite.aestheticxd/"+R.raw.nujare);
        videoView2.setVideoURI(path2);
        videoView2.setMediaController(new MediaController(this));
        videoView2.start();



        ralativeLayout=(RelativeLayout) findViewById(R.id.fondo);

        final LottieAnimationView lottieSwitchButton=findViewById(R.id.lottSwitch);
        //cambiar velocidad
        //&dsafds
        lottieSwitchButton.setSpeed(5f);
        lottieSwitchButton.setMinAndMaxProgress(0.5f,1.0f);
        lottieSwitchButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(isSwitchOn){
                    lottieSwitchButton.setMinAndMaxProgress(0.0f,0.5f);
                    lottieSwitchButton.playAnimation();
                    ralativeLayout.setBackgroundResource(R.drawable.windowsxp);



                    isSwitchOn=false;

                }else{
                    lottieSwitchButton.setMinAndMaxProgress(0.5f,1.0f);
                    lottieSwitchButton.playAnimation();
                    ralativeLayout.setBackgroundResource(R.drawable.windowsnoch);




                    isSwitchOn=true;

                }
            }
        });
    }
}
