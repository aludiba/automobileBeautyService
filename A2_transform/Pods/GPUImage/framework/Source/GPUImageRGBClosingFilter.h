#import "GPUImageFilterGroup.h"
@class GPUImageRGBErosionFilter;
@class GPUImageRGBDilationFilter;
@interface GPUImageRGBClosingFilter : GPUImageFilterGroup
{
    GPUImageRGBErosionFilter *erosionFilter;
    GPUImageRGBDilationFilter *dilationFilter;
}
- (id)initWithRadius:(NSUInteger)radius;
@end
