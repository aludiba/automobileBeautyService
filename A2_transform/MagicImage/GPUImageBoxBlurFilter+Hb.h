#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"

@interface GPUImageBoxBlurFilter (Hb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;

@end
