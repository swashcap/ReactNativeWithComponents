package com.reactnativewithcomponents;

import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import android.support.annotation.Nullable;

import java.util.Map;

public class PrimaryButtonManager extends SimpleViewManager<PrimaryButtonView> {
  public static final String REACT_CLASS = "RNTPrimaryButton"; // Matches Objective-C exposed class

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @Override
  public PrimaryButtonView createViewInstance(ThemedReactContext context) {
    return new PrimaryButtonView(context);
  }

  @ReactProp(name = "title")
  public void setTitle(PrimaryButtonView primaryButtonView, @Nullable String title) {
    primaryButtonView.setTitle(title);
  }

  /**
   * Add custom native events
   *
   * @link https://stackoverflow.com/q/39872442
   */
  @Override
  public @Nullable Map getExportedCustomDirectEventTypeConstants() {
    return MapBuilder.of(
            "buttonPress",
            MapBuilder.of("registrationName", "onPress")
    );
  }

}
