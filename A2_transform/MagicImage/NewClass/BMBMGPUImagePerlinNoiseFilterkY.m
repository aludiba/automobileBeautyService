#import "BMBMGPUImagePerlinNoiseFilterkY.h"
@implementation BMBMGPUImagePerlinNoiseFilterkY
+ (BOOL)xMinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bJsetscale:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mIsetcolorstart:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)fBsetcolorfinish:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
