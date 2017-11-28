package com.reactnativewithcomponents;

import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.facebook.react.bridge.ReactContext;

public class CardView extends LinearLayout {
    private ViewGroup reactRoot;

    public CardView(ReactContext context) {
        super(context);
    }
}
