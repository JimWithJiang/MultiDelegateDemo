//
//  ViewController3.m
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import "ViewController3.h"
#import "Manager.h"
#import <objc/message.h>

@interface ViewController3 ()<ManagerDelegate>

@end

@implementation ViewController3


- (void)dealloc{
    
    [[Manager shareManager] deleteDelegate:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[Manager shareManager] addDelegate:self];
  
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)manager:(Manager *)manager didBottonClick:(UIButton *)button{
    
    NSLog(@"我是item3，接受到了按钮点击的消息，按钮地址是%p",button);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
