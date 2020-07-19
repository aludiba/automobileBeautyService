#import <Foundation/Foundation.h>
#import "BMGPUImageFilterPipelineO.h"

@interface BMGPUImageFilterPipelineO (Bm)
+ (BOOL)lInitwithconfigurationrInputgOutputBm:(NSInteger)BM;
+ (BOOL)mInitwithconfigurationfileNInputyOutputBm:(NSInteger)BM;
+ (BOOL)Q_ParseconfigurationBm:(NSInteger)BM;
+ (BOOL)rInitwithorderedfiltersrInputzOutputBm:(NSInteger)BM;
+ (BOOL)UAddfilterHAtindexBm:(NSInteger)BM;
+ (BOOL)cAddfilterBm:(NSInteger)BM;
+ (BOOL)jReplacefilteratindexnWithfilterBm:(NSInteger)BM;
+ (BOOL)bRemovefilterBm:(NSInteger)BM;
+ (BOOL)IRemovefilteratindexBm:(NSInteger)BM;
+ (BOOL)yremoveAllFiltersBm:(NSInteger)BM;
+ (BOOL)eReplaceallfiltersBm:(NSInteger)BM;
+ (BOOL)R_refreshFiltersBm:(NSInteger)BM;
+ (BOOL)KcurrentFilteredFrameBm:(NSInteger)BM;
+ (BOOL)FCurrentfilteredframewithorientationBm:(NSInteger)BM;
+ (BOOL)ZnewCGImageFromCurrentFilteredFrameBm:(NSInteger)BM;

@end
