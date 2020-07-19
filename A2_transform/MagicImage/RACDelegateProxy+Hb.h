#import <Foundation/Foundation.h>
#import "RACDelegateProxy.h"
#import "NSObject+RACSelectorSignal.h"
#import <objc/runtime.h>

@interface RACDelegateProxy (Hb)
+ (BOOL)initWithProtocolHb:(NSInteger)hb;
+ (BOOL)signalForSelectorHb:(NSInteger)hb;
+ (BOOL)isProxyHb:(NSInteger)hb;
+ (BOOL)forwardInvocationHb:(NSInteger)hb;
+ (BOOL)methodSignatureForSelectorHb:(NSInteger)hb;
+ (BOOL)respondsToSelectorHb:(NSInteger)hb;

@end
