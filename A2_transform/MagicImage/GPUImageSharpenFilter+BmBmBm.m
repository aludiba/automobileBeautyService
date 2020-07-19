#import "GPUImageSharpenFilter+BmBmBm.h"
@implementation GPUImageSharpenFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setSharpnessBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
