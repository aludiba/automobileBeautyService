#import "hbGPUImage3x3TextureSamplingFilterA+Hb.h"
@implementation hbGPUImage3x3TextureSamplingFilterA (Hb)
+ (BOOL)kInitwithvertexshaderfromstringfragmentshaderfromstringhbHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)dInitwithfragmentshaderfromstringhbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)YSetupfilterforsizehbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)iSettexelwidthhbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)hSettexelheighthbHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
