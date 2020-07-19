#import "BMGPUImageGlassSphereFiltere+Bm-Deletecomments.h"
@implementation BMGPUImageGlassSphereFiltere (Bm-Deletecomments)
+ (BOOL)SinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
