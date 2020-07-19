#import "hbGPUImageRawDataInputM.h"
@implementation hbGPUImageRawDataInputM
+ (BOOL)ZInitwithbytessizebm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)oInitwithbytessizepixelformatbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)hInitwithbytessizepixelformattypebm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)PDeallocbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)eUploadbytesbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)HUpdatedatafrombytessizebm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)dProcessdatabm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)hProcessdatafortimestampbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)ZOutputimagesizebm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
