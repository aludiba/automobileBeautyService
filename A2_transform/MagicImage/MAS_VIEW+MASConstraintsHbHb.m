#import "MAS_VIEW+MASConstraintsHbHb.h"
@implementation MAS_VIEW (MASConstraintsHbHb)
+ (BOOL)mas_installedConstraintsHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
