package com.reactnativewithcomponents;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.facebook.react.bridge.ReactContext;

public class CardView extends LinearLayout {
    public LinearLayout reactRoot;

    public CardView(ReactContext context) {
        super(context);

        this.setBackground(getCardViewBackground());
        this.setOrientation(LinearLayout.VERTICAL);

        LayoutParams layoutParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
        layoutParams.setMargins(0, 40, 0, 0);

        this.setPadding(40, 40, 40, 40);

        reactRoot = new LinearLayout(context);
        reactRoot.setOrientation(LinearLayout.VERTICAL);
        reactRoot.setLayoutParams(layoutParams);

        this.addView(getCardViewHeading(context, "Default Card"));
        this.addView(reactRoot);
    }

    private GradientDrawable getCardViewBackground() {
        GradientDrawable shape = new GradientDrawable();

        shape.setCornerRadius(20);
        shape.setColor(Color.LTGRAY);
        shape.setStroke(2, Color.DKGRAY);

        return shape;
    }

    private TextView getCardViewHeading(Context context, String text) {
        TextView heading = new TextView(context);
        heading.setText(text);
        heading.setTextColor(Color.BLACK);
        heading.setTypeface(Typeface.DEFAULT_BOLD);

        return heading;
    }
}
