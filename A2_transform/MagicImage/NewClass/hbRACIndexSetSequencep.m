#import "hbRACIndexSetSequencep.h"
@implementation hbRACIndexSetSequencep
+ (BOOL)XSequencewithindexsethb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)ZSequencewithindexsetsequenceoffsethb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)rHeadhb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)NTailhb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)QCountbyenumeratingwithstateobjectscounthb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)TDescriptionhb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
