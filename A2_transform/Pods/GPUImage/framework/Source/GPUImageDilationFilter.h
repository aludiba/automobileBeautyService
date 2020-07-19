#import "GPUImageTwoPassTextureSamplingFilter.h"
extern NSString *const kGPUImageDilationRadiusOneVertexShaderString;
extern NSString *const kGPUImageDilationRadiusTwoVertexShaderString;
extern NSString *const kGPUImageDilationRadiusThreeVertexShaderString;
extern NSString *const kGPUImageDilationRadiusFourVertexShaderString;
@interface GPUImageDilationFilter : GPUImageTwoPassTextureSamplingFilter
- (id)initWithRadius:(NSUInteger)dilationRadius;
@end
