#import "BMUIRefreshControlQ+-Deletecomments.h"
@implementation BMUIRefreshControlQ (-Deletecomments)
+ (BOOL)tRac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)ySetrac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
