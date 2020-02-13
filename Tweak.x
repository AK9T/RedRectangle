@interface SBHomeScreenViewController: UIViewController
@end

%hook SBHomeScreenViewController
-(void)loadView {
%orig;

UIView *redRectangle = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 200, 200)];
[redRectangle setBackgroundColor: [UIColor redColor]];
[self.view addSubview:redRectangle];
}
%end