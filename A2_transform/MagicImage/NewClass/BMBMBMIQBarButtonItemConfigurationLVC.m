#import "BMBMBMIQBarButtonItemConfigurationLVC.h"
@implementation BMBMBMIQBarButtonItemConfigurationLVC
+ (BOOL)IDbinitwithbarbuttonsystemitemactionbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)bBlinitwithimageactionbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mBainitwithtitleactionbm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
