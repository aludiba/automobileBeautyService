#import "GPUImageFilter.h"
@interface GPUImageBulgeDistortionFilter : GPUImageFilter
{
    GLint aspectRatioUniform, radiusUniform, centerUniform, scaleUniform;
}
@property(readwrite, nonatomic) CGPoint center;
@property(readwrite, nonatomic) CGFloat radius;
@property(readwrite, nonatomic) CGFloat scale;
@end
