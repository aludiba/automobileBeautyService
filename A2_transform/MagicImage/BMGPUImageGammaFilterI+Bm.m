#import "BMGPUImageGammaFilterI+Bm.h"
@implementation BMGPUImageGammaFilterI (Bm)
+ (BOOL)jInitbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)sSetgammabmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
