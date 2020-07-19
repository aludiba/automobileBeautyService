#import <UIKit/UIView.h>
#import <UIKit/UIViewController.h>
#import "IQKeyboardManagerConstants.h"
#import "IQUIView+Hierarchy.h"
#import "IQUITextFieldView+Additions.h"
#import "IQUIViewController+Additions.h"
#import <UIKit/UICollectionView.h>
#import <UIKit/UIAlertController.h>
#import <UIKit/UITableView.h>
#import <UIKit/UITextView.h>
#import <UIKit/UITextField.h>
#import <UIKit/UISearchBar.h>
#import <UIKit/UINavigationController.h>
#import <UIKit/UITabBarController.h>
#import <UIKit/UISplitViewController.h>
#import <UIKit/UIWindow.h>
#import <objc/runtime.h>
#import "IQNSArray+Sort.h"
#import "UIView+IQ_UIView_HierarchyBm.h"

@interface UIView (IQ_UIView_HierarchyBmBm)
+ (BOOL)viewContainingControllerBmBm:(NSInteger)BM;
+ (BOOL)topMostControllerBmBm:(NSInteger)BM;
+ (BOOL)parentContainerViewControllerBmBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBmBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBelowviewBmBm:(NSInteger)BM;
+ (BOOL)_IQcanBecomeFirstResponderBmBm:(NSInteger)BM;
+ (BOOL)responderSiblingsBmBm:(NSInteger)BM;
+ (BOOL)deepResponderViewsBmBm:(NSInteger)BM;
+ (BOOL)convertTransformToViewBmBm:(NSInteger)BM;
+ (BOOL)depthBmBm:(NSInteger)BM;
+ (BOOL)subHierarchyBmBm:(NSInteger)BM;
+ (BOOL)superHierarchyBmBm:(NSInteger)BM;
+ (BOOL)debugHierarchyBmBm:(NSInteger)BM;
+ (BOOL)textFieldSearchBarBmBm:(NSInteger)BM;
+ (BOOL)isAlertViewTextFieldBmBm:(NSInteger)BM;

@end
