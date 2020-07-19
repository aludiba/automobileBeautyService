#import <Foundation/Foundation.h>
#import "NSObject+RACKVOWrapper.h"
#import "RACDisposable.h"
#import "RACKVOTrampoline.h"
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACKVOProxy.h"

@interface RACKVOTrampoline (Hb)
+ (BOOL)initWithTargetObserverKeypathOptionsBlockHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)disposeHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHb:(NSInteger)hb;

@end
