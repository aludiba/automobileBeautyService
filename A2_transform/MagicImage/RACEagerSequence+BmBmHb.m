#import "RACEagerSequence+BmBmHb.h"
@implementation RACEagerSequence (BmBmHb)
+ (BOOL)returnBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)bindBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)concatBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)eagerSequenceBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)lazySequenceBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)foldRightWithStartReduceBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
