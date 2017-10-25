package minikin.me.rctbaidumap;

import com.facebook.react.bridge.ReactApplicationContext;

/**
 * Created by Sasha Prokhorenko on 25.10.17.
 */

public class BaiduMapModule extends BaseModule {

    private static final String REACT_CLASS = "BaiduMapModule";
    public BaiduMapModule(ReactApplicationContext reactContext) {
        super(reactContext);
        context = reactContext;
    }

    public String getName() {
        return REACT_CLASS;
    }
}
