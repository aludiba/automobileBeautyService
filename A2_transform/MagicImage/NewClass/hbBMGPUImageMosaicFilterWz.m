#import "hbBMGPUImageMosaicFilterWz.h"
@implementation hbBMGPUImageMosaicFilterWz
+ (BOOL)LAinitbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)YKsetcoloronbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)wQsetnumtilesbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)GNsetinputtilesizebm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)vEsetdisplaytilesizebm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)ZQsettilesetbm:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
