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
#import "UIImage+IQKeyboardToolbarNextPreviousImageBm.h"

@interface UIImage (IQKeyboardToolbarNextPreviousImageBmBm)
+ (BOOL)keyboardLeftImageBmBm:(NSInteger)BM;
+ (BOOL)keyboardRightImageBmBm:(NSInteger)BM;
+ (BOOL)keyboardUpImageBmBm:(NSInteger)BM;
+ (BOOL)keyboardDownImageBmBm:(NSInteger)BM;
+ (BOOL)keyboardPreviousImageBmBm:(NSInteger)BM;
+ (BOOL)keyboardNextImageBmBm:(NSInteger)BM;

@end
