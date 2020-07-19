#import "GPUImageFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageAverageColor+Hb.h"

@interface GPUImageAverageColor (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb;
+ (BOOL)extractAverageColorAtFrameTimeHbHb:(NSInteger)hb;

@end
