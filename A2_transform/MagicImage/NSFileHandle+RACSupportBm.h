#import <Foundation/Foundation.h>
#import "NSFileHandle+RACSupport.h"
#import "NSNotificationCenter+RACSupport.h"
#import "NSObject+RACDescription.h"
#import "RACReplaySubject.h"
#import "RACDisposable.h"

@interface NSFileHandle (RACSupportBm)
+ (BOOL)rac_readInBackgroundBm:(NSInteger)BM;

@end
