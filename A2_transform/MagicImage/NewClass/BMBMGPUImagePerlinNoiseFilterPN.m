#import "BMBMGPUImagePerlinNoiseFilterPN.h"
@implementation BMBMGPUImagePerlinNoiseFilterPN
+ (BOOL)dJinit:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)fTsetscale:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)zFsetcolorstart:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)FJsetcolorfinish:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
