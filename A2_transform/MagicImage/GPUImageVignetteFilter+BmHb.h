#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"
#import "GPUImageVignetteFilter+Bm.h"

@interface GPUImageVignetteFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setVignetteCenterBmHb:(NSInteger)hb;
+ (BOOL)setVignetteColorBmHb:(NSInteger)hb;
+ (BOOL)setVignetteStartBmHb:(NSInteger)hb;
+ (BOOL)setVignetteEndBmHb:(NSInteger)hb;

@end
