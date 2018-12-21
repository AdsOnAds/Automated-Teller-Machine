#ACTIVITY = 1
OpenFile(#ACTIVITY, "D:\Ezra's Projects\Ezra's Projects Pure Basic\ATM\Activity.txt")
#ACCOUNT_NUMBER_1 = "12340001"
#ACCOUNT_NUMBER_2 = "12340002"
#ACCOUNT_NUMBER_3 = "12340003"
Global Tax.f = 13.4/100
#EZRA_PASSWORD = "1234"
#ASIWOME_PASSWORD = "1402"
#MARY_PASSWORD = "2040"
Global CashInEzra.f = 500.00
Global CashInAsiwome.f = 1250.00
Global CashInMary.f = 250.00


Procedure EzraLogin()
  PrintN("")
  WriteStringN(#ACTIVITY, "")
  PrintN("")
  PrintN("Welcome to Your Account")
  WriteStringN(#ACTIVITY, "Welcome To Your Account")
  PrintN("Your Customer ID is " + #ACCOUNT_NUMBER_1)
  WriteStringN(#ACTIVITY,"Your Customer ID is " + #ACCOUNT_NUMBER_1)
  PrintN("Ezra P. K. Gonyuie")
  WriteStringN(#ACTIVITY,"Ezra P. K. Gonyuie")
  PrintN("")
  PrintN("Please Select Service")
  WriteStringN(#ACTIVITY,"Please Select Service")
  PrintN("1. Withdraw")
  WriteStringN(#ACTIVITY, "1. Withdraw")
  PrintN("2. Deposit")
  WriteStringN(#ACTIVITY, "2. Deposit")
  PrintN("3. Balance")
  WriteStringN(#ACTIVITY, "3. Balance")
  PrintN("4. Quit")
  WriteStringN(#ACTIVITY, "4. Quit")
  service.s = Input()
  WriteStringN(#ACTIVITY, service)
  Select service
    Case "1" ; Withdraw
      PrintN("Welcome To The Withdraw Service")
      WriteStringN(#ACTIVITY, "Welcome To The Service")
      PrintN("You have  " + CashInEzra + "  In Your Account")
      WriteStringN(#ACTIVITY, "You have  " + CashInEzra + "  In Your Account")
      PrintN("Please Enter The Amount You Wish to Withdraw")
      WriteStringN(#ACTIVITY, "Please Enter The Amount You Wish to Withdraw")
      Amount.f = ValF(Input())
      PrintN("You Are Withdrawing " + Str(Amount) + " from Account")
      WriteStringN(#ACTIVITY, "You Are Withdrawing " + Str(Amount) + " from Account")
      PrintN("Please confirm 'Yes' or 'No'")
      WriteStringN(#ACTIVITY, "Please confirm 'Yes' or 'No'")
      confirm.s = Input()
      If confirm = "Yes"
        CashInEzra = CashInEzra - Amount
        PrintN(Str(CashInEzra))
        WriteStringN(#ACTIVITY, Str(CashInEzra))
      Else
        EzraLogin()
      EndIf
      PrintN("You Have  " + CashInEzra + "  In Your Account")
      WriteStringN(#ACTIVITY, "You Have  " + CashInEzra + "  In Your Account")
      PrintN("Service Complete")
      WriteStringN(#ACTIVITY, "Service Complete")
      Delay(5000)
      EzraLogin()
      
    Case "2" ; Deposit
      PrintN("Welcome to the Deposit Service")
      WriteStringN(#ACTIVITY, "Welcome to the Deposit Service")
      PrintN("You Have  " + CashInEzra + "  In Your Account")
      WriteStringN(#ACTIVITY, "You Have  " + CashInEzra + "  In Your Account")
      PrintN("Please Enter Amount You Wish To Deposit")
      WriteStringN(#ACTIVITY, "Please Enter Amount You Wish To Deposit")
      Amount.f = Val(Input())
      PrintN("You Are Depositing  " + Str(Amount) + "  Into Your Account")
      WriteStringN(#ACTIVITY, "You Are Depositing  " + Str(Amount) + "  Into Your Account")
      PrintN("Please Confirm 'Yes' or 'No'")
      WriteStringN(#ACTIVITY, "Please Confirm 'Yes' or 'No'")
      confirm.s = Input()
      If confirm = "Yes"
        CashInEzra = CashInEzra + Amount
        PrintN(StrF(CashInEzra))
        WriteStringN(#ACTIVITY, StrF(CashInEzra))
      Else
        EzraLogin()
      EndIf
      PrintN("You have  " + CashInEzra + "  In Your Account")
      WriteStringN(#ACTIVITY, "You have  " + CashInEzra + "  In Your Account")
      PrintN("Service Complete")
      WriteStringN(#ACTIVITY, "Service Complete")
      Delay(5000)
      EzraLogin()
      
    Case "3" ; Balance
      PrintN("Welcome To The Balance Service")
      WriteStringN(#ACTIVITY, "Welcome To The Balance Service")
      PrintN("Your Balance Is:")
      WriteStringN(#ACTIVITY, "Your Balance is:")
      PrintN(StrF(CashInEzra))
      WriteStringN(#ACTIVITY, StrF(CashInEzra))
      PrintN("Press 'Enter' To go Back To Service List")
      WriteStringN(#ACTIVITY, "Press 'Enter' To go Back To Service List")
      confirm.s = Input()
      EzraLogin()
      
    Case "4" ; Quit
      PrintN("You Are About To Exit")
      WriteStringN(#ACTIVITY, "You are about to Exit")
      PrintN("Please Confirm 'Yes' To Exit or 'No' To go Back To Service List")
      WriteStringN(#ACTIVITY, "Please Confirm 'Yes' To Exit or 'No' To go Back To Service List")
      confirm.s = Input()
      If confirm = "No"
        EzraLogin()
      Else
        CloseConsole()
      EndIf      
    Default
      EzraLogin()
  EndSelect
EndProcedure

Procedure Ezra()
  PrintN("")
  WriteStringN(#ACTIVITY, "")
  PrintN("")
  PrintN("You entered " + #ACCOUNT_NUMBER_1)
  WriteStringN(#ACTIVITY, "You entered " + #ACCOUNT_NUMBER_1)
  PrintN("Please Confirm The Amount Number You Entered")
  WriteStringN(#ACTIVITY, "Please Confirm The Amount Number You Entered")
  Print("  Or Press 'Enter' to return to Top")
  WriteStringN(#ACTIVITY, "  Or Press 'Enter' to return to Top")
  PrintN("")
  WriteStringN(#ACTIVITY, "")
  Confirm.s = Input()
  WriteStringN(#ACTIVITY, Confirm)
  If confirm = #ACCOUNT_NUMBER_1
    PrintN("Please Enter Your Password, Customer ID:" + #ACCOUNT_NUMBER_1)
    WriteStringN(#ACTIVITY, "Please Enter Your Password, Customer ID:" + #ACCOUNT_NUMBER_1)
    password.s = Input()
    If password = #EZRA_PASSWORD
      EzraLogin()
    Else
      Ezra()
    EndIf
  Else
    CloseConsole()
  EndIf
EndProcedure

Procedure Begin()
  OpenFile(#ACTIVITY, "D:\Ezra's Projects\Ezra's Projects Pure Basic\ATM\Activity.txt")
  FileSeek(#ACTIVITY, Lof(#ACTIVITY))
  PrintN("Welcome To ATM")
  WriteStringN(#ACTIVITY, "Welcome To ATM")
  PrintN("AUTO TELLER MATE")
  WriteStringN(#ACTIVITY, "AUTO TELLER MATE")
  Print("Today's Date is:  ")
  WriteStringN(#ACTIVITY, "Today's Date is:  ")
  PrintN( FormatDate("Y=%yyyy, M=%mm, D=%dd", Date()))
  WriteStringN(#ACTIVITY, FormatDate("Y=%yyyy, M=%mm, D=%dd", Date()))
  PrintN("Please Enter your Account Number")
  WriteStringN(#ACTIVITY, "Please Enter your Account Number")
  AccNo.s = Input()
  If AccNo = #ACCOUNT_NUMBER_1
    Ezra()
  ElseIf AccNo = #ACCOUNT_NUMBER_2
    
  ElseIf AccNo = #ACCOUNT_NUMBER_3
    
  Else
    Begin()
  EndIf
EndProcedure


Repeat
  FileSeek(#ACTIVITY, Lof(#ACTIVITY))
  OpenConsole("ATM: Auto Teller Mate")
  Begin()  
ForEver
CloseFile(#ACTIVITY)
; IDE Options = PureBasic 5.42 LTS (Windows - x86)
; CursorPosition = 179
; FirstLine = 165
; Folding = -
; EnableUnicode
; EnableXP
; EnableOnError