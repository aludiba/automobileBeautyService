#import "GPUImageFilter.h"
#import "GPUImageAverageColor.h"

@interface GPUImageAverageColor (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)extractAverageColorAtFrameTimeHb:(NSInteger)hb;

@end
