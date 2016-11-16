<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WebEmail</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
<div class="container">
    @yield('content')
</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.quicksearch.js"></script>

    <script type="text/javascript">

        $('#txtpesquisar').quicksearch('#tabela tbody tr');

    </script>

</body>
</html>