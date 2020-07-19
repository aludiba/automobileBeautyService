#import <Foundation/Foundation.h>
@interface BMGPUImageFilterPipelineO: NSObject
+ (BOOL)lInitwithconfigurationrInputgOutput:(NSInteger)BM;
+ (BOOL)mInitwithconfigurationfileNInputyOutput:(NSInteger)BM;
+ (BOOL)Q_Parseconfiguration:(NSInteger)BM;
+ (BOOL)rInitwithorderedfiltersrInputzOutput:(NSInteger)BM;
+ (BOOL)UAddfilterHAtindex:(NSInteger)BM;
+ (BOOL)cAddfilter:(NSInteger)BM;
+ (BOOL)jReplacefilteratindexnWithfilter:(NSInteger)BM;
+ (BOOL)bRemovefilter:(NSInteger)BM;
+ (BOOL)IRemovefilteratindex:(NSInteger)BM;
+ (BOOL)yremoveAllFilters:(NSInteger)BM;
+ (BOOL)eReplaceallfilters:(NSInteger)BM;
+ (BOOL)R_refreshFilters:(NSInteger)BM;
+ (BOOL)KcurrentFilteredFrame:(NSInteger)BM;
+ (BOOL)FCurrentfilteredframewithorientation:(NSInteger)BM;
+ (BOOL)ZnewCGImageFromCurrentFilteredFrame:(NSInteger)BM;

@end
