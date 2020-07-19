#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACPassthroughSubscriber.h"
#import "RACCompoundDisposable.h"
#import "RACSignal.h"
#import "RACSignalProvider.h"

@interface RACPassthroughSubscriber (Hb)
+ (BOOL)initWithSubscriberSignalDisposableHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;
+ (BOOL)sendErrorHb:(NSInteger)hb;
+ (BOOL)sendCompletedHb:(NSInteger)hb;
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb;

@end
