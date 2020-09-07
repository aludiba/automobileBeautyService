#import <GPUImage/GPUImage.h>
#import "LCDQMFilterModel.h"
@interface LCDQMImageFilter : GPUImageFilter
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFilterModel:(LCDQMFilterModel *)model;
- (void)setAlpha:(CGFloat)alpha;
@end
