class Token {
    [string] $currentToken
    [int] $creationTime


    Token ($newToken) {
        $this.currentToken = $newToken
        [int] $unixTime = (Get-Date -UFormat "%s")
        $this.creationTime = $unixTime + (60 * 60 * 24 * 14) #2 weeks
    }

    [boolean] expiresSoon()  {
        return (Get-Date -UFormat "%s" -le $this.currentToken.getCreationTime()) -le 86400
    }

    [int] getCreationTime() {
        return $this.creationTime
    }
    [void] canReplace() {
        if ($this.expiresSoon() -eq $true) {
        #helper function to generate token 
        }
    }
}
