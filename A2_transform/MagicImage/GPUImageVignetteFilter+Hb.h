#import "GPUImageFilter.h"
#import "GPUImageVignetteFilter.h"

@interface GPUImageVignetteFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setVignetteCenterHb:(NSInteger)hb;
+ (BOOL)setVignetteColorHb:(NSInteger)hb;
+ (BOOL)setVignetteStartHb:(NSInteger)hb;
+ (BOOL)setVignetteEndHb:(NSInteger)hb;

@end
