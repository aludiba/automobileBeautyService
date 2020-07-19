#import "BMGPUImageBrightnessFilterm+Bm-Deletecomments.h"
@implementation BMGPUImageBrightnessFilterm (Bm-Deletecomments)
+ (BOOL)CInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)xSetbrightnessbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}

@end
