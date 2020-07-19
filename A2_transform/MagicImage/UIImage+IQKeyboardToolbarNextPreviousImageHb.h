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

@interface UIImage (IQKeyboardToolbarNextPreviousImageHb)
+ (BOOL)keyboardLeftImageHb:(NSInteger)hb;
+ (BOOL)keyboardRightImageHb:(NSInteger)hb;
+ (BOOL)keyboardUpImageHb:(NSInteger)hb;
+ (BOOL)keyboardDownImageHb:(NSInteger)hb;
+ (BOOL)keyboardPreviousImageHb:(NSInteger)hb;
+ (BOOL)keyboardNextImageHb:(NSInteger)hb;

@end
