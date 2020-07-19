#import "BMBMIQBarButtonItemConfigurationLV+Bm.h"
@implementation BMBMIQBarButtonItemConfigurationLV (Bm)
+ (BOOL)DBinitwithbarbuttonsystemitemactionbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)BLinitwithimageactionbmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)BAinitwithtitleactionbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
