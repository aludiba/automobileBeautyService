#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
@interface GPUImageLowPassFilter : GPUImageFilterGroup
{
    GPUImageBuffer *bufferFilter;
    GPUImageDissolveBlendFilter *dissolveBlendFilter;
}
@property(readwrite, nonatomic) CGFloat filterStrength;
@end
