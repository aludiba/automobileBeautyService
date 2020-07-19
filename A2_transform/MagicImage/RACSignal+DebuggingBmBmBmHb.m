#import "RACSignal+DebuggingBmBmBmHb.h"
@implementation RACSignal (DebuggingBmBmBmHb)
+ (BOOL)logAllBmBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)logNextBmBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)logErrorBmBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)logCompletedBmBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
