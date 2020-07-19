#import "BMGPUImageStretchDistortionFilterD.h"
@implementation BMGPUImageStretchDistortionFilterD
+ (BOOL)NInitbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CSetcenterbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
