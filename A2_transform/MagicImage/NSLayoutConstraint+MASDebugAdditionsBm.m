#import "NSLayoutConstraint+MASDebugAdditionsBm.h"
@implementation NSLayoutConstraint (MASDebugAdditionsBm)
+ (BOOL)layoutRelationDescriptionsByValueBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)layoutAttributeDescriptionsByValueBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)layoutPriorityDescriptionsByValueBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)descriptionForObjectBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
