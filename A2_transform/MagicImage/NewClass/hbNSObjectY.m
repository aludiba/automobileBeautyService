#import "hbNSObjectY.h"
@implementation hbNSObjectY
+ (BOOL)pMj_Encodebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)KMj_Decodebm:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
