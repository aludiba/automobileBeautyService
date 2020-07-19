#import "YYClassPropertyInfo+Hb.h"
@implementation YYClassPropertyInfo (Hb)
+ (BOOL)initWithPropertyHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
