#import "GPUImageLevelsFilter+-Deletecomments.h"
@implementation GPUImageLevelsFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)updateUniforms-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)setMinGammaMaxMinoutMaxout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)setMinGammaMax-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setRedMinGammaMaxMinoutMaxout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)setRedMinGammaMax-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)setGreenMinGammaMaxMinoutMaxout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)setGreenMinGammaMax-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)setBlueMinGammaMaxMinoutMaxout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)setBlueMinGammaMax-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
