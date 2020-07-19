#import "BMGPUImageSaturationFilterP+Bm.h"
@implementation BMGPUImageSaturationFilterP (Bm)
+ (BOOL)zinitBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)PSetsaturationBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
