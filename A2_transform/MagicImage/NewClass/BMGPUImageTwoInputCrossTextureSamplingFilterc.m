#import "BMGPUImageTwoInputCrossTextureSamplingFilterC.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterC
+ (BOOL)qInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)ySetupfilterforsizebm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)GSettexelwidthbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)lSettexelheightbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
