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
#import "UIView+IQ_UIView_HierarchyBmBm.h"

@interface UIView (IQ_UIView_HierarchyBmBmBm)
+ (BOOL)viewContainingControllerBmBmBm:(NSInteger)BM;
+ (BOOL)topMostControllerBmBmBm:(NSInteger)BM;
+ (BOOL)parentContainerViewControllerBmBmBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBmBmBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBelowviewBmBmBm:(NSInteger)BM;
+ (BOOL)_IQcanBecomeFirstResponderBmBmBm:(NSInteger)BM;
+ (BOOL)responderSiblingsBmBmBm:(NSInteger)BM;
+ (BOOL)deepResponderViewsBmBmBm:(NSInteger)BM;
+ (BOOL)convertTransformToViewBmBmBm:(NSInteger)BM;
+ (BOOL)depthBmBmBm:(NSInteger)BM;
+ (BOOL)subHierarchyBmBmBm:(NSInteger)BM;
+ (BOOL)superHierarchyBmBmBm:(NSInteger)BM;
+ (BOOL)debugHierarchyBmBmBm:(NSInteger)BM;
+ (BOOL)textFieldSearchBarBmBmBm:(NSInteger)BM;
+ (BOOL)isAlertViewTextFieldBmBmBm:(NSInteger)BM;

@end
