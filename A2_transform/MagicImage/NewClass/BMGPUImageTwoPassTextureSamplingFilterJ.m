#import "BMGPUImageTwoPassTextureSamplingFilterJ.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterJ
+ (BOOL)mInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)zSetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)wSetupfilterforsizebm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)VSetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)LSethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
