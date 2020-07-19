#import "BMGPUImageColorPackingFilterd+-Deletecomments.h"
@implementation BMGPUImageColorPackingFilterd (-Deletecomments)
+ (BOOL)Zinit-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)kSetupfilterforsize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)SsizeOfFBO-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)eoutputFrameSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
