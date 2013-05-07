

@import <AppKit/CPView.j>


@implementation ContentArea : CPView
{
	CPView _slideArea;
}

- (id) initWithFrame(CGRect):aFrame
{

	self = [super initWithFrame:aFrame];
    if(self){
    	[self setBackgroundColor:[CPColor darkGrayColor]];
    	// This view will grow in both height an width.

    	_slideArea = [[CPView alloc] initWithFrame:CGRectMake(15,15, CGRectGetWidth(aFrame) -30, CGRectGetHeight(aFrame) -60) ];

    	[_slideArea setBackgroundColor:[CPColor lightGrayColor]];
    	[_slideArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable ];
    	[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

    	[self addSubview:_slideArea];
    }
    return self;
}

@end
