#import <Foundation/Foundation.h>
#import "BMGPUImageFilterPipelineO.h"
#import "BMGPUImageFilterPipelineO+Bm.h"

@interface BMGPUImageFilterPipelineO (BmBm)
+ (BOOL)lInitwithconfigurationrInputgOutputBmBm:(NSInteger)BM;
+ (BOOL)mInitwithconfigurationfileNInputyOutputBmBm:(NSInteger)BM;
+ (BOOL)Q_ParseconfigurationBmBm:(NSInteger)BM;
+ (BOOL)rInitwithorderedfiltersrInputzOutputBmBm:(NSInteger)BM;
+ (BOOL)UAddfilterHAtindexBmBm:(NSInteger)BM;
+ (BOOL)cAddfilterBmBm:(NSInteger)BM;
+ (BOOL)jReplacefilteratindexnWithfilterBmBm:(NSInteger)BM;
+ (BOOL)bRemovefilterBmBm:(NSInteger)BM;
+ (BOOL)IRemovefilteratindexBmBm:(NSInteger)BM;
+ (BOOL)yremoveAllFiltersBmBm:(NSInteger)BM;
+ (BOOL)eReplaceallfiltersBmBm:(NSInteger)BM;
+ (BOOL)R_refreshFiltersBmBm:(NSInteger)BM;
+ (BOOL)KcurrentFilteredFrameBmBm:(NSInteger)BM;
+ (BOOL)FCurrentfilteredframewithorientationBmBm:(NSInteger)BM;
+ (BOOL)ZnewCGImageFromCurrentFilteredFrameBmBm:(NSInteger)BM;

@end
