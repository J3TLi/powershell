Clear-Host
function Host{
Clear-Host
Write-Host Make a selection:
Write-Host 1. Jimmy Santiago Baca
Write-Host 2. Omela Kid
Write-Host 3. Cave Guy
Write-Host 4. White Man
do {
$UserResponse = Read-Host 'Pick one'
    }
    while($UserResponse -notlike "1" -and $UserResponse -notlike "2" -and $UserResponse -notlike "3" -and $UserResponse -notlike "4")

Switch($UserResponse){
    "1"{
    Clear-Host 
    Baca
    }
    "2"{
    Clear-Host
    Omela}
    "3"{
    Clear-Host
    Cave}
    "4"{
    Clear-Host
    White}
}
}
function GO{
Add-Type -AssemblyName System.Speech
$voice = New-Object System.Speech.Synthesis.SpeechSynthesizer
Clear-Host
Write-Host Game Over
$voice.SpeakAsync("Game Over") | Out-Null
Write-Host "Would You Like To Play Again? (y/n?)"
$voice.SpeakAsync("Would You Like To Play Again?") | Out-Null
do {
$UserResponse = Read-Host 'Pick one'
    }
    while($UserResponse -notlike "y" -and $UserResponse -notlike "n")

Switch($UserResponse){
    "y"{
    Host
    }
    "n"{
    Write-Host "Thanks for playing! :)"
    $voice.SpeakAsync("Thanks for playing! Smiley Face") | Out-Null
    sleep 3
    exit
    }
    }
}
function Baca {
function Answer{

                    do {$UserResponse = Read-Host 'Pick one'
                    }while($UserResponse -notlike "1" -and $UserResponse -notlike "2")
                    
                    Switch($UserResponse){
                    1 {
                    Clear-Host
                    Write-Host "Galvin lets you off the hook and says you can leave :)"
                    Write-Host You prepare to leave but get offered to hang out with your drug selling grunt, Carey  
                    Write-Host "You agree and go there and see he's friend who is named rick" 
                    Write-Host Rick looks suspect as hell and you get call him out for it and you get jailed.
                    Write-Host "Press any key to continue ..."
                    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
                    Lesson
                    }
                    
                    2 {
                    Clear-Host
                    Write-Host You keep selling and become the drug lord.
                    Write-Host You become cautious of everyone then begin accusing everone of being a narc. No one likes that. 
                    Write-Host The people you accuse rat you out because you a mean dude.
                    Write-Host Cops come!
                    Write-Host "You are caught. You have been sentenced 10 years in prison." 
                    Write-Host "Press any key to continue ..."
                    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
                    GO

                        }
                }
                }
function Lesson{
Clear-Host
Write-Host "You learn a lot in prison and realize that you aren't really who you really are." 
Write-Host Your mother, father, and brother die. 
Write-Host You are all alone and decide to live your life as a new man
Write-Host You become an author to tell others of your life story so they can learn from your mistakes and how society treats minorities. 
Write-Host You go around to schools and give them life lessons that you had wished you were given 
Write-Host You continue to try and make the world a better place. Your book has also impacted many lives.
Write-Host Congratulations! You Win!
Write-Host "Press any key to quit ..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
sleep 3
exit
}
#Read a file Find out
#Write paragraphs and it'll read it instead of calling Write-Host
#Write the bio then call it using the read-file whatever cmdlet
#An array of sentences, use array cmdlet.
#Have it say the location of the ray and then call it (location #1 (bio)) Generate random messages or responses

Write-Host "You are born January 2nd, 1952"
Write-Host You are born into a poor family in a bad environment.
Write-Host Your parents fight.
Write-Host You are an orphan and escaped. Now you need money, what do you do?
Write-Host "1. Sell Drugs"
Write-Host "2. Get a Job"
Write-Host "3. Kill yourself"

do {$UserResponse = Read-Host 'Pick one'
    }while($UserResponse -notlike "1" -and $UserResponse -notlike "2" -and $UserResponse -notlike "3")
    #Sell Drugs
    Switch($UserResponse){
    1 {
    Clear-Host
                Write-Host You found a dealer, Galvin, that recruits you.
                Write-Host You sell drugs.
                Write-Host You get your money and now you want out.
                Write-Host Do you leave or stay in the drug business? -ForegroundColor White
                Write-Host 1. Leave -ForegroundColor Cyan
                Write-Host 2. Stay -ForegroundColor Cyan
                Answer

    }
    2 {Clear-Host
        Write-Host REJECTED. The little money you have slowly runs out as you become homeless.
        Write-Host You start to be filled with anger and regret as you live your life on the streets.
        Write-Host You die of starvation and disease!
        Write-Host "Press any key to continue ..."
                    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
        GO
        }
    3{
    Clear-Host 
    Write-Host You die and no one cares that you died because you were a minority.
    Write-Host Your family doesnt attend your funeral.
    Write-Host "Press any key to continue ..."
                    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    GO
        }
    }
    }
