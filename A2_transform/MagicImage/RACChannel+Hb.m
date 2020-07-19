#import "RACChannel+Hb.h"
@implementation RACChannel (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
