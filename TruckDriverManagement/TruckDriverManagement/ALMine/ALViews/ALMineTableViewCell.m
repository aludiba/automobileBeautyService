//
//  ALMineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALMineTableViewCell.h"
#import "ALMineModel.h"
@interface ALMineTableViewCell()
@property(nonatomic, strong)UILabel *ALTitleLbl;
@property(nonatomic, strong)UILabel *ALcontentLbl;
@property(nonatomic, strong)UIImageView *ALImgView;
@property(nonatomic, strong)UIView *ALLine;
@end
@implementation ALMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.ALTitleLbl];
        [self.contentView addSubview:self.ALcontentLbl];
        [self.contentView addSubview:self.ALImgView];
        [self.contentView addSubview:self.ALLine];
        
        [self.ALTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.ALcontentLbl.mas_leading).offset(-10);
        }];
        [self.ALcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(24);
            make.trailing.equalTo(self.ALImgView.mas_leading).offset(0);
        }];
        [self.ALImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.contentView).offset(-16);
        }];
        [self.ALLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALTitleLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setALminemodel:(ALMineModel *)ALminemodel{
    _ALminemodel = ALminemodel;
    self.ALTitleLbl.text = _ALminemodel.ALtitle;
    self.ALcontentLbl.text = _ALminemodel.ALcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)ALTitleLbl{
    if (!_ALTitleLbl) {
        _ALTitleLbl = [[UILabel alloc] init];
        _ALTitleLbl.textColor = [UIColor blueColor];
        _ALTitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _ALTitleLbl;
}
- (UILabel *)ALcontentLbl{
    if (!_ALcontentLbl) {
        _ALcontentLbl = [[UILabel alloc] init];
        _ALcontentLbl.textColor = [UIColor blackColor];
        _ALcontentLbl.font = [UIFont systemFontOfSize:22];
    }
    return _ALcontentLbl;
}
- (UIImageView *)ALImgView{
    if (!_ALImgView) {
        _ALImgView = [[UIImageView alloc] init];
        _ALImgView.image = [UIImage imageNamed:@"ALbtn_arrow"];
    }
    return _ALImgView;
}
- (UIView *)ALLine{
    if (!_ALLine) {
        _ALLine = [[UIView alloc] init];
        _ALLine.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALLine;
}
@end
