#import "GPUImageTwoInputFilter.h"
#import "GPUImageThreeInputFilter.h"

@interface GPUImageThreeInputFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBm:(NSInteger)BM;
+ (BOOL)disableThirdFrameCheckBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;

@end
