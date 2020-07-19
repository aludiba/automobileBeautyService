#import "UIBezierPath+YYAddHb.h"
@implementation UIBezierPath (YYAddHb)
+ (BOOL)bezierPathWithTextFontHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
