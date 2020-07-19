#import "BMGPUImagePicturec+Bm.h"
@implementation BMGPUImagePicturec (Bm)
+ (BOOL)wReplacetexturewithsubimageBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)PReplacetexturewithsubcgimageBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)wReplacetexturewithsubimageAInrectBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)KReplacetexturewithsubcgimageTInrectBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
