import { NativeModules, } from 'react-native';

const module = NativeModules.BaiduBridgeHelper;
export default class MapHelper {

    setPinImageWith(imagePath){
        module.setPinImageWith(imagePath)
    }

    setCustomMapStyle(enable){
        module.customMapStyle(enable)
    }

    setCustomMapWithJSON(stylePath) {
        module.setCustomMapStyleWith(stylePath)
    }
}