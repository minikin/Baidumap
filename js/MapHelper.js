import { NativeModules, } from 'react-native';

const module = NativeModules.BaiduBridgeHelper;

export default  {

    setCustomMapStyle(enable){
        module.customMapStyle(enable)
    },

    setPinImageWith(imagePath){
        module.setPinImageWith(imagePath)
    },
    
    setCustomMapWithJSON(stylePath) {
        module.setCustomMapStyleWith(stylePath)
    }
};