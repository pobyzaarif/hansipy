<!DOCTYPE html><html>
<head>
<title>./Hansipy</title>
<?php include('header.php'); ?>
</head><body><?php
// Establish Connection to the Database
$con = mysqli_connect('localhost','root','220894','hansipy');//Records per page
$per_page=20;
if (isset($_GET["page"])) {

$page = $_GET["page"];

}

else {

$page=1;

}

// Page will start from 0 and Multiple by Per Page
$start_from = ($page-1) * $per_page;

//Selecting the data from table but with limit
$query = "SELECT * FROM hansipytable LIMIT $start_from, $per_page";
$result = mysqli_query ($con, $query);

?>
<table width="1000" align="center" border="2" cellpadding="3">
<tr><th>rule</th><th>datetime</th><th>host</th><th>method</th><th>request</th></tr>
<?php
while ($row = mysqli_fetch_assoc($result)) {
?>
<tr align="center">
<td><?php echo $row['rule']; ?></td>
<td><?php echo $row['date_time']; ?></td>
<td><?php echo $row['host']; ?></td>
<td><?php echo $row['method']; ?></td>
<td><?php echo $row['request']; ?></td>
</tr>
<?php
};
?>
</table>

<div>
<?php
//Now select all from table
$query = "select * from pyscantable";
$result = mysqli_query($con, $query);

// Count the total records
$total_records = mysqli_num_rows($result);

//Using ceil function to divide the total records on per page
$total_pages = ceil($total_records / $per_page);

//Going to first page
echo "<center><a href='?page=1'>".'First Page'."</a> ";

for ($i=1; $i<=$total_pages; $i++) {

echo "<a href='?page=".$i."'>".$i."</a> ";

};

// Going to last page
echo "<a href='?page=$total_pages'>".'Last Page'."</a></center> ";
?>

</div>

</body>
<?php include('footer.php'); ?>
</html>
