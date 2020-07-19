#import "hbBMBMGPUImageMosaicFilteryhv.h"
@implementation hbBMBMGPUImageMosaicFilteryhv
+ (BOOL)pQcinitbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)WObsetcoloronbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)VOusetnumtilesbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)tSksetinputtilesizebm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)AIzsetdisplaytilesizebm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)WMesettilesetbm:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
