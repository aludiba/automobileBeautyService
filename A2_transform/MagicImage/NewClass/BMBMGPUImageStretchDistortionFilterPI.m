#import "BMBMGPUImageStretchDistortionFilterPI.h"
@implementation BMBMGPUImageStretchDistortionFilterPI
+ (BOOL)hVinitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)aXsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)XWsetcenterbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
