#import "GPUImageTwoPassFilter.h"
@interface GPUImageTwoPassTextureSamplingFilter : GPUImageTwoPassFilter
{
    GLint verticalPassTexelWidthOffsetUniform, verticalPassTexelHeightOffsetUniform, horizontalPassTexelWidthOffsetUniform, horizontalPassTexelHeightOffsetUniform;
    GLfloat verticalPassTexelWidthOffset, verticalPassTexelHeightOffset, horizontalPassTexelWidthOffset, horizontalPassTexelHeightOffset;
    CGFloat _verticalTexelSpacing, _horizontalTexelSpacing;
}
@property(readwrite, nonatomic) CGFloat verticalTexelSpacing, horizontalTexelSpacing;
@end
