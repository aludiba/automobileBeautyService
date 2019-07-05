//
//  stbaAddContactSaveTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/5.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddContactSaveTableViewCell.h"
@interface stbaAddContactSaveTableViewCell()
@property(nonatomic, strong)UILabel *completeLabel;
@end
@implementation stbaAddContactSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.completeLabel];
        
        [self.completeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)completeLabel{
    if (!_completeLabel) {
        _completeLabel = [[UILabel alloc] init];
        _completeLabel.backgroundColor = [UIColor blueColor];
        _completeLabel.textColor = [UIColor whiteColor];
        _completeLabel.layer.cornerRadius = 4;
        _completeLabel.layer.masksToBounds = YES;
        _completeLabel.text = @"Complete";
        _completeLabel.font = [UIFont systemFontOfSize:16];
        _completeLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _completeLabel;
}
@end
