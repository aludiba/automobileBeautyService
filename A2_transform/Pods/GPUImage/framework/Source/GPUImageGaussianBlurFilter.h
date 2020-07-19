#import "GPUImageTwoPassTextureSamplingFilter.h"
@interface GPUImageGaussianBlurFilter : GPUImageTwoPassTextureSamplingFilter 
{
    BOOL shouldResizeBlurRadiusWithImageSize;
    CGFloat _blurRadiusInPixels;
}
@property (readwrite, nonatomic) CGFloat texelSpacingMultiplier;
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property (readwrite, nonatomic) CGFloat blurRadiusAsFractionOfImageWidth;
@property (readwrite, nonatomic) CGFloat blurRadiusAsFractionOfImageHeight;
@property(readwrite, nonatomic) NSUInteger blurPasses;
+ (NSString *)vertexShaderForStandardBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
+ (NSString *)fragmentShaderForStandardBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
+ (NSString *)vertexShaderForOptimizedBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
+ (NSString *)fragmentShaderForOptimizedBlurOfRadius:(NSUInteger)blurRadius sigma:(CGFloat)sigma;
- (void)switchToVertexShader:(NSString *)newVertexShader fragmentShader:(NSString *)newFragmentShader;
@end
