#import "IQKeyboardManagerConstants.h"
#import "IQBarButtonItem.h"
#import <Foundation/NSObjCRuntime.h>
#import "IQTitleBarButtonItem.h"
#import "IQKeyboardManagerConstants.h"
#import "IQKeyboardManagerConstantsInternal.h"
#import <UIKit/UILabel.h>
#import <UIKit/UIButton.h>
#import "IQTitleBarButtonItem+Bm.h"

@interface IQTitleBarButtonItem (BmHb)
+ (BOOL)initWithTitleBmHb:(NSInteger)hb;
+ (BOOL)setTitleFontBmHb:(NSInteger)hb;
+ (BOOL)setTitleBmHb:(NSInteger)hb;
+ (BOOL)setTitleColorBmHb:(NSInteger)hb;
+ (BOOL)setSelectableTitleColorBmHb:(NSInteger)hb;
+ (BOOL)setInvocationBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;

@end
