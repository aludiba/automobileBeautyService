#import "GPUImageFilterGroup.h"
@class GPUImageGaussianBlurFilter;
@interface GPUImageGaussianSelectiveBlurFilter : GPUImageFilterGroup 
{
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageFilter *selectiveFocusFilter;
    BOOL hasOverriddenAspectRatio;
}
@property (readwrite, nonatomic) CGFloat excludeCircleRadius;
@property (readwrite, nonatomic) CGPoint excludeCirclePoint;
@property (readwrite, nonatomic) CGFloat excludeBlurSize;
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property (readwrite, nonatomic) CGFloat aspectRatio;
@end
