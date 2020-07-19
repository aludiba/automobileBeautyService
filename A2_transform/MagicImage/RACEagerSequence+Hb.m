#import "RACEagerSequence+Hb.h"
@implementation RACEagerSequence (Hb)
+ (BOOL)returnHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)bindHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)concatHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)eagerSequenceHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)lazySequenceHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)foldRightWithStartReduceHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
