#import "UIGestureRecognizer+YYAddBm.h"
@implementation UIGestureRecognizer (YYAddBm)
+ (BOOL)initWithActionBlockBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)addActionBlockBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)removeAllActionBlocksBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
