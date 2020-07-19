#import "hbRACEagerSequenceQ.h"
@implementation hbRACEagerSequenceQ
+ (BOOL)lReturn:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)mBind:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)PConcat:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)VeagerSequence:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)plazySequence:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)UFoldrightwithstartiReduce:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
