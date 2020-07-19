#import "RACSignal+TestingHbHb.h"
@implementation RACSignal (TestingHbHb)
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeoutHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedTimeoutHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
