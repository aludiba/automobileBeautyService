#import "GPUImageExposureFilter+Bm.h"
@implementation GPUImageExposureFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setExposureBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
