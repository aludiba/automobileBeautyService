#import "hbIQBarButtonItemConfigurationp.h"
@implementation hbIQBarButtonItemConfigurationp
+ (BOOL)PInitwithbarbuttonsystemitemactionbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)LInitwithimageactionbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)TInitwithtitleactionbm:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
