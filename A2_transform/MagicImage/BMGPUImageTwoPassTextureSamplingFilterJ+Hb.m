#import "BMGPUImageTwoPassTextureSamplingFilterJ+Hb.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterJ (Hb)
+ (BOOL)mInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)zSetuniformsforprogramatindexbmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)wSetupfilterforsizebmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)VSetverticaltexelspacingbmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)LSethorizontaltexelspacingbmHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
