#import "GPUImageSaturationFilter+BmBmBm.h"
@implementation GPUImageSaturationFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setSaturationBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
