#import "GPUImageChromaKeyFilter+-Deletecomments.h"
@implementation GPUImageChromaKeyFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)setThresholdSensitivity-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setSmoothing-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
