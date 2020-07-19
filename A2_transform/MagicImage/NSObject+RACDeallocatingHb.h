#import <Foundation/Foundation.h>
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import <objc/message.h>
#import <objc/runtime.h>

@interface NSObject (RACDeallocatingHb)
+ (BOOL)rac_willDeallocSignalHb:(NSInteger)hb;
+ (BOOL)rac_deallocDisposableHb:(NSInteger)hb;

@end
