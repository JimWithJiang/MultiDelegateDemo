//
//  ViewController.m
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"

@interface ViewController ()<ManagerDelegate>

@end

@implementation ViewController



- (void)dealloc{
    
     [[Manager shareManager] deleteDelegate:self];
}

- (IBAction)bottonClick:(UIButton *)sender {
    
    [[Manager shareManager] reciveBottonClick:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[Manager shareManager] addDelegate:self];//manger是一个对管理者，在里面实现了代理的添加与删除，具体实现见demo
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)manager:(Manager *)manger didBottonClick:(UIButton *)button{
    
    NSLog(@"我是item1，接受到了按钮点击的消息，按钮地址是%p",button);
}

@end
