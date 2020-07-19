#import "BKQMBaseImageView.h"
@interface BKQMBaseImageView ()
@property (nonatomic, assign) CGSize BKconstraintSize;
@end
@implementation BKQMBaseImageView
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        _BKconstraintSize = BKframe.size;
    }
    return self;
}
- (void)BKsetImage:(UIImage *)BKimage
{
    size_t BKw = CGImageGetWidth(BKimage.CGImage);
    size_t BKh = CGImageGetHeight(BKimage.CGImage);
    CGFloat BKscaleX = _BKconstraintSize.width/BKw;
    CGFloat BKscaleY = _BKconstraintSize.height/BKh;
    CGFloat BKscale = MIN(BKscaleX, BKscaleY);
    CGPoint BKcenter = self.center;
    CGRect BKresizeRect = self.frame;
    BKresizeRect.size.width = (int)(BKscale * BKw + 0.5);
    BKresizeRect.size.height = (int)(BKscale * BKh + 0.5);
    self.frame = BKresizeRect;
    self.center = BKcenter;
    [super setImage:BKimage];
}
@end
