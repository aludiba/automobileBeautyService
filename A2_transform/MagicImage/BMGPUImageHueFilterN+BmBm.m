#import "BMGPUImageHueFilterN+BmBm.h"
@implementation BMGPUImageHueFilterN (BmBm)
+ (BOOL)RinitBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)XSethueBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
