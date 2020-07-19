#import "GPUImageEmbossFilter+BmBmBm.h"
@implementation GPUImageEmbossFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
