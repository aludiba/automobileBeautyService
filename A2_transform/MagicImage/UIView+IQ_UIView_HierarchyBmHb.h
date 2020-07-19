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

@interface UIView (IQ_UIView_HierarchyBmHb)
+ (BOOL)viewContainingControllerBmHb:(NSInteger)hb;
+ (BOOL)topMostControllerBmHb:(NSInteger)hb;
+ (BOOL)parentContainerViewControllerBmHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeBmHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeBelowviewBmHb:(NSInteger)hb;
+ (BOOL)_IQcanBecomeFirstResponderBmHb:(NSInteger)hb;
+ (BOOL)responderSiblingsBmHb:(NSInteger)hb;
+ (BOOL)deepResponderViewsBmHb:(NSInteger)hb;
+ (BOOL)convertTransformToViewBmHb:(NSInteger)hb;
+ (BOOL)depthBmHb:(NSInteger)hb;
+ (BOOL)subHierarchyBmHb:(NSInteger)hb;
+ (BOOL)superHierarchyBmHb:(NSInteger)hb;
+ (BOOL)debugHierarchyBmHb:(NSInteger)hb;
+ (BOOL)textFieldSearchBarBmHb:(NSInteger)hb;
+ (BOOL)isAlertViewTextFieldBmHb:(NSInteger)hb;

@end
