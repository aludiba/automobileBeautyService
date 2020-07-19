#import "BMGPUImageTextureInputN+Bm.h"
@implementation BMGPUImageTextureInputN (Bm)
+ (BOOL)WInitwithtextureCSizeBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)mProcesstexturewithframetimeBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
