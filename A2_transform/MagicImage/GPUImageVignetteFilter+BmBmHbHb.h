#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"
#import "GPUImageVignetteFilter+Bm.h"
#import "GPUImageVignetteFilter+BmBm.h"
#import "GPUImageVignetteFilter+BmBmHb.h"

@interface GPUImageVignetteFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setVignetteCenterBmBmHbHb:(NSInteger)hb;
+ (BOOL)setVignetteColorBmBmHbHb:(NSInteger)hb;
+ (BOOL)setVignetteStartBmBmHbHb:(NSInteger)hb;
+ (BOOL)setVignetteEndBmBmHbHb:(NSInteger)hb;

@end
