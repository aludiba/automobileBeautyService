#import "GPUImageTwoInputFilter.h"
@interface GPUImageChromaKeyBlendFilter : GPUImageTwoInputFilter
{
    GLint colorToReplaceUniform, thresholdSensitivityUniform, smoothingUniform;
}
@property(readwrite, nonatomic) CGFloat thresholdSensitivity;
@property(readwrite, nonatomic) CGFloat smoothing;
- (void)setColorToReplaceRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent;
@end
