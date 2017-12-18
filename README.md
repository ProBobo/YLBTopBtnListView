# YLBTopBtnListView
通用按钮选项卡

安装：pod 'YLBTopBtnListView'

或者：pod 'YLBTopBtnListView', :git =>'https://github.com/ylb3303/YLBTopBtnListView.git'

用法：<br>NSMutableArray *titleArray = [@[@"按钮标题1",
                                    @"按钮标题2",
                                    @"按钮标题3",
                                    @"按钮标题4"
                                    ] mutableCopy];
<br>CGFloat fontHeight = 16;
<br>UIColor *colorNormal = [UIColor grayColor];
<br>UIColor *colorSelected = [UIColor purpleColor];<br>
<br>TopGiftListBtnView *_topGiftListBtnView = [[TopGiftListBtnView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 44) titleArray:titleArray fontHeight:fontHeight colorNormal:colorNormal colorSelected:colorSelected titleBtn_Block:^(int tag) {
        [weakSelf titleBtn_Block_Method:tag];
    }];
