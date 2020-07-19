#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputFilter+Bm.h"
#import "GPUImageTwoInputFilter+BmBm.h"

@interface GPUImageTwoInputFilter (BmBmHb)
+ (BOOL)initWithFragmentShaderFromStringBmBmHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBmHb:(NSInteger)hb;
+ (BOOL)initializeAttributesBmBmHb:(NSInteger)hb;
+ (BOOL)disableFirstFrameCheckBmBmHb:(NSInteger)hb;
+ (BOOL)disableSecondFrameCheckBmBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexBmBmHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)rotatedSizeForindexBmBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmHb:(NSInteger)hb;

@end
