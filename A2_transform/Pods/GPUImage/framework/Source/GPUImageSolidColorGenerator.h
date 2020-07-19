#import "GPUImageFilter.h"
@interface GPUImageSolidColorGenerator : GPUImageFilter
{
    GLint colorUniform;
    GLint useExistingAlphaUniform;
}
@property(readwrite, nonatomic) GPUVector4 color;
@property(readwrite, nonatomic, assign) BOOL useExistingAlpha; 
- (void)setColorRed:(CGFloat)redComponent green:(CGFloat)greenComponent blue:(CGFloat)blueComponent alpha:(CGFloat)alphaComponent;
@end
