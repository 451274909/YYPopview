//
//  YYTableViewController.m
//  PopViewTest
//
//  Created by jota on 16/6/15.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YYTableViewController.h"
#import "PopView.h"

@interface YYTableViewController ()

@property (nonatomic, strong) PopView *popView;

@end

@implementation YYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (UIButton *button in self.popView.buttons) {
        [button addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    }
}


- (IBAction)addItemClick:(id)sender {
    
    [self.popView showInView:self.navigationController.view];
}

- (void)action:(UIButton *)button {
    
    [self.popView dismiss];
    
    switch (button.tag) {
        case 100:
            NSLog(@"第 1 行的 button 被点击了");
            break;
        case 101:
            NSLog(@"第 2 行的 button 被点击了");
            break;
        case 102:
            NSLog(@"第 3 行的 button 被点击了");
            break;
        case 103:
            NSLog(@"第 4 行的 button 被点击了");
            break;
        default:
            break;
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"yy" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"这是第 %ld 行测试数据", indexPath.row + 1];
    
    return cell;
}

- (PopView *)popView {
    
    if (_popView == nil) {
        _popView = [[[NSBundle mainBundle] loadNibNamed:@"PopView" owner:self options:nil] lastObject];
        [_popView setFrame:self.navigationController.view.bounds];
    }
    return _popView;
}

@end
