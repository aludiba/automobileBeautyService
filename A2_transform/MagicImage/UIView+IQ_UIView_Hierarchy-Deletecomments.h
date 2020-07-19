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

@interface UIView (IQ_UIView_Hierarchy-Deletecomments)
+ (BOOL)viewContainingController-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)topMostController-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)parentContainerViewController-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)superviewOfClassType-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)superviewOfClassTypeBelowview-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_IQcanBecomeFirstResponder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)responderSiblings-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deepResponderViews-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)convertTransformToView-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)depth-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subHierarchy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)superHierarchy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)debugHierarchy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)textFieldSearchBar-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isAlertViewTextField-Deletecomments:(NSInteger)-deleteComments;

@end
