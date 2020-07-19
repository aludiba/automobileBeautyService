#import "BMGPUImagePicturem.h"
@implementation BMGPUImagePicturem
+ (BOOL)nReplacetexturewithsubimagebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)oReplacetexturewithsubcgimagebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)WReplacetexturewithsubimageinrectbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sReplacetexturewithsubcgimageinrectbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
