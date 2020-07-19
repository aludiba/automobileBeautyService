#import "BMGPUImageDivideBlendFilterB+Bm.h"
@implementation BMGPUImageDivideBlendFilterB (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
