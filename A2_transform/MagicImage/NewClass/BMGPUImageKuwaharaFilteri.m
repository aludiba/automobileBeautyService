#import "BMGPUImageKuwaharaFilteri.h"
@implementation BMGPUImageKuwaharaFilteri
+ (BOOL)minit:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)RSetradius:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
