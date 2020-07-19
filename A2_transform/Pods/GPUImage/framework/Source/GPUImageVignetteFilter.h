#import "GPUImageFilter.h"
@interface GPUImageVignetteFilter : GPUImageFilter 
{
    GLint vignetteCenterUniform, vignetteColorUniform, vignetteStartUniform, vignetteEndUniform;
}
@property (nonatomic, readwrite) CGPoint vignetteCenter;
@property (nonatomic, readwrite) GPUVector3 vignetteColor;
@property (nonatomic, readwrite) CGFloat vignetteStart;
@property (nonatomic, readwrite) CGFloat vignetteEnd;
@end
