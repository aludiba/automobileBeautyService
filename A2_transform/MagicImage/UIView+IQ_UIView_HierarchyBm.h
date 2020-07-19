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

@interface UIView (IQ_UIView_HierarchyBm)
+ (BOOL)viewContainingControllerBm:(NSInteger)BM;
+ (BOOL)topMostControllerBm:(NSInteger)BM;
+ (BOOL)parentContainerViewControllerBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBm:(NSInteger)BM;
+ (BOOL)superviewOfClassTypeBelowviewBm:(NSInteger)BM;
+ (BOOL)_IQcanBecomeFirstResponderBm:(NSInteger)BM;
+ (BOOL)responderSiblingsBm:(NSInteger)BM;
+ (BOOL)deepResponderViewsBm:(NSInteger)BM;
+ (BOOL)convertTransformToViewBm:(NSInteger)BM;
+ (BOOL)depthBm:(NSInteger)BM;
+ (BOOL)subHierarchyBm:(NSInteger)BM;
+ (BOOL)superHierarchyBm:(NSInteger)BM;
+ (BOOL)debugHierarchyBm:(NSInteger)BM;
+ (BOOL)textFieldSearchBarBm:(NSInteger)BM;
+ (BOOL)isAlertViewTextFieldBm:(NSInteger)BM;

@end
