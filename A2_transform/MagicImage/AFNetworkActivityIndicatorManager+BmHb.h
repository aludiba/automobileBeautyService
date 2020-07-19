#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "AFNetworkActivityIndicatorManager.h"
#import "AFURLSessionManager.h"
#import "AFNetworkActivityIndicatorManager+Bm.h"

@interface AFNetworkActivityIndicatorManager (BmHb)
+ (BOOL)sharedManagerBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)setEnabledBmHb:(NSInteger)hb;
+ (BOOL)setNetworkingActivityActionWithBlockBmHb:(NSInteger)hb;
+ (BOOL)isNetworkActivityOccurringBmHb:(NSInteger)hb;
+ (BOOL)setNetworkActivityIndicatorVisibleBmHb:(NSInteger)hb;
+ (BOOL)incrementActivityCountBmHb:(NSInteger)hb;
+ (BOOL)decrementActivityCountBmHb:(NSInteger)hb;
+ (BOOL)networkRequestDidStartBmHb:(NSInteger)hb;
+ (BOOL)networkRequestDidFinishBmHb:(NSInteger)hb;
+ (BOOL)setCurrentStateBmHb:(NSInteger)hb;
+ (BOOL)updateCurrentStateForNetworkActivityChangeBmHb:(NSInteger)hb;
+ (BOOL)startActivationDelayTimerBmHb:(NSInteger)hb;
+ (BOOL)activationDelayTimerFiredBmHb:(NSInteger)hb;
+ (BOOL)startCompletionDelayTimerBmHb:(NSInteger)hb;
+ (BOOL)completionDelayTimerFiredBmHb:(NSInteger)hb;
+ (BOOL)cancelActivationDelayTimerBmHb:(NSInteger)hb;
+ (BOOL)cancelCompletionDelayTimerBmHb:(NSInteger)hb;

@end
