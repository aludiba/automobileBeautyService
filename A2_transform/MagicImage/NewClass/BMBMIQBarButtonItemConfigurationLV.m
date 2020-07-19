#import "BMBMIQBarButtonItemConfigurationLV.h"
@implementation BMBMIQBarButtonItemConfigurationLV
+ (BOOL)DBinitwithbarbuttonsystemitemactionbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)BLinitwithimageactionbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)BAinitwithtitleactionbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
