//
//  BGMineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGMineTableViewCell.h"
#import "BGMineModel.h"
@interface BGMineTableViewCell()
@property(nonatomic, strong)UILabel *BGTitleLbl;
@property(nonatomic, strong)UILabel *BGcontentLbl;
@property(nonatomic, strong)UIImageView *BGImgView;
@property(nonatomic, strong)UIView *BGLine;
@end
@implementation BGMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.BGTitleLbl];
        [self.contentView addSubview:self.BGcontentLbl];
        [self.contentView addSubview:self.BGImgView];
        [self.contentView addSubview:self.BGLine];
        
        [self.BGTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.BGcontentLbl.mas_leading).offset(-10);
        }];
        [self.BGcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(24);
            make.trailing.equalTo(self.BGImgView.mas_leading).offset(0);
        }];
        [self.BGImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.contentView).offset(-16);
        }];
        [self.BGLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGTitleLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(0);
            make.height.mas_equalTo(1);
            make.trailing.equalTo(self.contentView).offset(0);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setBGminemodel:(BGMineModel *)BGminemodel{
    _BGminemodel = BGminemodel;
    self.BGTitleLbl.text = _BGminemodel.BGtitle;
    self.BGcontentLbl.text = _BGminemodel.BGcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)BGTitleLbl{
    if (!_BGTitleLbl) {
        _BGTitleLbl = [[UILabel alloc] init];
        _BGTitleLbl.textColor = [UIColor systemBlueColor];
        _BGTitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _BGTitleLbl;
}
- (UILabel *)BGcontentLbl{
    if (!_BGcontentLbl) {
        _BGcontentLbl = [[UILabel alloc] init];
        _BGcontentLbl.textColor = [UIColor grayColor];
        _BGcontentLbl.font = [UIFont systemFontOfSize:22];
    }
    return _BGcontentLbl;
}
- (UIImageView *)BGImgView{
    if (!_BGImgView) {
        _BGImgView = [[UIImageView alloc] init];
        _BGImgView.image = [UIImage imageNamed:@"BGbtn_arrow"];
    }
    return _BGImgView;
}
- (UIView *)BGLine{
    if (!_BGLine) {
        _BGLine = [[UIView alloc] init];
        _BGLine.backgroundColor = BGH_Color(236, 236, 236, 1);
    }
    return _BGLine;
}
@end
