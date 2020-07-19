#import <Foundation/Foundation.h>
#import "NSFileHandle+RACSupport.h"
#import "NSNotificationCenter+RACSupport.h"
#import "NSObject+RACDescription.h"
#import "RACReplaySubject.h"
#import "RACDisposable.h"

@interface NSFileHandle (RACSupportHb)
+ (BOOL)rac_readInBackgroundHb:(NSInteger)hb;

@end
