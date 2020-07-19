#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"
#import "GPUImageVignetteFilter+Bm.h"

@interface GPUImageVignetteFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setVignetteCenterBmBm:(NSInteger)BM;
+ (BOOL)setVignetteColorBmBm:(NSInteger)BM;
+ (BOOL)setVignetteStartBmBm:(NSInteger)BM;
+ (BOOL)setVignetteEndBmBm:(NSInteger)BM;

@end
