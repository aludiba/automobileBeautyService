#import "GPUImageSaturationFilter+BmBm.h"
@implementation GPUImageSaturationFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSaturationBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
