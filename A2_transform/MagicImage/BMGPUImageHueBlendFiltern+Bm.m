#import "BMGPUImageHueBlendFiltern+Bm.h"
@implementation BMGPUImageHueBlendFiltern (Bm)
+ (BOOL)UinitBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
