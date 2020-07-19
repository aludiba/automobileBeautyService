#import "GPUImageFilter.h"
#import "GPUImageBuffer.h"
#import "GPUImageBuffer+Bm.h"

@interface GPUImageBuffer (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;
+ (BOOL)setBufferSizeBmHb:(NSInteger)hb;

@end
