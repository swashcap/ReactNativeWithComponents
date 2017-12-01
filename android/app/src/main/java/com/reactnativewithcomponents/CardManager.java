package com.reactnativewithcomponents;

import android.view.View;

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

    /**
     * Proxy new react-native views to the CardView.reactRoot to maintain CardView's
     * non-react-native children.
     */
    @Override
    public void addView(CardView parent, View child, int index)  {
        parent.reactRoot.addView(child, index);
    }

    @Override
    public int getChildCount(CardView parent) {
        return parent.reactRoot.getChildCount();
    }

    @Override
    public View getChildAt(CardView parent, int index) {
        return parent.reactRoot.getChildAt(index);
    }

    @Override
    public void removeViewAt(CardView parent, int index) {
        parent.reactRoot.removeViewAt(index);
    }

    /**
     * Override the superclass's method because the CardView likely needs custom layout for its
     * react-native children.
     * See {@link ViewGroupManager#needsCustomLayoutForChildren()}
     */
    @Override
    public boolean needsCustomLayoutForChildren() {
        return true;
    }
}
