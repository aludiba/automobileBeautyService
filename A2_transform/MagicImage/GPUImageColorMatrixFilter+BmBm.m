#import "GPUImageColorMatrixFilter+BmBm.h"
@implementation GPUImageColorMatrixFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setIntensityBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setColorMatrixBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
