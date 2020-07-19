#import "BMGPUImagePerlinNoiseFilterx+Bm.h"
@implementation BMGPUImagePerlinNoiseFilterx (Bm)
+ (BOOL)vInitbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)vSetscalebmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)JSetcolorstartbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)HSetcolorfinishbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
