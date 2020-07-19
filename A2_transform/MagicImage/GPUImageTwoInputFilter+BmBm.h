#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputFilter+Bm.h"

@interface GPUImageTwoInputFilter (BmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBmBm:(NSInteger)BM;
+ (BOOL)disableFirstFrameCheckBmBm:(NSInteger)BM;
+ (BOOL)disableSecondFrameCheckBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBmBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;

@end
