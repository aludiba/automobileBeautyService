#import "GPUImageFilter.h"
@interface GPUImageCrosshairGenerator : GPUImageFilter
{
    GLint crosshairWidthUniform, crosshairColorUniform;
}
@property(readwrite, nonatomic) CGFloat crosshairWidth;
- (void)setCrosshairColorRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent;
- (void)renderCrosshairsFromArray:(GLfloat *)crosshairCoordinates count:(NSUInteger)numberOfCrosshairs frameTime:(CMTime)frameTime;
@end
