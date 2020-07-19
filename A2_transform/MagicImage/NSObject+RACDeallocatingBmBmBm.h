#import <Foundation/Foundation.h>
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import <objc/message.h>
#import <objc/runtime.h>
#import "NSObject+RACDeallocatingBm.h"
#import "NSObject+RACDeallocatingBmBm.h"

@interface NSObject (RACDeallocatingBmBmBm)
+ (BOOL)rac_willDeallocSignalBmBmBm:(NSInteger)BM;
+ (BOOL)rac_deallocDisposableBmBmBm:(NSInteger)BM;

@end
