#import <Foundation/Foundation.h>
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import <objc/message.h>
#import <objc/runtime.h>

@interface NSObject (RACDeallocatingBm)
+ (BOOL)rac_willDeallocSignalBm:(NSInteger)BM;
+ (BOOL)rac_deallocDisposableBm:(NSInteger)BM;

@end
