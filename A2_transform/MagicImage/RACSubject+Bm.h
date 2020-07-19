#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACSubject.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"

@interface RACSubject (Bm)
+ (BOOL)subjectBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)subscribeBm:(NSInteger)BM;
+ (BOOL)enumerateSubscribersUsingBlockBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;
+ (BOOL)sendErrorBm:(NSInteger)BM;
+ (BOOL)sendCompletedBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM;

@end
