#import "RACUnit+HbHb.h"
@implementation RACUnit (HbHb)
+ (BOOL)defaultUnitHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
