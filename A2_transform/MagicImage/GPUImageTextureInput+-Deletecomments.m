#import "GPUImageTextureInput+-Deletecomments.h"
@implementation GPUImageTextureInput (-Deletecomments)
+ (BOOL)initWithTextureSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)processTextureWithFrameTime-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
