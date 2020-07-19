#import "hbGPUImageSmoothToonFilterk.h"
@implementation hbGPUImageSmoothToonFilterk
+ (BOOL)eInithb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)OSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)DBlurradiusinpixelshb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)SSettexelwidthhb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)STexelwidthhb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)DSettexelheighthb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)QTexelheighthb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)MSetthresholdhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)pThresholdhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)VSetquantizationlevelshb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)QQuantizationlevelshb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
