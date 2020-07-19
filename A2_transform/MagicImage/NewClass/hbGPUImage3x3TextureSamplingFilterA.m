#import "hbGPUImage3x3TextureSamplingFilterA.h"
@implementation hbGPUImage3x3TextureSamplingFilterA
+ (BOOL)kInitwithvertexshaderfromstringfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)dInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)YSetupfilterforsizehb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)iSettexelwidthhb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)hSettexelheighthb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
