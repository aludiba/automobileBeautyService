#import <UIKit/UIBarButtonItem.h>
#import "IQBarButtonItem.h"
#import "IQKeyboardManagerConstantsInternal.h"
#import <UIKit/NSAttributedString.h>

@interface IQBarButtonItem (Hb)
+ (BOOL)initializeHb:(NSInteger)hb;
+ (BOOL)setTintColorHb:(NSInteger)hb;
+ (BOOL)initWithBarButtonSystemItemTargetActionHb:(NSInteger)hb;
+ (BOOL)setTargetActionHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;

@end
