#import "BMGPUImageFalseColorFilterQ.h"
@implementation BMGPUImageFalseColorFilterQ
+ (BOOL)XInitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)jSetfirstcolorbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)uSetsecondcolorbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)VSetfirstcolorredgreenbluebm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)CSetsecondcolorredgreenbluebm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
