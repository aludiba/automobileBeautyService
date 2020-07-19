#import "GPUImageFilter.h"
#import "GPUImageBuffer.h"

@interface GPUImageBuffer (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)setBufferSizeBm:(NSInteger)BM;

@end
