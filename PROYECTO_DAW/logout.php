<?php
session_start();
session_destroy();
echo "La sesíón se ha cerrado correctamente";
echo "<script> window.location:'index.php'; </script>";
?>

	<script lang="javascript">location.href = 'index.php';</script>