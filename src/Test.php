<?php
namespace TestNamespace;

class Test
{
	public $mysqli;

	function __construct()
	{
		$hostname = "localhost";
		$username = "root";
		$password = "";
		$database = "test";
		$this->mysqli = new \mysqli($hostname, $username, $password, $database);

		/* check connection */
		if (mysqli_connect_errno()) 
		{
		    printf(mysqli_connect_error());
		    exit();
		}
	}

	public function generateTable($page)
	{
		if($page != NULL)
		{
			$offset = $page*3;
			$query = "SELECT * FROM products 
			INNER JOIN productlines ON (productlines.id = products.productLine)
			LIMIT 3 OFFSET $offset";
		}
		else
		{
			$query = "SELECT * FROM products 
			INNER JOIN productlines ON (productlines.id = products.productLine)
			LIMIT 3";
		}
		$results = $this->mysqli->query($query);

		if(empty($results))
			return "Nema rezultata";

		$return = NULL;
		$return.= '
		<table class="table table-bordered table-striped">
		 <thead>
		  <tr>
		     <th>Code</th>
		     <th>Name</th>
		     <th>Line Description</th>
		     <th>Product Description</th>
		  </tr>
		 </thead>';
		 $return.='<tbody>';

		while ($row = $results->fetch_assoc()) 
		{
			$return.= '
			  <tr>
			     <td>'.$row["productCode"].'</td>
			     <td>'.$row["productName"].'</td>
			     <td>'.$row["textDescription"].'</td>
			     <td>'.$row["productDescription"].'</td>
			  </tr>
			 ';		
		}

		$return.='</tbody>';
		$return.= '</table>';

		$next_page = $page+1;
		$previous_page = $page-1;
		if($page == 0)
			$previous_page = 0;

		$return.= '
		<nav aria-label="Page navigation">
		  <ul class="pagination">
		    <li>
		      <a href="index.php?page='.$previous_page.'" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li>
		      <a href="index.php?page='.$next_page.'" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		';

		return $return;
		
	}
}
?>