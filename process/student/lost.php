<?php 
include '../conn.php';
 
$method = $_POST['method'];

if ($method == 'fetch_lost') {
	$student_id = $_POST['student_id'];
	$c = 0;

	// $query = "SELECT borrowed_books.id,sum(datediff('$server_date_only',borrowed_books.due_date) * 10) as penalty,borrowed_books.borrowed_date,borrowed_books.borrowers_id,borrowed_books.due_date,book_details.title,book_details.description,borrower_details.points,borrowed_books.book_qrcode,borrowed_books.status,borrowed_books.borrowers_id  FROM borrowed_books LEFT JOIN book_details ON book_details.book_qrcode = borrowed_books.book_qrcode LEFT JOIN borrower_details on borrower_details.borrowers_id = borrowed_books.borrowers_id";
	$query = "SELECT borrowed_books.borrowed_date,borrowed_books.due_date,borrowed_books.status,book_details.title,
sum(datediff('$server_date_only',borrowed_books.due_date) * 10) as penalty
FROM
borrowed_books
LEFT JOIN  book_details ON book_details.book_qrcode = borrowed_books.book_qrcode
WHERE borrowed_books.status = 'Lost' AND borrowed_books.borrowers_id = '$student_id'";
	$stmt = $conn->prepare($query);
	$stmt->execute();
	if ($stmt->rowCount() > 0) {
		foreach($stmt->fetchALL() as $j){
			$penalty = $j['penalty'];
			$book_title = $j['title'];
			$c++;

			if ($book_title == NULL) {
				echo '<tr>';
					echo '<td colspan="6" style="color:red;">No Result!</td>';
				echo '</tr>';
			}else{

			echo '<tr>';
				echo '<td>'.$c.'</td>';
				echo '<td>'.$j['title'].'</td>';
				echo '<td>'.$j['borrowed_date'].'</td>';
				echo '<td>'.$j['due_date'].'</td>';
				if ($penalty <= 0) {
					echo '<td>0</td>';
				}else{
					echo '<td>'.$j['penalty'].'</td>';
				}
			
				echo '<td>For Replacement</td>';
			echo '</tr>';
		}
	}
	}else{
			echo '<tr>';
				echo '<td colspan="6" style="color:red;">No Result!</td>';
			echo '</tr>';
	}		
}

$conn = NULL;
?>