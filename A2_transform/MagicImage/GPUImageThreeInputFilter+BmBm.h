#import "GPUImageTwoInputFilter.h"
#import "GPUImageThreeInputFilter.h"
#import "GPUImageThreeInputFilter+Bm.h"

@interface GPUImageThreeInputFilter (BmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBmBm:(NSInteger)BM;
+ (BOOL)disableThirdFrameCheckBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBmBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;

@end
