#import <Foundation/Foundation.h>
#import "NSNotificationCenter+RACSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACDisposable.h"

@interface NSNotificationCenter (RACSupportHb)
+ (BOOL)rac_addObserverForNameObjectHb:(NSInteger)hb;

@end
