class element {
    [String] $name;

    element ([String] $name) {

        $type = $this.GetType();
        if ($type -eq [element]) { 
            throw("Class $type must be inherited");
        }

        $this.name = $name;
    }
}