#import "GPUImageFilter.h"
@interface GPUImageSwirlFilter : GPUImageFilter
{
    GLint radiusUniform, centerUniform, angleUniform;
}
@property(readwrite, nonatomic) CGPoint center;
@property(readwrite, nonatomic) CGFloat radius;
@property(readwrite, nonatomic) CGFloat angle;
@end
