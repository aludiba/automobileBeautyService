#import "BMBMGPUImagePictureLv.h"
@implementation BMBMGPUImagePictureLv
+ (BOOL)YEreplacetexturewithsubimagebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)EZreplacetexturewithsubcgimagebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)CUreplacetexturewithsubimageinrectbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)dHreplacetexturewithsubcgimageinrectbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
