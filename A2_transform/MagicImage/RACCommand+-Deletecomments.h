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

@interface RACCommand (-Deletecomments)
+ (BOOL)allowsConcurrentExecution-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAllowsConcurrentExecution-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithSignalBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithEnabledSignalblock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)execute-Deletecomments:(NSInteger)-deleteComments;

@end
