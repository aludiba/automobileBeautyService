#import "MIHttpEnclosureTool+Bm.h"
@implementation MIHttpEnclosureTool (Bm)
+ (BOOL)GETParametersResblockBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)POSTParametersResblockBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)UploadParametersUploadparamarrayResblockBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
