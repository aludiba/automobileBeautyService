#import "GPUImageFilter.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageHistogramFilter+Hb.h"

@interface GPUImageHistogramFilter (HbHb)
+ (BOOL)initWithHistogramTypeHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initializeSecondaryAttributesHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)sizeOfFBOHbHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb;
+ (BOOL)outputFrameSizeHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb;

@end
