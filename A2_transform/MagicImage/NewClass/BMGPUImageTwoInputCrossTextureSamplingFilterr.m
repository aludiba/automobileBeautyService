#import "BMGPUImageTwoInputCrossTextureSamplingFilterr.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterr
+ (BOOL)IInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)rSettexelwidthbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)RSettexelheightbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
