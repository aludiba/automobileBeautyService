#import "GPUImageTwoInputFilter.h"
#import "GPUImageThreeInputFilter.h"
#import "GPUImageThreeInputFilter+Bm.h"
#import "GPUImageThreeInputFilter+BmBm.h"

@interface GPUImageThreeInputFilter (BmBmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBmBmBm:(NSInteger)BM;
+ (BOOL)disableThirdFrameCheckBmBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)rotatedSizeForindexBmBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmBm:(NSInteger)BM;

@end
