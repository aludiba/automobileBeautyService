#import <Foundation/Foundation.h>
#import "RACDelegateProxy.h"
#import "NSObject+RACSelectorSignal.h"
#import <objc/runtime.h>
#import "RACDelegateProxy+Hb.h"

@interface RACDelegateProxy (HbHb)
+ (BOOL)initWithProtocolHbHb:(NSInteger)hb;
+ (BOOL)signalForSelectorHbHb:(NSInteger)hb;
+ (BOOL)isProxyHbHb:(NSInteger)hb;
+ (BOOL)forwardInvocationHbHb:(NSInteger)hb;
+ (BOOL)methodSignatureForSelectorHbHb:(NSInteger)hb;
+ (BOOL)respondsToSelectorHbHb:(NSInteger)hb;

@end
