# YLBTopBtnListView
通用按钮选项卡

安装：pod 'YLBTopBtnListView'

或者：pod 'YLBTopBtnListView', :git =>'https://github.com/ylb3303/YLBTopBtnListView.git'

用法：

NSMutableArray *titleArray = [@[@"幸运",
                                    @"奢华",
                                    @"特殊",
                                    @"积分"
                                    ] mutableCopy];
    CGFloat fontHeight = 16;
    UIColor *colorNormal = [UIColor grayColor];
    UIColor *colorSelected = [UIColor purpleColor];
    _topGiftListBtnView = [[TopGiftListBtnView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 44) titleArray:titleArray fontHeight:fontHeight colorNormal:colorNormal colorSelected:colorSelected titleBtn_Block:^(int tag) {
        [weakSelf titleBtn_Block_Method:tag];
    }];
