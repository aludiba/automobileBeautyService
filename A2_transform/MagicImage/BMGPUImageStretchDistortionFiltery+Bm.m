#import "BMGPUImageStretchDistortionFiltery+Bm.h"
@implementation BMGPUImageStretchDistortionFiltery (Bm)
+ (BOOL)linitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)VSetinputrotationUAtindexBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)mSetcenterBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
