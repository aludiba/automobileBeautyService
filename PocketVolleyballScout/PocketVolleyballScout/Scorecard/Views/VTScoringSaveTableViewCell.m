//
//  VTScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTScoringSaveTableViewCell.h"
#import "VTScorecardViewModel.h"

@interface VTScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *VTSaveButton;//保存按钮
@end
@implementation VTScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self VTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)VTSetContentView{
    [self.contentView addSubview:self.VTSaveButton];
    
    [self.VTSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(110);
        make.top.equalTo(self.contentView).offset(5);
        make.trailing.equalTo(self.contentView).offset(-110);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
}
- (void)VTSave:(UIButton *)sender{
    if (self.VTScorecardSaveB) {
        self.VTScorecardSaveB(self);
    }
}
- (void)setVTModel:(VTScorecardViewModel *)VTModel{
    _VTModel = VTModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)VTSaveButton{
    if (!_VTSaveButton) {
        _VTSaveButton = [[UIButton alloc] init];
        [_VTSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_VTSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _VTSaveButton.backgroundColor = [UIColor systemBlueColor];
        _VTSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _VTSaveButton.layer.cornerRadius = 8.0f;
        _VTSaveButton.layer.masksToBounds = YES;
        _VTSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTSaveButton addTarget:self action:@selector(VTSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTSaveButton;
}
@end
