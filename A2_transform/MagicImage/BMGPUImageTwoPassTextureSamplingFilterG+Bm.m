#import "BMGPUImageTwoPassTextureSamplingFilterG+Bm.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterG (Bm)
+ (BOOL)qInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)KSetuniformsforprogramatindexbmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)qSetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)bSetverticaltexelspacingbmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)OSethorizontaltexelspacingbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
