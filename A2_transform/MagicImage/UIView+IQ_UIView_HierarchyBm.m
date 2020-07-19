#import "UIView+IQ_UIView_HierarchyBm.h"
@implementation UIView (IQ_UIView_HierarchyBm)
+ (BOOL)viewContainingControllerBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)topMostControllerBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)parentContainerViewControllerBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)superviewOfClassTypeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)superviewOfClassTypeBelowviewBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)_IQcanBecomeFirstResponderBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)responderSiblingsBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)deepResponderViewsBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)convertTransformToViewBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)depthBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)subHierarchyBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)superHierarchyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)debugHierarchyBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)textFieldSearchBarBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)isAlertViewTextFieldBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
