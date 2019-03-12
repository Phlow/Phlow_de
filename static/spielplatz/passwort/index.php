<?PHP
// Generates a strong password of N length containing at least one lower case letter,
// one uppercase letter, one digit, and one special character. The remaining characters
// in the password are chosen at random from those four sets.
//
// The available characters in each set are user friendly - there are no ambiguous
// characters such as i, l, 1, o, 0, etc. This, coupled with the $add_dashes option,
// makes it much easier for users to manually type or speak their passwords.
//
// Note: the $add_dashes option will increase the length of the password by
// floor(sqrt(N)) characters.
 
function generateStrongPassword($length = 9, $add_dashes = false, $available_sets = '')
{
	$sets = array();
	if(strpos($available_sets, 'l') !== false)
		$sets[] = 'abcdefghijklmnopqrstuvwxyz';
	if(strpos($available_sets, 'u') !== false)
		$sets[] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	if(strpos($available_sets, 'd') !== false)
		$sets[] = '1234567890';
	if(strpos($available_sets, 'f') !== false) # FTP Set
		$sets[] = '_!$%()=+-';
	if(strpos($available_sets, 'm') !== false) # MySQL Set
		$sets[] = ',-.!#%&(){}[]*+/:;<=>?@\^_|';
	if(strpos($available_sets, 'w') !== false) # WordPress Set
		$sets[] = '!@#$%^&*()-_ []{}<>~`+=,.;:/?|';
 
	$all = '';
	$password = '';
	foreach($sets as $set)
	{
		$password .= $set[array_rand(str_split($set))];
		$all .= $set;
	}
 
	$all = str_split($all);
	for($i = 0; $i < $length - count($sets); $i++)
		$password .= $all[array_rand($all)];
 
	$password = str_shuffle($password);
 
	if(!$add_dashes)
		return $password;
 
	$dash_len = floor(sqrt($length));
	$dash_str = '';
	while(strlen($password) > $dash_len)
	{
		$dash_str .= substr($password, 0, $dash_len) . '-';
		$password = substr($password, $dash_len);
	}
	$dash_str .= $password;
	return $dash_str;
}

?><!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Passwort</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=PT+Mono' rel='stylesheet' type='text/css'>

    <style type="text/css" media="screen">
		body { font-family: "PT Mono", monospace; }
		small { font-size: 12px;}
	</style>

</head>
<body>

<div style="width: 1000px; margin: 0 auto;">

<h1>Passwörter</h1>

<h2>FTP <small>(60 Zeichen)</small></h2>

<?
//Generiert Passwort
$ftp_passwort = generateStrongPassword($length = 70, $add_dashes = false, $available_sets = 'ludf'); 

// Kürzt das Passwort auf 60 Zeichen
$ftp_passwort = substr($ftp_passwort, -60); 
echo "<h3>Passwort: ". $ftp_passwort . "</h3>";
?>
<hr style="margin: 40px 0;">





<?php
echo '<h2>MySQL <small>(16 Zeichen)</small></h2>';

//Generiert Passwort
$mysqlpasswort = generateStrongPassword($length = 16, $add_dashes = true, $available_sets = 'ludm'); 

// Kürzt das Passwort auf 16 Zeichen
$mysqlpasswort = substr($mysqlpasswort, -16); 
echo '<h3>Passwort: '. $mysqlpasswort . '</h3>';
echo '<hr style="margin: 40px 0;">';
?>





<?php
echo "<h2>WordPress <small>(32 Zeichen)</small></h2>";
//Generiert Passwort
$wp_passwort = generateStrongPassword($length = 42, $add_dashes = true, $available_sets = 'ludw');

// Kürzt das Passwort auf 16 Zeichen
$wp_passwort = substr($wp_passwort, -32); 
echo '<h3>Passwort: '. $wp_passwort . '</h3>';
?>



</div>
</body>
</html>