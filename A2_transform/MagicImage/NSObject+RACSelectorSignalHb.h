#import <Foundation/Foundation.h>
#import "NSObject+RACSelectorSignal.h"
#import <ReactiveObjC/RACEXTRuntimeExtensions.h>
#import "NSInvocation+RACTypeParsing.h"
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSubject.h"
#import "RACTuple.h"
#import "NSObject+RACDescription.h"
#import <objc/message.h>
#import <objc/runtime.h>

@interface NSObject (RACSelectorSignalHb)
+ (BOOL)rac_signalForSelectorHb:(NSInteger)hb;
+ (BOOL)rac_signalForSelectorFromprotocolHb:(NSInteger)hb;

@end
