#import "BMGPUImageTwoPassTextureSamplingFilterb+Bm.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterb (Bm)
+ (BOOL)DInitwithfirststagevertexshaderfromstringhFirststagefragmentshaderfromstringmSecondstagevertexshaderfromstringmSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mSetuniformsforprogramatindexBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)nSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)TSetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)KSethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
