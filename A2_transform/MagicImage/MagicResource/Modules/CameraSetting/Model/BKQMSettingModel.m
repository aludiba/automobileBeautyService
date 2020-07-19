#import "BKQMSettingModel.h"
#import <YYModel.h>
@implementation BKQMSettingModel
+ (NSDictionary<NSNumber *,NSArray<BKQMSettingModel *> *> *)buildSettingModels
{
    NSMutableDictionary<NSNumber *, id> *BKsettingModels = [NSMutableDictionary dictionary];
    NSData *BKdata = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"setting.geojson" ofType:nil]];
    NSArray *BKsettingArr = [NSJSONSerialization JSONObjectWithData:BKdata options:NSJSONReadingMutableContainers error:nil];
    NSInteger BKindex = 0;
    for (NSArray *BKdictArr in BKsettingArr) {
        NSMutableArray *BKsettingGroupModels = [NSMutableArray array];
        for (NSDictionary *BKdict in BKdictArr) {
            BKQMSettingModel *BKmodel = [BKQMSettingModel yy_modelWithJSON:BKdict];
            [BKsettingGroupModels addObject:BKmodel];
        }
        BKsettingModels[@(BKindex)] = BKsettingGroupModels;
        BKindex++;
    }
    return BKsettingModels;
}
@end
