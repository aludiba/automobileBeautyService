#import "RACEagerSequence+BmBmBmHb.h"
@implementation RACEagerSequence (BmBmBmHb)
+ (BOOL)returnBmBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)bindBmBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)concatBmBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)eagerSequenceBmBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)lazySequenceBmBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)foldRightWithStartReduceBmBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
