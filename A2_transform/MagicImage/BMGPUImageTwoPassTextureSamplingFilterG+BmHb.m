#import "BMGPUImageTwoPassTextureSamplingFilterG+BmHb.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterG (BmHb)
+ (BOOL)qInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)KSetuniformsforprogramatindexbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)qSetupfilterforsizebmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)bSetverticaltexelspacingbmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)OSethorizontaltexelspacingbmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
