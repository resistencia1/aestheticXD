<?xml version="1.0" encoding="utf-8"?>
<androidx.coordinatorlayout.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:background="#C50000"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:id="@+id/layout"
    tools:context=".MainActivity"
    android:orientation="vertical">
    <include layout="@layout/toolbar"
        android:id="@+id/mCustomToolbar"/>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        android:layout_marginTop="50dp">
        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:gravity="center"
            android:background="#FFFFFF">
            <Button

                android:layout_width="wrap_content"
                android:layout_height="30dp"

                android:layout_weight="1"
                android:layout_margin="10dp"
                android:background="@drawable/face"/>
            <Button
                android:layout_margin="10dp"
                android:layout_width="wrap_content"
                android:layout_height="30dp"

                android:background="@drawable/face"
                android:layout_weight="1"
                />
            <Button
                android:layout_margin="10dp"
                android:layout_width="wrap_content"
                android:layout_height="30dp"

                android:background="@drawable/face"
                android:layout_weight="1"/>
            <Button
                android:layout_margin="10dp"
                android:layout_width="wrap_content"
                android:layout_height="30dp"

                android:background="@drawable/face"
                android:layout_weight="1"/>
        </LinearLayout>

        <androidx.recyclerview.widget.RecyclerView
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:id="@+id/recyclerView">

        </androidx.recyclerview.widget.RecyclerView>
    </LinearLayout>

    <LinearLayout
        android:id="@+id/toolbar"
        android:layout_width="match_parent"
        android:layout_height="40dp"
        android:layout_alignParentBottom="true"
        android:layout_centerHorizontal="true"
        android:layout_marginBottom="10dp"
        android:layout_gravity="bottom"
        >

        <ImageButton
            android:id="@+id/str"
            android:layout_width="50dp"
            android:layout_height="65dp"
            android:layout_gravity="center"



            android:paddingBottom="10dp"

            android:src="@mipmap/anon" />

        <DigitalClock
            android:id="@+id/simpleDigitalClock"
            android:layout_width="100dp"
            android:layout_height="60dp"
            android:layout_marginLeft="100dp"

            android:padding="4dp"

            android:gravity="center_horizontal"
            android:textColor="@android:color/white"
            android:textSize="24sp" />
    </LinearLayout>




    <RelativeLayout
        android:id="@+id/startlayout"
        android:background="#000000"
        android:visibility="gone"
        android:layout_marginTop="100dp"
        android:layout_width="390dp"
        android:layout_height="500dp"
        android:layout_above="@+id/toolbar">
        <LinearLayout android:layout_width="wrap_content" android:layout_height="wrap_content">
            <LinearLayout android:id="@+id/tmp" android:layout_width="75dp" android:layout_height="wrap_content">
                <ImageView android:padding="6dp" android:layout_width="75dp" android:layout_height="500dp" android:src="@drawable/barrados" android:scaleType="fitXY"/>
            </LinearLayout>
            <RelativeLayout android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_margin="4dp">
                <LinearLayout android:id="@+id/calulatrice" android:layout_width="wrap_content" android:layout_height="wrap_content">
                    <ImageView android:layout_gravity="center_vertical" android:padding="5dp" android:layout_width="75dp" android:layout_height="75dp" android:src="@drawable/calcl" android:scaleType="fitCenter"/>
                    <TextView  android:typeface="sans"
                        android:id="@+id/text_view"
                        android:ellipsize="end"
                        android:marqueeRepeatLimit="marquee_forever"
                        android:maxLines="1"
                        android:scrollHorizontally="true"
                        android:singleLine="true"
                         android:layout_gravity="center_vertical" android:padding="10dp" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="Calculator"
                        android:fontFamily="@font/monoton"

                        android:shadowColor="#90D000FF"
                        android:shadowDx="