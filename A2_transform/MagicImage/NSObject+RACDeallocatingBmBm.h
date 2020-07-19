#import <Foundation/Foundation.h>
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import <objc/message.h>
#import <objc/runtime.h>
#import "NSObject+RACDeallocatingBm.h"

@interface NSObject (RACDeallocatingBmBm)
+ (BOOL)rac_willDeallocSignalBmBm:(NSInteger)BM;
+ (BOOL)rac_deallocDisposableBmBm:(NSInteger)BM;

@end
