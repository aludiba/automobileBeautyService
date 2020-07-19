#import "GPUImageFilterGroup.h"
@class GPUImageGaussianBlurFilter;
@interface GPUImageTiltShiftFilter : GPUImageFilterGroup
{
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageFilter *tiltShiftFilter;
}
@property(readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property(readwrite, nonatomic) CGFloat topFocusLevel;
@property(readwrite, nonatomic) CGFloat bottomFocusLevel; 
@property(readwrite, nonatomic) CGFloat focusFallOffRate; 
@end
