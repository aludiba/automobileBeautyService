#import "BMGPUImageStretchDistortionFiltery.h"
@implementation BMGPUImageStretchDistortionFiltery
+ (BOOL)linit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)VSetinputrotationUAtindex:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mSetcenter:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
