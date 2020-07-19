#import "GPUImagePosterizeFilter+BmBm.h"
@implementation GPUImagePosterizeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setColorLevelsBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
