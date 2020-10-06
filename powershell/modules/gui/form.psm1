class form {
    # Properties
    [String] $alias;
    [int32] $hitPoints;

    static [String] $clan = "DevOps Library"; # Static properties
    hidden [String] $realName; # Hidden properties

    # Constructor (may also be parameterless)
    foo ([String] $alias, [int32] $hitPoints) {
        #Simulate abstract class
        $type = $this.GetType();
        if ($type -eq [form]) { 
            throw("Class $type must be inherited");
        }

        #Local variables
        $this.alias = $alias;
        $this.hitPoints = $hitPoints;
    }


}