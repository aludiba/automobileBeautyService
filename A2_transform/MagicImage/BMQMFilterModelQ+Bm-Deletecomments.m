#import "BMQMFilterModelQ+Bm-Deletecomments.h"
@implementation BMQMFilterModelQ (Bm-Deletecomments)
+ (BOOL)SBuildfiltermodelwithfilterpathBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)nBuildfiltermodelswithpathBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}

@end
