#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACPassthroughSubscriber.h"
#import "RACCompoundDisposable.h"
#import "RACSignal.h"
#import "RACSignalProvider.h"
#import "RACPassthroughSubscriber+Bm.h"

@interface RACPassthroughSubscriber (BmBm)
+ (BOOL)initWithSubscriberSignalDisposableBmBm:(NSInteger)BM;
+ (BOOL)sendNextBmBm:(NSInteger)BM;
+ (BOOL)sendErrorBmBm:(NSInteger)BM;
+ (BOOL)sendCompletedBmBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM;

@end
