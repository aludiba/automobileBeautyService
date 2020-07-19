#import "GPUImageSketchFilter+BmBm-Deletecomments.h"
@implementation GPUImageSketchFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
