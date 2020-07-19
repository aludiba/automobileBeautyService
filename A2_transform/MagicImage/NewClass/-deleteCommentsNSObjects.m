#import "-deleteCommentsNSObjects.h"
@implementation -deleteCommentsNSObjects
+ (BOOL)cMj_Encodebm:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)nMj_Decodebm:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
