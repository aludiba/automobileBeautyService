#import <Foundation/Foundation.h>
#import "RACCommand.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSArray+RACSequenceAdditions.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACPropertySubscribing.h"
#import "RACMulticastConnection.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"
#import "RACSequence.h"
#import "RACSignal+Operations.h"
#import <libkern/OSAtomic.h>
#import "RACCommand+Hb.h"

@interface RACCommand (HbHb)
+ (BOOL)allowsConcurrentExecutionHbHb:(NSInteger)hb;
+ (BOOL)setAllowsConcurrentExecutionHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithSignalBlockHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)initWithEnabledSignalblockHbHb:(NSInteger)hb;
+ (BOOL)executeHbHb:(NSInteger)hb;

@end
