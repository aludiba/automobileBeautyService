#import "GPUImageFilterGroup.h"
@class GPUImageGaussianBlurFilter;
@class GPUImageToonFilter;
@interface GPUImageSmoothToonFilter : GPUImageFilterGroup
{
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageToonFilter *toonFilter;
}
@property(readwrite, nonatomic) CGFloat texelWidth; 
@property(readwrite, nonatomic) CGFloat texelHeight; 
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property(readwrite, nonatomic) CGFloat threshold; 
@property(readwrite, nonatomic) CGFloat quantizationLevels; 
@end
