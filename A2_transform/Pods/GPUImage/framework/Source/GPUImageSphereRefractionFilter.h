#import "GPUImageFilter.h"
@interface GPUImageSphereRefractionFilter : GPUImageFilter
{
    GLint radiusUniform, centerUniform, aspectRatioUniform, refractiveIndexUniform;
}
@property(readwrite, nonatomic) CGPoint center;
@property(readwrite, nonatomic) CGFloat radius;
@property(readwrite, nonatomic) CGFloat refractiveIndex;
@end
