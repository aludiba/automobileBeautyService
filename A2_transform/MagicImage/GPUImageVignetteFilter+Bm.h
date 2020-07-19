#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"

@interface GPUImageVignetteFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setVignetteCenterBm:(NSInteger)BM;
+ (BOOL)setVignetteColorBm:(NSInteger)BM;
+ (BOOL)setVignetteStartBm:(NSInteger)BM;
+ (BOOL)setVignetteEndBm:(NSInteger)BM;

@end
