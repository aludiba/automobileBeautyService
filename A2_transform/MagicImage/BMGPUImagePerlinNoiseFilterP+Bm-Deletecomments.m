#import "BMGPUImagePerlinNoiseFilterP+Bm-Deletecomments.h"
@implementation BMGPUImagePerlinNoiseFilterP (Bm-Deletecomments)
+ (BOOL)jinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)tSetscaleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)fSetcolorstartBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)JSetcolorfinishBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
