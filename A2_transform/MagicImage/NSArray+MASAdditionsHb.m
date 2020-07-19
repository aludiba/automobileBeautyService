#import "NSArray+MASAdditionsHb.h"
@implementation NSArray (MASAdditionsHb)
+ (BOOL)mas_makeConstraintsHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)mas_updateConstraintsHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)mas_remakeConstraintsHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)mas_commonSuperviewOfViewsHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
