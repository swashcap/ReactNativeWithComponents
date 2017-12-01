package com.reactnativewithcomponents;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.facebook.react.bridge.ReactContext;

public class CardView extends LinearLayout {
    public LinearLayout reactRoot;

    public CardView(ReactContext context) {
        super(context);

        this.setBackground(getCardViewBackground());
        this.setPadding(20, 10, 20, 10);
        this.setOrientation(LinearLayout.VERTICAL);

        reactRoot = new LinearLayout(context);
        reactRoot.setOrientation(LinearLayout.VERTICAL);

        this.addView(getCardViewHeading(context, "Sample Heading"));
        this.addView(reactRoot);
    }

    private GradientDrawable getCardViewBackground() {
        GradientDrawable shape = new GradientDrawable();

        shape.setCornerRadius(10);
        shape.setColor(Color.MAGENTA);
        shape.setStroke(10, Color.CYAN);

        return shape;
    }

    private TextView getCardViewHeading(Context context, String text) {
        TextView heading = new TextView(context);
        heading.setText(text);
        heading.setTextColor(Color.WHITE);

        return heading;
    }
}
