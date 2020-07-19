#import "UIGestureRecognizer+YYAddBmHb.h"
@implementation UIGestureRecognizer (YYAddBmHb)
+ (BOOL)initWithActionBlockBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)addActionBlockBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)removeAllActionBlocksBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
