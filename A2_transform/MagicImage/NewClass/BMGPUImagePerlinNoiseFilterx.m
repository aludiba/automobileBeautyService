#import "BMGPUImagePerlinNoiseFilterx.h"
@implementation BMGPUImagePerlinNoiseFilterx
+ (BOOL)vInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)vSetscalebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)JSetcolorstartbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)HSetcolorfinishbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
