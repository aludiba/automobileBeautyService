#import "RACSubject.h"
#import "RACReplaySubject.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACTuple.h"

@interface RACReplaySubject (-Deletecomments)
+ (BOOL)replaySubjectWithCapacity-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCapacity-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendCompleted-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendError-Deletecomments:(NSInteger)-deleteComments;

@end
