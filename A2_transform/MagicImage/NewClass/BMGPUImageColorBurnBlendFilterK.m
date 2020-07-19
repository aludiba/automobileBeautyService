#import "BMGPUImageColorBurnBlendFilterK.h"
@implementation BMGPUImageColorBurnBlendFilterK
+ (BOOL)dinit:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
