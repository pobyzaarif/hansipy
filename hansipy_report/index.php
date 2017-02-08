<?php include('header.php'); ?>
<body>

    <div class="row-fluid">
        <div class="span12">


         

            <div class="container">

<br><br>
                <form method="POST" action="sort.php">
				<label>Sort Item by:</label>
				<select name="sort" required>
				<option></option>
				<option>rule_01</option>
				<option>rule_02</option>
				<option>rule_03</option>
				<option>rule_04</option>
				<option>rule_05</option>
				<option>rule_06</option>
				<option>rule_07</option>
				</select>
				<br>
				<input type="submit" class="btn btn-success" name="submit" value="Sort">
				</form>
						
                        <table  class="table table-striped table-bordered">
                         
                            <thead>
						
                                <tr>
                                
                                    <th>rule</th>
                                    <th>datetime</th>
                                    <th>host</th>
                                    <th>method</th>
                                    <th>request</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from hansipytable")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$rule=$row['rule'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['rule'] ?></td>
                                         <td><?php echo $row['date_time'] ?></td>
                                         <td><?php echo $row['host'] ?></td>
                                         <td><?php echo $row['method'] ?></td>
                                         <td><?php echo $row['request'] ?></td>
                                </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table>
						
          
</form>

        </div>
        </div>
        </div>
    </div>



</body>
<?php include('footer.php'); ?>
</html>


