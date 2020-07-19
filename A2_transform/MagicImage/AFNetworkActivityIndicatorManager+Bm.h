#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "AFNetworkActivityIndicatorManager.h"
#import "AFURLSessionManager.h"

@interface AFNetworkActivityIndicatorManager (Bm)
+ (BOOL)sharedManagerBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)setEnabledBm:(NSInteger)BM;
+ (BOOL)setNetworkingActivityActionWithBlockBm:(NSInteger)BM;
+ (BOOL)isNetworkActivityOccurringBm:(NSInteger)BM;
+ (BOOL)setNetworkActivityIndicatorVisibleBm:(NSInteger)BM;
+ (BOOL)incrementActivityCountBm:(NSInteger)BM;
+ (BOOL)decrementActivityCountBm:(NSInteger)BM;
+ (BOOL)networkRequestDidStartBm:(NSInteger)BM;
+ (BOOL)networkRequestDidFinishBm:(NSInteger)BM;
+ (BOOL)setCurrentStateBm:(NSInteger)BM;
+ (BOOL)updateCurrentStateForNetworkActivityChangeBm:(NSInteger)BM;
+ (BOOL)startActivationDelayTimerBm:(NSInteger)BM;
+ (BOOL)activationDelayTimerFiredBm:(NSInteger)BM;
+ (BOOL)startCompletionDelayTimerBm:(NSInteger)BM;
+ (BOOL)completionDelayTimerFiredBm:(NSInteger)BM;
+ (BOOL)cancelActivationDelayTimerBm:(NSInteger)BM;
+ (BOOL)cancelCompletionDelayTimerBm:(NSInteger)BM;

@end
