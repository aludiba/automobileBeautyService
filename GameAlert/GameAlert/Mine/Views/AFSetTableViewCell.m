//
//  AFSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFSetTableViewCell.h"
#import "AFSetViewModel.h"
@interface AFSetTableViewCell()
@property(nonatomic, strong)UILabel *AFtitleLbl;
@property(nonatomic, strong)UILabel *AFcontentLbl;
@property(nonatomic, strong)UIImageView *AFarrowImgView;
@end
@implementation AFSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AFtitleLbl];
        [self.contentView addSubview:self.AFcontentLbl];
        [self.contentView addSubview:self.AFarrowImgView];
        
        [self.AFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(AFWIDTH * 0.5 - 20);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-35);
        }];
        [self.AFarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AFcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.AFarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AFWIDTH * 0.5 - 5 - 22 - 16);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setAFmodel:(AFSetViewModel *)AFmodel{
    _AFmodel = AFmodel;
    self.AFtitleLbl.text = _AFmodel.AFtitle;
    self.AFcontentLbl.text = _AFmodel.AFcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)AFtitleLbl{
    if (!_AFtitleLbl) {
        _AFtitleLbl = [[UILabel alloc] init];
        _AFtitleLbl.textColor = [UIColor blackColor];
        _AFtitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _AFtitleLbl;
}
- (UILabel *)AFcontentLbl{
    if (!_AFcontentLbl) {
        _AFcontentLbl = [[UILabel alloc] init];
        _AFcontentLbl.textAlignment = NSTextAlignmentRight;
        _AFcontentLbl.textColor = [UIColor blackColor];
        _AFcontentLbl.font = [UIFont boldSystemFontOfSize:22];
    }
    return _AFcontentLbl;
}
- (UIImageView *)AFarrowImgView{
    if (!_AFarrowImgView) {
        _AFarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AF_arrow_right"]];
    }
    return _AFarrowImgView;
}
@end
