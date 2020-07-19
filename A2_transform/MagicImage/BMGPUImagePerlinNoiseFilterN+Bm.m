#import "BMGPUImagePerlinNoiseFilterN+Bm.h"
@implementation BMGPUImagePerlinNoiseFilterN (Bm)
+ (BOOL)tInitbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sSetscalebmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)SSetcolorstartbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ySetcolorfinishbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
