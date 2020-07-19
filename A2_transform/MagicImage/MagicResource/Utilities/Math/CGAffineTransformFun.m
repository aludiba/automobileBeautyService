#import "CGAffineTransformFun.h"
@implementation CGAffineTransformFun
+ (CGFloat)radianWithCGAffineTransform:(CGAffineTransform)t {
    double sx = [self scaleXWithCGAffineTransform:t];
    double cos_radian = t.a / sx;
    double sin_radian = t.b / sx;
    double radian = acos(cos_radian);
    if (sin_radian > 0)
    {
        radian = radian;
    }
    else if (sin_radian < 0)
    {
        radian = 2 * M_PI - radian;
    }
    else  {
        if (cos_radian > 0)
        {
            radian = radian;
        }
        else
        {
            radian = 2* M_PI - radian;
        }
    }
    return radian;
}
+ (CGFloat)scaleXWithCGAffineTransform:(CGAffineTransform)t {
    return sqrt(pow(t.a, 2)  + pow(t.b, 2));
}
+ (CGFloat)scaleYWithCGAffineTransform:(CGAffineTransform)t {
    return sqrt(pow(t.c, 2) + pow(t.d, 2));
}
+ (void)translateWithCGAffineTranform:(CGAffineTransform)t tx:(CGFloat *)tx ty:(CGFloat *)ty {
    float dx = t.tx;
    float dy = t.ty;
    *tx = dx;
    *ty = dy;
}
+ (CGRect)CGRectForCenterWithAffineTransform:(CGAffineTransform)t CGRect:(CGRect)rect {
    float cx = rect.origin.x + rect.size.width / 2;
    float cy = rect.origin.y + rect.size.height / 2;
    CGPoint center = CGPointMake(cx, cy);
    rect.origin.x = rect.origin.x - center.x;
    rect.origin.y = rect.origin.y - center.y;
    CGRect rect_0 = CGRectApplyAffineTransform(rect, t);
    rect_0.origin.x = rect_0.origin.x + center.x;
    rect_0.origin.y = rect_0.origin.y + center.y;
    return rect_0;
}
@end
