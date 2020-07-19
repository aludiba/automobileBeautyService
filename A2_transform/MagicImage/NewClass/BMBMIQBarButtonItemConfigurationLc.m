#import "BMBMIQBarButtonItemConfigurationLc.h"
@implementation BMBMIQBarButtonItemConfigurationLc
+ (BOOL)DBinitwithbarbuttonsystemitemactionbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)bLinitwithimageactionbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)SAinitwithtitleactionbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
