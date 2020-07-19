#import "BMGPUImage3x3TextureSamplingFilterv+Bm.h"
@implementation BMGPUImage3x3TextureSamplingFilterv (Bm)
+ (BOOL)oInitwithvertexshaderfromstringfragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)CInitwithfragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)WSetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mSettexelwidthbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)SSettexelheightbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
