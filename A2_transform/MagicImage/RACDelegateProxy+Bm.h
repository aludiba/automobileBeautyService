#import <Foundation/Foundation.h>
#import "RACDelegateProxy.h"
#import "NSObject+RACSelectorSignal.h"
#import <objc/runtime.h>

@interface RACDelegateProxy (Bm)
+ (BOOL)initWithProtocolBm:(NSInteger)BM;
+ (BOOL)signalForSelectorBm:(NSInteger)BM;
+ (BOOL)isProxyBm:(NSInteger)BM;
+ (BOOL)forwardInvocationBm:(NSInteger)BM;
+ (BOOL)methodSignatureForSelectorBm:(NSInteger)BM;
+ (BOOL)respondsToSelectorBm:(NSInteger)BM;

@end
