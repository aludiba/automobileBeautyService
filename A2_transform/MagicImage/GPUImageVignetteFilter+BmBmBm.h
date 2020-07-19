#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"
#import "GPUImageVignetteFilter+Bm.h"
#import "GPUImageVignetteFilter+BmBm.h"

@interface GPUImageVignetteFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setVignetteCenterBmBmBm:(NSInteger)BM;
+ (BOOL)setVignetteColorBmBmBm:(NSInteger)BM;
+ (BOOL)setVignetteStartBmBmBm:(NSInteger)BM;
+ (BOOL)setVignetteEndBmBmBm:(NSInteger)BM;

@end
