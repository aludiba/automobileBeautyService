#import "UITableView+YYAddBm.h"
@implementation UITableView (YYAddBm)
+ (BOOL)updateWithBlockBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)scrollToRowInsectionAtscrollpositionAnimatedBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)insertRowAtIndexPathWithrowanimationBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)insertRowInsectionWithrowanimationBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)reloadRowAtIndexPathWithrowanimationBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)reloadRowInsectionWithrowanimationBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)deleteRowAtIndexPathWithrowanimationBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deleteRowInsectionWithrowanimationBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)insertSectionWithrowanimationBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)deleteSectionWithrowanimationBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)reloadSectionWithrowanimationBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)clearSelectedRowsAnimatedBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
