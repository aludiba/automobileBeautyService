#import "GPUImageFilter.h"
@interface GPUImageLineGenerator : GPUImageFilter
{
    GLint lineWidthUniform, lineColorUniform;
    GLfloat *lineCoordinates;
}
@property(readwrite, nonatomic) CGFloat lineWidth;
- (void)setLineColorRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent;
- (void)renderLinesFromArray:(GLfloat *)lineSlopeAndIntercepts count:(NSUInteger)numberOfLines frameTime:(CMTime)frameTime;
@end
