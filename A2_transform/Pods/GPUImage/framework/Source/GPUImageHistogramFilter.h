#import "GPUImageFilter.h"
typedef enum { kGPUImageHistogramRed, kGPUImageHistogramGreen, kGPUImageHistogramBlue, kGPUImageHistogramRGB, kGPUImageHistogramLuminance} GPUImageHistogramType;
@interface GPUImageHistogramFilter : GPUImageFilter
{
    GPUImageHistogramType histogramType;
    GLubyte *vertexSamplingCoordinates;
    GLProgram *secondFilterProgram, *thirdFilterProgram;
    GLint secondFilterPositionAttribute, thirdFilterPositionAttribute;
}
@property(readwrite, nonatomic) NSUInteger downsamplingFactor;
- (id)initWithHistogramType:(GPUImageHistogramType)newHistogramType;
- (void)initializeSecondaryAttributes;
@end
