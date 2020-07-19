#import "GPUImageFilter.h"
#import "GPUImageBuffer.h"

@interface GPUImageBuffer (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)setBufferSizeHb:(NSInteger)hb;

@end
