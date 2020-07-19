#import "UIControl+YYAddHb.h"
@implementation UIControl (YYAddHb)
+ (BOOL)removeAllTargetsHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setTargetActionForcontroleventsHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)addBlockForControlEventsBlockHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setBlockForControlEventsBlockHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)removeAllBlocksForControlEventsHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)_yy_allUIControlBlockTargetsHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
