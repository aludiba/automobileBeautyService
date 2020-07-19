#import "GPUImageFilter.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageHistogramFilter+Bm.h"

@interface GPUImageHistogramFilter (BmBm)
+ (BOOL)initWithHistogramTypeBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)sizeOfFBOBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;
+ (BOOL)outputFrameSizeBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;

@end
