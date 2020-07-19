#import "hbNSObjectY+Hb.h"
@implementation hbNSObjectY (Hb)
+ (BOOL)pMj_EncodebmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)KMj_DecodebmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
