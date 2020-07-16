//
//  CDSetTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDSetTableViewCell.h"
#import "CDSetViewModel.h"

@interface CDSetTableViewCell()
@property(nonatomic, strong)UILabel *CDtitleLbl;
@property(nonatomic, strong)UILabel *CDcontentLbl;
@property(nonatomic, strong)UIImageView *CDarrowImgView;
@property(nonatomic, strong)UIView *CDline;
@end
@implementation CDSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = CDH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.CDtitleLbl];
        [self.contentView addSubview:self.CDcontentLbl];
        [self.contentView addSubview:self.CDarrowImgView];
        [self.contentView addSubview:self.CDline];
        
        [self.CDtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(CDWIDTH * 0.5 - 20);
            make.height.mas_equalTo(21);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.CDarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.CDcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.CDarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(CDWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(16);
        }];
        [self.CDline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(CDSetViewModel *)model{
    _model = model;
    self.CDtitleLbl.text = _model.title;
    self.CDcontentLbl.text = _model.content;
}
#pragma mark - 属性懒加载
- (UILabel *)CDtitleLbl{
    if (!_CDtitleLbl) {
        _CDtitleLbl = [[UILabel alloc] init];
        _CDtitleLbl.textColor = [UIColor blackColor];
        _CDtitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _CDtitleLbl;
}
- (UILabel *)CDcontentLbl{
    if (!_CDcontentLbl) {
        _CDcontentLbl = [[UILabel alloc] init];
        _CDcontentLbl.textAlignment = NSTextAlignmentRight;
        _CDcontentLbl.textColor = [UIColor blueColor];
        _CDcontentLbl.font = [UIFont systemFontOfSize:15];
    }
    return _CDcontentLbl;
}
- (UIImageView *)CDarrowImgView{
    if (!_CDarrowImgView) {
        _CDarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CD_arrow_right"]];
    }
    return _CDarrowImgView;
}
- (UIView *)CDline{
    if (!_CDline) {
        _CDline = [[UIView alloc] init];
        _CDline.backgroundColor = CDH_Color(216, 218, 219, 1);
    }
    return _CDline;
}
@end
