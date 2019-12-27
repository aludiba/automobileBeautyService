//
//  AFSScoringSaveTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSScoringSaveTableViewCell.h"
#import "AFSScorecardViewModel.h"

@interface AFSScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *AFSSaveButton;//保存按钮
@end
@implementation AFSScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)AFSSetContentView{
    [self.contentView addSubview:self.AFSSaveButton];
    
    [self.AFSSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(60);
        make.top.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-60);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
}
- (void)AFSSave:(UIButton *)sender{
    if (self.AFSScorecardSaveB) {
        self.AFSScorecardSaveB(self);
    }
}
- (void)setAFSModel:(AFSScorecardViewModel *)AFSModel{
    _AFSModel = AFSModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)AFSSaveButton{
    if (!_AFSSaveButton) {
        _AFSSaveButton = [[UIButton alloc] init];
        [_AFSSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_AFSSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _AFSSaveButton.backgroundColor = [UIColor systemGreenColor];
        _AFSSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:25];
        _AFSSaveButton.layer.cornerRadius = 8.0f;
        _AFSSaveButton.layer.masksToBounds = YES;
        _AFSSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFSSaveButton addTarget:self action:@selector(AFSSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSSaveButton;
}
@end
