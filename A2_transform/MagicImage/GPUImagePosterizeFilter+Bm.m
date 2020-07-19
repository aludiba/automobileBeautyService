#import "GPUImagePosterizeFilter+Bm.h"
@implementation GPUImagePosterizeFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setColorLevelsBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
