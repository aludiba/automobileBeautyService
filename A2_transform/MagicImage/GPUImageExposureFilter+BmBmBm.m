#import "GPUImageExposureFilter+BmBmBm.h"
@implementation GPUImageExposureFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setExposureBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
