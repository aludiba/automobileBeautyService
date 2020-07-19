#import "hbGPUImageSmoothToonFilterQ.h"
@implementation hbGPUImageSmoothToonFilterQ
+ (BOOL)MInithb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)QSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)wBlurradiusinpixelshb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)bSettexelwidthhb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)TTexelwidthhb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)vSettexelheighthb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)qTexelheighthb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)SSetthresholdhb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)oThresholdhb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)aSetquantizationlevelshb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)WQuantizationlevelshb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
