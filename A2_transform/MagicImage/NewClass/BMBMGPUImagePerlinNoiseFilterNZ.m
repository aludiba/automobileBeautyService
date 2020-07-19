#import "BMBMGPUImagePerlinNoiseFilterNZ.h"
@implementation BMBMGPUImagePerlinNoiseFilterNZ
+ (BOOL)ATinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)KSsetscalebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)eSsetcolorstartbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)kYsetcolorfinishbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
