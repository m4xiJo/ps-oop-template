Using module ".\element.psm1";
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")


class button : element {

    #$element = "Test";
    #[button] $button = [System.Windows.Forms.Button]::new();

    button ([String] $text, [int32] $locX, [int32] $locY) : base($name) {
        #$this.element = [System.Windows.Forms.Button]::new();
        #$this.name = $name;
        #$this.element = [System.Windows.Forms.Button]::new();
        #$this.element.Text = $text;
        #$this.element.Location = [System.Drawing.Point]::new($locX, $locY);
        #$this.element.DialogResult = [System.Windows.Forms.DialogResult]::OK;
    }
    
    [button] getElement() {
       return $this.element;
       #return [System.Windows.Forms.Button]::new();
    }

}