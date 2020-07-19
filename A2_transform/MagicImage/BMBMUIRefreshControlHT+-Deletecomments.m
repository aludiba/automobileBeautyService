#import "BMBMUIRefreshControlHT+-Deletecomments.h"
@implementation BMBMUIRefreshControlHT (-Deletecomments)
+ (BOOL)CTrac_Command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)nSsetrac_Command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
