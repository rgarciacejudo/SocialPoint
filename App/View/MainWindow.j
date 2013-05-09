


@import <AppKit/CPWindow.j>
@import <AppKit/CPToolbar.j>
@import "Panel/MetaDataArea.j"
@import "Panel/NavegationArea.j"
@import "Panel/ContentArea.j"
@import "Panel/MainToolbar.j"


@implementation MainWindow : CPWindow
{

}

- (id) init
{
	self = [super initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    if(self){

        contentView = [self contentView];
        var contentNavegationSplit = [[CPSplitView alloc] 
            initWithFrame:CGRectMake(0,0,CGRectGetWidth([contentView bounds]),CGRectGetHeight([contentView bounds]))];
        
        [contentNavegationSplit setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

        var navegationMetaSplit = [[CPSplitView alloc] 
            initWithFrame:CGRectMake(0,0,200.0,CGRectGetHeight([contentView bounds]))];

        var navegationArea = [[NavegationArea alloc] initWithFrame:CGRectMake(0, 0, 150, CGRectGetHeight([contentView bounds]) - 200.0)];
        var metaDataArea = [[MetaDataArea alloc] init];
        var contentArea = [[ContentArea alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([contentView bounds]) - 150, CGRectGetHeight([contentView bounds])-150)];

        [navegationMetaSplit setVertical:NO];
        [navegationMetaSplit addSubview:navegationArea];
        [navegationMetaSplit addSubview:metaDataArea];

        [contentNavegationSplit addSubview:navegationMetaSplit];
        [contentNavegationSplit addSubview:contentArea];

        var toolbar = [[MainToolbar alloc] initWithIdentifier:"Herramientas"];
        [self setToolbar:toolbar];

        [contentView addSubview:contentNavegationSplit];

    }
    return self;
       
}

@end
