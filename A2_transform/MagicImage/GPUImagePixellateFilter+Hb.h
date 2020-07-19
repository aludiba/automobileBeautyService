#import "GPUImageFilter.h"
#import "GPUImagePixellateFilter.h"

@interface GPUImagePixellateFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setFractionalWidthOfAPixelHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;

@end
