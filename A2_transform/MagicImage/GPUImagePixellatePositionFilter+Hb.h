#import "GPUImageFilter.h"
#import "GPUImagePixellatePositionFilter.h"

@interface GPUImagePixellatePositionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)setFractionalWidthOfAPixelHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;
+ (BOOL)setRadiusHb:(NSInteger)hb;

@end
