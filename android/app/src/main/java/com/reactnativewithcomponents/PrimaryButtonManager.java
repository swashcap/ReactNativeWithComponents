package com.reactnativewithcomponents;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import android.support.annotation.Nullable;

import android.widget.Button;

public class PrimaryButtonManager extends SimpleViewManager<Button> {
  public static final String REACT_CLASS = "RNTPrimaryButton"; // Matches Objective-C exposed class

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @Override
  public Button createViewInstance(ThemedReactContext context) {
    Button button = new Button();
    button.setText("Sample text!");

    return button;
  }

  @ReactProp(name = "title")
  public void setTitle(Button view, @Nullable String title) {
    view.setTitle(title);
  }
}