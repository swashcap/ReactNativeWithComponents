package com.reactnativewithcomponents;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import android.support.annotation.Nullable;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;

import android.widget.Button;
import android.view.ViewGroup.LayoutParams;

public class PrimaryButtonManager extends SimpleViewManager<Button> {
  public static final String REACT_CLASS = "RNTPrimaryButton"; // Matches Objective-C exposed class

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @Override
  public Button createViewInstance(ThemedReactContext context) {
    Button button = new Button(context);
    GradientDrawable shape = new GradientDrawable();

    shape.setCornerRadius(2);
    shape.setColor(Color.parseColor("#FA6400"));

    button.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT, 50));
    button.setTextColor(Color.WHITE);
    button.setBackground(shape);

    button.setMaxHeight(50);

    return button;
  }

  @ReactProp(name = "title")
  public void setTitle(Button button, @Nullable String title) {
    button.setText(title);
  }
}
