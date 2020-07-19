#import <Foundation/Foundation.h>
#import "NSData+RACSupport.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"

@interface NSData (RACSupportBm)
+ (BOOL)rac_readContentsOfURLOptionsSchedulerBm:(NSInteger)BM;

@end
