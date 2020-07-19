#import "BMGPUImagePerlinNoiseFilterN.h"
@implementation BMGPUImagePerlinNoiseFilterN
+ (BOOL)tInitbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sSetscalebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)SSetcolorstartbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ySetcolorfinishbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
