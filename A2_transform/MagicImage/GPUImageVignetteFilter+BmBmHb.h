#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"
#import "GPUImageVignetteFilter+Bm.h"
#import "GPUImageVignetteFilter+BmBm.h"

@interface GPUImageVignetteFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setVignetteCenterBmBmHb:(NSInteger)hb;
+ (BOOL)setVignetteColorBmBmHb:(NSInteger)hb;
+ (BOOL)setVignetteStartBmBmHb:(NSInteger)hb;
+ (BOOL)setVignetteEndBmBmHb:(NSInteger)hb;

@end
