#import "RACSignal+TestingHb.h"
@implementation RACSignal (TestingHb)
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeoutHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedTimeoutHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
