#import "hbUIRefreshControla.h"
@implementation hbUIRefreshControla
+ (BOOL)uRac_Commandbmbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)LSetrac_Commandbmbm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
