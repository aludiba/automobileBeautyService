#import "GPUImageFilter.h"
@interface GPUImageParallelCoordinateLineTransformFilter : GPUImageFilter
{
    GLubyte *rawImagePixels;
    GLfloat *lineCoordinates;
    unsigned int maxLinePairsToRender, linePairsToRender;
}
@end
