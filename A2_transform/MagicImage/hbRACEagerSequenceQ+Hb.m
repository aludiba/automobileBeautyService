#import "hbRACEagerSequenceQ+Hb.h"
@implementation hbRACEagerSequenceQ (Hb)
+ (BOOL)lReturnHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)mBindHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)PConcatHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)VeagerSequenceHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)plazySequenceHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)UFoldrightwithstartiReduceHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
