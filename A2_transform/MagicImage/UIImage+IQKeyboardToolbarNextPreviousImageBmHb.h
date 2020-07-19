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

@interface UIImage (IQKeyboardToolbarNextPreviousImageBmHb)
+ (BOOL)keyboardLeftImageBmHb:(NSInteger)hb;
+ (BOOL)keyboardRightImageBmHb:(NSInteger)hb;
+ (BOOL)keyboardUpImageBmHb:(NSInteger)hb;
+ (BOOL)keyboardDownImageBmHb:(NSInteger)hb;
+ (BOOL)keyboardPreviousImageBmHb:(NSInteger)hb;
+ (BOOL)keyboardNextImageBmHb:(NSInteger)hb;

@end
