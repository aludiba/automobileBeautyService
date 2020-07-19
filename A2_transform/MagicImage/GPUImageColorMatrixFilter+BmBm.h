#import "GPUImageFilter.h"
#import "GPUImageColorMatrixFilter.h"
#import "GPUImageColorMatrixFilter+Bm.h"

@interface GPUImageColorMatrixFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setIntensityBmBm:(NSInteger)BM;
+ (BOOL)setColorMatrixBmBm:(NSInteger)BM;

@end
