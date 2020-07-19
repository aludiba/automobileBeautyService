#import "GPUImageSharpenFilter+Bm.h"
@implementation GPUImageSharpenFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setSharpnessBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
