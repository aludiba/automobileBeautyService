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

@interface UIView (IQ_UIView_HierarchyBmBmHb)
+ (BOOL)viewContainingControllerBmBmHb:(NSInteger)hb;
+ (BOOL)topMostControllerBmBmHb:(NSInteger)hb;
+ (BOOL)parentContainerViewControllerBmBmHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeBmBmHb:(NSInteger)hb;
+ (BOOL)superviewOfClassTypeBelowviewBmBmHb:(NSInteger)hb;
+ (BOOL)_IQcanBecomeFirstResponderBmBmHb:(NSInteger)hb;
+ (BOOL)responderSiblingsBmBmHb:(NSInteger)hb;
+ (BOOL)deepResponderViewsBmBmHb:(NSInteger)hb;
+ (BOOL)convertTransformToViewBmBmHb:(NSInteger)hb;
+ (BOOL)depthBmBmHb:(NSInteger)hb;
+ (BOOL)subHierarchyBmBmHb:(NSInteger)hb;
+ (BOOL)superHierarchyBmBmHb:(NSInteger)hb;
+ (BOOL)debugHierarchyBmBmHb:(NSInteger)hb;
+ (BOOL)textFieldSearchBarBmBmHb:(NSInteger)hb;
+ (BOOL)isAlertViewTextFieldBmBmHb:(NSInteger)hb;

@end
