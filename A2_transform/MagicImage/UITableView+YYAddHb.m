#import "UITableView+YYAddHb.h"
@implementation UITableView (YYAddHb)
+ (BOOL)updateWithBlockHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)scrollToRowInsectionAtscrollpositionAnimatedHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)insertRowAtIndexPathWithrowanimationHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)insertRowInsectionWithrowanimationHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)reloadRowAtIndexPathWithrowanimationHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)reloadRowInsectionWithrowanimationHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)deleteRowAtIndexPathWithrowanimationHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)deleteRowInsectionWithrowanimationHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)insertSectionWithrowanimationHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)deleteSectionWithrowanimationHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)reloadSectionWithrowanimationHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)clearSelectedRowsAnimatedHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
