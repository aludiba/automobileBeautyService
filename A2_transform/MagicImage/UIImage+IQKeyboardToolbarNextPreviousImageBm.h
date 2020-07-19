#import "IQToolbar.h"
#import <UIKit/UIView.h>
#import <UIKit/UIImage.h>
#import "IQUIView+IQKeyboardToolbar.h"
#import "IQKeyboardManagerConstantsInternal.h"
#import "IQKeyboardManager.h"
#import <objc/runtime.h>
#import <Foundation/NSData.h>
#import <UIKit/UIImage.h>
#import <UIKit/UILabel.h>
#import <UIKit/UIScreen.h>
#import <UIKit/UIAccessibility.h>

@interface UIImage (IQKeyboardToolbarNextPreviousImageBm)
+ (BOOL)keyboardLeftImageBm:(NSInteger)BM;
+ (BOOL)keyboardRightImageBm:(NSInteger)BM;
+ (BOOL)keyboardUpImageBm:(NSInteger)BM;
+ (BOOL)keyboardDownImageBm:(NSInteger)BM;
+ (BOOL)keyboardPreviousImageBm:(NSInteger)BM;
+ (BOOL)keyboardNextImageBm:(NSInteger)BM;

@end