#variable still in session for the Host if statement, that's why it uses the Else Host and not Else Baca. Gotta figure out a transition or the import taht JOel showed.
function Omela{
Write-Host 1. Lemon Lift
Write-Host 2. Earl Grey
Write-Host 3. Constant Comment
Write-Host 4. Licorice Spice
Write-Host 5. Chamomile /Caffeine Free\
Write-Host 6. Tazo Passion
Write-Host 7. Cozy Chamomile
Write-Host 8. Cinnamon Apple
Write-Host 9. Green Tea W/ Lemon
Write-Host 10. Green Tea
Write-Host 11. Mint Medley
Write-Host 12. Awake-English Breakfast

$answer = Read-Host 'Are you ready for your RANDOM drink?(y/n)'
 
    if ($answer -eq "y") {
        $random = Get-Random -Minimum 1 -Maximum 12
            if ($random -eq 1) {
                Write-Host ---------------------------------
                Write-Host Powershell Recommends: Lemon Lift
                Write-Host ---------------------------------
                }
            if ($random -eq 2) {
                Write-Host ---------------------------------
                Write-Host Powershell Recommends: Earl Grey
                Write-Host ---------------------------------
                }
            if ($random -eq 3) {
                Write-Host ---------------------------------------
                Write-Host Powershell Recommends: Constant Comment
                Write-Host ---------------------------------------
                }
            if ($random -eq 4) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Licorice Spice
                Write-Host -------------------------------------
                }
            if ($random -eq 5) {
                Write-Host ------------------------------------------------
                Write-Host Powershell Recommends: Chamomile /Caffeine Free\
                Write-Host ------------------------------------------------
                }
            if ($random -eq 6) {
                Write-Host -----------------------------------
                Write-Host Powershell Recommends: Tazo Passion
                Write-Host -----------------------------------
            }
            if ($random -eq 7) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Cozy Chamomile
                Write-Host -------------------------------------
            }
            if ($random -eq 8) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Cinnamon Apple
                Write-Host -------------------------------------
            }if ($random -eq 9) {
                Write-Host -----------------------------------------
                Write-Host Powershell Recommends: Green Tea w/ Lemon
                Write-Host -----------------------------------------
            }
            if ($random -eq 10) {
                Write-Host --------------------------------
                Write-Host Powershell Recommends: Green Tea
                Write-Host --------------------------------
            }
            if ($random -eq 11) {
                Write-Host ----------------------------------
                Write-Host Powershell Recommends: Mint Medley
                Write-Host ----------------------------------
            }
            if ($random -eq 12) {
                Write-Host ----------------------------------------------
                Write-Host Powershell Recommends: Awake-English Breakfast
                Write-Host ----------------------------------------------
            }
        
            
            function Rawrxd{
            $again = Read-Host 'Would you like another recommendation?(y/n)'
            if ($again -eq "y"){
                Clear-host
                Host
                Write-Host "Press any key to continue ..."
                $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
            }
            if ($again -eq "n"){
                Write-Host 'Enjoy your drink! Come again!:)'
                Start-Sleep 5
                exit
            }Else{
                Rawrxd
                }
            
            }
Rawrxd
} elseif($answer -eq "n"){
            exit
            }
