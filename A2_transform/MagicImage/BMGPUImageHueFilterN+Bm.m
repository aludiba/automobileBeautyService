#import "BMGPUImageHueFilterN+Bm.h"
@implementation BMGPUImageHueFilterN (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)XSethueBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
