#import "BMIQBarButtonItemConfigurationg.h"
@implementation BMIQBarButtonItemConfigurationg
+ (BOOL)GInitwithbarbuttonsystemitemactionbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)XInitwithimageactionbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)EInitwithtitleactionbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
