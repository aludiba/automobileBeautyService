#import "BMGPUImageLuminosityBlendFiltery+Bm.h"
@implementation BMGPUImageLuminosityBlendFiltery (Bm)
+ (BOOL)QInitbmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
