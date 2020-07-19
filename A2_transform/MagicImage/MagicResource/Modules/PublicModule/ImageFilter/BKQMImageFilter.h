#import <GPUImage/GPUImage.h>
#import "BKQMFilterModel.h"
@interface BKQMImageFilter : GPUImageFilter
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFilterModel:(BKQMFilterModel *)model;
- (void)setAlpha:(CGFloat)alpha;
@end
