#import "GPUImageFilter.h"
@interface GPUImageFalseColorFilter : GPUImageFilter
{
    GLint firstColorUniform, secondColorUniform;
}
@property(readwrite, nonatomic) GPUVector4 firstColor;
@property(readwrite, nonatomic) GPUVector4 secondColor;
- (void)setFirstColorRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent;
- (void)setSecondColorRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent;
@end
