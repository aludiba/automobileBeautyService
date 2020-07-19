#import "BMGPUImageStretchDistortionFilterg.h"
@implementation BMGPUImageStretchDistortionFilterg
+ (BOOL)Minit:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)OSetinputrotationHAtindex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ASetcenter:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
