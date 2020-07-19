#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACPassthroughSubscriber.h"
#import "RACCompoundDisposable.h"
#import "RACSignal.h"
#import "RACSignalProvider.h"
#import "RACPassthroughSubscriber+Bm.h"
#import "RACPassthroughSubscriber+BmBm.h"

@interface RACPassthroughSubscriber (BmBmBm)
+ (BOOL)initWithSubscriberSignalDisposableBmBmBm:(NSInteger)BM;
+ (BOOL)sendNextBmBmBm:(NSInteger)BM;
+ (BOOL)sendErrorBmBmBm:(NSInteger)BM;
+ (BOOL)sendCompletedBmBmBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBmBmBm:(NSInteger)BM;

@end
