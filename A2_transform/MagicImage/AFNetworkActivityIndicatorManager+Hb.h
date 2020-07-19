#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "AFNetworkActivityIndicatorManager.h"
#import "AFURLSessionManager.h"

@interface AFNetworkActivityIndicatorManager (Hb)
+ (BOOL)sharedManagerHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)setEnabledHb:(NSInteger)hb;
+ (BOOL)setNetworkingActivityActionWithBlockHb:(NSInteger)hb;
+ (BOOL)isNetworkActivityOccurringHb:(NSInteger)hb;
+ (BOOL)setNetworkActivityIndicatorVisibleHb:(NSInteger)hb;
+ (BOOL)incrementActivityCountHb:(NSInteger)hb;
+ (BOOL)decrementActivityCountHb:(NSInteger)hb;
+ (BOOL)networkRequestDidStartHb:(NSInteger)hb;
+ (BOOL)networkRequestDidFinishHb:(NSInteger)hb;
+ (BOOL)setCurrentStateHb:(NSInteger)hb;
+ (BOOL)updateCurrentStateForNetworkActivityChangeHb:(NSInteger)hb;
+ (BOOL)startActivationDelayTimerHb:(NSInteger)hb;
+ (BOOL)activationDelayTimerFiredHb:(NSInteger)hb;
+ (BOOL)startCompletionDelayTimerHb:(NSInteger)hb;
+ (BOOL)completionDelayTimerFiredHb:(NSInteger)hb;
+ (BOOL)cancelActivationDelayTimerHb:(NSInteger)hb;
+ (BOOL)cancelCompletionDelayTimerHb:(NSInteger)hb;

@end
