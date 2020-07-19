#import "RACEagerSequence+BmHb.h"
@implementation RACEagerSequence (BmHb)
+ (BOOL)returnBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)bindBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)concatBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)eagerSequenceBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)lazySequenceBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)foldRightWithStartReduceBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
