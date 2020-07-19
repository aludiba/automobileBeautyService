#import <Foundation/Foundation.h>
#import "BMGPUImageFilterPipelineO.h"
#import "BMGPUImageFilterPipelineO+Bm.h"

@interface BMGPUImageFilterPipelineO (BmHb)
+ (BOOL)lInitwithconfigurationrInputgOutputBmHb:(NSInteger)hb;
+ (BOOL)mInitwithconfigurationfileNInputyOutputBmHb:(NSInteger)hb;
+ (BOOL)Q_ParseconfigurationBmHb:(NSInteger)hb;
+ (BOOL)rInitwithorderedfiltersrInputzOutputBmHb:(NSInteger)hb;
+ (BOOL)UAddfilterHAtindexBmHb:(NSInteger)hb;
+ (BOOL)cAddfilterBmHb:(NSInteger)hb;
+ (BOOL)jReplacefilteratindexnWithfilterBmHb:(NSInteger)hb;
+ (BOOL)bRemovefilterBmHb:(NSInteger)hb;
+ (BOOL)IRemovefilteratindexBmHb:(NSInteger)hb;
+ (BOOL)yremoveAllFiltersBmHb:(NSInteger)hb;
+ (BOOL)eReplaceallfiltersBmHb:(NSInteger)hb;
+ (BOOL)R_refreshFiltersBmHb:(NSInteger)hb;
+ (BOOL)KcurrentFilteredFrameBmHb:(NSInteger)hb;
+ (BOOL)FCurrentfilteredframewithorientationBmHb:(NSInteger)hb;
+ (BOOL)ZnewCGImageFromCurrentFilteredFrameBmHb:(NSInteger)hb;

@end
