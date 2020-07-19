#import <UIKit/UIKit.h>
#import "UIAlertView+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIAlertView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_buttonClickedSignal-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_willDismissSignal-Deletecomments:(NSInteger)-deleteComments;

@end
