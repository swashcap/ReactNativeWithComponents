package com.reactnativewithcomponents;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import android.support.annotation.Nullable;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;

import android.widget.Button;
import android.widget.LinearLayout;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class PrimaryButtonManager extends SimpleViewManager<LinearLayout> {
  public static final String REACT_CLASS = "RNTPrimaryButton"; // Matches Objective-C exposed class

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @Override
  public LinearLayout createViewInstance(ThemedReactContext context) {
    LinearLayout wrapper = new LinearLayout(context);
    Button button = new Button(context);
    GradientDrawable shape = new GradientDrawable();

    shape.setCornerRadius(2);
    shape.setColor(Color.parseColor("#FA6400"));

    button.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
    button.setTextColor(Color.WHITE);
    button.setBackground(shape);

    wrapper.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
    wrapper.addView(button);

    return wrapper;
  }

  @ReactProp(name = "title")
  public void setTitle(LinearLayout wrapper, @Nullable String title) {
    // TODO: Use a child view .find() instead of loop
    // https://stackoverflow.com/a/13887090
    for (int i = 0; i < wrapper.getChildCount(); i += 1) {
      View child = wrapper.getChildAt(i);
      if (wrapper.getChildAt(i) instanceof Button) {
        Button button = (Button) child;
        button.setText(title);
        break;
      }
    }
  }
}
