#import <UIKit/UIKit.h>
#import "UITextView+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "RACTuple.h"
#import <objc/runtime.h>

@interface UITextView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_textSignal-Deletecomments:(NSInteger)-deleteComments;

@end
