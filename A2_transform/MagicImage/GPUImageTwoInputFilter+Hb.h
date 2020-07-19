#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"

@interface GPUImageTwoInputFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initializeAttributesHb:(NSInteger)hb;
+ (BOOL)disableFirstFrameCheckHb:(NSInteger)hb;
+ (BOOL)disableSecondFrameCheckHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)rotatedSizeForindexHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;

@end
