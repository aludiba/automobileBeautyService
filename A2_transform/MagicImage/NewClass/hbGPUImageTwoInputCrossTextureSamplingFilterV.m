#import "hbGPUImageTwoInputCrossTextureSamplingFilterV.h"
@implementation hbGPUImageTwoInputCrossTextureSamplingFilterV
+ (BOOL)FInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)zSetupfilterforsize:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)VSettexelwidth:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)JSettexelheight:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
