#import "RACSignal+DebuggingBmBmHb.h"
@implementation RACSignal (DebuggingBmBmHb)
+ (BOOL)logAllBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)logNextBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)logErrorBmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)logCompletedBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
