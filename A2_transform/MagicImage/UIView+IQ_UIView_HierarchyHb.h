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

@interface UIView (IQ_UIView_HierarchyHb)
+ (BOOL)viewContainingControllerHb:(NSInteger)hb;
+ (BOOL)topMostControllerHb:(NSInteger)hb;
+ (BOOL)parentContainerViewControllerHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeBelowviewHb:(NSInteger)hb;
+ (BOOL)_IQcanBecomeFirstResponderHb:(NSInteger)hb;
+ (BOOL)responderSiblingsHb:(NSInteger)hb;
+ (BOOL)deepResponderViewsHb:(NSInteger)hb;
+ (BOOL)convertTransformToViewHb:(NSInteger)hb;
+ (BOOL)depthHb:(NSInteger)hb;
+ (BOOL)subHierarchyHb:(NSInteger)hb;
+ (BOOL)superHierarchyHb:(NSInteger)hb;
+ (BOOL)debugHierarchyHb:(NSInteger)hb;
+ (BOOL)textFieldSearchBarHb:(NSInteger)hb;
+ (BOOL)isAlertViewTextFieldHb:(NSInteger)hb;

@end
