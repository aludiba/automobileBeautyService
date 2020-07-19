#import "BMGPUImageHalftoneFilterP+Bm.h"
@implementation BMGPUImageHalftoneFilterP (Bm)
+ (BOOL)LinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
