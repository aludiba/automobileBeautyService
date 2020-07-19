#import "NSArray+MASAdditionsBm.h"
@implementation NSArray (MASAdditionsBm)
+ (BOOL)mas_makeConstraintsBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mas_updateConstraintsBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mas_remakeConstraintsBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mas_commonSuperviewOfViewsBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
