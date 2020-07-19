#import "hbBMGPUImageMosaicFilterWT.h"
@implementation hbBMGPUImageMosaicFilterWT
+ (BOOL)OAinitbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)BKsetcoloronbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)IQsetnumtilesbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)RNsetinputtilesizebm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)kEsetdisplaytilesizebm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)IQsettilesetbm:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
