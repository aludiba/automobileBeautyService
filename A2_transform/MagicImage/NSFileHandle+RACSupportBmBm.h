#import <Foundation/Foundation.h>
#import "NSFileHandle+RACSupport.h"
#import "NSNotificationCenter+RACSupport.h"
#import "NSObject+RACDescription.h"
#import "RACReplaySubject.h"
#import "RACDisposable.h"
#import "NSFileHandle+RACSupportBm.h"

@interface NSFileHandle (RACSupportBmBm)
+ (BOOL)rac_readInBackgroundBmBm:(NSInteger)BM;

@end
