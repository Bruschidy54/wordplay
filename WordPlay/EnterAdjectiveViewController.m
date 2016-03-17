//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Dylan Bruschi on 3/14/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"
#import "EnterNameViewController.h"


@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *) sender{
    EnterVerbViewController *destination = segue.destinationViewController;
    destination.adjective = self.adjectiveTextField.text;
    destination.name = self.name;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text  isEqual: @""]) {
        return NO;
    }
    else {
        return YES;
    }
    
}




@end
