package com.baidumap;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;

/**
 * Created by Sasha Prokhorenko on 27.10.17.
 */

public class BaiduBridgeHelper extends BaseModule {

    public BaiduBridgeHelper(ReactApplicationContext reactContext) {
        super(reactContext);
        context = reactContext;
    }

    public String getName() {
        return "BaiduBridgeHelper";
    }

    @ReactMethod
    public void setPinImageWith(String imageName) {

    }

    @ReactMethod
    public void setCustomMapStyleWith(String JSONFile) {

    }


    @ReactMethod
    public void customMapStyle(Boolean enable) {

    }

}
