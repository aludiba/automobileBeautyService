#import <Foundation/Foundation.h>
#import "NSData+RACSupport.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"

@interface NSData (RACSupportHb)
+ (BOOL)rac_readContentsOfURLOptionsSchedulerHb:(NSInteger)hb;

@end
