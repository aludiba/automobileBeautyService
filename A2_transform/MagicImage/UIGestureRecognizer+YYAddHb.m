#import "UIGestureRecognizer+YYAddHb.h"
@implementation UIGestureRecognizer (YYAddHb)
+ (BOOL)initWithActionBlockHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)addActionBlockHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)removeAllActionBlocksHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