Else {
Clear-Host
Omela
}
}
function Cave {
Write-Host 1. Coffee
Write-Host 2. Hot Cocoa
Write-Host 3. Apple Cider
$answer = Read-Host 'Are you ready for your RANDOM drink?(y/n)'
 
    if ($answer -eq "y") {
        $random = Get-Random -Minimum 1 -Maximum 3
            if ($random -eq 1) {
                Write-Host -----------------------------
                Write-Host Powershell Recommends: Coffee
                Write-Host -----------------------------
            }
            if ($random -eq 2) {
                Write-Host --------------------------------
                Write-Host Powershell Recommends: Hot Cocoa
                Write-Host --------------------------------
            }
            if ($random -eq 3) {
                Write-Host ----------------------------------
                Write-Host Powershell Recommends: Apple Cider
                Write-Host ----------------------------------
            }
            
                        
            function Rawrxd{
            $again = Read-Host 'Would you like another recommendation?(y/n)'
            if ($again -eq "y"){
                Clear-host
                Host
                Write-Host "Press any key to continue ..."
                $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
            }
            if ($again -eq "n"){
                Write-Host 'Enjoy your drink! Come again!:)'
                Start-Sleep 5
                exit
            }Else{
                Rawrxd
                }
            
            }
Rawrxd
} elseif($answer -eq "n"){
            exit
            }
Else {
Clear-Host
Cave
}
}
function White{
Write-Host 1. Lemon Lift
Write-Host 2. Earl Grey
Write-Host 3. Constant Comment
Write-Host 4. Licorice Spice
Write-Host 5. Chamomile /Caffeine Free\
Write-Host 6. Tazo Passion
Write-Host 7. Cozy Chamomile
Write-Host 8. Cinnamon Apple
Write-Host 9. Green Tea w/ Lemon
Write-Host 10. Green Tea
Write-Host 11. Mint Medley
Write-Host 12. Awake-English Breakfast
Write-Host 13. Coffee
Write-Host 14. Hot Cocoa
Write-Host 15. Apple Cider

$answer = Read-Host 'Are you ready for your RANDOM drink?(y/n)'
 
    if ($answer -eq "y") {
        $random = Get-Random -Minimum 1 -Maximum 15
            if ($random -eq 1) {
                Write-Host ---------------------------------
                Write-Host Powershell Recommends: Lemon Lift
                Write-Host ---------------------------------
                }
            if ($random -eq 2) {
                Write-Host ---------------------------------
                Write-Host Powershell Recommends: Earl Grey
                Write-Host ---------------------------------
                }
            if ($random -eq 3) {
                Write-Host ---------------------------------------
                Write-Host Powershell Recommends: Constant Comment
                Write-Host ---------------------------------------
                }
            if ($random -eq 4) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Licorice Spice
                Write-Host -------------------------------------
                }
            if ($random -eq 5) {
                Write-Host ------------------------------------------------
                Write-Host Powershell Recommends: Chamomile /Caffeine Free\
                Write-Host ------------------------------------------------
                }
            if ($random -eq 6) {
                Write-Host -----------------------------------
                Write-Host Powershell Recommends: Tazo Passion
                Write-Host -----------------------------------
            }
            if ($random -eq 7) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Cozy Chamomile
                Write-Host -------------------------------------
            }
            if ($random -eq 8) {
                Write-Host -------------------------------------
                Write-Host Powershell Recommends: Cinnamon Apple
                Write-Host -------------------------------------
            }
            if ($random -eq 9) {
                Write-Host -----------------------------------------
                Write-Host Powershell Recommends: Green Tea W/ Lemon
                Write-Host -----------------------------------------
            }
            if ($random -eq 10) {
                Write-Host --------------------------------
                Write-Host Powershell Recommends: Green Tea
                Write-Host --------------------------------
            }
            if ($random -eq 11) {
                Write-Host ----------------------------------
                Write-Host Powershell Recommends: Mint Medley
                Write-Host ----------------------------------
            }
            if ($random -eq 12) {
                Write-Host ----------------------------------------------
                Write-Host Powershell Recommends: Awake-English Breakfast
                Write-Host ----------------------------------------------
            }
            if ($random -eq 13) {
                Write-Host -----------------------------
                Write-Host Powershell Recommends: Coffee
                Write-Host -----------------------------
            }
            if ($random -eq 14) {
                Write-Host --------------------------------
                Write-Host Powershell Recommends: Hot Cocoa
                Write-Host --------------------------------
            }
            if ($random -eq 15) {
                Write-Host ----------------------------------
                Write-Host Powershell Recommends: Apple Cider
                Write-Host ----------------------------------
            }

        
            
            function Rawrxd{
            $again = Read-Host 'Would you like another recommendation?(y/n)'
            if ($again -eq "y"){
                Clear-host
                Host
                Write-Host "Press any key to continue ..."
                $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
            }
            if ($again -eq "n"){
                Write-Host 'Enjoy your drink! Come again!:)'
                Start-Sleep 5
                exit
            }Else{
                Rawrxd
                }
            
            }
Rawrxd
} elseif($answer -eq "n"){
            exit
            }
Else {
Clear-Host
White
}
}
Host
