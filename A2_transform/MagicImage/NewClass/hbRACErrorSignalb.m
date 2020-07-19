#import "hbRACErrorSignalb.h"
@implementation hbRACErrorSignalb
+ (BOOL)YError:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)KSubscribe:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
