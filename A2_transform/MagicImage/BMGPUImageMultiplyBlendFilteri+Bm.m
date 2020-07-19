#import "BMGPUImageMultiplyBlendFilteri+Bm.h"
@implementation BMGPUImageMultiplyBlendFilteri (Bm)
+ (BOOL)tinitBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
