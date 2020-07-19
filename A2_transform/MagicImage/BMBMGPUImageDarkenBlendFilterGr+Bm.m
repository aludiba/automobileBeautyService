#import "BMBMGPUImageDarkenBlendFilterGr+Bm.h"
@implementation BMBMGPUImageDarkenBlendFilterGr (Bm)
+ (BOOL)EFinitBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
