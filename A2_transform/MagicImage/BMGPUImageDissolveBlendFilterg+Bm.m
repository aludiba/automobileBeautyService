#import "BMGPUImageDissolveBlendFilterg+Bm.h"
@implementation BMGPUImageDissolveBlendFilterg (Bm)
+ (BOOL)binitBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ySetmixBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
