#import "YYClassMethodInfo+Bm.h"
@implementation YYClassMethodInfo (Bm)
+ (BOOL)initWithMethodBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
