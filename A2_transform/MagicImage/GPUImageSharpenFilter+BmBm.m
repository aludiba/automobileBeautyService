#import "GPUImageSharpenFilter+BmBm.h"
@implementation GPUImageSharpenFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setSharpnessBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
