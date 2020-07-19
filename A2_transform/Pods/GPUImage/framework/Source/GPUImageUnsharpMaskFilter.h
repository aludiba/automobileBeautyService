#import "GPUImageFilterGroup.h"
@class GPUImageGaussianBlurFilter;
@interface GPUImageUnsharpMaskFilter : GPUImageFilterGroup
{
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageFilter *unsharpMaskFilter;
}
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property(readwrite, nonatomic) CGFloat intensity;
@end
