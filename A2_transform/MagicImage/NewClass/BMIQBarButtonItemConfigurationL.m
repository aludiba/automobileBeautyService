#import "BMIQBarButtonItemConfigurationL.h"
@implementation BMIQBarButtonItemConfigurationL
+ (BOOL)bInitwithbarbuttonsystemitemactionbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)lInitwithimageactionbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)aInitwithtitleactionbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
