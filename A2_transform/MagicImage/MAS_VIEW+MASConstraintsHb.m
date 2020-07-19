#import "MAS_VIEW+MASConstraintsHb.h"
@implementation MAS_VIEW (MASConstraintsHb)
+ (BOOL)mas_installedConstraintsHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
