#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
@interface GPUImageHighPassFilter : GPUImageFilterGroup
{
    GPUImageLowPassFilter *lowPassFilter;
    GPUImageDifferenceBlendFilter *differenceBlendFilter;
}
@property(readwrite, nonatomic) CGFloat filterStrength;
@end
