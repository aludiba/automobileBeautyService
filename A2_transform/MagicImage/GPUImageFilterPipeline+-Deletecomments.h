#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"

@interface GPUImageFilterPipeline (-Deletecomments)
+ (BOOL)initWithConfigurationInputOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithConfigurationFileInputOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_parseConfiguration-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithOrderedFiltersInputOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addFilterAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addFilter-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)replaceFilterAtIndexWithfilter-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeFilter-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeFilterAtIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeAllFilters-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)replaceAllFilters-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_refreshFilters-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)currentFilteredFrame-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)currentFilteredFrameWithOrientation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageFromCurrentFilteredFrame-Deletecomments:(NSInteger)-deleteComments;

@end
