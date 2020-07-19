#import "BMGPUImageExclusionBlendFilterm+Bm.h"
@implementation BMGPUImageExclusionBlendFilterm (Bm)
+ (BOOL)pInitbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
