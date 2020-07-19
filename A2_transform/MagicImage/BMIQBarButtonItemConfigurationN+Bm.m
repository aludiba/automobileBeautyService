#import "BMIQBarButtonItemConfigurationN+Bm.h"
@implementation BMIQBarButtonItemConfigurationN (Bm)
+ (BOOL)SInitwithbarbuttonsystemitemactionbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)aInitwithimageactionbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)wInitwithtitleactionbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
