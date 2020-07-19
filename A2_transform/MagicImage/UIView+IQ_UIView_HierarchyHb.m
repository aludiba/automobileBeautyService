#import "UIView+IQ_UIView_HierarchyHb.h"
@implementation UIView (IQ_UIView_HierarchyHb)
+ (BOOL)viewContainingControllerHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)topMostControllerHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)parentContainerViewControllerHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)superviewOfClassTypeHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)superviewOfClassTypeBelowviewHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)_IQcanBecomeFirstResponderHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)responderSiblingsHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)deepResponderViewsHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)convertTransformToViewHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)depthHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)subHierarchyHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)superHierarchyHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)debugHierarchyHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)textFieldSearchBarHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)isAlertViewTextFieldHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
