#import <Foundation/Foundation.h>
#import "BMRACChannelTerminalp.h"
#import "BMRACChannelTerminalp+Bm.h"

@interface BMRACChannelTerminalp (BmHb)
+ (BOOL)TInitwithvaluesxOtherterminalBmHb:(NSInteger)hb;
+ (BOOL)kSubscribeBmHb:(NSInteger)hb;
+ (BOOL)fSendnextBmHb:(NSInteger)hb;
+ (BOOL)FSenderrorBmHb:(NSInteger)hb;
+ (BOOL)AsendCompletedBmHb:(NSInteger)hb;
+ (BOOL)lDidsubscribewithdisposableBmHb:(NSInteger)hb;

@end
