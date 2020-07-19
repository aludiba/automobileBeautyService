#import <UIKit/UIView.h>
#import "IQKeyboardManagerConstants.h"
#import "IQUITextFieldView+Additions.h"
#import <objc/runtime.h>

@interface UIView (AdditionsHb)
+ (BOOL)setKeyboardDistanceFromTextFieldHb:(NSInteger)hb;
+ (BOOL)keyboardDistanceFromTextFieldHb:(NSInteger)hb;
+ (BOOL)setIgnoreSwitchingByNextPreviousHb:(NSInteger)hb;
+ (BOOL)ignoreSwitchingByNextPreviousHb:(NSInteger)hb;
+ (BOOL)setEnableModeHb:(NSInteger)hb;
+ (BOOL)enableModeHb:(NSInteger)hb;
+ (BOOL)setShouldResignOnTouchOutsideModeHb:(NSInteger)hb;
+ (BOOL)shouldResignOnTouchOutsideModeHb:(NSInteger)hb;

@end
