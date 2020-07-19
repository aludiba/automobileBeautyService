#import "RACMulticastConnection+-Deletecomments.h"
@implementation RACMulticastConnection (-Deletecomments)
+ (BOOL)initWithSourceSignalSubject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)connect-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)autoconnect-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
