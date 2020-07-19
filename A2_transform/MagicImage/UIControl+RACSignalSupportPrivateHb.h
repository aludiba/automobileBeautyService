#import <UIKit/UIKit.h>
#import "UIControl+RACSignalSupportPrivate.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACLifting.h"
#import "RACChannel.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import "UIControl+RACSignalSupport.h"

@interface UIControl (RACSignalSupportPrivateHb)
+ (BOOL)rac_channelForControlEventsKeyNilvalueHb:(NSInteger)hb;

@end
