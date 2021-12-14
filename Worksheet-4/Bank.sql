CREATE TABLE `myBANK`.`Bank` (
`Code` INT NOT NULL PRIMARY KEY, 
`BName` CHAR(45), 
`BAddr` CHAR(45)
);
CREATE TABLE `myBANK`.`Bank_Branch` (
`BankCode` INT NOT NULL,
`Branch_no` INT NOT NULL,
`BranchAddr` INT,
PRIMARY KEY(`BankCode`, `Branch_no`),  
FOREIGN KEY (`BankCode`) REFERENCES `Bank`(`Code`)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE `myBANK`.`Account` (
`AcctNo` INT NOT NULL PRIMARY KEY, 
`Balance` INT, 
`Type` CHAR(45),
`BankCode` INT, 
`BankBranchNo` INT, 
foreign key (`BankCode`, `BankBranchNo`) references `Bank_Branch`(`BankCode`, `Branch_no`)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE `myBANK`.`Loan` (
`LoanNo` INT NOT NULL PRIMARY KEY,
`Amount` INT,
`Type` CHAR(45),
`BankCode` INT,
`BankBranchNo` INT,
FOREIGN KEY (`BankCode`, `BankBranchNo`) REFERENCES `Bank_Branch`(`BankCode`, `Branch_no`)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE `myBANK`.`Customer` (
`Ssn` INT NOT NULL PRIMARY KEY, 
`Phone` INT, 
`CName` CHAR(45), 
`CAddr` CHAR(45)
);
CREATE TABLE `myBANK`.`AC` (
`AccountNumber` INT NOT NULL,
`Ssn` INT NOT NULL, 
PRIMARY KEY(`AccountNumber`, `Ssn`),  
FOREIGN KEY (`AccountNumber`) REFERENCES `Account`(`AcctNo`)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`Ssn`) REFERENCES `Customer`(`Ssn`)
ON DELETE CASCADE ON UPDATE CASCADE
); 
CREATE TABLE `myBANK`.`LC` (
`LoanNumber` INT NOT NULL,
`Ssn` INT NOT NULL,
PRIMARY KEY(`LoanNumber`, `Ssn`),  
FOREIGN KEY (`LoanNumber`) REFERENCES `Loan`(`LoanNo`)
ON DELETE CASCADE ON UPDATE CASCADE, 
FOREIGN KEY (`Ssn`) REFERENCES `Customer`(`Ssn`)
ON DELETE CASCADE ON UPDATE CASCADE
); 