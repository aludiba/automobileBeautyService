#import "GPUImageFilter.h"
@interface GPUImageZoomBlurFilter : GPUImageFilter
@property (readwrite, nonatomic) CGFloat blurSize;
@property (readwrite, nonatomic) CGPoint blurCenter;
@end
