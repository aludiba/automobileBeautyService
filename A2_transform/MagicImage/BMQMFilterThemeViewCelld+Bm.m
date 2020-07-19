#import "BMQMFilterThemeViewCelld+Bm.h"
@implementation BMQMFilterThemeViewCelld (Bm)
+ (BOOL)pawakeFromNibBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)DSetselectedBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
