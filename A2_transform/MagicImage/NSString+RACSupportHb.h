#import <Foundation/Foundation.h>
#import "NSString+RACSupport.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"

@interface NSString (RACSupportHb)
+ (BOOL)rac_readContentsOfURLUsedencodingSchedulerHb:(NSInteger)hb;

@end
