#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACStream.h"
#import "RACSignal.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACDynamicSignal.h"
#import "RACEmptySignal.h"
#import "RACErrorSignal.h"
#import "RACMulticastConnection.h"
#import "RACReplaySubject.h"
#import "RACReturnSignal.h"
#import "RACScheduler.h"
#import "RACSerialDisposable.h"
#import "RACSignal+Operations.h"
#import "RACSubject.h"
#import "RACSubscriber+Private.h"
#import "RACTuple.h"
#import <libkern/OSAtomic.h>
#import "RACSignal+DebuggingBm.h"
#import "RACSignal+DebuggingBmBm.h"

@interface RACSignal (DebuggingBmBm-Deletecomments)
+ (BOOL)logAllBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)logNextBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)logErrorBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)logCompletedBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
