#import "BMBMGPUImageDifferenceBlendFilteryF.h"
@implementation BMBMGPUImageDifferenceBlendFilteryF
+ (BOOL)hLinit:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
