#import "RTVideoIndicatorView.h"
@implementation RTVideoIndicatorView
- (void)awakeFromNib
{
    [super awakeFromNib];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.bounds;
    gradientLayer.colors = @[
                             (__bridge id)[[UIColor clearColor] CGColor],
                             (__bridge id)[[UIColor blackColor] CGColor]
                             ];
    [self.layer insertSublayer:gradientLayer atIndex:0];
}
@end
