#import "GPUImageTwoInputFilter.h"
#import "GPUImageThreeInputFilter.h"
#import "GPUImageThreeInputFilter+Bm.h"

@interface GPUImageThreeInputFilter (BmHb)
+ (BOOL)initWithFragmentShaderFromStringBmHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmHb:(NSInteger)hb;
+ (BOOL)initializeAttributesBmHb:(NSInteger)hb;
+ (BOOL)disableThirdFrameCheckBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexBmHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)rotatedSizeForindexBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb;

@end
