#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"

@interface GPUImageTwoInputFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBm:(NSInteger)BM;
+ (BOOL)disableFirstFrameCheckBm:(NSInteger)BM;
+ (BOOL)disableSecondFrameCheckBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;

@end
