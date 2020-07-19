#import "RACSignal+DebuggingHb.h"
@implementation RACSignal (DebuggingHb)
+ (BOOL)logAllHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)logNextHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)logErrorHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)logCompletedHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
