#import "IQKeyboardManagerConstants.h"
#import "IQBarButtonItem.h"
#import <Foundation/NSObjCRuntime.h>
#import "IQTitleBarButtonItem.h"
#import "IQKeyboardManagerConstants.h"
#import "IQKeyboardManagerConstantsInternal.h"
#import <UIKit/UILabel.h>
#import <UIKit/UIButton.h>

@interface IQTitleBarButtonItem (Hb)
+ (BOOL)initWithTitleHb:(NSInteger)hb;
+ (BOOL)setTitleFontHb:(NSInteger)hb;
+ (BOOL)setTitleHb:(NSInteger)hb;
+ (BOOL)setTitleColorHb:(NSInteger)hb;
+ (BOOL)setSelectableTitleColorHb:(NSInteger)hb;
+ (BOOL)setInvocationHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;

@end
