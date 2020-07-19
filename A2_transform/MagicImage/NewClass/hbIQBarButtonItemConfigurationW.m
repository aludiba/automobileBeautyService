#import "hbIQBarButtonItemConfigurationW.h"
@implementation hbIQBarButtonItemConfigurationW
+ (BOOL)bInitwithbarbuttonsystemitemactionbmhb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)uInitwithimageactionbmhb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)sInitwithtitleactionbmhb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
