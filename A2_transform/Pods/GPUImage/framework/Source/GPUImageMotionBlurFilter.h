#import "GPUImageFilter.h"
@interface GPUImageMotionBlurFilter : GPUImageFilter
@property (readwrite, nonatomic) CGFloat blurSize;
@property (readwrite, nonatomic) CGFloat blurAngle;
@end
