#import "BMGPUImagePerlinNoiseFilterk+Bm.h"
@implementation BMGPUImagePerlinNoiseFilterk (Bm)
+ (BOOL)MinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JSetscaleBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)iSetcolorstartBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)bSetcolorfinishBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
