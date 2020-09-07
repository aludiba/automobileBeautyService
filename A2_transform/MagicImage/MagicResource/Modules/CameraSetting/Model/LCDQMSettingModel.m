#import "LCDQMSettingModel.h"
#import <YYModel.h>
@implementation LCDQMSettingModel
+ (NSDictionary<NSNumber *,NSArray<LCDQMSettingModel *> *> *)buildSettingModels
{
    NSMutableDictionary<NSNumber *, id> *LCDsettingModels = [NSMutableDictionary dictionary];
    NSData *LCDdata = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"setting.geojson" ofType:nil]];
    NSArray *LCDsettingArr = [NSJSONSerialization JSONObjectWithData:LCDdata options:NSJSONReadingMutableContainers error:nil];
    NSInteger LCDindex = 0;
    for (NSArray *LCDdictArr in LCDsettingArr) {
        NSMutableArray *LCDsettingGroupModels = [NSMutableArray array];
        for (NSDictionary *LCDdict in LCDdictArr) {
            LCDQMSettingModel *LCDmodel = [LCDQMSettingModel yy_modelWithJSON:LCDdict];
            [LCDsettingGroupModels addObject:LCDmodel];
        }
        LCDsettingModels[@(LCDindex)] = LCDsettingGroupModels;
        LCDindex++;
    }
    return LCDsettingModels;
}
@end
