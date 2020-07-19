#import <UIKit/UIViewController.h>
#import "IQUIViewController+Additions.h"
#import <UIKit/NSLayoutConstraint.h>
#import <objc/runtime.h>

@interface UIViewController (AdditionsHb)
+ (BOOL)parentIQContainerViewControllerHb:(NSInteger)hb;
+ (BOOL)setIQLayoutGuideConstraintHb:(NSInteger)hb;
+ (BOOL)IQLayoutGuideConstraintHb:(NSInteger)hb;

@end
