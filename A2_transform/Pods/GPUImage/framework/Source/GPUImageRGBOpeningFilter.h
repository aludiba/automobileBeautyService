#import "GPUImageFilterGroup.h"
@class GPUImageRGBErosionFilter;
@class GPUImageRGBDilationFilter;
@interface GPUImageRGBOpeningFilter : GPUImageFilterGroup
{
    GPUImageRGBErosionFilter *erosionFilter;
    GPUImageRGBDilationFilter *dilationFilter;
}
- (id)initWithRadius:(NSUInteger)radius;
@end
