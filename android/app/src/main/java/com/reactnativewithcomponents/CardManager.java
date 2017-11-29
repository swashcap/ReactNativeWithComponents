package com.reactnativewithcomponents;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

public class CardManager extends ViewGroupManager<CardView> {
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
