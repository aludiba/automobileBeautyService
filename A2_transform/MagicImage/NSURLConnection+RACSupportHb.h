#import <Foundation/Foundation.h>
#import "NSURLConnection+RACSupport.h"
#import "RACDisposable.h"
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACTuple.h"

@interface NSURLConnection (RACSupportHb)
+ (BOOL)rac_sendAsynchronousRequestHb:(NSInteger)hb;

@end
