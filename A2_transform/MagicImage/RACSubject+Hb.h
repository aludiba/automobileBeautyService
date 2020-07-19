#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACSubject.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"

@interface RACSubject (Hb)
+ (BOOL)subjectHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;
+ (BOOL)enumerateSubscribersUsingBlockHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;
+ (BOOL)sendErrorHb:(NSInteger)hb;
+ (BOOL)sendCompletedHb:(NSInteger)hb;
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb;

@end
