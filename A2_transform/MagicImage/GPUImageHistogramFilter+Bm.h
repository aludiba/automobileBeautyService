#import "GPUImageFilter.h"
#import "GPUImageHistogramFilter.h"

@interface GPUImageHistogramFilter (Bm)
+ (BOOL)initWithHistogramTypeBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)sizeOfFBOBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)outputFrameSizeBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;

@end
