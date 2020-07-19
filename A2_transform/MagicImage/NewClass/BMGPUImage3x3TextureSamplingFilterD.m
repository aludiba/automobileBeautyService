#import "BMGPUImage3x3TextureSamplingFilterD.h"
@implementation BMGPUImage3x3TextureSamplingFilterD
+ (BOOL)jInitwithvertexshaderfromstringfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)aSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)nSettexelwidthbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)pSettexelheightbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
