#import <Foundation/Foundation.h>
@interface hbGPUImageFilterPipelineq: NSObject
+ (BOOL)ZInitwithconfigurationZInputzOutput:(NSInteger)hb;
+ (BOOL)lInitwithconfigurationfileKInputWOutput:(NSInteger)hb;
+ (BOOL)G_Parseconfiguration:(NSInteger)hb;
+ (BOOL)CInitwithorderedfiltersrInputOOutput:(NSInteger)hb;
+ (BOOL)IAddfilterEAtindex:(NSInteger)hb;
+ (BOOL)lAddfilter:(NSInteger)hb;
+ (BOOL)QReplacefilteratindexAWithfilter:(NSInteger)hb;
+ (BOOL)HRemovefilter:(NSInteger)hb;
+ (BOOL)nRemovefilteratindex:(NSInteger)hb;
+ (BOOL)LremoveAllFilters:(NSInteger)hb;
+ (BOOL)RReplaceallfilters:(NSInteger)hb;
+ (BOOL)R_refreshFilters:(NSInteger)hb;
+ (BOOL)McurrentFilteredFrame:(NSInteger)hb;
+ (BOOL)FCurrentfilteredframewithorientation:(NSInteger)hb;
+ (BOOL)hnewCGImageFromCurrentFilteredFrame:(NSInteger)hb;

@end
