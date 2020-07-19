#import "YYClassIvarInfo+Hb.h"
@implementation YYClassIvarInfo (Hb)
+ (BOOL)initWithIvarHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
