#import "UIControl+YYAddBm.h"
@implementation UIControl (YYAddBm)
+ (BOOL)removeAllTargetsBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setTargetActionForcontroleventsBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)addBlockForControlEventsBlockBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setBlockForControlEventsBlockBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)removeAllBlocksForControlEventsBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)_yy_allUIControlBlockTargetsBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
