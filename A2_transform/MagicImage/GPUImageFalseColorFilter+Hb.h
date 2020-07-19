#import "GPUImageFilter.h"
#import "GPUImageFalseColorFilter.h"

@interface GPUImageFalseColorFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setFirstColorHb:(NSInteger)hb;
+ (BOOL)setSecondColorHb:(NSInteger)hb;
+ (BOOL)setFirstColorRedGreenBlueHb:(NSInteger)hb;
+ (BOOL)setSecondColorRedGreenBlueHb:(NSInteger)hb;

@end
