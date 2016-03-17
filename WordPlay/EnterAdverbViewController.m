//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Dylan Bruschi on 3/14/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "EnterVerbViewController.h"
#import "ResultsViewController.h"

@interface EnterAdverbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *) sender{
    ResultsViewController *destination = segue.destinationViewController;
    destination.adverb = self.adverbTextField.text;
    destination.name = self.name;
    destination.adjective = self.adjective;
    destination.verb = self.verb;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adverbTextField.text  isEqual: @""]) {
        return NO;
    }
    else {
        return YES;
    }    
}

@end
