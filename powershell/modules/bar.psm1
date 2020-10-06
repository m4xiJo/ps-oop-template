Using module ".\foo.psm1";

# Bar extends Foo and inherits its members
class bar : foo {
    # call parent constructor by using the : base() command here.
    bar ([String] $alias, [int32] $hitPoints) : base($alias, $hitPoints) {

    }
    
    # Method
    [String] getAlias() {
       return $this.alias;
    }

    setAlias([String] $alias) {
        $this.alias = $alias;
    }

    [Int32] getHitPoints() {
        return $this.hitPoints;
    }

    # Static method
    static [String] getClan() {
        return [foo]::Clan;
    }

    # toString method
    [String] toString() {
        return $this.alias + ":" + $this.hitPoints;
    }
}