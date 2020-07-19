#import "NSObject+IQ_Logging-Deletecomments.h"
@implementation NSObject (IQ_Logging-Deletecomments)
+ (BOOL)_IQDescription-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
