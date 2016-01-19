<html>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "shubh";
$dbname = "asign1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if ($_POST['id'] == 1)
{
  $sql = "INSERT INTO Branch (`Bname`, `Bcity`, `Assets`)
  VALUES ('$_POST[bname]', '$_POST[bcity]' ,'$_POST[assets]')";
}
else if($_POST['id']  == 2)
{
  $result=$conn->query("SELECT MAX(`Cid`) as max FROM Customer");
  $row = mysqli_fetch_array($result);
  $highest = $row['max']+1;
  $sql = "INSERT INTO Customer(`Cname`, `City`, `Cid`)
  VALUES ('$_POST[cname]','$_POST[ccity]',$highest)";
}
else if($_POST['id']  == 3)
{
  $result=$conn->query("SELECT MAX(AccNo) as max FROM Account");
  $row = mysqli_fetch_array($result);
  $highest = $row['max']+1;
  $sql = "INSERT INTO Account(AccNo, Bname, Balance) 
  VALUES ($highest,'$_POST[bname]','$_POST[balance]')";
}

else if($_POST['id']  == 4)
{
  $result=$conn->query("SELECT MAX(LoanNo) as max FROM Loan");
  $row = mysqli_fetch_array($result);
  $highest = $row['max']+1;
  $sql = "INSERT INTO Loan(LoanNo, Bname, Amount) 
  VALUES ($highest,'$_POST[bname]','$_POST[amount]')";
}

else if($_POST['id']  == 5)
{

  $sql = "INSERT INTO Depositor(Cid, AccNo)
   VALUES ('$_POST[cid]','$_POST[accno]')";
}
else if($_POST['id']  == 6)
{

  $sql = "INSERT INTO Borrower(Cid, LoanNo)
   VALUES ('$_POST[cid]','$_POST[loanno]')";
}

//$sql = "INSERT INTO Branch (`Bname`, `Bcity`, `Assets`)
//VALUES ('$_POST[bname]', '$_POST[bcity]' ,'$_POST[assets]')";
if ($conn->query($sql) === TRUE) {
  if($_POST['id']  == 3)
  {
    echo 'Your account number is ';
      echo $highest;
      echo '</br>';
  }
  else if($_POST['id']  == 4)
  {
    echo 'Your loan number is ';
      echo $highest;
      echo '</br>';
  }
    echo "Updated successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
echo "</br><a href='index.php'>Go Back</a>";
$conn->close();
?>

</body>
</html>
