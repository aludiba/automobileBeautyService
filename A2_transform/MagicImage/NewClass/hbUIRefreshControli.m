#import "hbUIRefreshControli.h"
@implementation hbUIRefreshControli
+ (BOOL)Krac_command:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)dSetrac_Command:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
