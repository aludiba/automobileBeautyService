//
//  JBMineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBMineTableViewCell.h"
#import "JBMineModel.h"
@interface JBMineTableViewCell()
@property(nonatomic, strong)UILabel *JBTitleLbl;
@property(nonatomic, strong)UILabel *JBcontentLbl;
@property(nonatomic, strong)UIImageView *JBImgView;
@property(nonatomic, strong)UIView *JBLine;
@end
@implementation JBMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.JBTitleLbl];
        [self.contentView addSubview:self.JBcontentLbl];
        [self.contentView addSubview:self.JBImgView];
        [self.contentView addSubview:self.JBLine];
        
        [self.JBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.JBcontentLbl.mas_leading).offset(-10);
        }];
        [self.JBcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(24);
            make.trailing.equalTo(self.JBImgView.mas_leading).offset(0);
        }];
        [self.JBImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.contentView).offset(-16);
        }];
        [self.JBLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBTitleLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(1);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setJBminemodel:(JBMineModel *)JBminemodel{
    _JBminemodel = JBminemodel;
    self.JBTitleLbl.text = _JBminemodel.JBtitle;
    self.JBcontentLbl.text = _JBminemodel.JBcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)JBTitleLbl{
    if (!_JBTitleLbl) {
        _JBTitleLbl = [[UILabel alloc] init];
        _JBTitleLbl.textColor = [UIColor systemBlueColor];
        _JBTitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _JBTitleLbl;
}
- (UILabel *)JBcontentLbl{
    if (!_JBcontentLbl) {
        _JBcontentLbl = [[UILabel alloc] init];
        _JBcontentLbl.textColor = [UIColor darkGrayColor];
        _JBcontentLbl.font = [UIFont systemFontOfSize:22];
    }
    return _JBcontentLbl;
}
- (UIImageView *)JBImgView{
    if (!_JBImgView) {
        _JBImgView = [[UIImageView alloc] init];
        _JBImgView.image = [UIImage imageNamed:@"JBbtn_arrow"];
    }
    return _JBImgView;
}
- (UIView *)JBLine{
    if (!_JBLine) {
        _JBLine = [[UIView alloc] init];
        _JBLine.backgroundColor = JBH_Color(242, 242, 242, 1);
    }
    return _JBLine;
}
@end
