#import "GPUImageEmbossFilter+BmBm.h"
@implementation GPUImageEmbossFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setIntensityBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
