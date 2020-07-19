#import "BMGPUImageSharpenFilterl+-Deletecomments.h"
@implementation BMGPUImageSharpenFilterl (-Deletecomments)
+ (BOOL)YInitbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)gSetupfilterforsizebmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)zSetsharpnessbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
