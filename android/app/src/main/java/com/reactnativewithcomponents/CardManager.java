package com.reactnativewithcomponents;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;

public class CardManager extends SimpleViewManager<CardView> {
    public static final String REACT_CLASS = "RNTCard"; // Matches Objective-C exposed class

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public CardView createViewInstance(ThemedReactContext context) {
        return new CardView(context);
    }
}
