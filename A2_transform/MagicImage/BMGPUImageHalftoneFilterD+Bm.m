#import "BMGPUImageHalftoneFilterD+Bm.h"
@implementation BMGPUImageHalftoneFilterD (Bm)
+ (BOOL)NinitBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
