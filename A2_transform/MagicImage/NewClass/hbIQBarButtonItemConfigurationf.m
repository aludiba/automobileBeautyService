#import "hbIQBarButtonItemConfigurationf.h"
@implementation hbIQBarButtonItemConfigurationf
+ (BOOL)tInitwithbarbuttonsystemitemactionbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)uInitwithimageactionbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)TInitwithtitleactionbm:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
