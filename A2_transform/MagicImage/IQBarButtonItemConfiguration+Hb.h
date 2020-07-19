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

@interface IQBarButtonItemConfiguration (Hb)
+ (BOOL)initWithBarButtonSystemItemActionHb:(NSInteger)hb;
+ (BOOL)initWithImageActionHb:(NSInteger)hb;
+ (BOOL)initWithTitleActionHb:(NSInteger)hb;

@end
