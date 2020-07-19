#import "NSLayoutConstraint+MASDebugAdditionsBmBm.h"
@implementation NSLayoutConstraint (MASDebugAdditionsBmBm)
+ (BOOL)layoutRelationDescriptionsByValueBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)layoutAttributeDescriptionsByValueBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)layoutPriorityDescriptionsByValueBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)descriptionForObjectBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
