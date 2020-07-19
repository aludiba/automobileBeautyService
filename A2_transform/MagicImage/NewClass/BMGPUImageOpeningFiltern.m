#import "BMGPUImageOpeningFiltern.h"
@implementation BMGPUImageOpeningFiltern
+ (BOOL)vinit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)CInitwithradius:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)TSetverticaltexelspacing:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)qSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
