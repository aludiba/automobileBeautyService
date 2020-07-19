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

@interface RACSignal (Subscription-Deletecomments)
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeNext-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeNextCompleted-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeNextErrorCompleted-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeError-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeCompleted-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeNextError-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribeErrorCompleted-Deletecomments:(NSInteger)-deleteComments;

@end
