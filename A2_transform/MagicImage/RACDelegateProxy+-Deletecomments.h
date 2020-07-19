#import <Foundation/Foundation.h>
#import "RACDelegateProxy.h"
#import "NSObject+RACSelectorSignal.h"
#import <objc/runtime.h>

@interface RACDelegateProxy (-Deletecomments)
+ (BOOL)initWithProtocol-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)signalForSelector-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isProxy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)forwardInvocation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)methodSignatureForSelector-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)respondsToSelector-Deletecomments:(NSInteger)-deleteComments;

@end
