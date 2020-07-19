#import "BMGPUImageSepiaFiltera+Bm.h"
@implementation BMGPUImageSepiaFiltera (Bm)
+ (BOOL)yInitbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
