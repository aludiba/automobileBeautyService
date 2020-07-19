#import "BMIQBarButtonItemConfigurationL+BmHb.h"
@implementation BMIQBarButtonItemConfigurationL (BmHb)
+ (BOOL)bInitwithbarbuttonsystemitemactionbmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)lInitwithimageactionbmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)aInitwithtitleactionbmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
