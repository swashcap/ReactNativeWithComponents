package com.reactnativewithcomponents;

import android.graphics.Typeface;
import android.widget.LinearLayout;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.Button;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.support.annotation.Nullable;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.RCTEventEmitter;

public class PrimaryButtonView extends LinearLayout {
    private Button button;

    public PrimaryButtonView(ReactContext context) {
        super(context);

        button = new Button(context);
        GradientDrawable shape = new GradientDrawable();

        shape.setCornerRadius(2);
        shape.setColor(Color.parseColor("#FA6400"));

        button.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        button.setTextColor(Color.WHITE);
        button.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        button.setBackground(shape);

        this.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        this.addView(button);
    }

    public void setTitle(@Nullable String text) {
        button.setText(text);
    }

    /**
     * Handle button press.
     *
     * @link https://stackoverflow.com/q/39872442
     */
    public void buttonPress() {
        WritableMap event = Arguments.createMap();
        event.putString("buttonPress", "onPress");
        ReactContext reactContext = (ReactContext) getContext();
        reactContext.getJSModule(RCTEventEmitter.class).receiveEvent(
                getId(),
                "buttonPress",
                event
        );
    }
}
