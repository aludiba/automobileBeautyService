#import "BMGPUImageTwoPassTextureSamplingFilterG.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterG
+ (BOOL)qInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)KSetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)qSetupfilterforsizebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bSetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)OSethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
