After mapping the above ER model into a relational database design, we came 
up with the following schema: 
– BANK(Code, BName, BAddr)  
– ACCOUNT(AcctNo, Balance, Type, BankCode, BankBranchNo)  
– LOAN(LoanNo, Amount, LType, BankCode, BankBranchNo)  
– CUSTOMER(Ssn, Phone, CName, CAddr)  
– BANK_BRANCH(BankCode, Branch_no, BranchAddr) 
– AC(AccountNumber, Ssn)  
– LC(LoanNumber, Ssn) 
 
Referential integrity constraints in the schema are:  
– In Account table: BankCode and BankBranchNo are FKs references 
BANK_BRANCH(BankCode, Branch_no) 
– In LOAN table: BankCode and BankBranchNo are FKs references 
BANK_BRANCH(BankCode, Branch_no) 
– In AC table: AccountNumber is an FK references ACCOUNT(AcctNo) and Ssn is an FK 
references CUSTOMER(Ssn) 
– In LC table: LoanNumber is an FK references LOAN(LoanNo) and Ssn is an FK references 
CUSTOMER(Ssn) 
– In BANK_BRANCH: BankCode is an FK references BANK(Code) 
 
 
Tasks: 
Part 1: Using MySQL workbench EER Model (10 points) 
1. Draw the above ER diagram.  
2. After you completed step 1 save your EER model file with the name BankEER 
 
Part 2: Using the MySQL Script tool (10 Points) 
1. Create a Bank Schema 
2. Write CREATE TABLE Statements for each of these tables. 
3. Write foreign key constraints for the relationships in each of these tables. Use the 
assumption of Cascading updates and deletion. (Hint you can combine the SQL for your 
answers to Part 1, 2 and 3).  
4. Save the script for All steps 1, 2 and 3 and give a name bank.sql 