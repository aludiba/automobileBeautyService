#import <UIKit/UIView.h>
#import "IQKeyboardManagerConstants.h"
#import "IQUITextFieldView+Additions.h"
#import <objc/runtime.h>

@interface UIView (AdditionsBm)
+ (BOOL)setKeyboardDistanceFromTextFieldBm:(NSInteger)BM;
+ (BOOL)keyboardDistanceFromTextFieldBm:(NSInteger)BM;
+ (BOOL)setIgnoreSwitchingByNextPreviousBm:(NSInteger)BM;
+ (BOOL)ignoreSwitchingByNextPreviousBm:(NSInteger)BM;
+ (BOOL)setEnableModeBm:(NSInteger)BM;
+ (BOOL)enableModeBm:(NSInteger)BM;
+ (BOOL)setShouldResignOnTouchOutsideModeBm:(NSInteger)BM;
+ (BOOL)shouldResignOnTouchOutsideModeBm:(NSInteger)BM;

@end
