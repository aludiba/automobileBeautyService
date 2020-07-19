#import "NSObject+YYAddForKVOHb.h"
@implementation NSObject (YYAddForKVOHb)
+ (BOOL)addObserverBlockForKeyPathBlockHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)removeObserverBlocksForKeyPathHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)removeObserverBlocksHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)_yy_allNSObjectObserverBlocksHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
