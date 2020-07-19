#import "GPUImageFilter.h"
@interface GPUImageWhiteBalanceFilter : GPUImageFilter
{
    GLint temperatureUniform, tintUniform;
}
@property(readwrite, nonatomic) CGFloat temperature;
@property(readwrite, nonatomic) CGFloat tint;
@end
