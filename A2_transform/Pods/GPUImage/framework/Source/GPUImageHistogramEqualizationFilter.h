#import "GPUImageFilterGroup.h"
#import "GPUImageHistogramFilter.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageRawDataInput.h"
#import "GPUImageTwoInputFilter.h"
@interface GPUImageHistogramEqualizationFilter : GPUImageFilterGroup
{
    GPUImageHistogramFilter *histogramFilter;
    GPUImageRawDataOutput *rawDataOutputFilter;
    GPUImageRawDataInput *rawDataInputFilter;
}
@property(readwrite, nonatomic) NSUInteger downsamplingFactor;
- (id)initWithHistogramType:(GPUImageHistogramType)newHistogramType;
@end
