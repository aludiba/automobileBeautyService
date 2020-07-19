#import "BMGPUImageGammaFilterT+Bm.h"
@implementation BMGPUImageGammaFilterT (Bm)
+ (BOOL)rinitBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)SSetgammaBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
