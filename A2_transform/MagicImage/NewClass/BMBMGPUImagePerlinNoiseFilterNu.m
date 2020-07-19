#import "BMBMGPUImagePerlinNoiseFilterNu.h"
@implementation BMBMGPUImagePerlinNoiseFilterNu
+ (BOOL)wTinitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)fSsetscalebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)jSsetcolorstartbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)lYsetcolorfinishbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
