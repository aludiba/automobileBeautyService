#import "LCDQMBaseImageView.h"
@interface LCDQMBaseImageView ()
@property (nonatomic, assign) CGSize LCDconstraintSize;
@end
@implementation LCDQMBaseImageView
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        _LCDconstraintSize = LCDframe.size;
    }
    return self;
}
- (void)LCDsetImage:(UIImage *)LCDimage
{
    size_t LCDw = CGImageGetWidth(LCDimage.CGImage);
    size_t LCDh = CGImageGetHeight(LCDimage.CGImage);
    CGFloat LCDscaleX = _LCDconstraintSize.width/LCDw;
    CGFloat LCDscaleY = _LCDconstraintSize.height/LCDh;
    CGFloat LCDscale = MIN(LCDscaleX, LCDscaleY);
    CGPoint LCDcenter = self.center;
    CGRect LCDresizeRect = self.frame;
    LCDresizeRect.size.width = (int)(LCDscale * LCDw + 0.5);
    LCDresizeRect.size.height = (int)(LCDscale * LCDh + 0.5);
    self.frame = LCDresizeRect;
    self.center = LCDcenter;
    [super setImage:LCDimage];
}
@end
