#import "BMGPUImageGammaFilterT+BmBm.h"
@implementation BMGPUImageGammaFilterT (BmBm)
+ (BOOL)rinitBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)SSetgammaBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
