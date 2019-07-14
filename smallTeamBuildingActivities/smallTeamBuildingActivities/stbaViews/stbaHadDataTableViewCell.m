//
//  stbaHadDataTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaHadDataTableViewCell.h"
@interface stbaHadDataTableViewCell()
@property(nonatomic, strong)UIImageView *emptyImgView;
@end
@implementation stbaHadDataTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.promptinformationLabel];
        [self.contentView addSubview:self.emptyImgView];
        
        [self.emptyImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView).offset(133);
            make.width.mas_equalTo(237);
            make.height.mas_equalTo(126);
        }];
        [self.promptinformationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.emptyImgView.mas_bottom).offset(10);
            make.centerX.equalTo(self.contentView);
            make.size.mas_equalTo(CGSizeMake(stbaWIDTH, 20));
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
}
- (UILabel *)promptinformationLabel{
    if (!_promptinformationLabel) {
        _promptinformationLabel = [[UILabel alloc] init];
        _promptinformationLabel.backgroundColor = [UIColor clearColor];
        _promptinformationLabel.textAlignment = NSTextAlignmentCenter;
        _promptinformationLabel.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1/1.0];
        _promptinformationLabel.font = [UIFont systemFontOfSize:14.0f];
        _promptinformationLabel.text = @"Temporarily no data";
    }
    return _promptinformationLabel;
}
- (UIImageView *)emptyImgView{
    if (!_emptyImgView) {
        _emptyImgView = [[UIImageView alloc] init];
        _emptyImgView.image = [UIImage imageNamed:@"ic_empty"];
    }
    return _emptyImgView;
}
@end
