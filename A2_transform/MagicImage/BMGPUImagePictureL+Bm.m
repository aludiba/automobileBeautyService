#import "BMGPUImagePictureL+Bm.h"
@implementation BMGPUImagePictureL (Bm)
+ (BOOL)eReplacetexturewithsubimagebmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)zReplacetexturewithsubcgimagebmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)uReplacetexturewithsubimageinrectbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hReplacetexturewithsubcgimageinrectbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
