#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"
#import "GPUImageHighPassFilter+Bm.h"
#import "GPUImageHighPassFilter+BmBm.h"
#import "GPUImageHighPassFilter+BmBmBm.h"

@interface GPUImageHighPassFilter (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setFilterStrengthBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)filterStrengthBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
