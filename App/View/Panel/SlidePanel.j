

@import <AppKit/CPView.j>


@implementation ContentArea : CPView
{
	CPView _slideArea;
}

- (id) initWithFrame(CGRect):aFrame
{

	self = [super initWithFrame:aFrame];
    if(self){
    	// This view will grow in both height an width.
    	_slideArea = [[CPView alloc] initWithFrame:CGRectMake(30,30, CGRectGetWidth(aFrame) -60, CGRectGetHeight(aFrame) -150) ];

        [_slideArea setBackgroundColor:""];




    	[_slideArea setBackgroundColor:[CPColor lightGrayColor]];
    	[_slideArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable ];
    	[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

    	[self addSubview:_slideArea];
    }
    return self;
}

- (void)drawRect:(CPRect)rect
{

}

@end
