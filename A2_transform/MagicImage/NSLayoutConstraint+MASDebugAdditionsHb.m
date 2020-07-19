#import "NSLayoutConstraint+MASDebugAdditionsHb.h"
@implementation NSLayoutConstraint (MASDebugAdditionsHb)
+ (BOOL)layoutRelationDescriptionsByValueHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)layoutAttributeDescriptionsByValueHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)layoutPriorityDescriptionsByValueHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)descriptionForObjectHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
