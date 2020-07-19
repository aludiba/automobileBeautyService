#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputFilter+Bm.h"
#import "GPUImageTwoInputFilter+BmBm.h"

@interface GPUImageTwoInputFilter (BmBmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBmBmBm:(NSInteger)BM;
+ (BOOL)disableFirstFrameCheckBmBmBm:(NSInteger)BM;
+ (BOOL)disableSecondFrameCheckBmBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBmBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmBm:(NSInteger)BM;

@end
