#import "hbGPUImage3x3TextureSamplingFilterP.h"
@implementation hbGPUImage3x3TextureSamplingFilterP
+ (BOOL)WInitwithvertexshaderfromstringZFragmentshaderfromstring:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)IInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)jSetupfilterforsize:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)USettexelwidth:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)CSettexelheight:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
