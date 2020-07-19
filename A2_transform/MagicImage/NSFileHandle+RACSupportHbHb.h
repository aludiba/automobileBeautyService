#import <Foundation/Foundation.h>
#import "NSFileHandle+RACSupport.h"
#import "NSNotificationCenter+RACSupport.h"
#import "NSObject+RACDescription.h"
#import "RACReplaySubject.h"
#import "RACDisposable.h"
#import "NSFileHandle+RACSupportHb.h"

@interface NSFileHandle (RACSupportHbHb)
+ (BOOL)rac_readInBackgroundHbHb:(NSInteger)hb;

@end
