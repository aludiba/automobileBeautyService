#import "hbRACStringSequenceY.h"
@implementation hbRACStringSequenceY
+ (BOOL)eSequencewithstringwOffset:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)ahead:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)ttail:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)rarray:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)idescription:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
