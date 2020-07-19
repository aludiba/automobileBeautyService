#import "hbRACIndexSetSequencei.h"
@implementation hbRACIndexSetSequencei
+ (BOOL)qSequencewithindexsethb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)YSequencewithindexsetsequenceoffsethb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)HHeadhb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)PTailhb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)YCountbyenumeratingwithstateobjectscounthb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)XDescriptionhb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
