#import "RACCommand+Hb.h"
@implementation RACCommand (Hb)
+ (BOOL)allowsConcurrentExecutionHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setAllowsConcurrentExecutionHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)initWithSignalBlockHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)initWithEnabledSignalblockHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)executeHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
