#import "BMGPUImageTwoPassTextureSamplingFilterG+BmBmHbHb.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterG (BmBmHbHb)
+ (BOOL)qInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBmBmHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)KSetuniformsforprogramatindexbmBmBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)qSetupfilterforsizebmBmBmHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)bSetverticaltexelspacingbmBmBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)OSethorizontaltexelspacingbmBmBmHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
