#import "GPUImageGrayscaleFilter+-Deletecomments.h"
@implementation GPUImageGrayscaleFilter (-Deletecomments)
+ (BOOL)renderToTextureWithVerticesTexturecoordinates-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)providesMonochromeOutput-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
