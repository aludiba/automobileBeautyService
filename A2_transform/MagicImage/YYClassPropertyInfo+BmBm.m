#import "YYClassPropertyInfo+BmBm.h"
@implementation YYClassPropertyInfo (BmBm)
+ (BOOL)initWithPropertyBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
