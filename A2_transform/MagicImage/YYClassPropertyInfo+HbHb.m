#import "YYClassPropertyInfo+HbHb.h"
@implementation YYClassPropertyInfo (HbHb)
+ (BOOL)initWithPropertyHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
