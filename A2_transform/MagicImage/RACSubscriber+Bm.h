#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACSubscriber+Private.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"

@interface RACSubscriber (Bm)
+ (BOOL)subscriberWithNextErrorCompletedBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;
+ (BOOL)sendErrorBm:(NSInteger)BM;
+ (BOOL)sendCompletedBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM;

@end
