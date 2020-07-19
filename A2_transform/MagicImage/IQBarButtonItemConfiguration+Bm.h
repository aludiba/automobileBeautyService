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

@interface IQBarButtonItemConfiguration (Bm)
+ (BOOL)initWithBarButtonSystemItemActionBm:(NSInteger)BM;
+ (BOOL)initWithImageActionBm:(NSInteger)BM;
+ (BOOL)initWithTitleActionBm:(NSInteger)BM;

@end
