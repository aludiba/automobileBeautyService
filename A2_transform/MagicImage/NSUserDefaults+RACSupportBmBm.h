#import <Foundation/Foundation.h>
#import "NSUserDefaults+RACSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSNotificationCenter+RACSupport.h"
#import "NSObject+RACDeallocating.h"
#import "RACChannel.h"
#import "RACScheduler.h"
#import "RACSignal+Operations.h"
#import "NSUserDefaults+RACSupportBm.h"

@interface NSUserDefaults (RACSupportBmBm)
+ (BOOL)rac_channelTerminalForKeyBmBm:(NSInteger)BM;

@end
