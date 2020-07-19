#import "hbGPUImage3x3TextureSamplingFilterE.h"
@implementation hbGPUImage3x3TextureSamplingFilterE
+ (BOOL)VInitwithvertexshaderfromstringSFragmentshaderfromstring:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)aInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)pSetupfilterforsize:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)LSettexelwidth:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)lSettexelheight:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
