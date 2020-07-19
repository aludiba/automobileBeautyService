#import "GPUImageFilterGroup.h"
@class GPUImageErosionFilter;
@class GPUImageDilationFilter;
@interface GPUImageOpeningFilter : GPUImageFilterGroup
{
    GPUImageErosionFilter *erosionFilter;
    GPUImageDilationFilter *dilationFilter;
}
@property(readwrite, nonatomic) CGFloat verticalTexelSpacing, horizontalTexelSpacing;
- (id)initWithRadius:(NSUInteger)radius;
@end
