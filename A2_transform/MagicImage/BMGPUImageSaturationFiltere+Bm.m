#import "BMGPUImageSaturationFiltere+Bm.h"
@implementation BMGPUImageSaturationFiltere (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)LSetsaturationBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
