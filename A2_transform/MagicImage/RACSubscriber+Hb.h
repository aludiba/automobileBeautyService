#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACSubscriber+Private.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"

@interface RACSubscriber (Hb)
+ (BOOL)subscriberWithNextErrorCompletedHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;
+ (BOOL)sendErrorHb:(NSInteger)hb;
+ (BOOL)sendCompletedHb:(NSInteger)hb;
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb;

@end
