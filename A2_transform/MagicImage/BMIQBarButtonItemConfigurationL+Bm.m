#import "BMIQBarButtonItemConfigurationL+Bm.h"
@implementation BMIQBarButtonItemConfigurationL (Bm)
+ (BOOL)bInitwithbarbuttonsystemitemactionbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)lInitwithimageactionbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)aInitwithtitleactionbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
