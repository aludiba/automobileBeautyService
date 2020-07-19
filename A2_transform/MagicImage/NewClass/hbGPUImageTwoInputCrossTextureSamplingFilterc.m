#import "hbGPUImageTwoInputCrossTextureSamplingFilterc.h"
@implementation hbGPUImageTwoInputCrossTextureSamplingFilterc
+ (BOOL)uInitwithfragmentshaderfromstringhb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)xSetupfilterforsizehb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)cSettexelwidthhb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)MSettexelheighthb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
