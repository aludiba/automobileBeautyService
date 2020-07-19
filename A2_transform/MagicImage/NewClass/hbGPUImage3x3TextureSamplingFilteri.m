#import "hbGPUImage3x3TextureSamplingFilteri.h"
@implementation hbGPUImage3x3TextureSamplingFilteri
+ (BOOL)wInitwithvertexshaderfromstringfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)XInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FSetupfilterforsizehb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)NSettexelwidthhb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)nSettexelheighthb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
