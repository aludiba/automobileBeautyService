#import "BMGPUImage3x3TextureSamplingFilterv.h"
@implementation BMGPUImage3x3TextureSamplingFilterv
+ (BOOL)oInitwithvertexshaderfromstringfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)CInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)WSetupfilterforsizebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mSettexelwidthbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)SSettexelheightbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
