#import "BMUIRefreshControlH.h"
@implementation BMUIRefreshControlH
+ (BOOL)Trac_command:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)sSetrac_Command:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
