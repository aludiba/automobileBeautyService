#import "UIBezierPath+YYAddBm.h"
@implementation UIBezierPath (YYAddBm)
+ (BOOL)bezierPathWithTextFontBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
