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
            android:id="@+id/recycler