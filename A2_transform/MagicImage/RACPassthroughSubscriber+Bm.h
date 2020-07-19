#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACPassthroughSubscriber.h"
#import "RACCompoundDisposable.h"
#import "RACSignal.h"
#import "RACSignalProvider.h"

@interface RACPassthroughSubscriber (Bm)
+ (BOOL)initWithSubscriberSignalDisposableBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;
+ (BOOL)sendErrorBm:(NSInteger)BM;
+ (BOOL)sendCompletedBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM;

@end
