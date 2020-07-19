#import "BMGPUImage3x3TextureSamplingFilterk.h"
@implementation BMGPUImage3x3TextureSamplingFilterk
+ (BOOL)fInitwithvertexshaderfromstringfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)fInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)DSetupfilterforsizebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rSettexelwidthbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)nSettexelheightbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
