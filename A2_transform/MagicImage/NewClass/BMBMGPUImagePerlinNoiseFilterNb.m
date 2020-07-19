#import "BMBMGPUImagePerlinNoiseFilterNb.h"
@implementation BMBMGPUImagePerlinNoiseFilterNb
+ (BOOL)uTinitbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)RSsetscalebmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)NSsetcolorstartbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)XYsetcolorfinishbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
