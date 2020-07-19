#import "BMGPUImageRawDataInputg+Bm-Deletecomments.h"
@implementation BMGPUImageRawDataInputg (Bm-Deletecomments)
+ (BOOL)DInitwithbytessizebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)QInitwithbytessizepixelformatbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)pInitwithbytessizepixelformattypebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)oDeallocbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)EUploadbytesbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)bUpdatedatafrombytessizebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)OProcessdatabmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)BProcessdatafortimestampbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)HOutputimagesizebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
