#import "GPUImageColorMatrixFilter+BmBmBm.h"
@implementation GPUImageColorMatrixFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setColorMatrixBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
