#import "RACUnit+Hb.h"
@implementation RACUnit (Hb)
+ (BOOL)defaultUnitHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
