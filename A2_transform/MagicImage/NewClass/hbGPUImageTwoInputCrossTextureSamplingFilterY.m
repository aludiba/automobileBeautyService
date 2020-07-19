#import "hbGPUImageTwoInputCrossTextureSamplingFilterY.h"
@implementation hbGPUImageTwoInputCrossTextureSamplingFilterY
+ (BOOL)aInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ZSetupfilterforsizehb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)mSettexelwidthhb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)dSettexelheighthb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
