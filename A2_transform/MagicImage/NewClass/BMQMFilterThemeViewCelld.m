#import "BMQMFilterThemeViewCelld.h"
@implementation BMQMFilterThemeViewCelld
+ (BOOL)pawakeFromNib:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)DSetselected:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
