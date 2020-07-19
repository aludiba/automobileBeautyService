#import "BMGPUImageStretchDistortionFilterP.h"
@implementation BMGPUImageStretchDistortionFilterP
+ (BOOL)vInitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)XSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)wSetcenterbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
