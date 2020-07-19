#import "BMGPUImageSaturationBlendFilterK+Bm.h"
@implementation BMGPUImageSaturationBlendFilterK (Bm)
+ (BOOL)AinitBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
