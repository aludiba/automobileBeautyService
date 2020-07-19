#import "NSArray+MASAdditionsBmBm.h"
@implementation NSArray (MASAdditionsBmBm)
+ (BOOL)mas_makeConstraintsBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mas_updateConstraintsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)mas_remakeConstraintsBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mas_commonSuperviewOfViewsBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
