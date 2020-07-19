#import "BMGPUImage3x3TextureSamplingFilterC+Bm.h"
@implementation BMGPUImage3x3TextureSamplingFilterC (Bm)
+ (BOOL)QInitwithvertexshaderfromstringoFragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)uInitwithfragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)VSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mSettexelwidthBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)USettexelheightBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
