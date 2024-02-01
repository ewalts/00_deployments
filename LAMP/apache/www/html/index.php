<html>
<head><title>PHP site on apache test</title></head>
<body>
<table><tr><td>	Here we are.</td><tr></table>
<?PHP 

DEFINE ('DB_USER', "$DB_USER");
DEFINE ('DB_PASSWORD', "$DB_PASS");
DEFINE ('DB_HOST', "$DB_HOST");
DEFINE ('DB_NAME', "$DB_NAME");
###>  

if ($dbc = @mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD)) { // Make the connnection.
        if (!mysqli_select_db ($dbc,DB_NAME)) { // If it can't select the database.
                  // Handle the error.
                 // my_error_handler(mysqli_errno(), 'Could not select the database: ' . mysqli_error());
                // Print a message to the user, include the footer, and kill the script.
                    echo '<p><font color="red">The site is currently experiencing technical difficulties. We apologize for any inconvenience.</font></p>';
             //                include_once ('inc/footer.html');
                exit();
	}  
	else{
		$GLOBALS['dbc'] = $dbc;
		echo "Correctly connected to ".DB_NAME." \n";
	}
	global $dbc;
} else {   // If it couldn't connect to MySQL.
         // Print a message to the user, include the footer, and kill the script.
        // my_error_handler (mysqli_errno(), 'Could not connect to the database: ' . mysqli_error());
        echo '<p><font color="red">The site is currently experiencing technical difficulties. We apologize for any inconvenience.</font></p>';
        exit();
}  // End of $dbc IF.

###>  This test
echo "<table>";
$SQL="select * from $table where fileType != 'directory'";
$Q=mysqli_query($dbc, $SQL);
while($row=mysql_fetch_array($Q)){
	echo "<tr>";
	for($i=0;$i<count($row);$i++){
		echo "<td>".$row[$i]."</td>";
	}
	echo "</tr>";
}
echo "</table>";
?>
</table></body></html>
