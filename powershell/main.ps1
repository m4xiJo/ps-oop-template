Using module ".\modules\bar.psm1";
Using module ".\modules\gui\button.psm1";
Add-Type -AssemblyName PresentationFramework;


$variable = [bar]::new("Ken", 28); #Creating instance of a class
[bar]::getClan(); # Call a static method
[bar]::Clan; # Get static prop value
[bar]::Clan = "DevOps Library"; # Set static prop value

$variable.getAlias(); # Call a method of instance
$variable.hitPoints; # Get instance prop value
$variable.alias = "Mekuto"; # Set instance prop value
$variable.setAlias("M4x"); # Set instance prop value

write-host " Name:" $variable.getAlias()`n "Hit points:" $variable.getHitPoints()`n "Clan:" $variable::getClan()`n;

#Enumerator
enum Elements {
    one = 1;
    two = 2;
    three = 3;
    four = 4;
}

#To get names from an enum
[System.Enum]::GetValues([Elements]);

#To get int values from an enum
[System.Enum]::GetValues([Elements]) | foreach {
    [int] $_;
};


[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window">
    <Grid x:Name="Grid">
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
        </Grid.ColumnDefinitions>
        <TextBox x:Name = "PathTextBox"
            Width="150"
            Grid.Column="0"
            Grid.Row="0"
        />
        <Button x:Name = "ValidateButton"
            Content="Validate"
            Grid.Column="1"
            Grid.Row="0"
        />
        <Button x:Name = "RemoveButton"
            Content="Remove"
            Grid.Column="0"
            Grid.Row="1"
        />
    </Grid>
</Window>
"@

$reader = (New-Object System.Xml.XmlNodeReader $xaml);
$window = [Windows.Markup.XamlReader]::Load($reader);
$window.ShowDialog();

#write-host $btn.getElement();
