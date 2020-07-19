#import "BMGPUImageDarkenBlendFilterG+BmBm.h"
@implementation BMGPUImageDarkenBlendFilterG (BmBm)
+ (BOOL)FinitBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
