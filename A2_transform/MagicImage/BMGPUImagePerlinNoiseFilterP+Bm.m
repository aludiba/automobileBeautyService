#import "BMGPUImagePerlinNoiseFilterP+Bm.h"
@implementation BMGPUImagePerlinNoiseFilterP (Bm)
+ (BOOL)jinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)tSetscaleBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)fSetcolorstartBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)JSetcolorfinishBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
