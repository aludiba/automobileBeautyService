#import "BMGPUImage3x3TextureSamplingFilterx+Bm.h"
@implementation BMGPUImage3x3TextureSamplingFilterx (Bm)
+ (BOOL)uInitwithvertexshaderfromstringXFragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)NInitwithfragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)xSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)USettexelwidthBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sSettexelheightBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
