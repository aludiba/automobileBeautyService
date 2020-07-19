#import "GPUImageRawDataInput+Bm-Deletecomments.h"
@implementation GPUImageRawDataInput (Bm-Deletecomments)
+ (BOOL)initWithBytesSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)initWithBytesSizePixelformatBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)initWithBytesSizePixelformatTypeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)uploadBytesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)updateDataFromBytesSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)processDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)processDataForTimestampBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)outputImageSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
