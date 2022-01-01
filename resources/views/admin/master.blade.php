<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>home</title>

    <!-- Theme style -->
    <link rel="stylesheet" href="{!! asset('css/app.css') !!}">
    <style>
        .nav-link.router-link-exact-active.router-link-active {
            background: green;
        }
    </style>
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper" id="app">
    <!-- Navbar -->
    @include('admin.includes.header')
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('admin.includes.sidebar')

    <!-- Content Wrapper. Contains page content -->
    @yield('body')

    <!-- /.content-wrapper -->
    @include('admin.includes.footer')

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->

<!-- AdminLTE for demo purposes -->
<script src="{!! asset('js/app.js') !!}"></script>
</body>
</html>
