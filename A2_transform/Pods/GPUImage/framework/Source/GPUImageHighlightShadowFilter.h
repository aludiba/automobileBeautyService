#import "GPUImageFilter.h"
@interface GPUImageHighlightShadowFilter : GPUImageFilter
{
    GLint shadowsUniform, highlightsUniform;
}
@property(readwrite, nonatomic) CGFloat shadows;
@property(readwrite, nonatomic) CGFloat highlights;
@end
