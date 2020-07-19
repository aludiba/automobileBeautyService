#import <Foundation/Foundation.h>
@interface hbGPUImageFilterPipelineX: NSObject
+ (BOOL)AInitwithconfigurationuInputyOutput:(NSInteger)hb;
+ (BOOL)nInitwithconfigurationfileIInputJOutput:(NSInteger)hb;
+ (BOOL)z_Parseconfiguration:(NSInteger)hb;
+ (BOOL)JInitwithorderedfiltersjInputhOutput:(NSInteger)hb;
+ (BOOL)MAddfilterpAtindex:(NSInteger)hb;
+ (BOOL)WAddfilter:(NSInteger)hb;
+ (BOOL)GReplacefilteratindexDWithfilter:(NSInteger)hb;
+ (BOOL)URemovefilter:(NSInteger)hb;
+ (BOOL)JRemovefilteratindex:(NSInteger)hb;
+ (BOOL)FremoveAllFilters:(NSInteger)hb;
+ (BOOL)WReplaceallfilters:(NSInteger)hb;
+ (BOOL)f_refreshFilters:(NSInteger)hb;
+ (BOOL)VcurrentFilteredFrame:(NSInteger)hb;
+ (BOOL)SCurrentfilteredframewithorientation:(NSInteger)hb;
+ (BOOL)wnewCGImageFromCurrentFilteredFrame:(NSInteger)hb;

@end
