#import "BMGPUImageSaturationBlendFilterK+BmBm.h"
@implementation BMGPUImageSaturationBlendFilterK (BmBm)
+ (BOOL)AinitBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
