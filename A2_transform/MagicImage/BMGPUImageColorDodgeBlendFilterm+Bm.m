#import "BMGPUImageColorDodgeBlendFilterm+Bm.h"
@implementation BMGPUImageColorDodgeBlendFilterm (Bm)
+ (BOOL)iInitbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
