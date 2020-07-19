#import "YYClassMethodInfo+Hb.h"
@implementation YYClassMethodInfo (Hb)
+ (BOOL)initWithMethodHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
