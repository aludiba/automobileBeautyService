#import "BMBMGPUImageHalftoneFilterPG+Bm.h"
@implementation BMBMGPUImageHalftoneFilterPG (Bm)
+ (BOOL)nLinitBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
