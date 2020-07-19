#import "YYClassIvarInfo+Bm.h"
@implementation YYClassIvarInfo (Bm)
+ (BOOL)initWithIvarBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
