#import "BMGPUImageDarkenBlendFilterG+Bm.h"
@implementation BMGPUImageDarkenBlendFilterG (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
