#import "GPUImageExposureFilter+BmBm.h"
@implementation GPUImageExposureFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setExposureBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
