//
//  QSSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSSetTableViewCell.h"
#import "QSSetViewModel.h"
@interface QSSetTableViewCell()
@property(nonatomic, strong)UILabel *QStitleLbl;
@property(nonatomic, strong)UILabel *QScontentLbl;
@property(nonatomic, strong)UIImageView *QSarrowImgView;
@end
@implementation QSSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = QSH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.QStitleLbl];
        [self.contentView addSubview:self.QScontentLbl];
        [self.contentView addSubview:self.QSarrowImgView];
        
        [self.QStitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(QSWIDTH * 0.5 - 20);
            make.height.mas_equalTo(21);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.QSarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.QScontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.QSarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(QSWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(16);
        }];
    }
    return self;
}
- (void)setModel:(QSSetViewModel *)model{
    _model = model;
    self.QStitleLbl.text = _model.QStitle;
    self.QScontentLbl.text = _model.QScontent;
}
#pragma mark - 属性懒加载
- (UILabel *)QStitleLbl{
    if (!_QStitleLbl) {
        _QStitleLbl = [[UILabel alloc] init];
        _QStitleLbl.textColor = [UIColor blackColor];
        _QStitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _QStitleLbl;
}
- (UILabel *)QScontentLbl{
    if (!_QScontentLbl) {
        _QScontentLbl = [[UILabel alloc] init];
        _QScontentLbl.textAlignment = NSTextAlignmentRight;
        _QScontentLbl.textColor = [UIColor purpleColor];
        _QScontentLbl.font = [UIFont systemFontOfSize:20];
    }
    return _QScontentLbl;
}
- (UIImageView *)QSarrowImgView{
    if (!_QSarrowImgView) {
        _QSarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QS_arrow_right"]];
    }
    return _QSarrowImgView;
}
@end
