#import "UIView+IQ_UIView_HierarchyBmHb.h"
@implementation UIView (IQ_UIView_HierarchyBmHb)
+ (BOOL)viewContainingControllerBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)topMostControllerBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)parentContainerViewControllerBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)superviewOfClassTypeBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)superviewOfClassTypeBelowviewBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)_IQcanBecomeFirstResponderBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)responderSiblingsBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)deepResponderViewsBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)convertTransformToViewBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)depthBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)subHierarchyBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)superHierarchyBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)debugHierarchyBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)textFieldSearchBarBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)isAlertViewTextFieldBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
