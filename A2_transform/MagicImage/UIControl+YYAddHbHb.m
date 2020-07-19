#import "UIControl+YYAddHbHb.h"
@implementation UIControl (YYAddHbHb)
+ (BOOL)removeAllTargetsHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setTargetActionForcontroleventsHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)addBlockForControlEventsBlockHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setBlockForControlEventsBlockHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)removeAllBlocksForControlEventsHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)_yy_allUIControlBlockTargetsHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
