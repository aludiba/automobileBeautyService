#import "GPUImageColorMatrixFilter+Bm.h"
@implementation GPUImageColorMatrixFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setIntensityBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setColorMatrixBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
