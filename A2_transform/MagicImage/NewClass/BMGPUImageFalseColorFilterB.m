#import "BMGPUImageFalseColorFilterB.h"
@implementation BMGPUImageFalseColorFilterB
+ (BOOL)oInitbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)jSetfirstcolorbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)zSetsecondcolorbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)wSetfirstcolorredgreenbluebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)tSetsecondcolorredgreenbluebm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
