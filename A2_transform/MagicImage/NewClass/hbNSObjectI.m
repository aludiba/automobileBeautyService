#import "hbNSObjectI.h"
@implementation hbNSObjectI
+ (BOOL)jRac_Signalforselectorbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)LRac_Signalforselectorfromprotocolbm:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
