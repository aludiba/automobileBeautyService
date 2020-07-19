#import "MIHttpEnclosureTool+BmBm.h"
@implementation MIHttpEnclosureTool (BmBm)
+ (BOOL)GETParametersResblockBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)POSTParametersResblockBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)UploadParametersUploadparamarrayResblockBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
