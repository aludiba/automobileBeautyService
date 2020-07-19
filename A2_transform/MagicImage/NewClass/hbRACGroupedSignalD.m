#import "hbRACGroupedSignalD.h"
@implementation hbRACGroupedSignalD
+ (BOOL)HSignalwithkeyhb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
